<?php 
define('ROOT_PATH', dirname(__DIR__));

include ROOT_PATH.'/config/config.php'; 
include ROOT_PATH.'/config/config.db.php';
?>

<?php include TEMPLATES_PATH.'/header.php' ?>

<div class="col" >
    <div class="container-fluid">
        <div class="row" style="width: 100%;">
            <div class="col-6">
                <div class="card mt-5" style="border:none;">
                    <div class="card-header text-center">
                        Đăng nhập
                    </div>
                    <div class="card-body">
                    <form class="mt-3" method="POST" action="sign-in.php">
                        <div class="form-group">
                            <label for="fgUsername">Username</label>
                            <input name="username" type="text" class="form-control" id="fgUsername" placeholder="Username">
                        </div>
                        <div class="form-group">
                            <label for="fgPassword">Password</label>
                            <input name="password" type="password" class="form-control" id="fgPassword" placeholder="Password">
                        </div>
                        <div class="text-right">
                            <button class="btn btn-primary index-label" type="submit">Đăng nhập</button>
                        </div>
                    </form>
                    </div>
                </div>
            </div>
            <div class="col-6">
                <div class="card mt-5" style="border:none;">
                    <div class="card-header text-center">
                        Đăng ký
                    </div>
                    <div class="card-body">
                    <form class="mt-3" method="POST" action="sign-in.php">
                        <div class="form-group">
                            <label for="fgUsername">Username</label>
                            <input name="username" type="text" class="form-control" id="fgUsername" placeholder="Username">
                        </div>
                        <div class="form-group">
                            <label for="fgEmail">Email</label>
                            <input name="email" type="text" class="form-control" id="fgEmail" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <label for="fgPassword">Password</label>
                            <input name="password" type="password" class="form-control" id="fgPassword" placeholder="Password">
                        </div>
                        <div class="text-right">
                            <button class="btn btn-primary index-label" type="submit">Đăng ký</button>
                        </div>
                    </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include TEMPLATES_PATH.'/_footer.php' ?>
