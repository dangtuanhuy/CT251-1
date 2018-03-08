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
	mysqli_query($conn,"DELETE FROM `category` WHERE CategoryId=$maId");
}
?>
<?php
if (isset($_POST['btnXoa'])&&isset($_POST['checkbox'])) 
{
	for ($i = 0; $i < count($_POST['checkbox']); $i++) 
	{
		$maId1 = $_POST['checkbox'][$i];
		mysqli_query($conn, "DELETE FROM `category` WHERE CategoryId=$maId1");
	}
}
?>
<div class="container">

				<form name="frmXoa" method="post" action="">
					<h1 class="text-center">DANH SÁCH SÁCH</h1>
					<p>
						<a class="btn btn-info" href="?page=addcategory"><i class="fa fa-plane"></i></a>
					</p>
					<table class="table-striped table-responsive table-bordered" id="myTable">
						<thead>
							<tr>
								<th><strong>Chọn</strong></th>
								<th><strong>STT</strong></th>
								<th><strong>Tên Sách</strong></th>
								<th class="col-md-4"><strong>Miêu Tả Sách</strong></th>
								<th><strong>Xóa</strong></th>
								<th><strong>Sửa</strong></th>
							</tr>
						</thead>

						<tbody>
							<?php 
							$stt=1;
							$result = mysqli_query($conn,"SELECT * FROM category");
							while($row=mysqli_fetch_array($result, MYSQLI_ASSOC))
							{
								?>
								<tr>
									<td><input name="checkbox[]" type="checkbox" id="checkbox[]" value="<?php echo $row["CategoryId"] ?>"></td>
									<td><?php echo $row["CategoryId"] ?></td>
									<td><?php echo $row["CategoryNames"] ?></td>
									<td><?php echo $row["CategoryDescription"] ?></td>
									<td align='center'>
										<a class="btn btn-info" href="?page=publisher&ma=<?php echo $row['CategoryId']; ?>" onclick="return deleteConfirm()">
											<i class="fa fa-remove"></i></a>
										</td>
										<td><a class="btn btn-info" href="?page=updatecategory&ma=<?php echo $row['CategoryId']; ?>"><i class="fa fa-plane"></i></a></td>
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