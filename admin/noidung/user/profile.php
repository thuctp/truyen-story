<?php
if(isset($_SESSION['username'])){
$kq=mysqli_query($con, "select * from nncms_admin where idAdmin={$_SESSION['username']} ");
$d=mysqli_fetch_array($kq);
?>

<div class="bg-white p-4">

    <h2>Thông Tin Profile Admin</h2>

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
        <label>Ngày Sinh :</label>
        <input type="date" class="form-control" id="ngaysinh" name="ngaysinh" readonly
               value="<?php echo $d['NgaySinh'] ;?>">
    </div>
    <div class="form-group">
        <label>Giới Tính</label>
        <input type="text" class="form-control" id="gioitinh" name="gioitinh" readonly
               value="<?php if ($d['GioiTinh']==0) echo "Nam"; else echo "Nữ" ; ?>">
    </div>
    <div class="form-group">
        <label>Vai Trò</label>
        <input type="text" class="form-control" id="gioitinh" name="gioitinh" readonly
               value="<?php
               if ($d['idRole']==0) echo "Super Admin";
               elseif ($d['idRole']==1) echo "Admin";
               elseif ($d['idRole']==2) echo "Author";
               else echo "Staff" ; ?>">
    </div>
    <a href="index.php?key=suaprofile&idprofile=<?php echo $d['idAdmin'];?>">Chỉnh Sửa Profile</a>
</div>
<?php } ?>