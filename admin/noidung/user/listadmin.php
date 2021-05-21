<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">UESR ADMIN
            <small>List</small>
        </h1>
    </div>
    <!-- /.col-lg-12 -->
    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
        <thead>
            <tr align="center">
                <th>ID Admin</th>
                <th>Tên Đăng Nhập</th>
                <th>Họ Tên</th>
                <th>Số Điện Thoại</th>
                <th>Email</th>
                <th>Địa Chỉ</th>
                <th>Ngày Sinh</th>
                <th>Giới Tính</th>
                <th>Ngày Đăng Ký</th>
                <th>Vai Trò</th>
                <th>Điểm Thưởng</th>
                <th>Delete</th>
                <th>Edit Role</th>
            </tr>
        </thead>
        <tbody>
        <?php
            $s="select * from nncms_admin";
            $kq=mysqli_query($con, $s);
            while ($d = mysqli_fetch_array($kq)) {
        ?>
            <tr class="odd gradeX" align="center">
                <td><?php echo $d['idAdmin'];?></td>
                <td><?php echo $d['TenDangNhap'];?></td>
                <td><?php echo $d['HoTen'];?></td>
                <td><?php echo $d['DienThoai'];?></td>
                <td><?php echo $d['Email'];?></td>
                <td><?php echo $d['DiaChi'];?></td>
                <td><?php echo $d['NgaySinh'];?></td>
                <td><?php if ($d['GioiTinh']==0) echo "Nam"; else echo "Nữ" ; ?></td>
                <td><?php echo $d['NgayDangKy'];?></td>
                <td><?php
                    if ($d['idRole']==0) echo "Super Admin";
                    elseif ($d['idRole']==1) echo "Admin";
                    elseif ($d['idRole']==2) echo "Author";
                    else echo "Staff" ; ?>
                </td>
                <td><?php echo $d['DiemThuong'];?></td>
                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="process.php?xoaadmin=<?php echo $d['idAdmin'];?>"> Delete</a></td>
                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="index.php?key=suaroleadmin&roleadmin=<?php echo $d['idAdmin'];?>">Edit</a></td>
            </tr>
        <?php } ?>
        </tbody>
    </table>
</div>