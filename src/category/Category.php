<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Danh mục sách</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js">
        
    </script>
</head>    
<script language="javascript">
        function deleteConfirm(){
            if(confirm("Bạn có chắc chắn muốn xóa!")){
                return true;
            }
            else{
                return false;
            }
        }
    </script>
    <!-- Xử lý lệnh delete -->
<?php
include_once("../../config/config.db.php");
if(isset($_GET["CategoryId"]))
{
// Nếu xóa thì lấy mã và tiến hành xóa
    $CategoryId = $_GET["CategoryId"];
    mysqli_query($conn, "DELETE FROM `category` WHERE CategoryId=$CategoryId");
}
?>
<!-- Xóa Nhiều -->
<?php
if (isset($_POST['btnDelete'])&&isset($_POST['checkbox'])) 
{
 for ($i = 0; $i < count($_POST['checkbox']); $i++) 
 {
    $CategoryId = $_POST['checkbox'][$i];
    mysqli_query($conn, "DELETE FROM `category` WHERE CategoryId=$CategoryId");
}
}
?>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table class="table-responsive table-striped table-bordered" id="myTable" name="myTable">
                <thead>
                <tr>
                <th><strong>Chọn</strong></th>
                <th><strong>STT</strong></th>
                <th><strong>Tên Loại Sách</strong></th>
                <th><strong>Mô Tả Chi Tiết</strong></th>
                <th><strong>Xóa</strong></th>
                <th><strong>Sửa</strong></th>
                </tr>
             </thead>
             <tbody>
             <?php
                $stt=1;
                $result = mysqli_query($conn,"SELECT * FROM `category`");
                while($row=mysqli_fetch_array($result, MYSQLI_ASSOC))
                {
            ?>
                 <tr>
                   <td><input name="checkbox[]" type="checkbox" id="checkbox[]" value="<?php echo $row["CategoryId"] ?>"></td>
                   <td><?php echo $row["CategoryId"] ?></td>
                   <td><?php echo $row["CategoryNames"] ?></td>
                   <td><?php echo $row["CategoryDescription"] ?></td>
                   
                   <td align='center' >
                      <a class="btn btn-warning" href="Category.php?CategoryId=<?php echo $row['CategoryId']; ?>" onclick="return deleteConfirm()">
                          <i class="fa fa-remove"></i></a></td>
                          
                          <td align='center'>
                              <a href="#" class='btn btn-info' >
                              <i class="fa fa-edit"></i></a></td>
                              </tr>
                              <?php
                              $stt++;
                 }
                          ?>
                      </tbody>
                      
                  </table>  
                  
                  <!--Nút Thêm mới , xóa tất cả-->
                  <div class="row" style="background-color:#FFF"><!--Nút chức nang-->
                    <div class="col-md-12">
                       <input type="submit" value="Xóa Nhiều" name="btnDelete" id="btnDelete" onclick='return deleteConfirm()' class="btn btn-primary"/>
                       
                   </div>
               </div><!--Nút chức nang-->
                </table>
            </div>
        </div>
    </div>        <script language="javascript">
		$(document).ready(function() {
    var table = $('#myTable').DataTable( {
        responsive: true,
		"language": {
                "lengthMenu": "Hiển thị _MENU_ dòng dữ liệu trên một trang",
                "info": "Hiển thị _START_ trong tổng số _TOTAL_ dòng dữ liệu",
                "infoEmpty": "Dữ liệu rỗng",
                "emptyTable": "Chưa có dữ liệu nào",
                "processing": "Đang xử lý...",
                "search": "Tìm kiếm:",
                "loadingRecords": "Đang load dữ liệu...",
                "zeroRecords": "không tìm thấy dữ liệu",
                "infoFiltered": "(Được từ tổng số _MAX_ dòng dữ liệu)",
                "paginate": {
                    "first": "|<",
                    "last": ">|",
                    "next": ">>",
                    "previous": ">>"
                }
            },
            "lengthMenu": [[ 5, 10, 15, 20, 25, 30, -1], [2, 5, 10, 15, 20, 25, 30, "Tất cả"]]
    } );
    // new $.fn.dataTable.FixedHeader( table );
} );		
    </script> 
</body>
</html>