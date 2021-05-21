<?php
if(isset($_GET['roleadmin'])){
$kq=mysqli_query($con, "select * from nncms_admin where idAdmin={$_GET['roleadmin']} ");
$d=mysqli_fetch_array($kq);
?>

<div class="bg-white p-4">

    <h2>Chinh Sửa Thông Tin Admin</h2>

    <form method="post" action="process.php" id="form1" name="form1">
        <div class="form-group">
            <label>Tên Đăng Nhập :</label>
            <input type="text" class="form-control" id="tendangnhap" name="tendangnhap" readonly
                   value="<?php echo $d['TenDangNhap'] ;?>">
        </div>
        <div class="form-group">
            <label>Họ Tên :</label>
            <input type="text" class="form-control" id="ten" name="ten" readonly
                   value="<?php echo $d['HoTen'] ;?>">
        </div>
        <div class="form-group">
            <label>Số Điện Thoại :</label>
            <input type="number" class="form-control" id="sdt" name="sdt" readonly
                   value="<?php echo $d['DienThoai'] ;?>">
        </div>
        <div class="form-group">
            <label>Email :</label>
            <input type="email" class="form-control" id="email" name="email" readonly
                   value="<?php echo $d['Email'] ;?>">
        </div>
        <div class="form-group">
            <label>Địa Chỉ :</label>
            <input type="text" class="form-control" id="diachi" name="diachi" readonly
                   value="<?php echo $d['DiaChi'] ;?>">
        </div>
        <div class="form-group">
            <label>Vai Trò</label>
            <label class="radio-inline">
                <input name="vaitro" value="0" <?php if( $d['idRole'] == 0) echo 'checked=""';?> type="radio">Supper Admin
            </label>
            <label class="radio-inline">
                <input name="vaitro" value="1" <?php if( $d['idRole'] == 1) echo 'checked=""';?> type="radio">Admin
            </label>
            <label class="radio-inline">
                <input name="vaitro" value="2" <?php if( $d['idRole'] == 2) echo 'checked=""';?> type="radio">Author
            </label>
            <label class="radio-inline">
                <input name="vaitro" value="3" <?php if( $d['idRole'] == 3) echo 'checked=""';?> type="radio">Staff
            </label>
        </div>
        <input type="hidden" name="idroleadmin" value="<?php echo $d['idAdmin'] ;?>">

        <input type="submit" name="chinhsuaroleadmin" id=chinhsuaroleadmin" value="Đăng Ký">
        <input type="reset" name="huy" value="Reset">
    </form>
</div>
<?php } ?>