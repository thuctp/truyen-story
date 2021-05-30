<?php
if(isset($_GET['idprofile'])){
$kq=mysqli_query($con, "select * from nncms_admin where idAdmin={$_GET['idprofile']} ");
$d=mysqli_fetch_array($kq);
?>

<div class="bg-white p-4">

    <h2>Chinh Sửa Thông Tin Admin</h2>

    <form method="post" action="process.php" id="form1" name="form1">
        <div class="form-group">
            <label>Họ Tên :</label>
            <input type="text" class="form-control" id="ten" name="ten" required
                   value="<?php echo $d['HoTen'] ;?>">
        </div>
        <div class="form-group">
            <label>Số Điện Thoại :</label>
            <input type="number" class="form-control" id="sdt" name="sdt" required
                   value="<?php echo $d['DienThoai'] ;?>">
        </div>
        <div class="form-group">
            <label>Địa Chỉ :</label>
            <input type="text" class="form-control" id="diachi" name="diachi" required
                   value="<?php echo $d['DiaChi'] ;?>">
        </div>
        <div class="form-group">
            <label>Ngày Sinh :</label>
            <input type="date" class="form-control" id="ngaysinh" name="ngaysinh" required
                   value="<?php echo $d['NgaySinh'] ;?>">
        </div>
        <div class="form-group">
            <label>Giới Tính</label>
            <label class="radio-inline">
                <input name="gioitinh" value="0" <?php if( $d['GioiTinh'] == 0) echo 'checked=""';?> type="radio">Nam
            </label>
            <label class="radio-inline">
                <input name="gioitinh" <?php if( $d['GioiTinh'] == 1) echo 'checked=""';?> value="1" type="radio">Nữ
            </label>
        </div>
        <input type="hidden" name="idadmin" id="idadmin" value="<?php echo $d['idAdmin']; ?>">

        <input type="submit" name="chinhsuaadminprofile" value="Chỉnh Sửa">
        <input type="reset" name="huy" value="Reset">
    </form>
</div>
<?php } ?>
