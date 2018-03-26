<?php
    if(!isset($_SESSION["giohang"])){
        $_SESSION["giohang"] = array();
    }
?>
<?php
define('ROOT_PATH', dirname(__DIR__));

include ROOT_PATH.'/config/config.php';
include ROOT_PATH.'/config/config.db.php';
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
				foreach ($_SESSION['giohang'] as $key => $row)
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

<?php include TEMPLATES_PATH . '/header.php'; ?>

<div class="col">
    <div class="container-fluid">
        <!-- News -->
        <div class="row justify-content-md-center py-3">
            <button type="button" class="btn btn-success btn-lg index-label" disabled>Chi tiết sách</button>
        </div>
        <?php
        if (!isset($_GET['id'])):
            echo 'Page not found';
        else:
            $book_id = $_GET['id'];
            $query = "SELECT * FROM book WHERE BookId =".$book_id;
            $book = $conn->query($query)->fetch_object();
            $query = "SELECT author.AuthorNames
                      FROM author
                      JOIN book_author on book_author.AuthorId = author.AuthorId
                      JOIN book on book.BookId = book_author.BookId
                      WHERE book.BookId = ".$book_id;
            $author_list = array();
            $result = $conn->query($query);
            while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
                $author_list[] = $row['AuthorNames'];
            }
            // $author_list = $conn->query($query)->fetch_array();
            $temp = "SELECT `ImgBook` FROM `imgbook` WHERE `BookId`= ".$book->BookId;
            $img_book = $conn->query($temp)->fetch_object();
            // Check if imgbook is empty
            $img_link = is_object($img_book) ? $img_book->ImgBook : 'public/images/no-image.jpg';
        ?>

        <div class="row mt-4">
            <!-- <div class="media mt-4"> -->
            <div class="colg">
                <img class="align-self-center mr-3 img-book-lg" src='<?= ROOT_PATH.'/'.$img_link ?>' alt="Book Image">
            </div>
            <div class="col">
                <div class="row">
                    <a href="<?= PUBLIC_PATH.'/book-detail.php?id='.$book->BookId ?>" class="text-primary link-title">
                        <h1 class="mt-0"><?= $book->BookNames ?>
                        <?php if ($book->BookQuantity == 0): ?>
                        <span class="badge badge-default">Không có sẵn</span>
                        <?php endif; ?>
                        </h1>
                    </a>
                </div>
                <div class="row">
                    <p>
                        <strong>Giá bìa:</strong> <?= $book->BookPrices ?> VNĐ
                        <br>
                        <strong>Tác giả:</strong>
                        <?
                        foreach ($author_list as $author):
                            if ($author === end($author_list)):
                                echo $author;
                            else:
                                echo $author . ' - ';
                            endif;
                        endforeach;
                        ?>
                    </p>
                </div>
                <div class="row">
                    <p> Tóm tắt: <br>
                        <?= $book->BookDescription ?>
                    </p>
                </div>
                <div class="row">
                    <div class="col-5">
                    <a href="?func=dathang&<?='id='.$book->BookId ?>"><input class="btn btn-success btn-block" type="submit" value="Thêm vào giỏ hàng"></a>
                    </div>
                </div>
            </div>
        </div>
        <?php
        endif;
        ?>
    </div>
</div>

<?php include TEMPLATES_PATH . '/_footer.php'; ?>
