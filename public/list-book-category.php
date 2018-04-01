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
                    <?php 
							
							$result = mysqli_query($conn,"SELECT `CategoryNames` FROM `category` LIMIT 0, 8");
							while($row=mysqli_fetch_array($result, MYSQLI_ASSOC))
							{
								?>
                    <li class="list-group-item"><a href="#"><?php echo $row["CategoryNames"] ?></a></li>
                    <?php
									
								}
								?>
                </ul>
            </div>
            <div class="col-md-4">
                <ul class="list-group">
                <li class="list-group-item active"><p class="text-center">Book Category 2<p></li>
                <?php 
							
							$result = mysqli_query($conn,"SELECT `CategoryNames` FROM `category` LIMIT 8,8 ");
							while($row=mysqli_fetch_array($result, MYSQLI_ASSOC))
							{
								?>
                    <li class="list-group-item"><a href="#"><?php echo $row["CategoryNames"] ?></a></li>
                    <?php
									
								}
								?>
                    
                </ul>
            </div>
            <div class="col-md-4">
                <ul class="list-group">
                <li class="list-group-item active"><p class="text-center">Book Category 3<p></li>
                <?php 
							
							$result = mysqli_query($conn,"SELECT `CategoryNames` FROM `category` LIMIT 16,8 ");
							while($row=mysqli_fetch_array($result, MYSQLI_ASSOC))
							{
								?>
                    <li class="list-group-item"><a href="#"><?php echo $row["CategoryNames"] ?></a></li>
                    <?php
									
								}
								?>
                    
                </ul>
            </div>
        </div>

    </div>
</div>   

<?php include TEMPLATES_PATH . '/footer.php'; ?>
