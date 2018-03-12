<?php 
define('ROOT_PATH', dirname(__DIR__));

include ROOT_PATH.'/config/config.php'; 
include ROOT_PATH.'/config/config.db.php';
?>

<?php include TEMPLATES_PATH . '/header.php'; ?>

<div class="col">
    <div class="container-fluid">
        <div class="row justify-content-md-center py-3">
            <button type="button" class="btn btn-success btn-lg index-label" disabled>Danh sách sách trong thư viện</button>
        </div>
    <?php
        $query = "SELECT * FROM `book` ORDER BY `BookUpdateDate` DESC LIMIT 120;";
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
    </div>
</div>
        
        

<?php include TEMPLATES_PATH . '/footer.php'; ?>

