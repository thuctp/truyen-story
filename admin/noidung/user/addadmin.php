<div class="bg-white p-4">

    <h2>Đăng Ký Thông Tin Admin</h2>

    <form method="post" action="process.php" id="form1" name="form1">
        <div class="form-group">
            <label>Tên Đăng Nhập :</label>
            <input type="text" class="form-control" id="tendangnhap" name="tendangnhap" required>
        </div>
        <div class="form-group">
            <label>Mật Khẩu :</label>
            <input type="Password" class="form-control" id="pass" name="pass" required>
        </div>
        <div class="form-group">
            <label>Họ Tên :</label>
            <input type="text" class="form-control" id="ten" name="ten" required>
        </div>
        <div class="form-group">
            <label>Số Điện Thoại :</label>
            <input type="number" class="form-control" id="sdt" name="sdt" required>
        </div>
        <div class="form-group">
            <label>Email :</label>
            <input type="email" class="form-control" id="email" name="email" required>
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
            <label class="radio-inline me-3">
                <input name="gioitinh" value="0" checked="" type="radio">Nam
            </label>
            <label class="radio-inline">
                <input name="gioitinh" value="1" type="radio">Nữ
            </label>
        </div>

        <input type="submit" name="dangkyadmin" id="dangkyadmin" value="Đăng Ký">
        <input type="reset" name="huy" value="Reset">
    </form>
</div>