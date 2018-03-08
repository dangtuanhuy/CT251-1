
	<?php
    $name = "";
    $mota = "";
    if( isset($_POST["btnAdd"]))
    {
        $name = $_POST["txtSach"];
        $mota = $_POST["txtMoTa"];
        $sqlinsert ="INSERT INTO `author`(`AuthorNames`,`AuthorDetails`) VALUES('$name','$mota')";
        mysqli_query($conn,$sqlinsert);
        echo '<meta http-equiv="refresh" content="0;URL=?page=author"/>';

    }


?>
	<div class="container">
				<form method="post" class="">
					<div class="form-group">
						<h4 class="text-center">THÊM TÁC GIẢ</h4>
					</div>
					<div class="form-group">
						<label for="txtSach">Tên Tác Giả:</label>
						<input type="text" class="form-control" id="txtSach" name="txtSach" placeholder="Tên tác giả">
					</div>
					<div class="form-group">
						<label for="txtMoTa">Mô Tả Tác Giả: </label>
						<input type="text" class="form-control" id="txtMoTa" name="txtMoTa" placeholder="Mô tả tác giả">
					</div>
					<input type="submit" class="btn btn-danger" name="btnAdd" value="Thêm Mới"/>
					<input type="reset" name="btnReset" value="Nhập Lại" class="btn btn-info" />
				</form>
				
	</div>