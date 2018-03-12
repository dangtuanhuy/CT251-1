
<?php
$name = "";
if( isset($_POST["btnAdd"]))
{
	$name = $_POST["txtSach"];
	$sqlinsert ="INSERT INTO `language`(`LaguageName`) VALUES('$name')";
	mysqli_query($conn,$sqlinsert);
	echo '<meta http-equiv="refresh" content="0;URL=?page=lang"/>';

}


?>
<div class="container">
<form method="post" class="">
	<div class="form-group">
		<h4 class="text-center">THÊM NGÔN NGỮ</h4>
	</div>
	<div class="form-group">
		<label for="txtSach">Tên Ngôn Ngữ</label>
		<input type="text" class="form-control" id="txtSach" name="txtSach" placeholder="Tên ngôn ngữ">
	</div>
	<input type="submit" class="btn btn-danger" name="btnAdd" value="Thêm Mới"/>
	<input type="reset" name="btnReset" value="Nhập Lại" class="btn btn-info" />
</form>
</div>
