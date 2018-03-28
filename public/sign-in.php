<?php
define('ROOT_PATH', dirname(__DIR__));

include ROOT_PATH.'/config/config.php';
include ROOT_PATH.'/config/config.db.php';
?>
<?php include TEMPLATES_PATH.'/header.php' ?>
<?php
if (isset($_POST['btnLogin'])) {
	$username = trim($_POST["txtUsername"]);
	$password = trim($_POST["txtPassword"]);
	$password = md5($password);

	$result = mysqli_query($conn,"SELECT * FROM user WHERE Username='$username' AND Passwords='$password'");
	if (mysqli_num_rows($result) == 1)
	{
        $_SESSION["username"] = $username;
        echo "<script>window.location.href='../'</script>";

	}else{
		echo '<script> alert("Tên tài khoản hoặc mật khẩu không chính xác!");</script>';
	}
}

?>
<div class="container">
<div class="col">
<form class="form-horizontal" role="form" method="post" >
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h2 class="text-center mt-4">Đăng nhập</h2>
                <hr>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="txtUsername">Tên Đăng Nhập:</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <input type="text" name="txtUsername" class="form-control" id="txtUsername"
                               placeholder="Enter Your Username" required autofocus>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-control-feedback">
                        <span class="text-danger align-middle">
                            <!-- Put name validation error messages here -->
                        </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="txtPassword">Mật Khẩu: </label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <input type="password" name="txtPassword" class="form-control" id="txtPassword"
                               placeholder="Enter your Password" required>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-control-feedback">
                        <span class="text-danger align-middle">
                            <!-- Put e-mail validation error messages here -->
                        </span>
                </div>
            </div>
        <div class="col-md-3"></div>
            <div class="col-md-3">
                <button type="submit" class="btn btn-success" name="btnLogin" > Đăng nhập</button>
                <button type="button" class="btn btn-success" name="btnLogin" >Hủy</button>
            </div>
        </div>
</form>
</div>
</div>
<?php include TEMPLATES_PATH.'/_footer.php' ?>
