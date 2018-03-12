
	<?php
    $name = "";
    $mota = "";
    if( isset($_POST["btnAdd"]))
    {
        $name = $_POST["txtSach"];
        $mota = $_POST["txtMoTa"];
        $sqlinsert ="INSERT INTO `book_author`(`BookId`,`AuthorId`) VALUES('$name','$mota')";
        mysqli_query($conn,$sqlinsert);
        echo '<meta http-equiv="refresh" content="0;URL=?page=bookauthor"/>';

    }


?>
<?php  
		function book($conn){
		$sql = "SELECT * FROM book_author
				INNER JOIN book ON book_author.BookId = book.BookId
				INNER JOIN author ON book_author.AuthorId = author.AuthorId";
		$result=mysqli_query($conn,$sql);
		echo "<select name='txtSach'>
		<option value='0'>Chọn sách</option>";
		while($row=mysqli_fetch_array($result,MYSQLI_ASSOC)){
		echo "<option value='".$row['BookId']."'>".$row['BookNames']."</option>";
												}
		echo "</select>";
										
		}
	?>
<?php  
		function author($conn){
		$sql = "SELECT * FROM book_author
				INNER JOIN book ON book_author.BookId = book.BookId
				INNER JOIN author ON book_author.AuthorId = author.AuthorId";
		$result=mysqli_query($conn,$sql);
		echo "<select name='txtMoTa'>
		<option value='0'>Chọn tác giả</option>";
		while($row=mysqli_fetch_array($result,MYSQLI_ASSOC)){
		echo "<option value='".$row['AuthorId']."'>".$row['AuthorNames']."</option>";
												}
		echo "</select>";
										
		}
	?>
<div class="container">
	
				<form method="post" class="">
					<div class="form-group">
						<h4 class="text-center">THÊM AUTHOR - BOOK</h4>
					</div>
					<div class="form-group">
						<label for="txtSach">Tên Sách:</label>
							<?php  book($conn);?>	
					</div>
					<div class="form-group">
						<label for="txtMoTa">Tên Tác Giả:</label>
							<?php  author($conn);?>	
					</div>
					<input type="submit" class="btn btn-danger" name="btnAdd" value="Thêm Mới"/>
					<input type="reset" name="btnReset" value="Nhập Lại" class="btn btn-info" />
				</form>
				</div>
