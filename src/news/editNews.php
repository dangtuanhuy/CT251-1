<?php 

if(isset($_GET["ma"])){

	$ma = $_GET["ma"];
	
	$sqlstring = "SELECT`Title`, `NewsDate`, `NewsNames`, `NewsContent`, `Username` FROM `news` WHERE NewsId=".$ma;
	$result = mysqli_query($conn, $sqlstring);
	$row = mysqli_fetch_row($result);
	$title = $row['0'];
	$newsdate= $row['1'];
	$newsname = $row['2'];
	$newscontent= $row['3'];
	$idUser = $row['4'];
	
}
else
{
	echo '<meta http-equiv="refresh" content="0;URL=?page=news"/>';
}
function bindUpdateUser($conn, $selectedValue) {
	$sqlstring = "SELECT * FROM news
	INNER JOIN user on news.NewsId = user.Username";
	$result = mysqli_query($conn, $sqlstring);
	echo "<select name='slUser' class='form-control'>
	<option value='0'>Vui lòng chọn người đăng tin</option>";
	while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
		if ($row['Username'] == $selectedValue) {
			echo "<option value='" . $row['Username']."' selected>".$row['DisplayName']."</option>";
		} 
		else {
			echo "<option value='".$row['Username']."'>".$row['DisplayName']."</option>";
		}
	}
	echo "</select>";
}

if(isset($_POST["btnCapNhat"])){
	$title = $_POST["txtTiTle"];
	$newsdate  = date('Y-m-d',  strtotime($_POST['txtDate']));
	$newsname = $_POST["txtTinTuc"];
	$newscontent = $_POST["txtDetails"];
	$idUser = $_POST["slUser"];
	
	$sqlstring="UPDATE `news` SET 
	Title='".$title."',
	NewsDate = '".$newsdate."',
	BNewsNames = '".$newsname ."',
	NewsContent = '".$newscontent."',
	Username = '".$idUser."',
	WHERE NewsId=".$ma;
	mysqli_query($conn,$sqlstring);
			echo '<meta http-equiv="refresh" content="0;URL=?page=news"/>';
	}
?>
<div class="container">
	<form method="post" class="">
		<div class="form-group">
			<h4 class="text-center">CẬP NHẬT TIN TỨC</h4>
		</div>
		<div class="form-group">
			<label for="txtTiTle">Tựa Đề:</label>
			<input type="text" class="form-control" id="txtTiTle" name="txtTiTle" placeholder="Tựa Đề" value='<?php echo $title; ?>'>
		</div>
		<div class="form-group">
			<label for="txtDate">Ngày Cập Nhật: </label>
			<input type="date" class="form-control" id="txtDate" name="txtDate" placeholder="VD: 23/3/2099" value='<?php echo $newsdate; ?>'>
		</div>
		<div>
			<label for="txtTinTuc">Tên Tin Tức</label>
			
			<input type="text" class="form-control" id="txtTinTuc" name="txtTinTuc" value='<?php echo $newsname; ?>'/>
		</div>
		<div class="form-group">
			<label for="txtNoidung">Nội dung: </label>
			<textarea class="form-control" id="txtDetails" name="txtDetails" placeholder="VD: 41" value='<?php echo $newscontent; ?>'></textarea>
		</div>
		<div class="form-group">
			<label for="txtDeline">Người đăng tin: </label>
			<?php bindUpdateUser($conn, $idUser ) ?>
		</div>
		
		<input type="submit" class="btn btn-danger" name="btnCapNhat" value="Cập Nhật"/>
		<input type="reset" name="btnReset" value="Nhập Lại" class="btn btn-info" />
	</form>

</div>