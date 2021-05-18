<div class="panel panel-primary ">
		
	<div class="panel-heading">
		<b>Đăng Ký Thông Tin Khách Hàng</b>
	</div>

<?php
   if(isset($_SESSION['nguoidung'])){
    $kq=mysqli_query($con, "select * from nncms_nguoidung where idNguoiDung={$_SESSION['nguoidung']}");
    $d=mysqli_fetch_array($kq);
}
?>

	<div class="panel-body">
		<form method="post" action="process.php" id="form1" name="form1">
		    <div class="form-group">
		        <label>Tên Người Nhận :</label>
		        <input type="text" class="form-control" id="ten" name="ten" required value="<?php echo isset($d['HoTen']) ? $d['HoTen'] : '' ;?>">
		    </div>
		    <div class="form-group">
		        <label>Địa Điểm Giao :</label>
		        <input type="text" class="form-control" id="diadiem" name="diadiem" required value="<?php echo isset($d['DiaChi']) ? $d['DiaChi'] : '' ;?>">
		    </div>
		    <div class="form-group">
		        <label>Email :</label>
		        <input type="email" class="form-control" id="email" name="email" required value="<?php echo isset($d['Email']) ? $d['Email'] : '' ;?>">
		    </div>
		    <div class="form-group">
		        <label>Số Điện Thoại :</label>
		        <input type="number" class="form-control" id="sdt" name="sdt" value="<?php echo isset($d['DienThoai']) ?  $d['DienThoai'] : '' ;?>">
		    </div>
		    <div class="form-group">
		        <label>Ghi Chú :</label>
		        <input type="text" class="form-control" id="ghichu" name="ghichu" required>
		    </div>
		    <input type="hidden" name="idnguoidung" value="<?php echo isset($d['idNguoiDung']) ?  $d['idNguoiDung'] : 0 ;?>">
		    <input type="submit" name="dathang" id="dathang" value="Đặt Hàng">
		    <input type="reset" name="huy" value="Reset">
		</form>
	</div>
</div>