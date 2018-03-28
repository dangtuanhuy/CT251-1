<?php
define('ROOT_PATH', dirname(__DIR__));

include ROOT_PATH.'/config/config.php';
include ROOT_PATH.'/config/config.db.php';
?>
<?php include TEMPLATES_PATH . '/header.php'; ?>

<?php
date_default_timezone_set('Asia/Ho_Chi_Minh');
if (isset($_POST['yui'])) {
    if ($_POST['action'] === 'lend') {
        $date  = date("Y-m-d H:i:s");
        $exp_date = date("Y-m-d H:i:s", strtotime("+14 day"));
        $query = "INSERT INTO `lend`(`LendCreateDate`, `LendExpDate`, `LendStatus`,
                                     `PaymentMethodId`, `Username`)
                  VALUES ('{$date}', '{$exp_date}', '1', '1', '{$_SESSION['username']}')";
        mysqli_query($conn, $query);

        $lend_id = mysqli_query($conn, "SELECT MAX(lendId) as LendID FROM lend");
        $lend_id = $lend_id->fetch_object()->LendID;
        foreach ($_SESSION['giohang'] as $book ) {
            $query = "INSERT INTO `lenditem`(`LendId`, `BookId`, `LendCreateDate`, `LendStatus`)
                      VALUES ('{$lend_id}', '{$book["id"]}', '{$date}', '1')";
            mysqli_query($conn, $query);
        }

        unset($_SESSION["giohang"]);
        echo '<script> alert("Gửi phiếu mượn thành công!");</script>';
        echo "<script>window.location.href='". ROOT_PATH . "'</script>";
    }
}

?>
<div class="col">
    <div class="container">
        <div class="container">
        <?php
        if (!isset($_SESSION['username'])):
            echo "<script>window.location.href='".ROOT_PATH.'/public/sign-in.php'."'</script>";
        elseif ($_SESSION['giohang'] == null):
            echo "Page not found";
        else:
        ?>
            <div class="row justify-content-md-center pt-5">
                <h1><strong>Phiếu mượn sách</strong></h1>
            </div>
            <hr>
            <?php
            $query = "SELECT * FROM user WHERE Username = '" . $_SESSION['username'] . "'";
            $user = $conn->query($query)->fetch_object();
            ?>
            <div class="row mt-2">
                <h4>Tên người dùng: <?= $user->DisplayName; ?></h4>
            </div>
            <div class="row mt-2">
                <h4>Địa chỉ: <?= $user->Address; ?></h4>
            </div>
            <div class="row mt-2">
                <h4>Số điện thoại: <?= $user->Phone; ?></h4>
            </div>
            <div class="row mt-3">
                <div class="col-1 text-center"><h5>STT</h5></div>
                <div class="col"><h5>Tên sách</h5></div>
                <div class="col-2 text-center"><h5>Số lượng</h5></div>
            </div>
            <hr>
            <?php
            $index = 0;
            foreach ($_SESSION['giohang'] as $book):
                $index += 1;
            ?>
            <div class="row mt-1">
                <div class="col-1 text-center"><h5><?= $index ?></h5></div>
                <div class="col"><h5><?= $book["ten"] ?></h5></div>
                <div class="col-2 text-center"><h5><?= $book["soluong"] ?></h5></div>
            </div>
            <?php
            endforeach;
            ?>
            <div class="row mt-5 justify-content-center">
                <form method="POST">
                    <input type="hidden" name="action" value="lend">
                    <button type="submit" class="btn btn-success" name="yui">Xác nhận và gửi phiếu mượn</button>
                </form>
            </div>
        <?php
        endif;
        ?>
        </div>
    </div>
</div>

<?php include TEMPLATES_PATH . '/_footer.php'; ?>
