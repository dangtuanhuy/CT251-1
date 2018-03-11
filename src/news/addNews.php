<?php 
function blindUserList($conn)
{
	$sqlSelect ="
	SELECT `Username`, `Passwords`, `DisplayName`, `UserImg`, `Birthday`, `Gender`, `Address`, `Phone`, `Email`, `ExpriredDate`, `Active`, `Status`, `Role` FROM `user`";
	$result = mysqli_query($conn,$sqlSelect);
	echo "<select class='form-control' name='slUser'>
	<option value='0'>Người Cập Nhật Tin Tức</option>";
	while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
		echo "
		<option value='".$row['Username']."'>".$row['DisplayName']."</option>";
	}
	echo "</select>";
}
?>
<?php 

?>
<div class="container">
	<form method="post" class="">
		<div class="form-group">
			<h4 class="text-center">THÊM TIN TỨC</h4>
		</div>
		<div class="form-group">
			<label for="txtTiTle">Tựa Đề:</label>
			<input type="text" class="form-control" id="txtTiTle" name="txtTiTle" placeholder="Tựa Đề">
		</div>
		<div class="form-group">
			<label for="txtDate">Ngày Cập Nhật: </label>
			<input type="date" class="form-control" id="txtDate" name="txtDate" placeholder="VD: 23/3/2099">
		</div>
		<div>
			<label for="txtTinTuc">Tên Tin Tức</label>
			<textarea name="txtTinTuc" id="txtTinTuc" class="form-control" placeholder="VD: Tin Cuối Ngày"></textarea>
		</div>
		<div class="form-group">
			<label for="txtNoidung">Nội dung: </label>
			<input type="text" class="form-control" id="txtNoidung" name="txtNoidung" placeholder="VD: 41">
		</div>
		<div class="form-group">
			<label for="txtDeline">Người đăng tin: </label>
			<?php blindUserList($conn) ?>
		</div>
		
		<input type="submit" class="btn btn-danger" name="btnAdd" value="Thêm Mới"/>
		<input type="reset" name="btnReset" value="Nhập Lại" class="btn btn-info" />
	</form>

</div>