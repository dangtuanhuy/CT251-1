<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Category</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
</head>
<body>
<?php
    include_once("../../config/config.db.php");
    $name = "";
    $details  = "";
    if( isset($_POST["btnAdd"]))
    {
        $name = $_POST["txtName"];
        $details= $_POST["txtDetails"];
        $sqlinsert ="INSERT INTO `category`(`CategoryNames`, `CategoryDescription`) VALUES('$name','$details')";
        mysqli_query($conn,$sqlinsert);
    }


?>
<div class="container">
<form class="form-horizontal" id="frmForm" name="frmForm" method="post">
			<div class="row">
				<h1 class="well">Thêm Loại Sách</h1>
				<div class="col-sm-12 well col-md-12">
					<div class="form-group">
						<label for="txtName" class="control-label">Loại sách:</label>
						<input type="text" placeholder="VD: Sách Thiếu Nhi" class="form-control" name="txtName" id="txtName" required="true">
					</div>
					<div class="form-group">
						<label for="txtDetails" class="control-label">Mô tả chi tiết:</label>

						<textarea placeholder="Sách dành cho thiếu nhi" class="form-control" name="txtDetails" id="txtDetails" required="true"></textarea>
					</div>
					<div class="form-group">

						<input type="submit" name="btnAdd" id="btnAdd" class="btn btn-warning btnNut" value="Thêm" >
						<input type="reset" name="btnReset" id="btnReset" class="btn btn-info btnNut" value="Bỏ Qua" >
					</div>
				</div>
			</form>
            </div>
</body>
</html>