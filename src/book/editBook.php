<?php 
// $name = "";
// $price1 = "";
// $details = "";
// $num = "";
// $dateupdate = date_default_timezone_set('Asia/Vientiane');
// $timelent = "";
// $idCat = "";
// $idPub = "";
// $idLang = "";
// $idLent = "";
if(isset($_GET["ma"])){

	$ma = $_GET["ma"];
	
	$sqlstring = "SELECT BookNames,BookPrices,BookDescription,BookQuantity,BookUpdateDate,BookLentTimes,
	CategoryId,PublisherId,LanguageId,LentCostId FROM `book` where BookId=".$ma;
	$result = mysqli_query($conn, $sqlstring);
	$row = mysqli_fetch_row($result);
	$name = $row['0'];
	$price1 = $row['1'];
	$details  = $row['2'];
	$num = $row['3'];
	$dateupdate = $row['4'];
	$timelent= $row['5'];
	$idCat = $row['6'];
	$idPub = $row['7'];
	$idLang  = $row['8'];
	$idLent = $row['9'];
}
else
{
	echo '<meta http-equiv="refresh" content="0;URL=?page=book"/>';
}
function bindUpdateCategory($conn, $selectedValue) {
	$sqlstring = "SELECT * FROM book
	INNER JOIN category on book.BookId = category.CategoryId";
	$result = mysqli_query($conn, $sqlstring);
	echo "<select name='slCategory' class='form-control'>
	<option value='0'>Chọn loại sách</option>";
	while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
		if ($row['CategoryId'] == $selectedValue) {
			echo "<option value='" . $row['CategoryId']."' selected>".$row['CategoryNames']."</option>";
		} 
		else {
			echo "<option value='".$row['CategoryId']."'>".$row['CategoryNames']."</option>";
		}
	}
	echo "</select>";
}
function bindUpdatePublisher($conn, $selectedValue) {
	$sqlstring = "SELECT * FROM book
				INNER JOIN publisher ON book.BookId = publisher.PublisherId";
	$result = mysqli_query($conn, $sqlstring);
	echo "<select name='slPublisher'class='form-control'>
	<option value='0'>Chọn loại nhà xuất bản</option>";
	while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
		if ($row['PublisherId'] == $selectedValue) {
			echo "<option value='" . $row['PublisherId']."' selected>".$row['PublisherName']."</option>";
		} 
		else {
			echo "<option value='".$row['PublisherId']."'>".$row['PublisherName']."</option>";
		}
	}
	echo "</select>";
}
function bindUpdateLanguage($conn, $selectedValue) {
	$sqlstring = "SELECT * FROM book
				INNER JOIN language ON book.BookId = language.LanguageId";
	$result = mysqli_query($conn, $sqlstring);
	echo "<select name='slLang' class='form-control'>
	<option value='0'>Chọn loại sản phẩm</option>";
	while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
		if ($row['LanguageId'] == $selectedValue) {
			echo "<option value='" . $row['LanguageId']."' selected>".$row['LaguageName']."</option>";
		} 
		else {
			echo "<option value='".$row['LanguageId']."'>".$row['LaguageName']."</option>";
		}
	}
	echo "</select>";
}
function bindUpdateLentCost($conn, $selectedValue) {
	$sqlstring = "SELECT * FROM book
				INNER JOIN lendcost ON book.BookId = lendcost.LentCostId";
	$result = mysqli_query($conn, $sqlstring);
	echo "<select name='slCost'class='form-control'>
	<option value='0'>Chọn giá cho thuê</option>";
	while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
		if ($row['LentCostId'] == $selectedValue) {
			echo "<option value='" . $row['LentCostId']."' selected>".$row['LentCost']."</option>";
		} 
		else {
			echo "<option value='".$row['LentCostId']."'>".$row['LentCost']."</option>";
		}
	}
	echo "</select>";
}
if(isset($_POST["btnCapNhat"])){
	$name = $_POST["txtSach"];
	$price1 = $_POST["txtPrice1"];
	$details = $_POST["txtDetails"];
	$num = $_POST["txtNum"];
	$dateupdate = date('Y-m-d',  strtotime($_POST['txtDate']));
	$timelent = $_POST["txtDeline"];
	$idCat = $_POST["slCategory"];
	$idPub = $_POST["slPublisher"];
	$idLang = $_POST["slLang"];
	$idLent = $_POST["slCost"];
	$sqlstring="UPDATE `book` SET 
	BookNames='".$name."',
	BookPrices = '".$price1."',
	BookDescription = '".$details."',
	BookQuantity = '".$num."',
	BookUpdateDate = '".$dateupdate."',
	BookLentTimes = '".$timelent."',
	CategoryId = '".$idCat."',
	PublisherId = '".$idPub."',
	LanguageId = '".$idLang."',
	LentCostId = '".$idLent."' WHERE BookId=".$ma;
	mysqli_query($conn,$sqlstring);
			echo '<meta http-equiv="refresh" content="0;URL=?page=book"/>';
	}
?>
<div class="container">
	<form method="post" class="">
		<div class="form-group">
			<h4 class="text-center">CẬP NHẬT THÔNG TIN SÁCH</h4>
		</div>
		<div class="form-group">
			<label for="txtSach">Tên Sách:</label>
			<input type="text" class="form-control" id="txtSach" name="txtSach" placeholder="Tên sách" required="" value='<?php echo $name; ?>'>
		</div>
		<div class="form-group">
			<label for="txtPrice1">Giá Gốc: </label>
			<input type="text" class="form-control" id="txtPrice1" name="txtPrice1" placeholder="VD: 80USD" required="" value='<?php echo $price1; ?>'>
		</div>
		<div>
			<label for="txtDetails">Nội dung</label>
			<textarea name="txtDetails" rows="3" class="form-control"><?php echo $details ; ?></textarea>
		</div>
		<div class="form-group">
			<label for="txtNum">Số Lượng: </label>
			<input type="text" class="form-control" id="txtNum" name="txtNum" placeholder="VD: 41" required="" value='<?php echo $num; ?>'>
		</div>
		<div class="form-group">
			<label for="txtDate">Ngày cập nhật: </label>
			<input type="date" class="form-control" id="txtDate" name="txtDate" placeholder="VD: 41" required="" value='<?php echo $dateupdate; ?>'>
		</div>
		<div class="form-group">
			<label for="txtDeline">Thời hạn mượn: </label>
			<input type="number" class="form-control" id="txtDeline" name="txtDeline" placeholder="VD: 2" required="" value='<?php echo $timelent ; ?>'>
		</div>
		<div class="form-group">
			<label for="slCategory">Loại Sách: </label>
			<?php bindUpdateCategory($conn, $idCat) ?>
		</div>
		<div class="form-group">
			<label for="slPublisher">Nhà Xuất Bản: </label>
			<?php bindUpdatePublisher($conn, $idPub) ?>
		</div>
		<div class="form-group">
			<label for="slLanguage">Ngôn Ngữ: </label>
			<?php bindUpdateLanguage($conn, $idLang) ?>
		</div>
		<div class="form-group">
			<label for="slLentCost">Giá Cho Thuê: </label>
			<?php bindUpdateLentCost($conn, $idLent) ?>
		</div>
		<input type="submit" class="btn btn-danger" name="btnCapNhat" value="Cập Nhật"/>
		<input type="reset" name="btnReset" value="Nhập Lại" class="btn btn-info" />
	</form>

</div>
