<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <!-- Popper JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

  <!-- Latest compiled JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <title>Nhà Xuất Bản</title>
</head>
<body>
<?php
    include_once("../../config/config.db.php");
    $name = "";
   
    if( isset($_POST["btnAdd"]))
    {
        $name = $_POST["txtName"];
       
        $sqlinsert ="INSERT INTO `publisher`(`PublisherName`) VALUES('$name')";
        mysqli_query($conn,$sqlinsert);
    }


?>
  <div class="container">
  <form class="form-horizontal" id="frmForm" name="frmForm" method="post">
			<div class="row">
				<h1 class="well">Thêm Nhà Xuất Bản</h1>
				<div class="col-sm-12 well col-md-12">
      <div class="form-group">
        <label for="txtName" class="control-label">Tên Nhà Xuất Bản:</label>
        <input type="text" class="form-control" id="txtName" name="txtName" class="form-control"/>
      </div>
      <button type="submit" class="btn btn-primary" name="btnAdd">Thêm</button>
      </div>
				</div>
			</form>
            </div>
</body>
</html>