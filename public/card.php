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
        echo "<script>window.location='?khoatrang=card';</script>";
    }
}

if (isset($_POST['btnDongY'])) {
    if (isset($_SESSION['username'])) {
        foreach ($_SESSION["giohang"] as $key => $row) {
            $_SESSION['giohang'][$key]['soluong'] = $_POST['SP' . $key];
        }
        echo "<script>window.location='?khoatrang=thanhtoan';</script>";
    } else {
        echo "<script>alert('Vui lòng đăng nhập trước khi thanh toán!');</script>";
    }
}

?>


<form id="form1" name="form1" method="post" action="">
	<div class="row">
    	<div class="col-sm-2"><label>Tên sách</label></div>
        <div class="col-sm-2"><label>Nhà xuất bản</label></div>
        <div class="col-sm-2"><label>Giá mượn</label></div>
        <div class="col-sm-2"><label>Số lượng mượn</label></div>
        <div class="col-sm-2"><label>Thành tiền</label></div>
        <div class="col-sm-2"><label>Xóa</label></div>
    </div>
    
    <?php
    if ($_SESSION["giohang"] != null) 
	{
          $tong = 0;
          foreach ($_SESSION["giohang"] as $key => $row) 
		  {
    ?>
            	<div class="row">
                    <div class="col-sm-2"><?php echo $row['ten'] ?></div>
                    <div class="col-sm-2"><?php echo $row["hang"] ?></div>
                    <div class="col-sm-2"><?php echo number_format($row["gia"], 0, ",", ".") ?></div>
                    <div class="col-sm-2"><input type='text' name='SP<?php echo $key ?>' value='<?php echo $row["soluong"] ?>' size='5' style='text-align:center;' maxlength='3'/></div>
                    <div class="col-sm-2"><?php echo number_format($row["gia"] * $row["soluong"], 0, ",", ".") ?></div>
                    <div class="col-sm-2"><a onclick='return confirmDelete()' href="?khoatrang=card&action=xoa&ma=<?php echo $key ?>"><img src=''/></a></div>
                                
                    </div>             
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
	<div class='row'>
    	<div class='col-sm-12' align="center">
        	<input type="submit" value="Đồng ý và thanh toán" name="btnDongY" id="btnXoa" class="InputButton"/>
    	</div>
    </div>
</form>
<?php include TEMPLATES_PATH . '/footer.php'; ?>