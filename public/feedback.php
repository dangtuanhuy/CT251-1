<?php
define('ROOT_PATH', dirname(__DIR__));

include ROOT_PATH.'/config/config.php';
include ROOT_PATH.'/config/config.db.php';
?>

<?php include TEMPLATES_PATH . '/header.php'; ?>
<?php date_default_timezone_set('Asia/Ho_Chi_Minh'); ?>


<div class="col">
    <div class="container-fluid">
        <div class="row justify-content-md-center py-3">
            <button type="button" class="btn btn-success btn-lg index-label" disabled>Gửi Phản Hồi</button>
        </div>
        <form method="post">
        <div class="form-group">
            <label for="txtSach">Chủ Đề Phản Hồi</label>
            <input type="txtSach" class="form-control" id="txtSach" name="txtSach">
        </div>
        <div class="form-group">
            <label for="txtMoTa">Nội Dung Phản Hồi</label>
            <textarea class="form-control" id="txtMoTa" rows="4" name="txtMoTa"></textarea>
        </div>
        <button type="submit" class="btn btn-primary" name="btnAdd">Gửi</button>
        </form>
    </div>
    <div style="margin-top:197px;"></div>
</div>
<?php
    $name = "";
    $mota = "";
    $nowdate = date_default_timezone_set('Asia/Ho_Chi_Minh');
    if ( isset($_POST["btnAdd"]))
    {
        $name = $_POST["txtSach"];
        $mota = $_POST["txtMoTa"];
        $nowdate  = date("Y-m-d H:i:s");
        $sqlinsert ="INSERT INTO `feedback`(`FeedBackTitle`,`FeedBackDate`,`FeedBackContent`) VALUES('$name','$nowdate','$mota')";
        mysqli_query($conn,$sqlinsert);
       // echo '<meta http-equiv="refresh" content="0;URL=?page=category"/>';
    }

?>

<?php include TEMPLATES_PATH . '/footer.php'; ?>
