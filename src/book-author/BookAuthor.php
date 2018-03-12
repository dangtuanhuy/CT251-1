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
	mysqli_query($conn,"DELETE FROM `book_author` WHERE BookId=$maId");
}
?>
<?php
if (isset($_POST['btnXoa'])&&isset($_POST['checkbox'])) 
{
	for ($i = 0; $i < count($_POST['checkbox']); $i++) 
	{
		$maId1 = $_POST['checkbox'][$i];
		mysqli_query($conn, "DELETE FROM `book_author` WHERE BookId=$maId1");
	}
}
?>
<div class="container">
<form name="frmXoa" method="post" action="">
	<h1 class="text-center">SÁCH - TÁC GIẢ</h1>
	<p>
		<a class="btn btn-info" href="?page=addbookauthor"><i class="fa fa-plane"></i></a>
	</p>
	<table class="table-striped table-responsive table-bordered" id="myTable">
		<thead>
			<tr>
				<th><strong>Chọn</strong></th>
				<th><strong>Tên Sách</strong></th>
				<th class="col-md-6"><strong>Tên Tác Giả</strong></th>
			</tr>
		</thead>

		<tbody>
			<?php 
			$stt=1;
			$result = mysqli_query($conn,"SELECT * FROM book_author
				INNER JOIN book ON book_author.BookId = book.BookId
				INNER JOIN author ON book_author.AuthorId = author.AuthorId");
			while($row=mysqli_fetch_array($result, MYSQLI_ASSOC))
			{
				?>
				<tr>
					<td><input name="checkbox[]" type="checkbox" id="checkbox[]" value="<?php echo $row["BookId"] ?>"></td>
					<td><?php echo $row["BookNames"] ?></td>
					<td><?php echo $row["AuthorNames"] ?></td>
					</tr>
					<?php
					$stt++;
				}
				?>
			</tbody>
		</table>
	</form>
</div>