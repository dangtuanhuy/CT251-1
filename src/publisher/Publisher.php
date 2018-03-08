
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
	$manhaxuatban = $_GET["ma"];
	mysqli_query($conn,"DELETE FROM `publisher` WHERE PublisherId=$manhaxuatban");
}
?>
<?php
if (isset($_POST['btnXoa'])&&isset($_POST['checkbox'])) 
{
	for ($i = 0; $i < count($_POST['checkbox']); $i++) 
	{
		$manhasanxuat1 = $_POST['checkbox'][$i];
		mysqli_query($conn, "DELETE FROM `publisher` WHERE PublisherId=$manhasanxuat1");
	}
}
?>
<div class="container">

	<form name="frmXoa" method="post" action="">
		<h1 class="text-center">DANH SÁCH NHÀ SẢN XUẤT</h1>
		<p>
			<a  class="btn btn-danger" href="?page=addpublisher">
				<i class="fa fa-arrows"></i>
			</a>

		</p>
		<table class="table-striped table-responsive table-bordered" id="myTable">
			<thead>
				<tr>
					<th><strong>Chọn</strong></th>
					<th ><strong>STT</strong></th>
					<th class="col-2"><strong>Tên Nhà Xuất Bản</strong></th>
					<th class="col-2"><strong>Xóa</strong></th>
					<th class="col-2"><strong>Sửa</strong></th>
				</tr>
			</thead>
			<tbody>
				<?php 
				$stt=1;
				$result = mysqli_query($conn,"SELECT * FROM `publisher`");
				while($row=mysqli_fetch_array($result, MYSQLI_ASSOC))
				{
					?>
					<tr>
						<td><input name="checkbox[]" type="checkbox" id="checkbox[]" value="<?php echo $row["PublisherId"] ?>"></td>
						<td><?php echo $row["PublisherId"] ?></td>
						<td><?php echo $row["PublisherName"] ?></td>
						<td align='center'>
							<a class="btn btn-info" href="Select.php?ma=<?php echo $row['PublisherId']; ?>" onclick="return deleteConfirm()">
								<i class="fa fa-remove"></i></a>
							</td>
							<td>
								<a class="btn btn-primary" href="?page=Updatepublisher&?PublisherId=<?php
								echo $row['PublisherId'];?>"><i class="fa fa-share"></i></a>
							</td>
						</tr>
						<?php
						$stt++;
					}
					?>
				</tbody>
			</table>
			<div class="row" style="background-color:#FFF"><!--Nút chức nang-->
				<div class="col-md-12">
					<input type="submit" value="Xóa mục chọn" name="btnXoa" id="btnXoa" onclick='return 	 deleteConfirm()' class="btn btn-info"/>

				</div>
			</div>
		</form>
	</div>