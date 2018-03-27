<style>
.shopping-cart {
    margin-top: 20px;
}
</style>
<?php 
define('ROOT_PATH', dirname(__DIR__));

include ROOT_PATH.'/config/config.php'; 
include ROOT_PATH.'/config/config.db.php';
?>
<?php include TEMPLATES_PATH . '/header.php'; ?>
<script language="javascript">
            function confirmDelete(){
                if(confirm("Bạn có chắc chắn muốn xóa!")){
                    return true;
                }
                else{
                    return false;
                }
            }
</script>
<?php
if (isset($_GET['action'])) {
    if ($_GET['action'] == "xoa") {
        $id = $_GET["id"];
        unset($_SESSION["giohang"][$id]);
        echo "<script>window.location='?page=card';</script>";
    }
}

if (isset($_POST['btnDongY'])) {
    if (isset($_SESSION['username'])) {
        foreach ($_SESSION["giohang"] as $key => $row) {
            $_SESSION['giohang'][$key]['soluong'] = $_POST['SP' . $key];
        }
        echo "<script>window.location='?page=thanhtoan';</script>";
    } else {
        echo "<script>alert('Vui lòng đăng nhập trước khi thanh toán!');</script>";
    }
}

?>
<div class="container">
   <div class="card shopping-cart">
        <form id="form1" name="form1" method="post" action="">
            <div class="card-header bg-dark text-light">
                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                <strong>Shipping cart</strong>
                <div class="clearfix"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"><strong>Tên sách</strong></div>
                <div class="col-sm-3"><strong>Nhà xuất bản</strong></div>
                <div class="col-sm-2"><strong>Giá mượn</strong></div>
                <div class="col-sm-1"><strong>Số lượng</strong></div>
                <div class="col-sm-2"><strong>Thành tiền</strong></div>
                <div class="col-sm-2"><strong>Xóa</strong></div>
            </div>
            <hr>
            <?php
                if ($_SESSION["giohang"] != null) 
	                {
                        $tong = 0;
                        foreach ($_SESSION["giohang"] as $key => $row) 
		                {
            ?>
            <div class="row">
                <div class="col-sm-2"><?php echo $row['ten'] ?></div>
                <div class="col-sm-3"><?php echo $row["hang"] ?></div>
                <div class="col-sm-2"><?php echo number_format($row["gia"], 0, ",", ".") ?></div>
                <div class="col-sm-1"><?php echo $row['soluong'] ?></div>
                <div class="col-sm-2"><?php echo number_format($row["gia"] * $row["soluong"], 0, ",", ".") ?></div>
                <div class="col-sm-2"><a onclick='return confirmDelete()' href="?page=giohang&action=xoa&id=<?php echo $key ?>"><img src='images/delete.png'/></a></div>       
            </div>
            <hr>
            <?php
                    $tong += $row["gia"] * $row["soluong"];
                        }
                    echo "<div class='row'><div class='col-sm-12' align='right'>
                          <label>Tổng tiền</label>: <span class='Gia'>"
						  .number_format($tong, 0, ",", ".") . "</span> VNĐ</div></div>";
                    } else {
                        echo "<div class='row'><div class='col-sm-12'>Chưa có sản phẩm trong giỏ hàng</div></div>";
                    }
            ?>    
            <div class="card-footer">
                <div class="pull-md-5" style="margin:10px">
                <input type="submit" value="Đồng ý và thanh toán" name="btnDongY" id="btnXoa" class="btn btn-success pull-right"/>
                </div>
            </div>
        </form>
    </div>
</div>
