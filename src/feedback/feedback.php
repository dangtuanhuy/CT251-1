<script type="text/javascript">
	function deleteConfirm()
	{
		if(confirm("Bạn có chắc chắn muốn xóa bài feedback này chứ")){
			return true;
		}
		else{
			return false;
		}
	}
</script>
<?php 
if(isset($_GET["ma"]))
{
	$maId = $_GET["ma"];
	mysqli_query($conn,"DELETE FROM `feedback` WHERE FeedBackId=$maId");
}
?>
<?php
if (isset($_POST['btnXoa'])&&isset($_POST['checkbox'])) 
{
	for ($i = 0; $i < count($_POST['checkbox']); $i++) 
	{
		$maId1 = $_POST['checkbox'][$i];
		mysqli_query($conn, "DELETE FROM `feedback` WHERE FeedBackId=$maId1");
	}
}
?>
<div class="container">
<form name="frmXoa" method="post" action="">
	<h1 class="text-center">DANH SÁCH YÊU CẦU</h1>
	<table class="table-striped table-responsive table-bordered" id="myTable">
		<thead>
			<tr>
				<th><strong>Chọn</strong></th>
				<th><strong>STT</strong></th>
				<th><strong>Tên Yêu Cầu</strong></th>
				<th><strong>Ngày Nhận Yêu Cầu</strong></th>
                <th><strong>Nội Dung Yêu Cầu</strong></th>
                <th><strong>Trạng Thái Yêu Cầu</strong></th>
				<th><strong>Xóa</strong></th>
			</tr>
		</thead>

		<tbody>
			<?php 
			$stt=1;
			$result = mysqli_query($conn,"SELECT * FROM `feedback`");
			while($row=mysqli_fetch_array($result, MYSQLI_ASSOC))
			{
				?>
				<tr>
					<td><input name="checkbox[]" type="checkbox" id="checkbox[]" value="<?php echo $row["FeedBackId"] ?>"></td>
					<td><?php echo $row["FeedBackId"] ?></td>
					<td><?php echo $row["FeedBackTitle"] ?></td>
					<td><?php echo $row["FeedBackDate"] ?></td>
                    <td><?php echo $row["FeedBackContent"] ?></td>
                    <td>
                    <form  method="post" action="">
                                            <?php 
                                            if ($row["FeedBackStatus"]==1){
                                                echo '<a class="btn btn-danger" href="?page=ActiveUser2&FeedBackStatus='.$row["FeedBackStatus"].'&FeedBackId='.$row["FeedBackId"].'">Đóng</a>';
                                            }
                                            else {
                                                echo '<a class="btn btn-primary" href="?page=ActiveUser2&FeedBackStatus='.$row["FeedBackStatus"].'&FeedBackId='.$row["FeedBackId"].'">Mở</a>';
                                            }
                    ?>
                    </form>
                    </td>
					<td align='center'>
						<a class="btn btn-info" href="?page=feedback&ma=<?php echo $row['FeedBackId']; ?>" onclick="return deleteConfirm()">
							<i class="fa fa-trash"></i></a>
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
				<input type="submit" value="Xóa Hàng Loạt" name="btnXoa" id="btnXoa" onclick='return 	 deleteConfirm()' class="btn btn-info"/>

			</div>
		</div>
	</form>
	
</div>
