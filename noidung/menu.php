<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
<!--        <a class="navbar-brand" href="#">Navbar</a>-->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item me-3">
                    <a class="nav-link active" aria-current="page" href="index.php">Home</a>
                </li>
                <li class="nav-item">
                    <div class="dropdown">
                        <a class="nav-link dropdown-toggle color-op-1"
                           href="#" role="button" id="dropdownMenuTheLoai" data-bs-toggle="dropdown" aria-expanded="false">
                            Thể Loại
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuTheLoai">
                            <?php $listTheLoai=mysqli_query($con, "select idCL, TenCL, ThuTu, AnHien from nncms_chungloai where AnHien=1 order by ThuTu DESC limit 0,15");
                            while ($looptheloai=mysqli_fetch_array($listTheLoai)){
                                ?>
                                <li><a class="dropdown-item" href="index.php?key=truyenCL&idcl=<?php echo $looptheloai['idCL'] ;?>">
                                        <i class="fas fa-tags fa-xs me-1"></i> <?php echo $looptheloai['TenCL'] ?>
                                    </a></li>
                            <?php } ?>
                        </ul>
                    </div>
                </li>

            </ul>
            <div class="d-flex">
                <?php
                if(isset($_SESSION['nguoidung'])){
                    $kq=mysqli_query($con, "select idNguoiDung, HoTen from nncms_nguoidung where idNguoiDung={$_SESSION['nguoidung']}");
                    $d=mysqli_fetch_array($kq);
                    ?>
                    <div class="">
                        <div class="dropdown">
                            <a class="btn btn-radius-sm-py btn-secondary dropdown-toggle"
                               href="#" role="button" id="dropdownMenuProfile" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-user me-2"></i>
                                <?php echo $d['HoTen'] ?>
                            </a>

                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuProfile">
                                <li><a class="dropdown-item" href="index.php?key=suauser&idNguoiDung=<?php echo $d['idNguoiDung'] ;?>">
                                        <i class="fas fa-user me-2"></i> Cá Nhân</a></li>
                                <li><a class="dropdown-item" href="#">
                                        <i class="fas fa-cog me-2"></i> Cài Đặt
                                    </a></li>
                                <li><a class="dropdown-item" href="process.php?huydn">
                                        <i class="fas fa-sign-out-alt me-2"></i> Đăng Xuất</a></li>
                            </ul>
                        </div>
                    </div>
                <?php }
                else{
                    ?>
                    <!-- phan hien thi dang nhap -->
                    <div class=" btn-radius-sm-py bg-secondary group-btn-action">
                        <button type="button" class="btn btn-sm text-white btn-radius-sm-py" data-bs-toggle="modal" data-bs-target="#dangnhap">Đăng Nhập</button>/
                        <a class="d-inline-block" href="index.php?key=dangkynguoidung">
                            <button type="button" class="btn btn-sm text-white btn-radius-sm-py">Đăng Ký</button>
                        </a>
                    </div>

                    <!-- khung div phan dang nhap -->
                    <div class="modal fade" id="dangnhap" role="dialog">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title text-center" style="text-align: center;color: blue;font-weight: bold;">ĐĂNG NHẬP</h4>
                                </div>
                                <div class="modal-body">
                                    <?php include("noidung/dangnhap.php"); ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ket thuc khung dang nhap -->
                    <!-- ket thuc dang nhap -->
                <?php } ?>
            </div>
        </div>
    </div>
</nav>