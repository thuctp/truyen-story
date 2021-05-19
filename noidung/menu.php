<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.php">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                </li>
            </ul>
            <div class="d-flex">
                <?php
                if(isset($_SESSION['nguoidung'])){
                    $kq=mysqli_query($con, "select idNguoiDung, HoTen from nncms_nguoidung where idNguoiDung={$_SESSION['nguoidung']}");
                    $d=mysqli_fetch_array($kq);
                    ?>
                    <div class="">
                        <a href="index.php?key=suauser&idNguoiDung=<?php echo $d['idNguoiDung'] ;?>"><button class="btn btn-danger btn-md"><?php echo $d['HoTen'] ?></button></a>
                        <a href="process.php?huydn"><button class="btn btn-warning btn-md">Đăng Xuất</button></a>
                    </div>
                <?php }
                else{
                    ?>
                    <!-- phan hien thi dang nhap -->
                    <div class="">
                        <button type="button" class="btn btn-sm text-white" data-bs-toggle="modal" data-bs-target="#dangnhap">Đăng Nhập</button>
                        <a class="d-inline-block" href="index.php?key=dangkynguoidung">
                            <button type="button" class="btn btn-sm text-white">Đăng Ký</button>
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