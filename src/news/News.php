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
	mysqli_query($conn,"DELETE FROM `news` WHERE NewsId=$maId");
}
?>
<?php
if (isset($_POST['btnXoa'])&&isset($_POST['checkbox'])) 
{
	for ($i = 0; $i < count($_POST['checkbox']); $i++) 
	{
		$maId1 = $_POST['checkbox'][$i];
		mysqli_query($conn, "DELETE FROM `news` WHERE NewsId=$maId1");
	}
}
?>

<div class="container">
	<form name="frmXoa" method="post" action="">
		<h1 class="text-center">DANH SÁCH TIN TỨC</h1>
		<p>
			<a class="btn btn-info" href="?page=addnews"><i class="fa fa-book"></i></a>
		</p>
		<table class="table-striped table-responsive table-bordered" id="myTable">
			<thead>
				<tr>
					<th><strong>Chọn</strong></th>
					<th><strong>STT</strong></th>
					<th><strong>Tựa Đề</strong></th>
                    <th><strong>Ngày Đăng</strong></th>
					<th><strong>Tên Tin Tức</strong></th>
					<th><strong>Nội Dung</strong></th>
					<th><strong>Người Đăng</strong></th>
					<th><strong>Xóa</strong></th>
					<th><strong>Sửa</strong></th>
				</tr>
			</thead>

			<tbody>
				<?php 
				$stt=1;
				$result = mysqli_query($conn,
					"
					SELECT NewsId,Title, NewsDate ,NewsNames, NewsContent, ImgNews, DisplayName FROM news n JOIN user u ON n.Username = u.Username ORDER BY NewsId

					"
				);
				while($row=mysqli_fetch_array($result, MYSQLI_ASSOC))
				{
					?>
					<tr>
						<td><input name="checkbox[]" type="checkbox" id="checkbox[]" value="<?php echo $row["NewsId"] ?>"></td>
                        <td><?php echo $row["NewsId"] ?></td>
						<td><?php echo $row["Title"] ?></td>
						<td><?php echo $row["NewsDate"] ?></td>
						<td><?php echo $row["NewsNames"] ?></td>
						<td><?php echo $row["NewsContent"] ?></td>
						<td><?php echo $row["DisplayName"] ?></td>
						<td align='center'>
							<a class="btn btn-danger" href="?page=news&ma=<?php echo $row['NewsId']; ?>" onclick="return deleteConfirm()">
								<i class="fa fa-trash-o"></i></a>
							</td>
							<td><a class="btn btn-primary" href="?page=updatenews&ma=<?php echo $row['NewsId']; ?>"><i class="fa fa-pencil-square-o"></i></a></td>
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