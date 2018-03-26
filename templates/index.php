<?php
session_start();
if(!isset($_SESSION["giohang"])){
	$_SESSION["giohang"] = array();
}
?>
<?php
    function dathang($ma,$conn)
	{
			$ma = $_GET["id"];
			$resultsql = mysqli_query($conn, "SELECT a.*, b.PublisherName FROM book a, publisher b WHERE BookId=".$ma);
			$rowsql = mysqli_fetch_row($resultsql);
			if($rowsql[0] >= 1)
			{
				$coroi = false;
				foreach ($_SESSION["giohang"] as $key => $row) 
				{
					if($key==$ma)
					{
						$_SESSION['giohang'][$key]["soluong"] +=  1;
						$coroi = true;
					}
				}
				
				if(!$coroi)
				{
					$ten = $rowsql[1];
					$gia = $rowsql[2];
					$nsx = $rowsql[11];
					
					$dathang = array(
					"ten" => $ten,
					"gia" => $gia,
					"soluong" =>1,
					"hang" => $nsx);
					$_SESSION['giohang'][$ma]=$dathang;
				}
				echo "<script language='javascript'>
				alert('Sản phẩm đã được thêm vào giỏ hàng, truy cập giỏ hàng để xem!'); 
				</script>";
			}
			else
			{
				echo "<script>alert('Số lượng bạn đặt vượt quá số lượng trong kho.');</script>";
			}
	}
	
	if(isset($_GET['func'])&isset($_GET['id']))
	{
		$ma = $_GET['id'];
		dathang($ma,$conn);
	}

 ?>  
<div class="col">
    <div class="container-fluid">
        <div class="row pt-2">
            <div class="col">
                <div class="alert alert-success text-danger" style="min-width: 100%;" role="alert">
                    <marquee>Tài khoản của bạn đã hết hạn. Vui lòng gia hạn thêm.</marquee>
                </div>
            </div>
        </div>
        <div class="row pt-2">
            <!-- Random Article -->
            <div class="col-8 d-md-none d-lg-block">
                <div class="media">
                    <img class="mr-3 rounded" src="http://bit.ly/2AX9mTF" style="max-width: 200px;" alt="Generic placeholder image">
                    <div class="media-body">
                        <h5 class="mt-0 mb-3 text-center">
                            <a href="" class="text-danger">
                                <strong>Is It Wrong to Try to Pick Up Girls in a Dungeon?</strong>
                            </a>
                        </h5>
                        Life in the bustling city of Orario is never dull, especially for Bell Cranel, a naïve young man who hopes to become the greatest adventurer in the land. After a chance encounter with the lonely goddess, Hestia, his dreams become a little closer to reality. With her support, Bell embarks on a fantastic quest as he ventures deep within the city's monster-filled catacombs, known only as the "Dungeon." Death lurks around every corner in the cavernous depths of this terrifying labyrinth, and a mysterious power moves amidst the shadows.                            
                        <!-- <a href="#" class="btn btn-success mt-3 float-right">Xem chi tiết</a> -->
                    </div>
                </div>
            </div>
            <!-- End Random Article -->
            <!-- Notification -->
            <div class="col">
                <div class="card">
                    <div class="card-header bg-success-light text-center" style="color: #fff">Thông báo mới</div>
                    <ul class="list-group list-group-flush">
                    <?php
                    $query = "SELECT `NewsId`, `Title` FROM `news` ORDER BY `NewsDate` DESC LIMIT 5;";
                    $news = $conn->query($query);
                    while ($new = $news->fetch_array(MYSQLI_ASSOC)) 
                    {
                    ?>
                        <li class="list-group-item">
                            <a href=<?= PUBLIC_PATH.'/news.php?id='.$new['NewsId'] ?>>
                                <?= $new['Title'];?> 
                            </a>
                        </li>
                    <?php
                    }
                    mysqli_free_result($news);
                    ?>
                    </ul>
                </div>
                <a href=<?= PUBLIC_PATH."/news.php" ?> class="float-right mt-2 link-title">
                    Xem thêm
                    <i class="fa fa-chevron-right"></i>
                    <i class="fa fa-chevron-right"></i>
                    <i class="fa fa-chevron-right"></i>
                </a>
            </div>
            <!-- End Notification -->
        </div>
        <hr>
        <!-- Search bar -->
        <div class="row justify-content-md-center">
            <form action="" class="form-inline col-10">
                <label for="searchbar" class="sr-only">Search</label>
                <span class="col-9"></span>
                <input type="text" class="form-control mb-2 mr-sm-2 mb-sm-0 col-9" id="searchbar" placeholder="Nhập tên sách để tìm kiếm">
                <button class="btn btn-primary">Tìm kiếm</button>
            </form>
        </div>
        <!-- ///Search bar -->
        <!-- Recently Updated Book -->
        <div class="row justify-content-md-center py-3">
            <button type="button" class="btn btn-primary btn-lg index-label" disabled>Sách mới cập nhật</button>
        </div>
        <?php
        $query = "SELECT * FROM `book` ORDER BY `BookUpdateDate` DESC LIMIT 6;";
        $start_row = true; // split line
        $books = $conn->query($query);
        while ($book = $books->fetch_array(MYSQLI_ASSOC)) 
        {
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
                        <a href="" class="text-primary link-title">
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
                        <a href="" class="text-primary link-title">
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
        }
        ?>
        <!-- ///Recently Updated Book -->
        <hr>
        <!-- Popular book -->
        <div class="row justify-content-md-center pt-1 pb-2">
            <button type="button" class="btn btn-danger btn-lg index-label" disabled>Sách phổ biến</button>
        </div>
        <?php
        $query = "SELECT * FROM `book` ORDER BY `BookLentTimes` DESC LIMIT 6;";
        $start_row = true; // split line
        $books = $conn->query($query);
        while ($book = $books->fetch_array(MYSQLI_ASSOC)) 
        {
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
                        <a href="" class="text-primary link-title">
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
                        <a href="" class="text-primary link-title">
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
        }
        ?>
        <!-- ///Popular book -->
    </div>
</div>         
