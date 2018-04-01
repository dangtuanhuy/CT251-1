<?php
define('ROOT_PATH', dirname(__DIR__));

include ROOT_PATH.'/config/config.php';
include ROOT_PATH.'/config/config.db.php';
?>

<?php include TEMPLATES_PATH.'/header.php' ?>



<?php
$query = "SELECT `Email`, `DisplayName`, `Address`, `Phone`
			FROM user
			WHERE Username = '" . $_SESSION['username'] . "'";
    $result = mysqli_query($conn, $query) or die(mysql_error());
	$row = mysqli_fetch_array($result, MYSQLI_ASSOC);

	$tendangnhap =$_SESSION['username'];
	$email = $row["Email"];
	$hoten=$row["DisplayName"];
	$diachi = $row["Address"];
	$dienthoai = $row["Phone"];

//Cap nhat khach hang khi nhan vao nut cap nhat
if(isset($_POST['btnCapNhat'])){
	$query = "SELECT `Email`, `DisplayName`, `Address`, `Phone`
			FROM user
			WHERE Username = '" . $_SESSION['username'] . "'";

    $result = mysqli_query($conn, $query) or die(mysql_error());
	$row = mysqli_fetch_row($result);
	if($_POST['txtMatKhau1']!="")
	{
		$matkhau=$_POST['txtMatKhau1'];
	}
	$hoten=$_POST['txtHoTen'];
	$diachi = $_POST['txtDiaChi'];
	$dienthoai = $_POST['txtDienThoai'];

	$kiemtra = kiemTra();
	if($kiemtra==""){
		//Khach hang co thay doi mat khau
		if($_POST['txtMatKhau1']!=""){
			mysqli_query($conn, "UPDATE user
					SET DisplayName='".$hoten."',Address='".$diachi."',
					Phone='".$dienthoai."',Passwords='".md5($_POST['txtMatKhau1'])."'
					WHERE Username = '" . $_SESSION['username'] . "'")
					or die(mysql_error());
		}
		//Khach hang khong thay doi mat khau
		else{ mysqli_query($conn, "UPDATE user
					SET DisplayName='".$hoten."',Address='".$diachi."',
					Phone='".$dienthoai."'
					WHERE kh_tendangnhap = '" . $_SESSION['Username'] . "'")
					or die(mysql_error());
		}
		echo "<script>alert('Cập nhật thành công!');window.location='../';</script>";
	}else{
		echo $kiemtra;
	}
}

function kiemTra(){
	if($_POST['txtHoTen']==""||$_POST['txtDiaChi']==""){
		return "<p class='cssLoi'>Vui lòng nhập đầy đủ thông tin.</p>";
	}
	elseif($_POST['txtMatKhau1']!=$_POST['txtMatKhau2'])
	{
		return "<p class='cssLoi'>Hai mật khẩu phải trùng nhau.</p>";
	}
	elseif(strlen($_POST['txtMatKhau1'])<=5 && strlen($_POST['txtMatKhau1'])>0){
		return "<p class='cssLoi'>Mật khẩu phải lớn hơn 5 ký tự. </p>";
	}
	else{
		return "";
	}
}
?>
<div class="container">
	<div class="col">
		<h2 class="text-center py-3">Cập nhật thông tin cá nhân</h2>
		<hr>
		<form id="form1" name="form1" method="post" action="" class="form-horizontal" role="form">
			<div class="form-group">
				<label for="lblTenDangNhap" class="col control-label">Tên đăng nhập(*):  </label>
				<div class="col-sm-10">
					<input class="form-control" style="font-weight:400" value="<?php echo $tendangnhap; ?>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="lblEmail" class="col control-label">Email(*):  </label>
				<div class="col-sm-10">
					<input class="form-control" style="font-weight:400" value="<?php echo $email; ?>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="lblMatKhau1" class="col control-label">Mật khẩu(*):  </label>
				<div class="col-sm-10">
					<input type="password" name="txtMatKhau1" id="txtMatKhau1" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="lblMatKhau2" class="col control-label">Nhập lại mật khẩu(*):  </label>
				<div class="col-sm-10">
						<input type="password" name="txtMatKhau2" id="txtMatKhau2" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label for="lblHoten" class="col control-label">Họ tên(*):  </label>
				<div class="col-sm-10">
						<input type="text" name="txtHoTen" id="txtHoTen" value="<?php echo $hoten; ?>" class="form-control" placeholder="Giá"/>
				</div>
			</div>
			<div class="form-group">
				<label for="lblDiaChi" class="col control-label">Địa chỉ(*):  </label>
				<div class="col-sm-10">
					<input type="text" name="txtDiaChi" id="txtDiaChi" value="<?php if(isset($diachi)) echo $diachi; ?>" class="form-control" placeholder="Địa chỉ"/>
				</div>
			</div>
			<div class="form-group">
				<label for="lblDienThoai" class="col control-label">Điện thoại(*):  </label>
				<div class="col-sm-10">
						<input type="text" name="txtDienThoai" id="txtDienThoai" value="<?php if(isset($dienthoai)) echo $dienthoai; ?>" class="form-control" placeholder="Điện thoại" />
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-10">
					<in	put type="submit"  class="btn btn-primary text-center" name="btnCapNhat" id="btnCapNhat" value="Cập nhật"/>
				</div>
			</div>
		</form>
	</div>
</div>
<?php include TEMPLATES_PATH.'/_footer.php' ?>
