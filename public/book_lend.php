<?php
define('ROOT_PATH', dirname(__DIR__));

include ROOT_PATH.'/config/config.php';
include ROOT_PATH.'/config/config.db.php';
?>
<?php include TEMPLATES_PATH . '/header.php'; ?>
<?php
if (isset($_GET['action'])) {
    if ($_GET['action'] === "tra") {
        $name = $_SESSION['username'];
        $id = $_GET["id"];
        $book = $_GET["bo"];
        $tra = mysqli_query($conn,"UPDATE lenditem SET LendStatus = 0 WHERE LendId=$id");
        $date  = date("Y-m-d H:i:s");
        $xacnhan = mysqli_query($conn,"INSERT INTO `receive` VALUES ('$id', '{$date}', '{$name}')");
        $receive = mysqli_query($conn,"INSERT INTO `receiveitem` VALUES ('$id','{$book}','{$date}','1')");
        echo "<script>window.location='?page=booklend';</script>";
    }
}
?>

<div class="col">
    <div class="container-fluid">
        <div class="card mt-5">
            <div class="card-header bg-dark text-light">
                <i class="fa fa-handshake-o"></i>
                <strong>Sách đã mượn</strong>
            </div>
            <div class="card-body">
                <div class="row text-center pt-3">
                    <div class="col-sm"><strong>Mã sách</strong></div>
                    <div class="col-sm-3"><strong>Ngày ngày mượn</strong></div>
                    <div class="col-sm"><strong>Ngày hết hạn</strong></div>
                    <div class="col-sm-1"><strong>Trả sách</strong></div>
                </div>
                <hr>
            </div>
            <?php
            $ten = $_SESSION['username'];
            $result = mysqli_query($conn,"SELECT a.*, b.* FROM lend AS a 
                                          JOIN lenditem AS b on a.LendId = b.LendId
                                          WHERE  b.LendStatus=1 AND a.Username='$ten'");


            if (mysqli_num_rows($result) != 0)
            {
                while ($row=mysqli_fetch_array($result, MYSQLI_ASSOC))
                {
            ?>
            <div class="row text-center">
                <div class="col-sm text-left ml-4"><?php echo $row["BookId"] ?></div>
                <div class="col-sm-3"><?php echo $row["LendCreateDate"] ?></div>
                <div class="col-sm"><?php echo $row["LendExpDate"] ?></div>
                <div class="col-sm-1">
                    <a href="?page=trasach&action=tra&id=<?php echo $row["LendId"] ?>&bo=<?php echo $row["BookId"]; ?>">
                        <button type="button" class="btn btn-sm btn-outline-primary" name="tra"><i class="fas fa-check-square"></i></button>
                    </a>
                </div>
            </div>
            <hr>
                <?php
                    
                ?>
            <?php
                }
            } else 
                {
            ?>
                <div class='row'>
                    <div class='col-sm text-center mb-3'>
                        <p> Bạn chưa mượn quyển sách nào từ chúng tôi!</p>
                    </div>
                </div>
            <?php
                }
            ?>
        </div>
    </div>
</div>

<?php include TEMPLATES_PATH . '/_footer.php'; ?>
