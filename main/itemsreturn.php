<?php
  require_once '../core/inti.php';
  if(!is_logged_in()){
   header('Location: login.php');
 }
  //include 'includes/head.php';
  //include 'includes/navigation.php';
?>
<!DOCTYPE html>
<html>
<head>
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
<script type="text/javascript">
  jQuery(document).ready(function($) {
    $('a[rel*=facebox]').facebox({
      loadingImage : 'src/loading.gif',
      closeImage   : 'src/closelabel.png'
    })
  })
</script>
<?php
	require_once('auth.php');
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
</head>
<body>
<?php include('navfixed.php');?>
	<?php
/*$position=$_SESSION['SESS_LAST_NAME'];
if($position=='cashier') {*/
?>

<?php
$now = new Datetime();
/*}
if($position=='admin') {*/
?>
<br><br>
	<div class="container-fluid">
      <div class="row-fluid">
	<div class="span2">
          <div class="well sidebar-nav">
                     <ul class="nav nav-list">
              <li class="active"><a href="#"><i class="icon-dashboard icon-2x"></i> Dashboard </a></li>
			<li><a href="sales.php?id=cash&invoice=<input type='text'>"><i class="icon-shopping-cart icon-2x"></i> Sales</a>  </li>
      <input type='text'>
<?php if(has_permission('admin')):?>
      <li><a href="products.php"><i class="icon-list-alt icon-2x"></i> Products</a>                                    </li>
			<li><a href="customer.php"><i class="icon-group icon-2x"></i> Customers</a>                                    </li>
			<li><a href="supplier.php"><i class="icon-group icon-2x"></i> Suppliers</a>
      <?php endif;?>                                 </li>
			<li><a href="salesreport.php?d1=0&d2=0"><i class="icon-bar-chart icon-2x"></i> Sales Report</a> </li>
      <li><a href="dayreport.php?d1=0&d2=0"><i class="icon-bar-chart icon-2x"></i> Daily Sales</a> </li>
      <?php if(has_permission('admin')):?>
      <li>  <a href="sales_inventory.php"><i class="icon-bar-chart icon-2x"></i><br>Product Inventory</a></li>
 <li><a href="users.php"><i class="icon-group icon-2x"></i>Account Users</a>                </li>
 <?php endif;?>
 <a href="backup.php"><font color="red"><i class="icon-list-alt icon-2x"></i></font><br>System Backup</a>

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
	<div class="contentheader">
			<i class="icon-dashboard"></i> Dashboard
			</div>
			<ul class="breadcrumb">
			<li class="active">Dashboard</li>
			</ul>
			<font style=" font:bold 44px 'Aleo'; text-shadow:1px 1px 25px #000; color:3393FF;"><center>OMAN ENTERPRISE</center></font>
<div id="mainmain">

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

  <?php
						include('../connect.php');
						   date_default_timezone_set("WestAfrica/Accra");
  //echo "Date: " . date("d/m/Y");
						$today = date('m/d/Y');
						$sql = "SELECT sum(amount) FROM sales WHERE date = ?";
						$query = $db->prepare($sql);
						$query->execute(array($today));
						$fetch = $query->fetchAll();

						foreach ($fetch as $key => $value) {
							$data = $value['sum(amount)'];
						}
						$json = json_encode($data);

						function formatMone($number){
						  return number_format($number,2);
						}
							?>
						<?php echo "<font style = 'color:black;'>Total Sales For Today:  </font>";
						echo "<font style = 'color:red;'>" . money($data, true) . "</font>" . " ";
						echo  $today;  ?><br>

            <a class="list-group-item" href ="view_productqty.php">
						Re-Order Items<span class="badge">
						<?php
						include('../connect.php');
						$result = $db->prepare("SELECT * FROM products where qty < 10 ORDER BY product_id DESC");
						$result->execute();
						$rowcount = $result->rowcount();
						?>
					 <font color="red" style="font:bold 20px 'Aleo';"><?php echo $rowcount;?>
					</span>
				</a><br>

<a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i><br> Sales</a>
<?php if(has_permission('admin')):?>
<a href="products.php"><i class="icon-list-alt icon-2x"></i><br> Products</a>
<a href="customer.php"><i class="icon-group icon-2x"></i><br> Customers</a>
<a href="supplier.php"><i class="icon-group icon-2x"></i><br> Suppliers</a>
<a href="sales_inventory.php"><i class="icon-bar-chart icon-2x"></i><br>Product Inventory</a>
<?php endif;?>
<a href="salesreport.php?d1=0&d2=0"><i class="icon-bar-chart icon-2x"></i><br> Sales Report</a>
<a href="dayreport.php?d1=0&d2=0"><i class="icon-bar-chart icon-2x"></i><br> Daily Sales</a> </li>
<a href="change_password.php"><font color="red"><i class="icon-off icon-2x"></i></font><br>Account Setting</a>
<a href="backup.php"><font color="red"><i class="icon-list-alt icon-2x"></i></font><br>System Backup</a>
<?php
/*}*/
?>
<div class="clearfix"></div>
</div>
</div>
</div>
</div>
</body>
<?php include('footer.php'); ?>
</html>
