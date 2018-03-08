<?php 

$details = "";
$price ="";
if(isset($_POST["btnAdd"]))
{
	$details  = $_POST["txtDetails"];
	$price = $_POST["txtPrices"];
	$sqlinsert = "INSERT INTO `lendcost`(`LentDetails`, `LentCost`) VALUES ('$details','$price')";
	mysqli_query($conn,$sqlinsert);
	echo '<meta http-equiv="refresh" content="0;URL=?page=lent"/>';

}
?>
<div class="container">
<form action="#" method="post" accept-charset="utf-8">
	<div class="form-group">
	<h4 class="text-center">THÊM GIÁ MƯỢN SÁCH</h4>
</div>
<div class="form-group">
	<label for="txtDetails">Chi Tiết Mượn:</label>
	<input type="text" class="form-control" id="txtDetails" name="txtDetails" placeholder="VD: Theo Mùa">
</div>
<div class="form-group">
	<label for="txtPrices">Giá Mượn:</label>
	<input type="text" class="form-control" id="txtPrices" name="txtPrices" placeholder="Tên VD: 90000VND">
</div>
<input type="submit" class="btn btn-danger" name="btnAdd" value="Thêm Mới"/>
<input type="reset" name="btnReset" value="Nhập Lại" class="btn btn-info" />
</form>
</div>