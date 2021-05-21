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

    <div>
        <a class="btn btn-primary text-white fw-600" href="index.php?key=suaprofile&idprofile=<?php echo $d['idAdmin'];?>">Chỉnh Sửa Profile</a>
        <button type="button" class="btn btn-primary text-white fw-600" data-toggle="modal" data-target="#doimatkhauadmin">Đổi Mật Khẩu</button>

        <div class="modal fade" id="doimatkhauadmin" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title text-primary" style="text-align: center;color: blue;font-weight: bold;">Đổi Mật Khẩu</h4>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="process.php" id="formdangnhap" name="formdangnhap">
                            <div class="form-group">
                                <label for="usr">Tên Đăng Nhập :</label>
                                <input type="text" class="form-control" id="user" name="user">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Mật Khẩu :</label>
                                <input type="password" class="form-control" id="pass" name="pass">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Mật Khẩu Mới :</label>
                                <input type="password" class="form-control" id="passnew" name="passnew">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Nhập Lại Mật Khẩu Mới :</label>
                                <input type="password" class="form-control" id="repassnew" name="repassnew">
                            </div>
                            <input type="hidden" name="id" value="<?php echo $_SESSION['username']; ?>">

                            <div style="text-align: center;font-weight: bold;color: red">
                                <button type="submit" class="btn btn-primary text-white" name="doimatkhauadmin">Đổi Mật Khẩu</button>
                                <button style="margin: 0 30px 0 30px" type="reset" class="btn btn-outline-primary" name="huy">Reset</button>
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<?php } ?>