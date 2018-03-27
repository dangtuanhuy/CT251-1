<?php
define('ROOT_PATH', dirname(__DIR__));

include ROOT_PATH.'/config/config.php';
include ROOT_PATH.'/config/config.db.php';
?>
<?php include TEMPLATES_PATH . '/header.php'; ?>

<script language="javascript">
    function confirmDelete(){
        if (confirm("Bạn có chắc chắn muốn xóa!")) {
            return true;
        }
        else {
            return false;
        }
    }
</script>

<?php
if (isset($_GET['action'])) {
    if ($_GET['action'] === "xoa") {
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
    }
    else {
        echo "<script>alert('Vui lòng đăng nhập trước khi thanh toán!');</script>";
    }
}

?>

<div class="col">
    <div class="container-fluid">
        <div class="card mt-5">
            <!-- <form id="form1" name="form1" method="post" action=""> -->
            <div class="card-header bg-dark text-light">
                <i class="fa fa-shopping-cart"></i>
                <strong>Sách trong giỏ hàng</strong>
            </div>
            <div class="card-body">
                <div class="row text-center pt-3">
                    <div class="col-sm"><strong>Tên sách</strong></div>
                    <div class="col-sm-3"><strong>Nhà xuất bản</strong></div>
                    <div class="col-sm"><strong>Giá bìa</strong></div>
                    <div class="col-sm-1"><strong>Số lượng</strong></div>
                    <!-- <div class="col-sm"><strong>Thành tiền</strong></div> -->
                    <div class="col-sm-1"><strong>Xóa</strong></div>
                </div>
                <hr>
            </div>
            <?php
            if ($_SESSION["giohang"] != null):
                $tong = 0;
                foreach ($_SESSION["giohang"] as $key => $row):
            ?>
            <div class="row text-center">
                <div class="col-sm text-left ml-4"><?php echo $row['ten'] ?></div>
                <div class="col-sm-3"><?php echo $row["hang"] ?></div>
                <div class="col-sm"><?php echo number_format($row["gia"], 0, ",", ".") ?></div>
                <div class="col-sm-1"><?php echo $row['soluong'] ?></div>
                <!-- <div class="col-sm"> <?php // echo number_format($row["gia"] * $row["soluong"], 0, ",", ".") ?> </div> -->
                <div class="col-sm-1">
                    <a onclick='return confirmDelete()' href="?page=giohang&action=xoa&id=<?php echo $key ?>">
                        <button type="button" class="btn btn-outline-danger"><i class="fas fa-minus-circle"></i></button>
                    </a>
                </div>
            </div>
            <hr>
                <?php
                    // $tong += $row["gia"] * $row["soluong"];
                    endforeach;
                ?>
                <!-- <div class='row'>
                    <div class='col-sm-12' align='right'>
                        <label>Tổng tiền</label>:
                            <span class='Gia'><?php //number_format($tong, 0, ",", ".")  ?></span> VNĐ
                    </div>
                </div> -->
            <div class="card-footer">
                <div class="pull-md-5" style="margin:10px">
                    <a href="" name="btnDongY" class="btn btn-success float-right">Tiến hành đặt mượn</a>
                </div>
            </div>
            <?php
            else:
            ?>
                <div class='row'>
                    <div class='col-sm text-center mb-3'>
                        <p> Không có sách trong giỏ hàng.</p>
                        <a href="<?= ROOT_PATH ?>" class="btn btn-success">Quay lại trang chủ</a>.
                    </div>
                </div>
            <?php
            endif;
            ?>
        </div>
    </div>
</div>

<?php include TEMPLATES_PATH . '/_footer.php'; ?>
