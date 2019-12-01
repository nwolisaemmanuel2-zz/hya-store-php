<?php

  require_once '../core/inti.php';
  if(!is_logged_in()){
   header('Location: login.php');
 }
 ?>
<!DOCTYPE html>
<html>
<head>
<?php //require_once ('auth.php');?>
<title>
OMAN
</title>
 <link href="css/bootstrap.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="css/DT_bootstrap.css">

  <link rel="stylesheet" href="css/font-awesome.min.css">
    <style type="text/css">

      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<link href="src/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<script src="lib/jquery.js" type="text/javascript"></script>
<script src="src/facebox.js" type="text/javascript"></script>
<script language="javascript">
function Clickheretoprint()
{
  var disp_setting="toolbar=yes,location=no,directories=yes,menubar=yes,";
      disp_setting+="scrollbars=yes,width=800, height=400, left=100, top=25";
  var content_vlue = document.getElementById("content").innerHTML;

  var docprint=window.open("","",disp_setting);
   docprint.document.open();
   docprint.document.write('</head><body onLoad="self.print()" style="width: 800px; font-size: 13px; font-family: arial;">');
   docprint.document.write(content_vlue);
   docprint.document.close();
   docprint.focus();
}
</script>
<?php
$invoice=$_GET['invoice'];
include('../connect.php');
$result = $db->prepare("SELECT * FROM sales WHERE invoice_number= :userid");
$result->bindParam(':userid', $invoice);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$cname=$row['name'];
$invoice=$row['invoice_number'];
$date=$row['date'];
$cash=$row['due_date'];
$cashier=$row['cashier'];
$transaction_id=$row['transaction_id'];

$pt=$row['type'];
$am=$row['amount'];
if($pt=='cash'){
$cash=$row['due_date'];
$amount=$cash-$am;
}
}
?>
<?php
function createRandomPassword() {
	$chars = "003232303232023232023456789";
	srand((double)microtime()*1000000);
	$i = 0;
	$pass = '' ;
	while ($i <= 7) {

		$num = rand() % 33;

		$tmp = substr($chars, $num, 1);

		$pass = $pass . $tmp;

		$i++;

	}
	return $pass;
}
$finalcode='RS-'.createRandomPassword();
?>



 <script language="javascript" type="text/javascript">
/* Visit http://www.yaldex.com/ for full source code
and get more free JavaScript, CSS and DHTML scripts! */
<!-- Begin
var timerID = null;
var timerRunning = false;
function stopclock (){
if(timerRunning)
clearTimeout(timerID);
timerRunning = false;
}
function showtime () {
var now = new Date();
var hours = now.getHours();
var minutes = now.getMinutes();
var seconds = now.getSeconds()
var timeValue = "" + ((hours >12) ? hours -12 :hours)
if (timeValue == "0") timeValue = 12;
timeValue += ((minutes < 10) ? ":0" : ":") + minutes
timeValue += ((seconds < 10) ? ":0" : ":") + seconds
timeValue += (hours >= 12) ? " P.M." : " A.M."
document.clock.face.value = timeValue;
timerID = setTimeout("showtime()",1000);
timerRunning = true;
}
function startclock() {
stopclock();
showtime();
}
window.onload=startclock;
// End -->
</SCRIPT>
<body>

<?php include('navfixed.php');?>

	<div class="container-fluid">
      <div class="row-fluid">
	<div class="span2">
             <div class="well sidebar-nav">
                 <ul class="nav nav-list">
              <li><a href="index.php"><i class="icon-dashboard icon-2x"></i> Dashboard </a></li>
			<li class="active"><a href="sales.php?id=cash&invoice"><i class="icon-shopping-cart icon-2x"></i> Sales</a>  </li>
<?php if(has_permission('admin')):?>
      <li><a href="products.php"><i class="icon-list-alt icon-2x"></i> Products</a>                                     </li>
			<li><a href="customer.php"><i class="icon-group icon-2x"></i> Customers</a>                                    </li>
			<li><a href="supplier.php"><i class="icon-group icon-2x"></i> Suppliers</a>                                    </li>
      <li><a href="sales_inventory.php"><i class="icon-table icon-2x"></i> Product Inventory</a>                </li>

        <?php endif;?>
        <li><a href="salesreport.php?d1=0&d2=0"><i class="icon-bar-chart icon-2x"></i> Sales Report</a>                </li>

      	<br><br><br><br><br><br>
			<li>
			 <div class="hero-unit-clock">

			<form name="clock">
			<font color="white">Time: <br></font>&nbsp;<input style="width:150px;" type="submit" class="trans" name="face" value="">
			</form>
			  </div>
			</li>

				</ul>
          </div><!--/.well -->
        </div><!--/span-->

	<div class="span10">
	<a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><button class="btn btn-default"><i class="icon-arrow-left"></i> Back to Sales</button></a>
<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                          <thead>

                          </thead>
                          <tbody>
                            <?php
                            include('../connect.php');
                            $today = date('Y-m-d');
                            $sql = "SELECT * FROM time WHERE time.date >= DATE(now())
                            AND
                            time.date <= DATE_ADD(DATE(now()), INTERVAL 1 MONTH)";
                            $query = $db->prepare($sql);
                            $query->execute(array($today));
                            for($i=0; $row = $query->fetch(); $i++)
                            {
                              ?>
                              <tr class="record">
                            <marquee> <h2><font style="color:red;"><?php echo $row['message']; ?> PLEASE CONTACT THE SOFTWERE ENGINEER</h2> </marquee>

                              </tr>
                              <?php
                          }
                          ?>
                      </tbody>
                  </table>
