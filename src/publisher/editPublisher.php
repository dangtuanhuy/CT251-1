<?php 
//include_once("connect.php");
if(isset($_GET['ma'])){
	$ma =$_GET["ma"];
	$result = mysqli_query($conn,"SELECT `PublisherId`, `PublisherName` FROM `publisher` WHERE LentCostId=".$ma);
	$row=mysqli_fetch_row($result);
	$details=$row[0];
	$prices= $row[1];		
	?>
	<?php 
	if(isset($_POST["btnCapNhat"])){
		$details=$_POST['txtDetails'];
		$prices=$_POST['txtPrice'];
		$loi="";
		if($details=="") $loi.="<li>Vui lòng nhập hình thức mượn</li>";
		if($prices=="") $loi.="<li>Vui lòng nhập giá mượn</li>";
		if($loi!="") echo $loi;
		else{
			mysqli_query($conn,"UPDATE `lendcost` SET LentDetails='$details', LentCost='$$prices' where LentCostId=$ma");
			echo '<meta http-equiv="refresh" content="0;URL=?page=Updatelent"/>';
		}
	}

	?>
<div class="container">	
	<h2 class="text-center">CẬP NHẬT NHÀ XUẤT BẢN</h2>
	<form id="form1" name="form1" method="post" action="" class="form-horizontal" role="form">
		<div class="form-group">
			<label for="txtDetails" class="col-sm-2 control-label">Hình Thức Mượn(*):  </label>
			<div class="col-sm-10">
				<input type="text" name="txtDetails" id="txtDetails" class="form-control" placeholder="VD: Mượn Theo Mùa" value='<?php echo $details; ?>'>
			</div>
		</div>
		<div class="form-group">
			<label for="txtMoTa" class="col-sm-2 control-label">Giá Mượn(*):  </label>
			<div class="col-sm-10">
				<input type="text" name="txtPrice" id="txtPrice" class="form-control" placeholder="900000VND" value='<?php echo $prices; ?>'>
			</div>
		</div>
		<div class="form-group">
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
		$prices= $_POST["txtPrice"];
		$loi="";
		if($details===""){
			$loi.="<li>Bạn vui lòng nhập hình thức mượn</li>";
		}
		if($prices===""){
			$loi.="<li>Bạn vui lòng nhập giá mượn</li>";
		}
		if($loi!=""){
			echo "<ul>$loi</ul>";
		}
		else
		{
			mysqli_query($conn,"UPDATE `lendcost` SET LentDetails='$details', LentCost='$prices' where LentCostId=$ma");
			echo '<meta http-equiv="refresh" content="0;URL=?page=lent"/>';
		} 
	}
	?>
	<?php 
}
else
{
	echo '<meta http-equiv="refresh" content="0;URL=?page=lent"/>';
}
?>