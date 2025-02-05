<?php
    session_start();
    if (!isset($_SESSION['giohang'])) {
        $_SESSION['giohang'] = array();
    }
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous"> -->
    <link rel="stylesheet" href=<?= PUBLIC_PATH . '/css/bootstrap.min.css' ?>>
    <link rel="stylesheet" href=<?= PUBLIC_PATH . '/css/style.css' ?>>
    <link rel="icon" href=<?= PUBLIC_PATH. '/images/fav.ico' ?>>
    <title>Phát Triển Ứng Dụng trên Windowns</title>
</head>
<body>
<div class="container-fluid pl-0">
    <div class="row">
        <!-- Narbar -->
        <div class="col-1 d-none d-md-block">
            <nav class="nav flex-column bg-success-light" id="navbar">
                <?php
                $image_path = PUBLIC_PATH.'/images/noava.png';
                $user_path = '#';
                if (isset($_SESSION['username']) && $_SESSION['username']) {
                    $user_path = PUBLIC_PATH.'/updateUser.php';
                    $query = "SELECT UserImg FROM user WHERE username = '" . $_SESSION['username'] . "'";
                    $image = $conn->query($query)->fetch_object();
                    $image_path = ROOT_PATH . '/' . $image->UserImg;
                }
                ?>
                <a class="nav-link text-center mb-4" href="<?= $user_path ?>">
                    <img id="nav-user-img" src=<?= $image_path; ?> alt="">
                </a>
                <?php
                // endif;
                ?>
                <a class="nav-link text-center" href=<?= ROOT_PATH.'/index.php'?>>
                    <p class="mb-0"><i class="fa fa-home"></i></p>
                    <p class="nav-link-text">Trang chủ</p>
                </a>
                <a class="nav-link text-center" href=<?= ROOT_PATH.'/public/list-book-category.php'?>>
                    <p class="mb-0"><i class="fa fa-list"></i></p>
                    <p class="nav-link-text">Danh mục</p>
                </a>
                <a class="nav-link text-center" href=<?= ROOT_PATH.'/public/list-book.php'?>>
                    <p class="mb-0"><i class="fa fa-th-large"></i></p>
                    <p class="nav-link-text">Danh sách</p>
                </a>
                <?php
                $totalBook = 0;
                if (isset($_SESSION['giohang'])) {
                    foreach($_SESSION['giohang'] as $key => $row) {
                        $totalBook += 1;
                    }
                }
                ?>
                <a class="nav-link text-center" href=<?= ROOT_PATH.'/public/card.php'?>>
                    <p class="mb-0"><i class="fa fa-shopping-cart"></i>
                    <?php if ($totalBook !== 0): ?>
                        <strong class='badge badge-pill' id="card-badge"><?= $totalBook ?> </strong>
                    <?php endif; ?>
                    </p>
                    <p class="nav-link-text">Giỏ hàng</p>
                </a>
                <a class="nav-link text-center" href=<?= TEMPLATES_PATH.'/FAQ.php' ?>>
                    <p class="mb-0"><i class="fa fa-question-circle"></i></p>
                    <p class="nav-link-text">FAQ</p>
                </a>
                <?php
                if (isset($_SESSION['username']) && $_SESSION['username']):
                ?>
                <a class="nav-link text-center" href=<?= PUBLIC_PATH.'/sign-out.php' ?>>
                    <p class="mb-0"><i class="fa fa-sign-in-alt"></i></p>
                    <p class="nav-link-text">Đăng Xuất</p>
                </a>
                <?php
                else:
                ?>
                 <a class="nav-link text-center" href=<?= PUBLIC_PATH.'/sign-in.php' ?>>
                    <p class="mb-0"><i class="fa fa-sign-in-alt"></i></p>
                    <p class="nav-link-text"> Đăng nhập</p>
                </a>
                <a class="nav-link text-center" href=<?= PUBLIC_PATH.'/sign-up.php' ?>>
                    <p class="mb-0"><i class="fa fa-user-plus"></i></p>
                    <p class="nav-link-text">Đăng ký</p>
                </a>
                <?php
                endif;
                ?>
            </nav>
        </div>
        <div class="nav fixed-bottom bg-success d-md-none justify-content-center" id="horizontal-nav">
            <a class="btn btn-lg" href=<?= ROOT_PATH.'/index.php'?>><i class="fa fa-home"></i></a>
            <a class="btn btn-lg" href=<?= ROOT_PATH.'/public/list-book-category.php'?>><i class="fa fa-list"></i></a>
            <a class="btn btn-lg" href=<?= ROOT_PATH.'/public/list-book.php'?>><i class="fa fa-th-large"></i></a>
            <a class="btn btn-lg" href=<?= ROOT_PATH.'/public/card.php'?>><i class="fa fa-shopping-cart"></i></a>
        <?php if (isset($_SESSION['username']) && $_SESSION['username']): ?>
            <a class="btn btn-lg" href=<?= PUBLIC_PATH.'/sign-out.php' ?>><i class="fa fa-sign-out-alt"></i></a>
        <?php else: ?>
            <a class="btn btn-lg" href=<?= PUBLIC_PATH.'/sign-in.php' ?>><i class="fa fa-sign-in-alt"></i></a>
            <a class="btn btn-lg" href=<?= PUBLIC_PATH.'/sign-up.php' ?>><i class="fa fa-user-plus"></i></a>
        <?php endif; ?>
        </div>

        <!-- ///Narbar -->
<!-- Modal -->

