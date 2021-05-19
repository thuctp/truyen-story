<!-- div chia tung loai san phamm sieu cap-->
<div class="panel panel-primary ">

    <div class="panel-heading">
        truyen de cu
    </div>
    <div class="panel-body">
        <?php
        $strHot="select * from nncms_truyen where AnHien=1 order by SoLanXem DESC limit 0, 3";
        $kqTrHot=mysqli_query($con, $strHot);
        while ($dsc=mysqli_fetch_array($kqTrHot)) {
            ?>
            <div class="col-sm-3">
                <div class="thumbnail" style="height: 150px; margin-bottom: 0px">
                    <a style="text-decoration:none;" href="index.php?key=chitiettruyen&idtruyen=<?php echo $dsc['idTruyen'] ;?>" target="">
                        <img class="img-responsive" src="upload/sanpham/<?php echo $dsc['UrlHinh'];?>" alt="sanpham">
                    </a>
                </div>
                <div class="thumbnail" style="text-align:center;padding:0px;height: 60px">
                    <p class="ten"><?php echo $dsc['TenTruyen'];?></p>
                    <p>
                        <?php $dcloaitruyen=mysqli_fetch_array(mysqli_query($con, "select idCL, TenCL from nncms_chungloai where idCL={$dsc['idCL']}"));
                        echo $dcloaitruyen['TenCL']; ?>
                    </p>
                </div>
            </div>
        <?php } ;?>
    </div>

</div>
<!-- ket thus phan san pham sieu cap-->


<!-- div chia tung loai san phamm sieu cap-->
<div class="panel panel-primary ">

    <div class="panel-heading">
        truyen Hot
    </div>
    <div class="panel-body">
    <?php
        $strHot="select * from nncms_truyen where AnHien=1 and TrangThai = 0 order by SoLanXem DESC limit 0, 3";
        $kqTrHot=mysqli_query($con, $strHot);
        while ($dsc=mysqli_fetch_array($kqTrHot)) {
    ?>
        <div class="col-sm-3">
            <div class="thumbnail" style="height: 150px; margin-bottom: 0px">
                <a style="text-decoration:none;" href="index.php?key=chitiettruyen&idtruyen=<?php echo $dsc['idTruyen'] ;?>" target="">
                    <img class="img-responsive" src="upload/sanpham/<?php echo $dsc['UrlHinh'];?>" alt="sanpham">
                </a>
            </div>
            <div class="thumbnail" style="text-align:center;padding:0px;height: 60px">
                <p class="ten"><?php echo $dsc['TenTruyen'];?></p>
                <p>
                    <?php $dcloaitruyen=mysqli_fetch_array(mysqli_query($con, "select idCL, TenCL from nncms_chungloai where idCL={$dsc['idCL']}"));
                echo $dcloaitruyen['TenCL']; ?>
                </p>
            </div>
        </div>
    <?php } ;?>
    </div>

</div>
<!-- ket thus phan san pham sieu cap-->

<!-- div chia tung loai san phamm cao cap-->
<div class="panel panel-primary ">

    <div class="panel-heading">
        truyen da hoan thanh
    </div>
    <div class="panel-body">
        <?php
        $strHot="select * from nncms_truyen where AnHien=1 and TrangThai = 1 order by SoLanXem DESC limit 0, 4";
        $kqTrHot=mysqli_query($con, $strHot);
        while ($dsc=mysqli_fetch_array($kqTrHot)) {
            ?>
            <div class="col-sm-3">
                <div class="thumbnail" style="height: 150px; margin-bottom: 0px">
                    <a style="text-decoration:none;" href="index.php?key=chitiettruyen&idtruyen=<?php echo $dsc['idTruyen'] ;?>" target="">
                        <img class="img-responsive" src="upload/sanpham/<?php echo $dsc['UrlHinh'];?>" alt="sanpham">
                    </a>
                </div>
                <div class="thumbnail" style="text-align:center;padding:0px;height: 60px">
                    <p class="ten"><?php echo $dsc['TenTruyen'];?></p>
                    <p>
                        <?php $dcloaitruyen=mysqli_fetch_array(mysqli_query($con, "select idCL, TenCL from nncms_chungloai where idCL={$dsc['idCL']}"));
                        echo $dcloaitruyen['TenCL']; ?>
                    </p>
                </div>
            </div>
        <?php } ;?>
    </div>

</div>
<!-- ket thus phan san pham cao cap -->
