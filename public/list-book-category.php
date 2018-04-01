<?php
define('ROOT_PATH', dirname(__DIR__));

include ROOT_PATH.'/config/config.php';
include ROOT_PATH.'/config/config.db.php';
?>

<?php include TEMPLATES_PATH . '/header.php'; ?>

<div class="col">
    <div class="container-fluid">
        <div class="row justify-content-md-center py-3">
            <button type="button" class="btn btn-success btn-lg index-label" disabled>List Category</button>
        </div>
        <div class="row">
            <div class="col">
                <ul class="list-group">
                    <?php
                    $result = mysqli_query($conn,"SELECT `CategoryNames` FROM `category` LIMIT 0, 8");
                    while ($row=mysqli_fetch_array($result, MYSQLI_ASSOC)):
                    ?>
                        <li class="list-group-item"><a href="#"><?php echo $row["CategoryNames"] ?></a></li>
                    <?php
                    endwhile;
                    ?>
                </ul>
            </div>
            <div class="col">
                <ul class="list-group">
                    <?php
                    $result = mysqli_query($conn,"SELECT `CategoryNames` FROM `category` LIMIT 8,8 ");
                    while ($row=mysqli_fetch_array($result, MYSQLI_ASSOC)):
                    ?>
                        <li class="list-group-item"><a href="#"><?php echo $row["CategoryNames"] ?></a></li>
                    <?php
                    endwhile;
                    ?>
                </ul>
            </div>
            <div class="col">
                <ul class="list-group">
                    <?php
                    $result = mysqli_query($conn,"SELECT `CategoryNames` FROM `category` LIMIT 16,8 ");
                    while ($row=mysqli_fetch_array($result, MYSQLI_ASSOC)):
                    ?>
                        <li class="list-group-item"><a href="#"><?php echo $row["CategoryNames"] ?></a></li>
                    <?php
                    endwhile;
                    ?>
                </ul>
            </div>
        </div>
        <div class="row" style="margin-top: 74px;"></div>
    </div>
</div>

<?php include TEMPLATES_PATH . '/footer.php'; ?>
