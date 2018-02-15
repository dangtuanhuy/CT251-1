<div class="py-3">
    <a href=<?= PUBLIC_PATH . '/news.php' ?>>
        <i class="fa fa-chevron-left"></i> Trở về trang tin tức
    </a>
</div>
<?php
$new_id = $_GET['id'];
$query = "SELECT * FROM `news` WHERE `NewsId`=".$new_id;
$new = $conn->query($query)->fetch_object();
?>
<div class="media">
    <img class="align-self-center mr-3 img-book-lg" src=<?= ROOT_PATH.'/'.$new->ImgNews; ?> alt="Placeholder Image">
    <div class="media-body">
        <a href=<?= '?id='.$new->NewsId ?> class="text-primary link-title">
            <h3 class="mt-0"><?= $new->Title ?></h3>
        </a>
        <h6 class="card-subtitle mb-2 text-muted" style="font-size: 1rem"><?= $new->NewsDate ?></h6>
        <?= $new->NewsContent ?>
    </div>
</div>
