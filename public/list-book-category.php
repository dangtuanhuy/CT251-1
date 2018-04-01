<?php 
define('ROOT_PATH', dirname(__DIR__));

include ROOT_PATH.'/config/config.php'; 
include ROOT_PATH.'/config/config.db.php';
?>

<?php include TEMPLATES_PATH . '/header.php'; ?>

<div class="col">
    <div class="container-fluid">
                <h3 class="text-center">CATEGORY LIST</h3>
        <div class="row">
            <div class="col-md-4">
                <ul class="list-group">
                    <li class="list-group-item active "><p class="text-center">Book Category 1<p></li>
                    <li class="list-group-item">Dapibus ac facilisis in</li>
                  
                </ul>
            </div>
            <div class="col-md-4">
                <ul class="list-group">
                <li class="list-group-item active"><p class="text-center">Book Category 2<p></li>
                    <li class="list-group-item">Dapibus ac facilisis in</li>
                    
                </ul>
            </div>
            <div class="col-md-4">
                <ul class="list-group">
                <li class="list-group-item active"><p class="text-center">Book Category 3<p></li>
                    <li class="list-group-item">Dapibus ac facilisis in</li>
                    
                </ul>
            </div>
        </div>

    </div>
</div>   

<?php include TEMPLATES_PATH . '/footer.php'; ?>
