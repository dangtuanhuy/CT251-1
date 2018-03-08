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
<!-- Lệnh Delete -->

<?php 
if(isset($_GET["ma"]))
{
	$maId = $_GET["ma"];
	mysqli_query($conn,"DELETE FROM `book` WHERE BookId=$maId");
}
?>
<?php
if (isset($_POST['btnXoa'])&&isset($_POST['checkbox'])) 
{
	for ($i = 0; $i < count($_POST['checkbox']); $i++) 
	{
		$maId1 = $_POST['checkbox'][$i];
		mysqli_query($conn, "DELETE FROM `book` WHERE BookId=$maId1");
	}
}
?>

<div class="container">
	<form name="frmXoa" method="post" action="">
		<h1 class="text-center">DANH SÁCH SÁCH</h1>
		<p>
			<a class="btn btn-info" href="?page=addbook"><i class="fa fa-book"></i></a>
		</p>
		<table class="table-striped table-responsive table-bordered" id="myTable">
			<thead>
				<tr>
					<th><strong>Chọn</strong></th>
					<th><strong>STT</strong></th>
					<th><strong>Tên Sách</strong></th>
					<th><strong>Giá Gốc</strong></th>
					<th><strong>Mô Tả</strong></th>
					<th><strong>Số Lượng Còn</strong></th>
					<th><strong>Loại Sách</strong></th>
					<th><strong>Nhà Xuất Bản</strong></th>
					<th><strong>Ngôn Ngữ</strong></th>
					<th><strong>Sửa</strong></th>
					<th><strong>Xóa</strong></th>
					<th><strong>Hình</strong></th>
				</tr>
			</thead>

			<tbody>
				<?php 
				$stt=1;
				$result = mysqli_query($conn,
					"
					SELECT 
					BookId,BookNames, BookPrices, BookDescription,
					BookQuantity,CategoryNames, PublisherName, 
					LaguageName
					FROM book b
					JOIN category c
					ON b.CategoryId = c.CategoryId
					JOIN publisher p
					ON b.PublisherId = p.PublisherId
					JOIN language l
					ON b.LanguageId = l.LanguageId
					ORDER BY 
					BookId

					"
				);
				while($row=mysqli_fetch_array($result, MYSQLI_ASSOC))
				{
					?>
					<tr>
						<td><input name="checkbox[]" type="checkbox" id="checkbox[]" value="<?php echo $row["BookId"] ?>"></td>
						<td><?php echo $row["BookId"] ?></td>
						<td><?php echo $row["BookNames"] ?></td>
						<td><?php echo $row["BookPrices"] ?></td>
						<td><?php echo $row["BookDescription"] ?></td>
						<td><?php echo $row["BookQuantity"] ?></td>
						<td><?php echo $row["CategoryNames"] ?></td>
						<td><?php echo $row["PublisherName"] ?></td>
						<td><?php echo $row["LaguageName"] ?></td>
						<td align='center'>
							<a class="btn btn-danger" href="?page=book&ma=<?php echo $row['BookId']; ?>" onclick="return deleteConfirm()">
								<i class="fa fa-trash-o"></i></a>
							</td>
							<td><a class="btn btn-primary" href="?page=updatebook&ma=<?php echo $row['BookId']; ?>"><i class="fa fa-pencil-square-o"></i></a></td>
							<td><a class="btn btn-secondary" href="#"><i class="fa fa-picture-o"></i></a></td>
						</tr>
						<?php
						$stt++;
					}
					?>
				</tbody>
			</table>
			<div class="row" style="background-color:#FFF"><!--Nút chức nang-->
				<div class="col-md-12">
					<input type="submit" value="Xóa mục chọn" name="btnXoa" id="btnXoa" onclick='return deleteConfirm()' class="btn btn-info"/>

				</div>
			</div>
		</form>

	</div>