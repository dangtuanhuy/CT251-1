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
	$result = mysqli_query($conn,"SELECT BookNames FROM `book` WHERE BookId=$sp_ma");
	$row=mysqli_fetch_row($result);
	$ten=$row[0];			
}    
	else 
	{
		echo '<meta http-equiv="refresh" content="0: URL=imgs.php"/>';
	}
if(isset($_POST['btnLuu']))
{
	$sp_ma = $_POST['txtMa'];
	$taptin = $_FILES['fileHinhAnh'];
	if($taptin['type']=="image/jpg" || $taptin['type']=="image/jpeg" || $taptin['type']=="image/png" ||$taptin['type']=="image/gif")
	{
		if($taptin['size'] <= 614400)
		 {
			 $tentaptin ="resources/books/".$taptin['name'];
			 //copy($taptin['tmp_name'],$tentaptin);
			 $sqstring="insert into imgbook(ImgBook, BookId) values('$tentaptin', '$sp_ma')";
			 $rs = mysqli_query($conn,$sqstring);
			 if($rs)
			 {
				  echo "<script>alert('upload thành công...');</script>";
				  echo  '<meta http-equiv="refresh" content="0;URL=?page=imgs&ma='.$sp_ma.'">';
			 }
			 else 
			 {
				 echo  "<script>alert('upload hình không thành công...');</script>";
			     echo  '<meta http-equiv="refresh" content="0;URL=?page=imgs&ma='.$sp_ma.'">';
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
}?>
<div class="container">
 	<h2>Quản lý hình ảnh sách</h2>
			 	<form  id="frmHinhAnh" class="form-horizontal" name="frmHinhAnh" method="post" action="" enctype="multipart/form-data" role="form">
				<div class="form-group">
				<label for="txtTen" class="col-sm-2 control-label">Mã Sách(*):  </label>
				<div class="col-sm-10">
				<input type="text" name="txtMa" id="txtTen" class="form-control" value='<?php echo $sp_ma; ?>' readonly>
				</div>
				</div>	
                    <div class="form-group">    
                        <label for="txtTen" class="col-sm-2 control-label">Tên Sách(*):  </label>
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
						<div>
                        	<label class="control-label">STT</label>
                        </div>
                        <div>
                        	<label class="control-label">Hình ảnh</label>
                        </div>
                        <div>
                        	<label class="control-label">Xóa</label>
                        </div>
                    </div> <!-- <div class="col-sm-offset-2 col-sm-12">1 hang bang hinh anh-->
                   <!--Row du lieu-->
                   <?php
		  			$query = "select ImgBookId, ImgBook from imgbook where BookId=".$sp_ma;
					$result = mysqli_query($conn, $query) or die(mysqli_error($conn));
					$stt =  1;
					while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
					{	
					?>
							<div class='col-sm-offset-2 col-sm-12'>
							  <div class='col-sm-1'>
								<?php echo $stt; ?>
								</div>
							  <div class='col-sm-2'>
								<img src="../<?php echo $row['ImgBook']; ?>" width="100px"/>
							  </div>
							  <div class='col-sm-3'>
								  <a onclick="return deleteConfirm()" 
                                  href="?page=imgs&mahinh=<?php echo $row['ImgBookId'];  ?>">
								  <i class="fa fa-trash"></i></a>
							  </div>
                              
							</div>
                            <div class='col-sm-offset-2 col-sm-4'>
                           		<div><hr /></div>
                           </div>
                          <?php
						  $stt++;
					}

		  				?>
				<!-- <div class="form-group"> -Danh sach hinh anh-->

                   <div class="col-sm-offset-2 col-sm-12">
                   		<div class="col-sm-1">
						     <a href="?page=book"> Ðóng</a>
                        </div>
              		</div>
                    
				</form>
		</div><!--<div class="container">-->


<?php

 if(isset($_GET["mahinh"]))
 {
	 //neu xoa thi lay ma va tien hannh xoa
	 $mahinh = $_GET["mahinh"];
	 $ketqua = mysqli_query($conn,"select * from imgbook WHERE ImgBookId=$mahinh");
	 $row = mysqli_fetch_array($ketqua,MYSQLI_ASSOC);
	 $filecanxoa = $row['ImgBook'];
	 $sp_ma = $row['BookId'];
	 unlink("../../resources/books/".$filecanxoa);
	 mysqli_query($conn,"DELETE FROM imgbook WHERE ImgBookId=$mahinh");
	 echo '<meta http-equiv="refresh" content="0;URL=?page=imgs&ma='.$sp_ma.'"/>';
 }
?>

