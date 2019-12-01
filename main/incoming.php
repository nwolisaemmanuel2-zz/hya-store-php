<?php
error_reporting(0);
//error_reporting(0);
session_start();
include('../connect.php');
$cashier = $_POST['cashier'];
$a = $_POST['invoice'];
$b = $_POST['product'];
$c = $_POST['qty'];
$w = $_POST['pt'];
//$iii = $_POST['transaction_id'];
$discount = $_POST['discount'];
//$date = $_POST['date'];
$discount = $_POST['discount'];
$result = $db->prepare("SELECT * FROM products WHERE product_id= :userid");
$result->bindParam(':userid', $b);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$asasa=$row['price'];
$code=$row['product_code'];
$gen=$row['gen_name'];
$name=$row['product_name'];
$p=$row['profit'];
$qty=$row['qty'];
$date = date('m/d/Y');
$month = date('F');
$year = date('Y');
}

if($c> $qty){
//header("location: sales.php?id=$w&invoice=$a");
  echo'<a href="sales.php?id=cash&invoice='.$a.'">SORRY THE Quantity SOLD IS LESS THEN THE QUANTITY LEFT. CLICK TO GO BACK</a>';
} else {
  $CheckItems = $db->prepare("SELECT invoice,product,gen_name,name FROM sales_order WHERE invoice = ? AND product = ? AND gen_name = ? AND name = ?");
  $CheckItems->execute([$a,$b,$gen,$name]);
  if($CheckItems->rowCount() == 1){
    header("Location: sales.php?id=$w&invoice=$a");
  } else {

$fffffff=$asasa+$discount;
$d=$fffffff*$c;
$profit=$p*$c;

//echo $a;
//echo '<a href="sales.php?id=cash&invoice='.$a.'">SORRY, YOU CAN NOT SELL THIS ITEM AT THE MOMENT. PLEASE CLICK HERE TO GO BACK</a>';

// query
$sql = "INSERT INTO sales_order (cashier,invoice,product,qty,amount,name,price,profit,product_code,gen_name,discount,date) VALUES (:cashier,:a,:b,:c,:d,:e,:f,:h,:i,:j,:discount,:k)";
$q = $db->prepare($sql);
$q->execute(array(':cashier'=>$cashier,':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$name,':f'=>$asasa,':h'=>$profit,':i'=>$code,':j'=>$gen,':discount'=>$discount,':k'=>$date));
header("location: sales.php?id=$w&invoice=$a");


//edit qty
$sql = "UPDATE products
        SET qty=qty-?
		WHERE product_id=?";
$q = $db->prepare($sql);
$q->execute(array($c,$b));
//alter table sales_order
//add CONSTRAINT UC_sales_order UNIQUE (invoice,product_code)
}
}
?>
