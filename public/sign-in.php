<?php 
define('ROOT_PATH', dirname(__DIR__));

include ROOT_PATH.'/config/config.php'; 
include ROOT_PATH.'/config/config.db.php';
?>

<?php include TEMPLATES_PATH.'/header.php' ?>
<?php 
    $name = "";
    $pass = "";
    $display ="";
    $birthday = date_default_timezone_set('Asia/Vientiane');
    $address = "";
    $numphone = "";
    $emails = "";
    $sex = "";
    $dateexprired = "";
    if(isset($_POST["btnRegister"]))
    {
        $name = $_POST["txtUsername"];
        $pass = $_POST["txtPassword"];
        $display = $_POST["txtDisplay"];
        $birthday = date('Y-m-d',  strtotime($_POST['txtDate']));
        $address = $_POST["txtAddress"];
        $emails = $_POST["txtEmail"];
        $numphone = $_POST["txtPhone"];
        if(isset($_POST['rd'])) {
			$sex = $_POST['rd'];
        }
        $dateexprired = date('Y-m-d',  strtotime($_POST['txtDateex']));//$_POST["txtDateex"];
        $sqlinsert = "INSERT INTO `user`
        (`Username`, `Passwords`, `DisplayName`, 
        `UserImg`, `Birthday`, `Gender`, `Address`, `Phone`,
         `Email`, `ExpriredDate`, `Active`, `Status`, `Role`) 
        VALUES('$name','".md5($pass)."','$display','','$birthday','$sex','$address','$numphone','$emails ','$dateexprired',1,1,1)";
        mysqli_query($conn,$sqlinsert);
    }
?>
<div class="col" >
<div class="container">
    <form class="form-horizontal" role="form" method="post" action="#">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h2 class="text-center mt-4">Register</h2>
                <hr>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="txtUsername">Tên Đăng Nhập:</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-user"></i></div>
                        <input type="text" name="txtUsername" class="form-control" id="txtUsername"
                               placeholder="Enter Your Username" required autofocus>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-control-feedback">
                        <span class="text-danger align-middle">
                            <!-- Put name validation error messages here -->
                        </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="txtPassword">Mật Khẩu: </label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-key"></i></div>
                        <input type="password" name="txtPassword" class="form-control" id="txtPassword"
                               placeholder="Enter your Password" required>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-control-feedback">
                        <span class="text-danger align-middle">
                            <!-- Put e-mail validation error messages here -->
                        </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="txtDisplay">Tên Hiển Thị: </label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-address-book"></i></div>
                        <input type="text" name="txtDisplay" class="form-control" id="txtDisplay"
                               placeholder="Enter your Display name" required>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-control-feedback">
                        <span class="text-danger align-middle">
                            <!-- Put e-mail validation error messages here -->
                        </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="txtDate">Ngày sinh: </label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0"></div>
                        <input type="date" name="txtDate" class="form-control" id="txtDate"
                                required>
                    
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-control-feedback">
                        <span class="text-danger align-middle">
                            <!-- Put e-mail validation error messages here -->
                        </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="rd">Giới Tính: </label>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-3 mb-sm-0"></div>
                        <input type="radio" name="rd" id="txtBoy" 
                        <?php if(isset($Gender)&&$Gender=="0") { echo "checked";} ?> />Nam
                        <input type="radio" name="rd" id="txtGirl"
                        <?php if(isset($Gender)&&$Gender=="1") { echo "checked";} ?> />Nữ
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-control-feedback">
                        <span class="text-danger align-middle">
                            <!-- Put e-mail validation error messages here -->
                        </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="txtAddress">Địa chỉ: </label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0"></div>
                        
                                <textarea name="txtAddress" class="form-control" id="txtAddress"></textarea>
                    
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-control-feedback">
                        <span class="text-danger align-middle">
                            <!-- Put e-mail validation error messages here -->
                        </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="txtEmail">Email: </label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-book"></i></div>
                        <input type="email" name="txtEmail" class="form-control" id="txtEmail"
                               placeholder="Enter your Email" required>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-control-feedback">
                        <span class="text-danger align-middle">
                            <!-- Put e-mail validation error messages here -->
                        </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="txtPhone">Số điện Thoại: </label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-phone"></i></div>
                        <input type="tel" name="txtPhone" class="form-control" id="txtPhone"
                               placeholder="Enter your Phone" required>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-control-feedback">
                        <span class="text-danger align-middle">
                            <!-- Put e-mail validation error messages here -->
                        </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="txtDateex">Ngày Kích Hoạt: </label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0"></div>
                        <input type="date" name="txtDateex" class="form-control" id="txtDateex"
                                required>
                    
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-control-feedback">
                        <span class="text-danger align-middle">
                            <!-- Put e-mail validation error messages here -->
                        </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <button type="submit" class="btn btn-success" name="btnRegister" ><i class="fa fa-user-plus" ></i> Register</button>
            </div>
        </div>
    </form>
</div>
</div>

<?php include TEMPLATES_PATH.'/_footer.php' ?>
