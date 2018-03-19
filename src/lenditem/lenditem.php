
<div class="container">
<form name="frmXoa" method="post" action="">
	<h1 class="text-center">DANH SÁCH NGƯỜI MƯỢN</h1>
	<!-- <p>
		<a class="btn btn-info" href="?page=addauthor"><i class="fa fa-plane"></i></a>
	</p> -->
	<table class="table-striped table-responsive table-bordered" id="myTable">
		<thead>
			<tr>
			
				<th><strong>Mượn</strong></th>
				<th><strong>Tên Người Mượn</strong></th>
				<th><strong>Ngày Mượn</strong></th>
				<th><strong>Ngày Hết Hạn</strong></th>
                <th><strong>Trạng Thái</strong></th>
                <th><strong>Sách Mượn</strong></th>
              
			</tr>
		</thead>

		<tbody>
			<?php 
			$stt=1;
			$result = mysqli_query($conn, "	SELECT l.LendId, u.Displayname, l.LendCreateDate, l.LendExpDate, l.LendStatus, b.BookNames
			FROM lend l
			JOIN user u ON l.Username = u.Username
			JOIN lenditem a ON a.LendId = l.LendId
			JOIN book b on b.BookId = a.BookId
			ORDER BY l.LendId
											");
			
			while($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
			{
				?>
				<tr>
					<!-- <td><input name="checkbox[]" type="checkbox" id="checkbox[]" value="<?php echo $row["LendId"] ?>"></td> -->
					<td><?php echo $row["LendId"] ?></td>
					<td><?php echo $row["Displayname"] ?></td>
					<td><?php echo $row["LendCreateDate"] ?></td>
                    <td><?php echo $row["LendExpDate"] ?></td>
                    <td ><?php echo $row["LendStatus"] ?></td>
                    <td class="col-md-3"><?php echo $row["BookNames"] ?></td>
					<!-- <td align='center'>
						<a class="btn btn-info" href="?page=author&ma=<?php echo $row['AuthorId']; ?>" onclick="return deleteConfirm()">
							<i class="fa fa-remove"></i></a>
						</td> -->
						
					</tr>
					<?php
					$stt++;
				}
				?>
			</tbody>
		</table>
	
	</form>
	
</div>
