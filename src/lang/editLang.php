
<?php 
if(isset($_GET['ma'])){
	$ma =$_GET["ma"];
	$result = mysqli_query($conn,"SELECT * FROM `language` WHERE LanguageId=".$ma);
	$row=mysqli_fetch_row($result);
	$ten=$row[1];		
	?>
	<?php 
	if(isset($_POST["btnCapNhat"])){
		$ten=$_POST['txtTen'];
		$loi="";
		if($ten=="") $loi.="<li>Vui lòng nhập tên Sách</li>";
		if($loi!="") echo $loi;
		else{
			mysqli_query($conn,"UPDATE `language` SET LaguageName='$ten' where LanguageId=$ma");
			echo '<meta http-equiv="refresh" content="0;URL=?page=lang"/>';
		}
	}

	?>

	<h2 class="text-center">CẬP NHẬT NGÔN NGỮ </h2>
	<form id="form1" name="form1" method="post" action="" class="form-horizontal" role="form">
		<div class="form-group">
			<label for="txtTen" class="col-sm-2 control-label">TÊN NGÔN NGỮ(*):  </label>
			<div class="col-sm-10">
				<input type="text" name="txtTen" id="txtTen" class="form-control" placeholder="Tên Ngôn Ngữ" value='<?php echo $ten; ?>'>
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
		$loi="";
		if($ten===""){
			$loi.="<li>Bạn chưa nhập tên ngôn ngữ</li>";
		}
		if($loi!=""){
			echo "<ul>$loi</ul>";
		}
		else
		{
			mysqli_query($conn,"UPDATE `language` SET LaguageName='$ten' where LanguageId=$ma");
			echo '<meta http-equiv="refresh" content="0;URL=?page=updatelang"/>';
		} 
	}
	?>
	<?php 
}
else
{
	echo '<meta http-equiv="refresh" content="0;URL=?page=lang"/>';
}
?>