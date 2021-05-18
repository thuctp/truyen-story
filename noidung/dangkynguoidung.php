<div class="panel panel-primary ">
		
	<div class="panel-heading">
		<b>Đăng Ký Thông Tin Khách Hàng</b>
	</div>
	<div class="panel-body">
		<form method="post" action="process.php" id="form1" name="form1">
		    <div class="form-group">
		        <label>Email :</label>
		        <input type="email" class="form-control" id="email" name="email" required>
		    </div>
		    <div class="form-group">
		        <label>Password :</label>
		        <input type="Password" class="form-control" id="pass" name="pass" required>
		    </div>
		    <div class="form-group">
		        <label>Họ Tên :</label>
		        <input type="text" class="form-control" id="ten" name="ten" required>
		    </div>
		    <div class="form-group">
		        <label>Số Điện Thoại :</label>
		        <input type="number" class="form-control" id="sdt" name="sdt">
		    </div>
		    <div class="form-group">
		        <label>Địa Chỉ :</label>
		        <input type="text" class="form-control" id="diachi" name="diachi" required>
		    </div>
		    <div class="form-group">
		        <label>Ngày Sinh :</label>
		        <input type="date" class="form-control" id="ngaysinh" name="ngaysinh" required>
		    </div>
		    <div class="form-group">
		        <label>Giới Tính :</label>
		        <label class="radio-inline">
		        	<input name="gioitinh" value="0" checked="" type="radio">Nam
		        </label>
		       <label class="radio-inline">
		       		<input name="gioitinh" value="1" type="radio">Nữ
		     	</label>
		    </div>

		    <input type="submit" name="dangky" id="dangky" value="Đăng Ký">
		    <input type="reset" name="huy" value="Reset">
		</form>
	</div>
</div>