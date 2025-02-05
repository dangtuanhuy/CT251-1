<div class="col">
    <div class="container-fluid">
        <?php
        if (isset($_SESSION['username'])):
            $query = "SELECT ExpriredDate FROM user WHERE Username = '".$_SESSION['username']."'";
            $ExpiredDate = $conn->query($query)->fetch_object()->ExpriredDate;
            date_default_timezone_set('Asia/Ho_Chi_Minh');
            $date = date('Y-m-d');
            if ($ExpiredDate < $date):
        ?>
        <div class="row pt-2">
            <div class="col">
                <div class="alert alert-success text-danger" style="min-width: 100%;" role="alert">
                    <marquee>Tài khoản của bạn đã hết hạn. Vui lòng gia hạn thêm.</marquee>
                </div>
            </div>
        </div>
        <?php
            endif;
        endif;
        ?>
        <div class="row pt-2">
        <?php
            $query = "SELECT BookId FROM book";
            $result = $conn->query($query);
            $id = array();
            while ($row = $result->fetch_array(MYSQLI_NUM)) {
                array_push($id, $row[0]);
            };
            $query = "SELECT * FROM book WHERE BookId = " . array_rand($id);
            $book = $conn->query($query)->fetch_object();
            $query_image = "SELECT ImgBook FROM imgbook WHERE BookId = " . $book->BookId;
            $image = $conn->query($query_image)->fetch_object();
            $image_path = is_object($image) ? $image->ImgBook : 'public/images/no-image.jpg';
        ?>
            <!-- Random Article -->
            <div class="col-8 d-none d-lg-block d-xl-block">
                <div class="media">
                    <img class="mr-3 rounded" src="<?= ROOT_PATH.'/'.$image_path;?>" style="max-width: 200px;" alt="Generic placeholder image">
                    <div class="media-body">
                        <h5 class="mt-0 mb-3 text-center">
                            <a href="<?= ROOT_PATH.'/public/book-detail.php?id='.$book->BookId ?>" class="text-danger">
                                <strong><?= $book->BookNames ?></strong>
                            </a>
                        </h5>
                        <?= $book->BookDescription ?>
                    </div>
                </div>
            </div>
            <!-- Notification -->
            <div class="col">
                <div class="card">
                    <div class="card-header text-center bg-success-light" style="color: #fff">Thông báo mới</div>
                    <ul class="list-group list-group-flush">
                    <?php
                    $query = "SELECT `NewsId`, `Title` FROM `news` ORDER BY `NewsDate` DESC LIMIT 5;";
                    $news = $conn->query($query);
                    while ($new = $news->fetch_array(MYSQLI_ASSOC)):
                    ?>
                        <li class="list-group-item">
                            <a href=<?= PUBLIC_PATH.'/news.php?id='.$new['NewsId'] ?>>
                                <?= $new['Title'];?>
                            </a>
                        </li>
                    <?php
                    endwhile;
                    mysqli_free_result($news);
                    ?>
                    </ul>
                </div>
                <a href=<?= PUBLIC_PATH."/news.php" ?> class="float-right mt-2">
                    Xem thêm
                    <i class="fa fa-chevron-right"></i>
                    <i class="fa fa-chevron-right"></i>
                    <i class="fa fa-chevron-right"></i>
                </a>
            </div>
        </div>
        <hr>
        <!-- Search bar -->
        <div class="row justify-content-center">
            <form action="" class="form-inline col-lg-10 col-md-10">
                <label for="searchbar" class="sr-only">Search</label>
                <input type="text" class="form-control mb-2 mr-sm-2 mb-sm-0 col-sm-9" id="searchbar" placeholder="Nhập tên sách để tìm kiếm">
                <button type="submit" class="btn btn-primary">Tìm kiếm</button>
            </form>
        </div>
        <!-- Recently Updated Book -->
        <div class="row justify-content-center py-3">
            <button type="button" class="btn btn-primary btn-lg index-label" disabled>
                Sách mới cập nhật
            </button>
        </div>
        <?php
        $query = "SELECT * FROM `book` ORDER BY `BookUpdateDate` DESC LIMIT 6;";
        $start_row = true; // split line
        $books = $conn->query($query);
        while ($book = $books->fetch_array(MYSQLI_ASSOC)):
            $temp = "SELECT `ImgBook` FROM `imgbook` WHERE `BookId`=".$book['BookId'];
            $img_book = $conn->query($temp)->fetch_object();
            $img = is_object($img_book) ? $img_book->ImgBook : 'public/images/no-image.jpg';
            if ($start_row):
                $start_row = false;
        ?>
        <div class="row py-2">
            <div class="col">
                <div class="media">
                     <img class="align-self-center mr-3 img-book" src=<?= ROOT_PATH.'/'.$img ?> alt="Book Image">
                     <div class="media-body">
                        <a href="<?= PUBLIC_PATH.'/book-detail.php?id='.$book['BookId']; ?>" class="text-primary link-title">
                            <h5 class="mt-0"><?= $book['BookNames'] ?>
                            <?php if ($book['BookQuantity'] == 0): ?>
                            <span class="badge badge-default">Không có sẵn</span>
                            <?php endif; ?>
                            </h5>
                        </a>
                        <?= $book['BookDescription']?>
                    </div>
                </div>
            </div>
        <?php
            else:
                $start_row = true;
        ?>
            <div class="col">
                <div class="media">
                    <img class="align-self-center mr-3 img-book" src=<?= ROOT_PATH.'/'.$img ?> alt="Book Image">
                    <div class="media-body">
                        <a href="<?= PUBLIC_PATH.'/book-detail.php?id='.$book['BookId']; ?>" class="text-primary link-title">
                            <h5 class="mt-0"><?= $book['BookNames'] ?>
                            <?php if ($book['BookQuantity'] == 0): ?>
                            <span class="badge badge-default">Không có sẵn</span>
                            <?php endif; ?>
                            </h5>
                        </a>
                        <?= $book['BookDescription']?>
                    </div>
                </div>
            </div>
        </div>
        <?php
            endif;
        endwhile;
        ?>
        <hr>
        <!-- Popular book -->
        <div class="row justify-content-center pt-1 pb-2">
            <button type="button" class="btn btn-danger btn-lg index-label" disabled>Sách phổ biến</button>
        </div>
        <?php
        $query = "SELECT * FROM `book` ORDER BY `BookLentTimes` DESC LIMIT 6;";
        $start_row = true; // split line
        $books = $conn->query($query);
        while ($book = $books->fetch_array(MYSQLI_ASSOC)):
            $temp = "SELECT `ImgBook` FROM `imgbook` WHERE `BookId`=".$book['BookId'];
            $img_book = $conn->query($temp)->fetch_object();
            // Check if imgbook is empty
            $img = is_object($img_book) ? $img_book->ImgBook : 'public/images/no-image.jpg';
            if ($start_row):
                $start_row = false;
        ?>
        <div class="row py-2">
            <div class="col">
                <div class="media">
                     <img class="align-self-center mr-3 img-book" src=<?= ROOT_PATH.'/'.$img ?> alt="Book Image">
                     <div class="media-body">
                        <a href="<?= PUBLIC_PATH.'/book-detail.php?id='.$book['BookId']; ?>" class="text-primary link-title">
                            <h5 class="mt-0"><?= $book['BookNames'] ?>
                            <?php if ($book['BookQuantity'] == 0): ?>
                            <span class="badge badge-danger">Không có sẵn</span>
                            <?php endif; ?>
                            </h5>
                        </a>
                        <?= $book['BookDescription']?>
                    </div>
                </div>
            </div>
        <?php
            else:
                $start_row = true;
        ?>
            <div class="col">
                <div class="media">
                    <img class="align-self-center mr-3 img-book" src=<?= ROOT_PATH.'/'.$img ?> alt="Book Image">
                    <div class="media-body">
                        <a href="<?= PUBLIC_PATH.'/book-detail.php?id='.$book['BookId']; ?>" class="text-primary link-title">
                            <h5 class="mt-0"><?= $book['BookNames'] ?>
                            <?php if ($book['BookQuantity'] == 0): ?>
                            <span class="badge badge-default">Không có sẵn</span>
                            <?php endif; ?>
                            </h5>
                        </a>
                        <?= $book['BookDescription']?>
                    </div>
                </div>
            </div>
        </div>
        <?php
            endif;
        endwhile;
        ?>
    </div>
</div>
