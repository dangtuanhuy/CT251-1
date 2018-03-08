<?php 
?>
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
	mysqli_query($conn,"DELETE FROM `language` WHERE LanguageId=$maId");
}
?>
<?php
if (isset($_POST['btnXoa'])&&isset($_POST['checkbox'])) 
{
	for ($i = 0; $i < count($_POST['checkbox']); $i++) 
	{
		$maId1 = $_POST['checkbox'][$i];
		mysqli_query($conn, "DELETE FROM `language` WHERE LanguageId=$maId1");
	}
}
?>
<div class="container">

<form name="frmXoa" method="post" action="">
	<h1 class="text-center">DANH SÁCH NGÔN NGỮ</h1>
	<p>
		<a class="btn btn-info" href="?page=addlang"><i class="fa fa-plane"></i></a>
	</p>
	<table class="table-striped table-responsive table-bordered" id="myTable">
		<thead>
			<tr>
				<th><strong>Chọn</strong></th>
				<th><strong>STT</strong></th>
				<th class="col-md-6"><strong>NGÔN NGỮ</strong></th>
				<th><strong>Xóa</strong></th>
				<th><strong>Sửa</strong></th>
			</tr>
		</thead>

		<tbody>
			<?php 
			$stt=1;
			$result = mysqli_query($conn,"SELECT * FROM language");
			while($row=mysqli_fetch_array($result, MYSQLI_ASSOC))
			{
				?>
				<tr>
					<td><input name="checkbox[]" type="checkbox" id="checkbox[]" value="<?php echo $row["LanguageId"] ?>"></td>
					<td><?php echo $row["LanguageId"] ?></td>
					<td><?php echo $row["LaguageName"] ?></td>
					<td align='center'>
						<a class="btn btn-info" href="?page=lang&ma=<?php echo $row['LanguageId']; ?>" onclick="return deleteConfirm()">
							<i class="fa fa-remove"></i></a>
						</td>
						<td><a class="btn btn-info" href="?page=updatelang&ma=<?php echo $row['LanguageId']; ?>"><i class="fa fa-plane"></i></a></td>
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