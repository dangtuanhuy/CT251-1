
<?php

$name = "";
if( isset($_POST["btnAdd"]))
{
	$name = $_POST["txtNXB"];
	$sqlinsert ="INSERT INTO `publisher`(`PublisherName`) VALUES('$name')";
	mysqli_query($conn,$sqlinsert);
	echo '<meta http-equiv="refresh" content="0;URL=?page=publisher"/>';
}


?>
<div class="container">
<form method="post" class="">
	<div class="form-group">
		<h4 class="text-center">THÊM NHÀ XUẤT BẢN</h4>
	</div>
	<div class="form-group">
		<label for="txtNXB">Tên Nhà Xuất Bản:</label>
		<input type="text" class="form-control" id="txtNXB" name="txtNXB" placeholder="Tên Nhà Xuất Bản">
	</div>
	<input type="submit" class="btn btn-danger" name="btnAdd" value="Thêm Mới"/>
	<input type="reset" name="btnReset" value="Nhập Lại" class="btn btn-info" />
</form>
</div>
