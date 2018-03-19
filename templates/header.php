<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous"> -->
    <link rel="stylesheet" href=<?= PUBLIC_PATH . '/css/bootstrap.min.css' ?>>
    <link rel="stylesheet" href=<?= PUBLIC_PATH . '/css/style.css' ?>>
    <link rel="icon" href=<?= PUBLIC_PATH. '/images/fav.ico' ?>>
    <title>Book Management</title>
</head>
<body>
<div class="container-fluid pl-0">
    <div class="row">
        <!-- Narbar -->
        <div class="col-1">
            <nav class="nav flex-column bg-success-light" id="navbar">
                <a class="nav-link text-center mb-5" href="#">
                    <img id="nav-user-img" src=<?= PUBLIC_PATH.'/images/noava.png'?> alt="">
                </a>
                <a class="nav-link text-center" href=<?= ROOT_PATH.'/index.php'?>>
                    <p class="mb-0"><i class="fa fa-home"></i></p>
                    <p class="nav-link-text">Trang chủ</p>
                </a>
                <a class="nav-link text-center" href="<?= ROOT_PATH.'/public/categories.php'?>">
                    <p class="mb-0"><i class="fa fa-list"></i></p>
                    <p class="nav-link-text">Danh mục</p>
                </a>
                <a class="nav-link text-center" href="<?= ROOT_PATH.'/public/list-book.php'?>">
                    <p class="mb-0"><i class="fa fa-th-large"></i></p>
                    <p class="nav-link-text">Danh sách</p>
                </a>
                <a class="nav-link text-center" href="#">
                    <p class="mb-0"><i class="fa fa-shopping-cart"></i>
                        <strong class='badge badge-pill' id="card-badge">3</strong>
                    </p>
                    <p class="nav-link-text">Giỏ sách</p>
                </a>
                <a class="nav-link text-center" href=<?= TEMPLATES_PATH.'/FAQ.php' ?>>
                    <p class="mb-0"><i class="fa fa-question-circle"></i></p>
                    <p class="nav-link-text">FAQ</p>
                </a>
                <a class="nav-link text-center" href=<?= PUBLIC_PATH.'/sign-in.php' ?>>
                    <p class="mb-0"><i class="fa fa-sign-in-alt"></i></p>
                    <p class="nav-link-text">Đăng Ký</p>
                </a>
                <a class="nav-link text-center" href=<?= PUBLIC_PATH.'/sign-up.php' ?>>
                    <p class="mb-0"><i class="fa fa-sign-in-alt"></i></p>
                    <p class="nav-link-text">Đăng nhập</p>
                </a>
                <!-- <a class="nav-link active text-center" href="#">
                    <p class="mb-0"><i class="fa fa-user-plus"></i></p>
                    <p class="nav-link-text">Đăng ký</p>
                </a> -->
                <!-- <a class="nav-link active text-center" href="#">
                    <p class="mb-0"><i class="fa fa-sign-out-alt"></i></p>
                    <p class="nav-link-text">Đăng xuất</p>
                </a> -->
            </nav>
        </div>
        <!-- ///Narbar -->
