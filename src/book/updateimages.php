		
        <?php
		if(isset($_GET['id']))
		{
			$id = $_GET['id'];
			$sql = "select BookNames from Book where BookId='$id' ";
			$rs = mysqli_query($conn,$sql);
			$row = mysqli_fetch_row($rs);
			$ten = $row[0];
		}
		else
		{
			echo '<meta http-equiv="refresh" content="0;URL=Book.php"/>';
		}

	  if(isset($_POST['btnLuu']))
	  {
		  $id = $_POST['txtMa'];
		  $taptin = $_FILES['fileHinhAnh'];
		  if($taptin['type']=="image/jpg" || $taptin['type']=="image/jpeg" || $taptin['type']=="image/png" 	|| $taptin['type']=="image/gif")
		  {
			  if($taptin['size'] <= 614400 )
			  {
				  $tentaptin = $id."_".$taptin['name'];
				  copy($taptin['tmp_name'], "resource/".$tentaptin);
				  $sqstring="insert into imgbook(imgBook, BookId) values('$tentaptin', '$id')";
				  $rs = mysqli_query($conn,$sqstring);
				  if($rs)
				  {
					  echo "<script>alert('upload thành công...');</script>";
				  }
				  else 
				  {
					  echo "<script>alert('Upload hình không thành công...');</script>";
					  echo '<meta http-equiv="refresh" content="0;URL=Book.php?ma='.$id.'">';
				  }
			  }
			  else
			  {
				  echo "hình có kích thước quá lớn";
			  }
		  }
		  else
		  {
			  echo "Hình không đúng định dạng";
		  }	
	  }
	  
	 if(isset($_GET["mahinh"]))
		{
		   $mahinh = $_GET["mahinh"];
		   $ketqua = mysqli_query($conn,"select * FROM imgBook WHERE ImgBookId=$mahinh");
			$row = mysqli_fetch_array($ketqua,MYSQLI_ASSOC);
			$filecanxoa = $row['imgBook'];
			$sp_ma =  $row['BookId'];
			unlink("resource/".$filecanxoa);
			mysqli_query($conn,"DELETE FROM imgbook WHERE ImgBook=$mahinh");
			echo '<meta http-equiv="refresh" content="0;URL=updateimages.php?ma='.$sp_ma.'"/>';
			  
		}
 ?>
 	<h2>Quản lý hình ảnh của sách</h2>
		<div class="container">
			 	<form  id="frmHinhAnh" class="form-horizontal" name="frmHinhAnh" method="post" action="" enctype="multipart/form-data" role="form">
					<div class="form-group">
                        <label for="txtTen" class="col-sm-2 control-label">Mã sách(*):  </label>
						<div class="col-sm-10">
							<input type="text" name="txtMa" id="txtMa" class="form-control" placeholder="Mã sản phẩm" value='<?php echo $sp_ma; ?>' readonly="readonly"/>
						</div>
            		</div>	
                    <div class="form-group">    
                        <label for="txtTen" class="col-sm-2 control-label">Tên sách(*):  </label>
						<div class="col-sm-10">
						     <input type="text" name="txtTen" id="txtTen" class="form-control" placeholder="Tên loại sản phẩm" value='<?php echo $ten; ?>' readonly="readonly"/> 
						</div>
                    </div>    
                     <div class="form-group">    
                        <label for="" class="col-sm-2 control-label">Hình ảnh(*):  </label>
						<div class="col-sm-10">
							<input type="file" name="fileHinhAnh" id="fileHinhAnh" class="form-control"/>
                            <input type="submit"  class="btn btn-primary" name="btnLuu" id="btnLuu" value="Lưu hình ảnh"/>        
						</div>
                     </div>       
 
                    <!--Danh sach hinh anh-->
                     <div class="col-sm-offset-2 col-sm-12">
						<div class="col-sm-1">
                        	<label class="control-label">STT</label>
                        </div>
                        <div class="col-sm-2">
                        	<label class="control-label">Hình ảnh</label>
                        </div>
                        <div class="col-sm-1">
                        	<label class="control-label">Xóa</label>
                        </div>
                    </div> <!-- <div class="col-sm-offset-2 col-sm-12">1 hang bang hinh anh-->
                   <!--Row du lieu-->
                	<?php
		  				$query = "select ImgBookId, ImgBook from imgbook where BookId=".$sp_ma;
						$result = mysqli_query($conn, $query) or die(mysql_error());
						$stt = 1;
						while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) 
						{
					?>
							<div class='col-sm-offset-2 col-sm-12'>
							  <div class='col-sm-1'>
								<?php echo $stt;?>
								</div>
							  <div class='col-sm-2'>
								<img src="resource/<?php echo $row['ImgBook'];?>" width="100px"/>
							  </div>
							  <div class='col-sm-3'>
								  <a 
                                  href="updateimages.php?mahinh=<?php echo $row['ImgBoolId']; ?>">
								  <img src='public/images/delete.png' border='0' /></a>
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
						     <a href="Book.php"> Đóng</a>
                        </div>
              		</div>
                    
				</form>
		</div><!--<div class="container">-->


