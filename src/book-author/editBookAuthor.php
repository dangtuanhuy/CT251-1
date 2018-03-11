
<?php 
if(isset($_GET['ma'])){
	$ma =$_GET["ma"];
	$result = mysqli_query($conn,"SELECT * FROM `book_author` WHERE BookId=".$ma);
	$row=mysqli_fetch_row($result);
	$ten=$row[0];
	$tacgia=$row[1];		
	?>
	<?php 
	if(isset($_POST["btnCapNhat"])){
		$ten=$_POST['txtTen'];
			mysqli_query($conn,"UPDATE `book_author` SET BookId='$ten', AuthorNames='$tacgia'
				where BookId=$ma");
			echo '<meta http-equiv="refresh" content="0;URL=?page=bookauthor"/>';
	}

	?>

	<h2 class="text-center">CẬP NHẬT TÁC GIẢ </h2>
	<form id="form1" name="form1" method="post" action="" class="form-horizontal" role="form">
		<div class="form-group">
			<label for="#" class="col-sm-2 control-label">Tên Sách(*):  </label>
			<div class="col-sm-10">
				<input type="text" name="txtTen" id="txtTen" class="form-control" placeholder="Tên Sách" value='<?php echo $ten; ?>'>
			</div>
		</div>
		<div class="form-group">
			<label for="txtMoTa" class="col-sm-2 control-label">Tên Tác Giả(*):  </label>
			<div class="col-sm-10">
				<?php  bindLSPList($conn,$ten);?>
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
}
else
{
	echo '<meta http-equiv="refresh" content="0;URL=?page=category"/>';
}
?>
<?php
		function bindLSPList($conn,$selectedValue){
				$sql= "SELECT * FROM book_author
				INNER JOIN book ON book_author.BookId = book.BookId
				INNER JOIN author ON book_author.AuthorId = author.AuthorId";
				$result=mysqli_query($conn,$sql);
				echo "<select name='slLoaiSanPham'>
						<option>Chọn tác giả</option>";
						while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
								if($row['BookId']==$selectedValue)
								{
									echo "<option value='".$row['BookId']."' selected>".$row['AuthorNames']."</option>";
								}
								else
								{
									echo "<option value='".$row['BookId']."'>".$row['AuthorNames']."</option>";
								}
							}
				echo "</select>";
			}
	?>