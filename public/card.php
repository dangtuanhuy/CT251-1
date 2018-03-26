<style>
.quantity {
    float: left;
    margin-right: 15px;
    background-color: #eee;
    position: relative;
    width: 80px;
    overflow: hidden
}

.quantity input {
    margin: 0;
    text-align: center;
    width: 15px;
    height: 15px;
    padding: 0;
    float: right;
    color: #000;
    font-size: 20px;
    border: 0;
    outline: 0;
    background-color: #F6F6F6
}

.quantity input.qty {
    position: relative;
    border: 0;
    width: 100%;
    height: 40px;
    padding: 10px 25px 10px 10px;
    text-align: center;
    font-weight: 400;
    font-size: 15px;
    border-radius: 0;
    background-clip: padding-box
}

.quantity .minus, .quantity .plus {
    line-height: 0;
    background-clip: padding-box;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
    -webkit-background-size: 6px 30px;
    -moz-background-size: 6px 30px;
    color: #bbb;
    font-size: 20px;
    position: absolute;
    height: 50%;
    border: 0;
    right: 0;
    padding: 0;
    width: 25px;
    z-index: 3
}

.quantity .minus:hover, .quantity .plus:hover {
    background-color: #dad8da
}

.quantity .minus {
    bottom: 0
}
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
<div class="container">
   <div class="card shopping-cart">
            <div class="card-header bg-dark text-light">
                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                Shipping cart
                <a href="" class="btn btn-outline-info btn-sm pull-right">Continiu shopping</a>
                <div class="clearfix"></div>
            </div>
            <div class="card-body">
                    <!-- PRODUCT -->
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-2 text-center">
                                <img class="img-responsive" src="http://placehold.it/120x80" alt="prewiew" width="120" height="80">
                        </div>
                        <div class="col-12 text-sm-center col-sm-12 text-md-left col-md-6">
                            <h4 class="product-name"><strong>Product Name</strong></h4>
                            <h4>
                                <small>Product description</small>
                            </h4>
                        </div>
                        <div class="col-12 col-sm-12 text-sm-center col-md-4 text-md-right row">
                            <div class="col-3 col-sm-3 col-md-6 text-md-right" style="padding-top: 5px">
                                <h6><strong>25.00 <span class="text-muted">x</span></strong></h6>
                            </div>
                            <div class="col-4 col-sm-4 col-md-4">
                                <div class="quantity">
                                    <input type="button" value="+" class="plus">
                                    <input type="number" step="1" max="99" min="1" value="1" title="Qty" class="qty"
                                           size="4">
                                    <input type="button" value="-" class="minus">
                                </div>
                            </div>
                            <div class="col-2 col-sm-2 col-md-2 text-right">
                                <button type="button" class="btn btn-outline-danger btn-xs">
                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <!-- END PRODUCT -->
                    <!-- PRODUCT -->
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-2 text-center">
                                <img class="img-responsive" src="http://placehold.it/120x80" alt="prewiew" width="120" height="80">
                        </div>
                        <div class="col-12 text-sm-center col-sm-12 text-md-left col-md-6">
                            <h4 class="product-name"><strong>Product Name</strong></h4>
                            <h4>
                                <small>Product description</small>
                            </h4>
                        </div>
                        <div class="col-12 col-sm-12 text-sm-center col-md-4 text-md-right row">
                            <div class="col-3 col-sm-3 col-md-6 text-md-right" style="padding-top: 5px">
                                <h6><strong>25.00 <span class="text-muted">x</span></strong></h6>
                            </div>
                            <div class="col-4 col-sm-4 col-md-4">
                                <div class="quantity">
                                    <input type="button" value="+" class="plus">
                                    <input type="number" step="1" max="99" min="1" value="1" title="Qty" class="qty"
                                           size="4">
                                    <input type="button" value="-" class="minus">
                                </div>
                            </div>
                            <div class="col-2 col-sm-2 col-md-2 text-right">
                                <button type="button" class="btn btn-outline-danger btn-xs">
                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <!-- END PRODUCT -->
                <div class="pull-right">
                    <a href="" class="btn btn-outline-secondary pull-right">
                        Update shopping cart
                    </a>
                </div>
            </div>
            <div class="card-footer">
                <div class="coupon col-md-5 col-sm-5 no-padding-left pull-left">
                    <div class="row">
                        <div class="col-6">
                            <input type="text" class="form-control" placeholder="cupone code">
                        </div>
                        <div class="col-6">
                            <input type="submit" class="btn btn-default" value="Use cupone">
                        </div>
                    </div>
                </div>
                <div class="pull-right" style="margin: 10px">
                    <a href="" class="btn btn-success pull-right">Checkout</a>
                    <div class="pull-right" style="margin: 5px">
                        Total price: <b>50.00€</b>
                    </div>
                </div>
            </div>
        </div>
</div>

<?php include TEMPLATES_PATH . '/footer.php'; ?>