<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
<script type="text/javascript">
</script>
<div class="container">
<form name="frmXoa" method="post" action="">
	<h1 class="text-center">DANH SÁCH NGƯỜI TRẢ</h1>
	<table class="table-striped table-responsive table-bordered" id="myTable">
		<thead>
			<tr>
				<th><strong>Mã Trả</strong></th>
				<th><strong>Ngày trả</strong></th>
				<th><strong>Name</strong></th>
                <th><strong>Sách</strong></th>
                <th><strong>Trạng Thái Yêu Cầu</strong></th>
			</tr>
		</thead>

		<tbody>
			<?php 
			$stt=1;
			$result = mysqli_query($conn,"SELECT * FROM `receive` b
				INNER JOIN `receiveitem` c ON b.ReceiveId = c.ReceiveId
				INNER JOIN book d ON c.BookId = d.BookId
				INNER JOIN user e ON b.Username = e.Username");
					 
			while($row=mysqli_fetch_array($result, MYSQLI_ASSOC))
				{
				?>
				<tr>
					<td><?php echo $row["ReceiveId"] ?></td>
					<td><?php echo $row["ReceiveDate"] ?></td>
					<td><?php echo $row["DisplayName"] ?></td>
					<td><?php echo $row["BookNames"] ?></td>
                    <td class="col-md-6" >
                                        <form  method="post" action="">
                                            <?php 
                                            if ($row["ReceiveStatus"]==1){
                                                echo '<a class="btn btn-danger" href="?page=ActiveUsers&ReceiveStatus='.$row["ReceiveStatus"].'&ReceiveId='.$row["ReceiveId"].'&BookId='.$row["BookId"].'">Đóng</a>';
                                            }
                                            else {
                                                echo '<a class="btn btn-primary" href="?page=ActiveUsers&ReceiveStatus='.$row["ReceiveStatus"].'&ReceiveId='.$row["ReceiveId"].'&BookId='.$row["BookId"].'">Mở</a>';
                                            }
                    ?>
					</tr>
					<?php
					$stt++;
				}
				?>
			</tbody>
		</table>
		<div class="row" style="background-color:#FFF"><!--Nút chức nang-->
		</div>
	</form>
    
	
</div>
