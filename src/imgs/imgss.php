<script type="text/javascript">
	function deleteConfirm()
	{
		if(confirm("Bạn có chắc chắn muốn xóa!")){
			return true;
		}
		else{
			return false;
		}
	}
</script>
 <?php 
if(isset($_GET['ma'])){
	$sp_ma =$_GET["ma"];
	$result = mysqli_query($conn,"SELECT Title FROM `news` WHERE NewsId=$sp_ma");
	$row=mysqli_fetch_row($result);
	$ten=$row[0];			
}    
	else 
	{
		echo '<meta http-equiv="refresh" content="0: URL=imgss.php"/>';
	}
if(isset($_POST['btnLuu']))
{
	$sp_ma = $_POST['txtMa'];
	$taptin = $_FILES['fileHinhAnh'];
	if($taptin['type']=="image/jpg" || $taptin['type']=="image/jpeg" || $taptin['type']=="image/png" ||$taptin['type']=="image/gif")
	{
		if($taptin['size'] <= 614400)
		 {
			 $tentaptin ="resources/news/".$taptin['name'];
			 //copy($taptin['tmp_name'],$tentaptin);
			 $sqstring="insert into imgnews(ImgNew, NewsId) values('$tentaptin', '$sp_ma')";
			 $rs = mysqli_query($conn,$sqstring);
			 if($rs)
			 {
				  echo "<script>alert('upload thành công...');</script>";
				  echo  '<meta http-equiv="refresh" content="0;URL=?page=imgss&ma='.$sp_ma.'">';
			 }
			 else 
			 {
				 echo  "<script>alert('upload hình không thành công...');</script>";
			     echo  '<meta http-equiv="refresh" content="0;URL=?page=imgss&ma='.$sp_ma.'">';
			 }
		 }
		 else
		 {
			 echo "hình có kích thước quá lớn!";
		 }
	}
	else
	{
		echo "hình ảnh không đúng định dạng";
	}
}
if(isset($_GET["mahinh"]))
 {
	 //neu xoa thi lay ma va tien hannh xoa
	 $mahinh = $_GET["mahinh"];
	 $ketqua = mysqli_query($conn,"select * from imgnews WHERE ImgNewId=$mahinh");
	 $row = mysqli_fetch_array($ketqua,MYSQLI_ASSOC);
	 $filecanxoa = $row['ImgNew'];
	 $sp_ma = $row['NewsId'];
	//  unlink("../../resources/news/".$filecanxoa);
	 mysqli_query($conn,"DELETE FROM imgnews WHERE ImgNewId=$mahinh");
	 echo '<meta http-equiv="refresh" content="0;URL=?page=imgss&ma='.$sp_ma.'"/>';
 }
?>
<div class="container">
 	<h2>Quản lý hình ảnh tin tức</h2>
			 	<form  id="frmHinhAnh" class="form-horizontal" name="frmHinhAnh" method="post" action="" enctype="multipart/form-data" role="form">
				<div class="form-group">
					<label for="txtTen" class="col-sm-2 control-label">Mã Tin Tức(*):  </label>
					<div class="col-sm-10">
						<input type="text" name="txtMa" id="txtTen" class="form-control" value='<?php echo $sp_ma; ?>'readonly="readonly"/>
					</div>
				</div>	
                    <div class="form-group">    
                        <label for="txtTen" class="col-sm-2 control-label">Tên Tin Tức(*):  </label>
						<div class="col-sm-10">
						     <input type="text" name="txtTen" id="txtTen" class="form-control" value='<?php echo $ten;  ?>' readonly="readonly"/> 
						</div>
                    </div>    
                     <div class="form-group">    
                        <label for="" class="col-sm-2 control-label">Hình Ảnh(*):  </label>
						<div class="col-sm-10">
							<input type="file" name="fileHinhAnh" id="fileHinhAnh" class="form-control"/>
                            <input type="submit"  class="btn btn-primary" name="btnLuu" id="btnLuu" value="Lưu Hình Ảnh"/>        
						</div>
                     </div>       
 
                    <!--Danh sach hinh anh-->
                    <div class="col-sm-offset-2 col-sm-12">
					<div class="row">
						<div>
                        	<label class=" col-sm-1 ">STT</label>
                        </div>
                        <div>
                        	<label class="col-sm-2">Hình ảnh</label>
                        </div>
                        <div>
                        	<label class=" col-sm-3">Xóa</label>
                        </div>
						</div>
                    </div> <!-- <div class="col-sm-offset-2 col-sm-12">1 hang bang hinh anh-->
                   <!--Row du lieu-->
                    <?php
                        $query = "select ImgNewId, ImgNew from imgnews where NewsId=".$sp_ma;
                        $result = mysqli_query($conn, $query) or die(mysqli_error($conn));
                        $stt =  1;
                        while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
                        {	
                        ?>
							<div class='col-sm-offset-2 col-sm-12'>
							<div class="row">
							  <div class='col-sm-1'>
								<?php echo $stt; ?>
								</div>
							  <div class='col-sm-2'>
								<img src="../<?php echo $row['ImgNew']; ?>" width="100px"/>
							  </div>
							  <div class='col-sm-3'>
								  <a onclick="return deleteConfirm()" 
                                  href="?page=imgss&mahinh=<?php echo $row['ImgNewId'];  ?>">
								  <i class="fa fa-trash"></i></a>
							  </div>
                              	</div>
							</div>
						
                            <!-- <div class='col-sm-offset-2 col-sm-4'>
                           		<div><hr /></div>
                           </div> -->
                          <?php
						  $stt++;
					}

		  				?>
				<!-- <div class="form-group"> -Danh sach hinh anh-->

                   <div class="col-sm-offset-2 col-sm-12">
                   		<div class="col-sm-1">
						     <a href="?page=news"><i class="fa fa-address-book"></i></a>
                        </div>
              		</div>
                    
				</form>
		</div><!--<div class="container">-->

