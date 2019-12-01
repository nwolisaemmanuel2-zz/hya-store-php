<?php
 	include('../connect.php');
 	$id=$_GET['id'];
 	$c=$_GET['invoice'];
 	$sdsd=$_GET['dle'];
 	$qty=$_GET['qty'];
 	$wapak=$_GET['code'];

  //$date = date('m/d/Y');

  //edit qty
 	$sql = "UPDATE products
 			SET qty=qty+?
 			WHERE product_id=?";
 	$q = $db->prepare($sql);
 	$q->execute(array($qty,$wapak));
/*
  $sql2 = "INSERT INTO items_return (invoice,qty,code,date) VALUES (:c,:qty,:e,:y)";
  $qq = $db->prepare($sql2);
  $qq->execute(array(':c'=>$c,':qty'=>$qty,':wapak'=>$wapak,':y'=>$date));
exit();
*/

 	$result = $db->prepare("DELETE FROM sales_order WHERE transaction_id= :memid");
 	$result->bindParam(':memid', $id);
 	$result->execute();
 	header("location: customer_itemsreturn.php?id=$sdsd&invoice=$c");
 ?>
