<?php 
//include_once("connect.php");
if(isset($_GET['ma'])){
	$ma =$_GET["ma"];
	$result = mysqli_query($conn,"SELECT `PublisherName` FROM `publisher` WHERE PublisherId=".$ma);
	$row=mysqli_fetch_row($result);
	$details=$row[0];
		
	?>
	<?php 
	if(isset($_POST["btnCapNhat"])){
		$details=$_POST['txtDetails1'];
		
		$loi="";
		if($details=="") $loi.="<li>Vui lòng nhập tên nhà xuất bản</li>";
		
		if($loi!="") echo $loi;
		else{
			mysqli_query($conn,"UPDATE `publisher` SET PublisherName='$details' where PublisherId=$ma");
			echo '<meta http-equiv="refresh" content="0;URL=?page=updatepublisher"/>';
		}
	}

	?>
<div class="container">	
	<h2 class="text-center">CẬP NHẬT NHÀ XUẤT BẢN</h2>
	<form id="form1" name="form1" method="post" action="" class="form-horizontal" role="form">
		<div class="form-group">
			<label for="txtDetails" class="col-sm-2 control-label">Tên Nhà Xuất Bản(*):  </label>
			<div class="col-sm-10">
				<input type="text" name="txtDetails1" id="txtDetails1" class="form-control" placeholder="VD: Dân Trí" value='<?php echo $details; ?>'>
			</div>
		</div>
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit"  class="btn btn-primary" name="btnCapNhat" id="btnCapNhat" value="Cập nhật"/>
				<input type="reset" class="btn btn-primary" name="btnBoQua"  id="btnBoQua" value="Nhập lại"  />                              	
			</div>
		</div>
	</form>
	</div>

	<?php
	if(isset($_POST["btnCapNhat"]))
	{
		$details = $_POST["txtDetails"];
	
		$loi="";
		if($details===""){
			$loi.="<li>Bạn vui lòng nhập tên tác giả</li>";
		}
		
		if($loi!=""){
			echo "<ul>$loi</ul>";
		}
		else
		{
			mysqli_query($conn,"UPDATE `publisher` SET PublisherName='$details' where PublisherId=$ma");
			echo '<meta http-equiv="refresh" content="0;URL=?page=publisher"/>';
		} 
	}
	?>
	<?php 
}
else
{
	echo '<meta http-equiv="refresh" content="0;URL=?page=publisher"/>';
}
?>