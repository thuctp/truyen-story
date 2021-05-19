<div class="bg-white p-4">
	<div class="d-flex mb-4">
        <h2 class=" mb-0 me-3">Cập Nhật Thông Tin Khách Hàng</h2>
        <button type="button" class="btn btn-primary text-white fw-600" data-bs-toggle="modal" data-bs-target="#doimatkhau">Đổi Mật Khẩu</button>
    </div>


	<div class="modal fade" id="doimatkhau" role="dialog">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title text-primary" style="text-align: center;color: blue;font-weight: bold;">Đổi Mật Khẩu</h4>
          </div>
          <div class="modal-body">
            <?php include("noidung/doimatkhau.php"); ?>
          </div>
        </div>
      </div>
    </div>


<?php
	$kq=mysqli_query($con, "select * from nncms_nguoidung where idNguoiDung = {$_SESSION['nguoidung']}");
	$d=mysqli_fetch_array($kq);
?>

    <form method="post" action="process.php" id="form1" name="form1">
        <div class="form-group">
            <label>Email :</label>
            <input value="<?php echo $d['Email']; ?>" type="email" class="form-control" id="email" name="email" disabled   >
        </div>
        <div class="form-group">
            <label>Họ Tên :</label>
            <input value="<?php echo $d['HoTen']; ?>" type="text" class="form-control" id="ten" name="ten" required>
        </div>
        <div class="form-group">
            <label>Số Điện Thoại :</label>
            <input value="<?php echo $d['DienThoai']; ?>" type="number" class="form-control" id="sdt" name="sdt">
        </div>
        <div class="form-group">
            <label>Địa Chỉ :</label>
            <input value="<?php echo $d['DiaChi']; ?>" type="text" class="form-control" id="diachi" name="diachi" required>
        </div>
        <div class="form-group">
            <label>Ngày Sinh :</label>
            <input value="<?php echo $d['NgaySinh']; ?>" type="date" class="form-control" id="ngaysinh" name="ngaysinh" required>
        </div>
        <div class="form-group">
            <label>Giới Tính :</label>
            <label class="radio-inline me-2">
                <input name="gioitinh" value="0" <?php if( $d['GioiTinh'] == 0) echo 'checked=""';?>  type="radio">Nam
            </label>
            <label class="radio-inline">
                <input name="gioitinh" <?php if( $d['GioiTinh'] == 1) echo 'checked=""';?> value="1" type="radio">Nữ
            </label>
        </div>
        <input type="hidden" name="idnguoidung" value="<?php echo $_SESSION['nguoidung'] ;?>">
        <input type="hidden" name="guimail" value="<?php echo $d['Email']; ?>">

        <input class="c-button-input" type="submit" name="chinhsua" id="chinhsua" value="Chỉnh Sửa">
        <input class="c-button-input" type="reset" name="huy" value="Reset">
        <input class="c-button-input" type="button" name="Submit2" value="Quay Về" onClick="history.back()">
    </form>
</div>