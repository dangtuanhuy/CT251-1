<?php
    include_once("../../config.db.php");
    $name = "";
    $detail  = "";
    if( isset($_POST["btnAdd"]))
    {
        $name = $_POST["txtName"];
        $name = $_POST["txtDetails"];
        $sqlinsert ="INSERT INTO `category`(`CategoryNames`, `CategoryDescription`) VALUES('name','details')";
    }


?>

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

						<textarea laceholder="Sách dành cho thiếu nhi" class="form-control" name="txtDetails" id="txtDetails" required="true"></textarea>
					</div>
					<div class="form-group">

						<input type="submit" name="btnAdd" id="btnAdd" class="btn btn-warning btnNut" value="Thêm" >
						<input type="reset" name="btnReset" id="btnReset" class="btn btn-info btnNut" value="Bỏ Qua" >
					</div>
				</div>
			</form>