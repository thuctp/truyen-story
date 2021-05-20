<div class="">

    <h4 class="title-loai">
        <?php
        $tenTL=mysqli_fetch_array(mysqli_query($con, "select idCL, TenCL from nncms_chungloai where idCL={$_GET['idcl']}"));
        echo $tenTL['TenCL'];
        ?>
    </h4>


<?php
    if(isset($_GET['idcl']))

    $sodong=12; // 12 san pham ad
    $sonhom=3; // 5 trang ad
    $sl="select * from nncms_truyen where idCL={$_GET['idcl']}";
    $kqsp=mysqli_query($con, $sl);
$tongsotrang=ceil(mysqli_num_rows($kqsp)/$sodong);
    if (!isset($_GET["p"])) //kiểm tra get so trang xuống nếu không có trang thì cho mặt định nó là
  {
      $p=1; //cho mặt định nó là một
  }
  else
  {
    $p=intval($_GET["p"]);
  }
    $x=($p-1)*$sodong; //lấy số trang hiện hành, để chia ra từng trang sản phẩn trong từng trang. đay là sản phẩm bắt đàu của mỗi trang

    $sl="select * from nncms_truyen where idCL={$_GET['idcl']} limit $x,$sodong";
    $kqsp=mysqli_query($con, $sl);
    $checkDATA=mysqli_num_rows($kqsp);
    if($checkDATA > 0){ ?>
    <div class="row row-cols-1 row-cols-md-4 g-2">
    <?php while ($d=mysqli_fetch_array($kqsp)) { ?>

    <div class="col">
        <a href="index.php?key=chitiettruyen&idtruyen=<?php echo $d['idTruyen'] ;?>">
            <div class="card card-list-truyen">
                <div class="wrap-card-img"><img class="card-img-top"
                                                src="upload/sanpham/<?php echo $d['UrlHinh'];?>" alt="hinh"></div>
                <div class="card-body">
                    <h6 class="card-title"><?php echo $d['TenTruyen'];?></h6>
                </div>
            </div>
        </a>
    </div>
    <?php } ?>
    </div>

    <!--phan phan trang-->
    <?php if($tongsotrang>1){ ?>
    <div class="custom-pagination">
        <!-- Phần hiển thị số trang -->
        <p class="pagenavi" align="left" style="clear:both; font-weight: bold;">
            <?php
            $dau = $p-2;
            if($dau<1)
            {$dau=1;}
            $cuoi = $dau + $sonhom - 1;
            if($cuoi>$tongsotrang)
            {$cuoi=$tongsotrang;}
            ?>
            <!-- trang hien tai cua tổng số trang -->
            <span style="float: right;">Page <?php echo $p; ?> of <?php echo $tongsotrang;?></span>
            <!-- hien <trang đau> hiện về trang đàu tiên -->
            <a href="index.php?key=truyenCL&idcl=<?php echo $_GET['idcl'];?>&p=1">Trang đầu</a>
            <!-- icon hiển thị các trang phía trước của trang hien tai -->
            <?php if ($p>1) {
                $p1=$p-1;
                ?>
                <a href="index.php?key=truyenCL&idcl=<?php echo $_GET['idcl'];?>&p=<?php echo $p1; ?>"><img src="images/icon/1328101938_Arrow-Right.png" width="40" height="20"/></a>&nbsp;
            <?php } ?>
            <!-- liet ke thu tu cac trang trong nhom -->
            <?php
            for($i=$dau;$i<=$cuoi;$i++)
            {
                if ($i<=$tongsotrang)
                {
                    if ($i==$p)
                    {
                        echo $i."&nbsp;";
                    }
                    else
                    {
                        ?>
                        <a href="index.php?key=truyenCL&idcl=<?php echo $_GET['idcl'];?>&p=<?php echo $i; ?>"><?php echo $i; ?></a>
                        <?php
                    }
                }
            }
            ?>
            <!-- hien trang sau -->
            <?php if ($p<$tongsotrang) {
                $p2=$p+1;
                ?>
                <a href="index.php?key=truyenCL&idcl=<?php echo $_GET['idcl'];?>&p=<?php echo $p2; ?>"><img src="images/icon/1328101938_Arrow-left.png" width="40" height="20" /></a>&nbsp;
            <?php } ?>
            <?php
            if($p=$tongsotrang){
                $trangcuoi=$p;
                ?>
                <a href="index.php?key=truyenCL&idcl=<?php echo $_GET['idcl'];?>&p=<?php echo $trangcuoi; ?>">Trang cuối</a>
            <?php } ?>
        </p>
    </div>
    <?php } ?>
    <!--ket thuc phan phan trang-->

    <?php  } else{ ?>
        <div class="bg-white p-4">
            <h6>Không Có truyện nào cùng Thể Loại này!</h6>
        </div>
    <?php } ?>


</div>