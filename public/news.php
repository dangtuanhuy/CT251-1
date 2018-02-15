<?php 
define('ROOT_PATH', dirname(__DIR__));

include ROOT_PATH.'/config/config.php'; 
include ROOT_PATH.'/config/config.db.php';
?>

<?php include TEMPLATES_PATH . '/header.php'; ?>

<div class="col">
    <div class="container-fluid">
        <!-- News -->
        <div class="row justify-content-md-center py-3">
            <button type="button" class="btn btn-success btn-lg index-label" disabled>Tin tức</button>
        </div>
        <?php 
        if (isset($_GET['id'])): 
            include('news-detail.php');
        else: 
        ?>
        <ul class="list-unstyled">
            <?php 
            $query = "SELECT * FROM `news` ORDER BY `NewsDate` DESC LIMIT 20;";
            $result = $conn->query($query);
            while ($new = $result->fetch_array(MYSQLI_ASSOC)) 
            {
            ?>
            <li class="media pt-3">
                <img class="align-self-center mr-3 img-book" src=<?= ROOT_PATH.'/'.$new['ImgNews']; ?> alt="Placeholder Image">
                <div class="media-body">
                    <a href=<?= '?id='.$new['NewsId'] ?> class="text-primary link-title">
                        <h5 class="mt-0"><?= $new['Title'] ?></h5>
                    </a>
                    <h6 class="card-subtitle mb-2 text-muted" style="font-size: .8rem"><?= $new['NewsDate'] ?></h6>
                    <?= $new['NewsContent'] ?>
                </div>
            </li>     
            <?php 
            } 
            ?>       
        </ul>
        <?php endif; ?>
        <!-- ///News -->
    </div>
</div>   

<?php include TEMPLATES_PATH . '/footer.php'; ?>
