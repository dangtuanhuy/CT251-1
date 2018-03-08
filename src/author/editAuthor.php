
<?php 
if(isset($_GET['ma'])){
	$ma =$_GET["ma"];
	$result = mysqli_query($conn,"SELECT * FROM `author` WHERE AuthorId=".$ma);
	$row=mysqli_fetch_row($result);
	$ten=$row[1];
	$mota = $row[2];		
	?>
	<?php 
	if(isset($_POST["btnCapNhat"])){
		$ten=$_POST['txtTen'];
		$mota=$_POST['txtMoTa'];
		$loi="";
		if($ten=="") $loi.="<li>Vui lòng nhập tên Sách</li>";
		if($loi!="") echo $loi;
		else{
			mysqli_query($conn,"UPDATE `author` SET AuthorNames='$ten', AuthorDetails='$mota' where AuthorId=$ma");
			echo '<meta http-equiv="refresh" content="0;URL=?page=author"/>';
		}
	}

	?>

	<h2 class="text-center">CẬP NHẬT TÁC GIẢ </h2>
	<form id="form1" name="form1" method="post" action="" class="form-horizontal" role="form">
		<div class="form-group">
			<label for="txtTen" class="col-sm-2 control-label">Tên TÁC GIẢ(*):  </label>
			<div class="col-sm-10">
				<input type="text" name="txtTen" id="txtTen" class="form-control" placeholder="Tên Sách" value='<?php echo $ten; ?>'>
			</div>
		</div>
		<div class="form-group">
			<label for="txtMoTa" class="col-sm-2 control-label">Mô tả tác giả(*):  </label>
			<div class="col-sm-10">
				<input type="text" name="txtMoTa" id="txtMoTa" class="form-control" placeholder="Tác giả chưa 18" value='<?php echo $mota; ?>'>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit"  class="btn btn-primary" name="btnCapNhat" id="btnCapNhat" value="Cập nhật"/>
				<input type="reset" class="btn btn-primary" name="btnBoQua"  id="btnBoQua" value="Nhập lại"  />                              	
			</div>
		</div>
	</form>
<?php
	if(isset($_POST["btnCapNhat"]))
	{
		$ten = $_POST["txtTen"];
		$mota = $_POST["txtMoTa"];
		$loi="";
		if($ten===""){
			$loi.="<li>Bạn chưa nhập tên sách</li>";
		}
		if($loi!=""){
			echo "<ul>$loi</ul>";
		}
		else
		{
			mysqli_query($conn,"UPDATE `author` SET AuthorNames='$ten', AuthorDetails='$mota' where AuthorId=$ma");
		echo '<meta http-equiv="refresh" content="0;URL=?page=author"/>';
		} 
}
?>
<?php 
}
else
{
	echo '<meta http-equiv="refresh" content="0;URL=?page=author"/>';
}
?>