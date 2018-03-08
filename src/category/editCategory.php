
<?php 
if(isset($_GET['ma'])){
	$ma =$_GET["ma"];
	$result = mysqli_query($conn,"SELECT * FROM `category` WHERE CategoryId=".$ma);
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
			mysqli_query($conn,"UPDATE `category` SET CategoryNames='$ten', CategoryDescription='$mota' where CategoryId=$ma");
			echo '<meta http-equiv="refresh" content="0;URL=?page=category"/>';
		}
	}

	?>

	<h2 class="text-center">CẬP NHẬT SÁCH </h2>
	<form id="form1" name="form1" method="post" action="" class="form-horizontal" role="form">
		<div class="form-group">
			<label for="txtTen" class="col-sm-2 control-label">Tên Sách(*):  </label>
			<div class="col-sm-10">
				<input type="text" name="txtTen" id="txtTen" class="form-control" placeholder="Tên Sách" value='<?php echo $ten; ?>'>
			</div>
		</div>
		<div class="form-group">
			<label for="txtMoTa" class="col-sm-2 control-label">Mô tả(*):  </label>
			<div class="col-sm-10">
				<input type="text" name="txtMoTa" id="txtMoTa" class="form-control" placeholder="Sách dành cho lứa tuổi dưới 18" value='<?php echo $mota; ?>'>
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
			mysqli_query($conn,"UPDATE `category` SET CategoryNames='$ten', CategoryDescription='$mota' where CategoryId=$ma");
		echo '<meta http-equiv="refresh" content="0;URL=?page=updatecatagory"/>';
		} 
}
?>
<?php 
}
else
{
	echo '<meta http-equiv="refresh" content="0;URL=?page=category"/>';
}
?>