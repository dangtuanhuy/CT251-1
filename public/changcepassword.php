<!DOCTYPE HTML>
<html>
<head>
<title>Changce password</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Share+Tech' rel='stylesheet' type='text/css'>
</head>
<?php
include_once("");
if(isset($_POST['btnDone'])){
	$username=trim($_POST['txtUsername']);
	$password=trim($_POST['txtPassword']);
	$newpass=trim($_POST['txtnewpassword']);
	$conformpass=trim($_POST['txtconformpassword']);
	$error="";
	if($username=="")
	{
		$error.="Please enter your user name";
	}
	if($password=="")
	{
		$error.="Please enetr your password";
	}
	if($newpass=="")
	{
		$error.="Please enter new password!";
	}
	if($conformpass=="")
	{
		$error.="Please conform new password!";
	}
	if($newpass!=$conformpass)
	{
		$error.="Please enter again your new password nad conform your new password!";
	}
	if($error!="")
	{
		echo "<ul class='cssLoi'>".$loi."</ul>";
	}
	else
	{
		$query="Select * from user where Username='$username'";
	}
}
?>
<body>
<div class="wrap">
<div class="feed row">
	<div class="feedback col-7">
        <h1>Changce password</h1>
        <form action="" method="POST" name="frm1" id="frm1" >
        	<div>
            	<span><label>User Name</label></span>
            	<span><input type="text" value="" id="txtUsername" /></span>
            </div>
            <div>
            	<span><label>Password</label></span>
            	<span><input type="text" value="" id="txtPassword"/></span>
            </div>
        	<div>
            	<span><label>New Password</label></span>
            	<span><input type="text" value="" id="txtnewpassword" /></span>
            </div>
            <div>
            	<span><label>Conform password</label></span>
            	<span><input type="text" value="" id="txtconformpassword" /></span>
            </div>
        	<div>
            	<span><input type="submit" value="Done" id="btnDone" /></span>
            </div>
            
        </form>
    </div>
</div>
</div>
</body>
</html>
