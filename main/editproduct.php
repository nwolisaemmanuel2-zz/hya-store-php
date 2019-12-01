<?php
	include('../connect.php');
	$id=$_GET['id'];
	$result = $db->prepare("SELECT * FROM products WHERE product_id= :userid");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />

<script>
	function sum() {
	            var txtFirstNumberValue = document.getElementById('num1').value;
	            var txtSecondNumberValue = document.getElementById('num2').value;
	            var result = parseFloat(txtFirstNumberValue) + parseFloat(txtSecondNumberValue);
	            if (!isNaN(result)) {
	                document.getElementById('num3').value = result;

	            }

				 var txtFirstNumberValue = document.getElementById('num11').value;
	            var result = parseFloat(txtFirstNumberValue);
	            if (!isNaN(result)) {
	                document.getElementById('num22').value = result;
	            }

				 var txtFirstNumberValue = document.getElementById('num11').value;
	            var txtSecondNumberValue = document.getElementById('num33').value;
	            var result = parseFloat(txtFirstNumberValue) + parseFloat(txtSecondNumberValue);
	            if (!isNaN(result)) {
	                document.getElementById('num55').value = result;

	            }

				 var txtFirstNumberValue = document.getElementById('num4').value;
				 var result = parseFloat(txtFirstNumberValue);
	            if (!isNaN(result)) {
	                document.getElementById('num5').value = result;
					}

	        }
	</script>

<form action="saveeditproduct.php" method="post">
<center><h4><i class="icon-edit icon-large"></i> Edit Product</h4></center>
<hr>
<div id="ac">
<input type="hidden" name="memi" value="<?php echo $id; ?>" />
<span>Product code : </span><input type="text" style="width:265px; height:30px;"  name="code" value="<?php echo $row['product_code']; ?>" /><br>
<span>Item Name : </span><input type="text" style="width:265px; height:30px;"  name="gen" value="<?php echo $row['gen_name']; ?>" /><br>
<span>Brand : </span><textarea style="width:265px; height:50px;" name="name" ><?php echo $row['product_name']; ?> </textarea><br>
<span>Date Arrival: </span><input type	="date" style="width:265px; height:30px;" name="date_arrival" value="<?php echo $row['date_arrival']; ?>" /><br>
<span>Expiry Date : </span><input type	="date" style="width:265px; height:30px;" name="exdate" value="<?php echo $row['expiry_date']; ?>" /><br>
<span>Selling Price : </span><input type="text" style="width:265px; height:30px;"  name="price" value="<?php echo $row['price']; ?>" onkeyup="sum();" Required/><br>
<span>Original Price : </span><input type="text" style="width:265px; height:30px;"  name="o_price" value="<?php echo $row['o_price']; ?>" onkeyup="sum();" Required/><br>
<span>Profit : </span><input type="text" style="width:265px; height:30px;"  name="profit" value="<?php echo $row['profit']; ?>" readonly><br>
<span>Supplier : </span>
<select name="supplier" style="width:265px; height:30px; margin-left:-5px;" >
	<option><?php echo $row['supplier']; ?></option>
	<?php
	$results = $db->prepare("SELECT * FROM supliers");
		$results->bindParam(':userid', $res);
		$results->execute();
		for($i=0; $rows = $results->fetch(); $i++){
	?>
		<option><?php echo $rows['suplier_name']; ?></option>
	<?php
	}
	?>
</select><br>
<span>Qty Add/Return </span><input type="text" name="qtyadd" id="num2" style="width:265px; height:30px;" min="0" onkeyup="sum();" value="" />
<span>QTY Left: </span><input type="number" id="num1" style="width:265px; height:30px;" min="0" value="<?php echo $row['qty']; ?>" onkeyup="sum;()" readonly /><br>
<span>QTY New: </span><input type="number" id="num3" style="width:265px; height:30px;" min="0" name="qty" value="<?php echo $row['qty']; ?>" onkeyup="sum;()" readonly /><br>
<span>Quantity Sold: </span><input type="number" style="width:265px; height:30px;" min="0" name="sold" value="<?php echo $row['qty_sold']; ?>" /><br>

<!--<span>New Qty : </span><input type="number" name="qty_left" id="num3" class = "form-control" onkeyup="sum;()" value="" readonly />-->
<div style="float:right; margin-right:10px;">

<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save Changes</button>
</div>
</div>
</form>
<?php
}
?>