<div class="content" id="content">
<div style="margin: 0 auto; padding: 20px; width: 900px; font-weight: normal;">
	<div style="width: 100%; height: 190px;" >
	<div style="width: 900px; float: left;">
<div style="font:bold 25px 'Aleo';">&nbsp;&nbsp;&nbsp;OMAN BERLYN ENTERPRISE</div>
  &nbsp;&nbsp;&nbsp;Location: Adum - Kumasi<br>
  Cashier Tel: 0558772682/ 0202780692/ 03220891<br>
  Manager Tel: 0246401153<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;<br>
	<div>
	<?php
	$resulta = $db->prepare("SELECT * FROM customer WHERE customer_name= :a");
	$resulta->bindParam(':a', $cname);
	$resulta->execute();
	for($i=0; $rowa = $resulta->fetch(); $i++){
	$address=$rowa['address'];
	$contact=$rowa['contact'];
	}
	?>
	</div>
	</div>
	<div style="width: 136px; float: left; height: 70px;">
	<table cellpadding="3" cellspacing="0" style="font-family: arial; font-size: 12px;text-align:left;width : 50%;">
    <tr>
      <td>Date :</td>
      <td><?php echo $date ?></td>
    </tr>
    <tr>
      <td>Receipt:</td>
      <td>#<?php echo $transaction_id?></td></b>
    </tr>

	</table>
</div>
 <div style="width: 136px; float: left; height: 70px;">
 <table cellpadding="3" cellspacing="0" style="font-family: arial; font-size: 12px;text-align:right;width : 100%;">
   <tr>
     <td>Invoice :</td>
     <td><?php echo $invoice ?></td>
   </tr>
   <tr>
     <td>Cashier :</td>
     <td><?=$user_data['first'];?></td>
   </tr>
   </table>
 </div>
	<div class="clearfix"></div>
	</div>
	<div style="width: 70%; margin-top:-70px;"><br><br><br>
	<table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 20px;	text-align:left;" width="50%">
		<thead>
			<tr>

				<th> Item Name </th>
				<th> Qty </th>
				<th> Price </th>
				<th> Sub Total</th>
			</tr>
		</thead>
		<tbody>

				<?php
					$id=$_GET['invoice'];
					$result = $db->prepare("SELECT * FROM sales_order WHERE invoice= :userid");
					$result->bindParam(':userid', $id);
					$result->execute();
					for($i=0; $row = $result->fetch(); $i++){
				?>
				<tr class="record">

				<td><?php echo $row['gen_name']; ?></td>
				<td><?php echo $row['qty']; ?></td>
			<td>
				<?php
				$ppp=$row['price'] + $row['discount'];

				echo formatMoney($ppp, true);
				?>
				</td>

				<td>
				<?php
				$dfdf=$row['amount'];
				echo formatMoney($dfdf, true);
				?>
				</td>
				</tr>
				<?php
					}
				?>

				<tr>
					<td colspan="3" style=" text-align:right;"><strong style="font-size: 20px;">Total Amount: &nbsp;</strong></td>
					<td colspan="2"><strong style="font-size: 20px;">
					<?php
					$sdsd=$_GET['invoice'];
					$resultas = $db->prepare("SELECT sum(amount) FROM sales_order WHERE invoice= :a");
					$resultas->bindParam(':a', $sdsd);
					$resultas->execute();
					for($i=0; $rowas = $resultas->fetch(); $i++){
					$fgfg=$rowas['sum(amount)'];
					echo formatMoney($fgfg, true);
					}
					?>
					</strong></td>
				</tr>
				<?php if($pt=='cash'){
				?>
				<tr>
					<td colspan="3"style=" text-align:right;"><strong style="font-size: 20px; color: #222222;">Cash Tendered:&nbsp;</strong></td>
					<td colspan="2"><strong style="font-size: 20px; color: #222222;">
					<?php
					echo formatMoney($cash, true);
					?>
					</strong></td>
				</tr>
				<?php
				}
				?>
				<tr>
					<td colspan="3" style=" text-align:right;"><strong style="font-size: 20px; color: #222222;">
					<font style="font-size:20px;">
					<?php
					if($pt=='cash'){
					echo 'Change Given:';
					}
					if($pt=='credit'){
					echo 'Due Date:';
					}
					?>&nbsp;
					</strong></td>
					<td colspan="2"><strong style="font-size: 20px; color: #222222;">
					<?php
					function formatMoney($number, $fractional=false) {
						if ($fractional) {
							$number = sprintf('%.2f', $number);
						}
						while (true) {
							$replaced = preg_replace('/(-?\d+)(\d\d\d)/', '$1,$2', $number);
							if ($replaced != $number) {
								$number = $replaced;
							} else {
								break;
							}
						}
						return $number;
					}
					if($pt=='credit'){
					echo $cash;
					}
					if($pt=='cash'){
					echo formatMoney($amount, true);
					}
					?>
					</strong></td>
				</tr>

		</tbody>
	</table><br>
  <div style="font:bold 25px 'Aleo';"></div>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thank you for shopping with us!<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Powered by EkeTec IT Firm<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(020) 170-3337 / (054) 249-4320 <br><br>

	</div>
	</div>
	</div>
	</div>
<div class="pull-right" style="margin-right:100px;">
		<a href="javascript:Clickheretoprint()" style="font-size:20px;"><button class="btn btn-success btn-large"><i class="icon-print"></i> Print</button></a>
		</div>
</div>
</div>
