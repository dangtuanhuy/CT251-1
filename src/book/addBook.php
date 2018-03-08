<!-- Lấy dữ liệu từ bản con -->
<?php
function blindCategoryList($conn)
{
	$sqlSelect ="
	SELECT `CategoryId`, `CategoryNames`, `CategoryDescription` 
	FROM `category`";
	$result = mysqli_query($conn,$sqlSelect);
	echo "<select class='form-control' name='slCategory'>
	<option value='0'>Chọn Loại Sách</option>";
	while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
		echo "
		<option value='".$row['CategoryId']."'>".$row['CategoryNames']."</option>";
	}
	echo "</select>";
}
function blindPublisher($conn)
{
	$sqlSelect ="
	SELECT `PublisherId`, `PublisherName` FROM `publisher`";
	$result = mysqli_query($conn,$sqlSelect);
	echo "<select class='form-control' name='slPublisher'>
	<option value='0'>Chọn Nhà Xuất Bản</option>";
	while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
		echo "
		<option value='".$row['PublisherId']."'>".$row['PublisherName']."</option>";
	}
	echo "</select>";
}
function blindLanguage($conn)
{
	$sqlSelect ="
	SELECT `LanguageId`, `LaguageName` FROM `language`";
	$result = mysqli_query($conn,$sqlSelect);
	echo "<select class='form-control' name='slLanguage'>
	<option value='0'>Chọn Ngôn Ngữ Sách</option>";
	while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
		echo "
		<option value='".$row['LanguageId']."'>".$row['LaguageName']."</option>";
	}
	echo "</select>";
}
function blindLentCost($conn)
{
	$sqlSelect ="
	SELECT `LentCostId`, `LentDetails`, `LentCost` FROM `lendcost`";
	$result = mysqli_query($conn,$sqlSelect);
	echo "<select class='form-control' name='slLentCost'>
	<option value='0'>Chọn Giá Cho Mượn</option>";
	while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
		echo "
		<option value='".$row['LentCostId']."'>".$row['LentCost']."</option>";
	}
	echo "</select>";
}
?>


<div class="container">
	<form method="post" class="">
		<div class="form-group">
			<h4 class="text-center">THÊM SÁCH</h4>
		</div>
		<div class="form-group">
			<label for="txtSach">Tên Sách:</label>
			<input type="text" class="form-control" id="txtSach" name="txtSach" placeholder="Tên sách">
		</div>
		<div class="form-group">
			<label for="txtPrice">Giá Gốc: </label>
			<input type="txtPrice" class="form-control" id="txtPrice" name="txtMoTa" placeholder="VD: 80USD">
		</div>
		<div>
			<label for="txtDetails">Nội dung</label>
			<textarea name="txtDetails" id="txtDetails" class="form-control" placeholder="VD: Chuyên viên Lập Trình IoT"></textarea>
		</div>
		<div class="form-group">
			<label for="txtNum">Số Lượng: </label>
			<input type="number" class="form-control" id="txtNum" name="txtNum" placeholder="VD: 41">
		</div>
		<div class="form-group">
			<label for="txtDate">Ngày cập nhật: </label>
			<input type="date" class="form-control" id="txtDate" name="txtDate" placeholder="VD: 41">
		</div>
		<div class="form-group">
			<label for="txtDeline">Thời hạn mượn: </label>
			<input type="number" class="form-control" id="txtDeline" name="txtDeline" placeholder="VD: 2">
		</div>
		<div class="form-group">
			<label for="slCategory">Loại Sách: </label>
			<?php blindCategoryList($conn) ?>
		</div>
		<div class="form-group">
			<label for="slPublisher">Nhà Xuất Bản: </label>
			<?php blindPublisher($conn) ?>
		</div>
		<div class="form-group">
			<label for="slLanguage">Ngô Ngữ: </label>
			<?php blindLanguage($conn) ?>
		</div>
		<div class="form-group">
			<label for="slLentCost">Giá Cho Thuê: </label>
			<?php blindLentCost($conn) ?>
		</div>
		<input type="submit" class="btn btn-danger" name="btnAdd" value="Thêm Mới"/>
		<input type="reset" name="btnReset" value="Nhập Lại" class="btn btn-info" />
	</form>

</div>