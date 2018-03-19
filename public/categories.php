<?php 
define('ROOT_PATH', dirname(__DIR__));

include ROOT_PATH.'/config/config.php'; 
include ROOT_PATH.'/config/config.db.php';
?>

<?php include TEMPLATES_PATH . '/header.php'; ?>


    <div class="container-fluid">
        
        
                <ul class="list-group">
                    <li class="list-group-item active">DANH MỤC SÁCH</li>
                   
                    <?php
                   
                   $result =mysqli_query ($conn,"SELECT `CategoryNames` FROM `category`");
                   while($row=mysqli_fetch_array($result, MYSQLI_ASSOC))
                   {
                       ?>
                        <li class="list-group-item"><a href="#"><?php echo $row["CategoryNames"] ?></a></li>
                
                    <?php
					
				}
				?>
                </ul>        
      
    </div>
 

<?php include TEMPLATES_PATH . '/footer.php'; ?>
