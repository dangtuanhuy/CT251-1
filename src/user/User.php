<?php 
function updateUserAdmin($active)
{
    $updateUserAdmin = "UPDATE user
    SET `Active` = '$active'
    WHERE 	Username = '$username' ";
    mysqli_query($conn,$updateUserAdmin);

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
                    <th><strong>Tên</strong></th>
                    <th><strong>Họ</strong></th>
                    <th><strong>Ngày sinh</strong></th>
                    <th><strong>Giới tính</strong></th>
                    <th><strong>Địa chỉ</strong></th>
                    <th><strong>Số điện thoại</strong></th>
                    <th><strong>Email</strong></th>
                    <th><strong>Ngày hết hạn</strong></th>
                    <th><strong>Kích Hoạt Mail</strong></th>
                    <th><strong>Trạng thái</strong></th>
                    <th><strong>Quyền</strong></th>
                </tr>
            </thead>

            <tbody>	
                <?php 
                            $stt=1;
                            $result = mysqli_query($conn,"SELECT * FROM user");
                            while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
                            {
                                ?>
                                <tr>
                                    <td><?php echo $row["Username"] ?></td>
                                    <td><?php echo $row["DisplayName"] ?></td>
                                    <td><?php echo $row["Birthday"] ?></td>
                                    <td><?php echo $row["Gender"]== 1? "Nam" : "Nu"; ?></td>
                                    <td><?php echo $row["Address"] ?></td>
                                    <td><?php echo $row["Phone"] ?></td>
                                    <td><?php echo $row["Email"] ?></td>
                                    <td><?php echo $row["ExpriredDate"] ?></td>
                                
                                    <td class="col-md-6" >
                                        <form  method="post" action="">
                                            <?php 
                                            if ($row["Active"]==1){
                                                echo '<a class="btn btn-danger" href="?page=ActiveUser&Active='.$row["Active"].'&Username='.$row["Username"].'">Đóng</a>';
                                            }
                                            else {
                                                echo '<a class="btn btn-primary" href="?page=ActiveUser&Active='.$row["Active"].'&Username='.$row["Username"].'">Mở</a>';
                                            }
                    ?>
                                    <td class="col-md-6" >
                                                        <form  method="post" action="">
                                                            <?php 
                                                            if ($row["Status"] == 1){
                                                                echo '<a class="btn btn-danger" href="?page=ActiveUser&Status='.$row["Status"].'&Username='.$row["Username"].'">Đóng</a>';
                                                            }
                                                            else {
                                                                echo '<a class="btn btn-primary" href="?page=ActiveUser&Status='.$row["Status"].'&Username='.$row["Username"].'">Mở</a>';
                                                            }
                                    ?>
                                    <td><?php echo $row["Role"] ?></td>
                                    </tr>
                                    <?php
                                    $stt++;
                                }
                                ?>
                
                </tbody>
            </table>
        </form>
    </div>
