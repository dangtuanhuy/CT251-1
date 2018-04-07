<?php session_start(); ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Bootstrap Dashboard by Bootstrapious.com</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <!-- jQuery Circle-->
    <link rel="stylesheet" href="css/grasp_mobile_progress_circle-1.0.0.min.css">
    <!-- Custom Scrollbar-->
    <link rel="stylesheet" href="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
  <?php include_once("../config/config.db.php"); ?>
  <?php
    if(isset($_POST['btnLogion']))
    {
      $loginusername = trim($_POST["txtloginUsername"]);
			$loginpassword = trim($_POST["txtloginPassword"]);
      $loginpassword = md5($loginpassword);
      $result = mysqli_query($conn,"SELECT *
                                    FROM user
                                    WHERE `Role` = 4 AND  Username='{$loginusername}' AND Passwords='{$loginpassword}'");
      if (mysqli_num_rows($result) == 1)
      {
        $_SESSION["Username"] = $loginusername;
        echo "<script>window.location.href='index.php'</script>";
      }
      else
      {
        echo '<script> alert("Tên tài khoản hoặc mật khẩu không chính xác!");</script>';
      }
    }
  ?>
    <div class="page login-page">
      <div class="container">
        <div class="form-outer text-center d-flex align-items-center">
          <div class="form-inner">
            <div class="logo text-uppercase"><span>BookDiamond</span><strong class="text-primary"></strong></div>
            <p>Website mượn sách BookDiamond là một ứng dụng quản ly` sách phục vụ yêu cầu độc giả gần xa. Thanh toán nhanh gon lẹ</p>
            <form id="login-form" method="post">
              <div class="form-group-material">
                <input id="txtloginUsername" type="text" name="txtloginUsername" required class="input-material">
                <label for="txtloginUsername" class="label-material">Username</label>
              </div>
              <div class="form-group-material">
                <input id="txtloginPassword" type="password" name="txtloginPassword" required class="input-material">
                <label for="txtloginPassword" class="label-material">Password</label>
              </div><input type="submit" value="LOGIN" name="btnLogion" class="btn btn-outline-info"/>
              <!-- This should be submit button but I replaced it with <a> for demo purposes-->
            </form>
          </div>
          <div class="copyrights text-center">

            <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
          </div>
        </div>
      </div>
    </div>
    <!-- Javascript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>
  </body>
</html>
