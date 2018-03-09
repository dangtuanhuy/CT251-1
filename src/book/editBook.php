<div class="container">
	<form method="post" class="">
		<div class="form-group">
			<h4 class="text-center">CẬP NHẬT THÔNG TIN SÁCH</h4>
		</div>
		<div class="form-group">
			<label for="txtSach">Tên Sách:</label>
			<input type="text" class="form-control" id="txtSach" name="txtSach" placeholder="Tên sách" required="">
		</div>
		<div class="form-group">
			<label for="txtPrice1">Giá Gốc: </label>
			<input type="text" class="form-control" id="txtPrice1" name="txtPrice1" placeholder="VD: 80USD" required="">
		</div>
		<div>
			<label for="txtDetails">Nội dung</label>
			<textarea name="txtDetails" id="txtDetails" class="form-control" placeholder="VD: Chuyên viên Lập Trình IoT" required=""></textarea>
		</div>
		<div class="form-group">
			<label for="txtNum">Số Lượng: </label>
			<input type="text" class="form-control" id="txtNum" name="txtNum" placeholder="VD: 41" required="">
		</div>
		<div class="form-group">
			<label for="txtDate">Ngày cập nhật: </label>
			<input type="date" class="form-control" id="txtDate" name="txtDate" placeholder="VD: 41" required="">
		</div>
		<div class="form-group">
			<label for="txtDeline">Thời hạn mượn: </label>
			<input type="number" class="form-control" id="txtDeline" name="txtDeline" placeholder="VD: 2" required="">
		</div>
		<div class="form-group">
			<label for="slCategory">Loại Sách: </label>
			<?php blindCategoryList($conn) ?>
		</div>
		<div class="form-group">
			<label for="slPublisher">Nhà Xuất Bản: </label>
			<?php blindPublisher($conn) ?>
		</div>
		<div class="form-group">
			<label for="slLanguage">Ngô Ngữ: </label>
			<?php blindLanguage($conn) ?>
		</div>
		<div class="form-group">
			<label for="slLentCost">Giá Cho Thuê: </label>
			<?php blindLentCost($conn) ?>
		</div>
		<input type="submit" class="btn btn-danger" name="btnAdd" value="Thêm Mới"/>
		<input type="reset" name="btnReset" value="Nhập Lại" class="btn btn-info" />
	</form>

</div>