<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <!-- nut xuat hien khi bi thu nho -->
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#thunho">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <!-- Ket thu mút thu nhở -->
      <a class="navbar-brand" href="index.php">Trang Chủ</a>
    </div>

    <!-- div khi thu nho lai thi an di -->
  <div class="collapse navbar-collapse" id="thunho">  
    <ul class="nav navbar-nav">
      <?php
        $smn="select idMenu, idCapCha, TieuDe, ThuTu, AnHien from nncms_menus where AnHien=1 and idCapCha=0 order by ThuTu";
        $kqmn=mysqli_query($con, $smn);
        while ($dmn=mysqli_fetch_array($kqmn)) {
      ;?>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> <?php echo $dmn['TieuDe'] ;?> <span class="caret"></span></a>
        <ul class="dropdown-menu">
      <?php 
          $kqmnc=mysqli_query($con, "select idMenu, idCapCha, TieuDe, ThuTu, AnHien from nncms_menus where idCapCha={$dmn['idMenu']} order by ThuTu");
          while ( $dmnc=mysqli_fetch_array($kqmnc)) {
      ?>
          <li><a href="#"><?php echo $dmnc['TieuDe'] ;?></a></li>
        <?php } ?>

        </ul>
      </li>
      <?php } ;?>
    </ul>


    <div class="nav navbar-nav navbar-left hidden-md hidden-sm" style="display: none!important;">
      <!-- fom timf kiem-->
        <form class="navbar-form navbar-left" method="post" action="" id="form1" name="form1">
          <div class="input-group">
            <input type="text" class="form-control" name="search" placeholder="Nhập sản phẩm muốn tìm">
            <div class="input-group-btn">
              <button class="btn btn-default" type="submit">
                <i class="glyphicon glyphicon-search"></i>
              </button>
            </div>
          </div>
        </form>
      </div>

<?php
   if(isset($_SESSION['nguoidung'])){
    $kq=mysqli_query($con, "select idNguoiDung, HoTen from nncms_nguoidung where idNguoiDung={$_SESSION['nguoidung']}");
    $d=mysqli_fetch_array($kq);
?>
      <div class="nav navbar-nav navbar-right hidden-sm">
          <a href="index.php?key=suauser&idNguoiDung=<?php echo $d['idNguoiDung'] ;?>"><button class="btn btn-danger btn-md"><?php echo $d['HoTen'] ?></button></a>
          <a href="process.php?huydn"><button class="btn btn-warning btn-md">Đăng Xuất</button></a>
      </div>
<?php }
   else{
?>
      <!-- phan hien thi dang nhap -->
      <div class="nav navbar-nav navbar-right hidden-sm">
        <button type="button" class="btn btn-sm" data-toggle="modal" data-target="#dangnhap"><b>ĐĂNG NHẬP</b></button>
        <a href="index.php?key=dangkynguoidung"><button type="button" class="btn btn-sm"><b>Đăng Ký</b></button></a>
      </div>

<!-- khung div phan dang nhap -->
    <div class="modal fade" id="dangnhap" role="dialog">
      <div class="modal-dialog modal-dm">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title" style="text-align: center;color: blue;font-weight: bold;">ĐĂNG NHẬP</h4>
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
  <!-- ket thuc pham bi thu nho lai thi an di -->

  </div>
</nav>