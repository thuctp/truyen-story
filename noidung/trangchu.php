<!-- div chia truyen de cu-->
<div class="mb-5">
    <h4 class="title-loai">Truyện Đề Cử</h4>
    <div class="row row-cols-1 row-cols-md-3 g-3">

        <?php
        $strHot="select * from nncms_truyen where AnHien=1 order by SoLanXem DESC limit 0, 3";
        $kqTrHot=mysqli_query($con, $strHot);
        while ($dsc=mysqli_fetch_array($kqTrHot)) {
        ?>

        <div class="col">
            <a href="index.php?key=chitiettruyen&idtruyen=<?php echo $dsc['idTruyen'] ;?>">
                <div class="card card-list-truyen size-lg custom-card-body">
                    <div class="wrap-card-img"><img class="card-img-top"
                         src="upload/sanpham/<?php echo $dsc['UrlHinh'];?>" alt="hinh"></div>
                    <div class="card-body">
                        <h6 class="card-title"><?php echo $dsc['TenTruyen'];?></h6>
                        <small class="card-text">
                            <?php $dcloaitruyen=mysqli_fetch_array(mysqli_query($con, "select idCL, TenCL from nncms_chungloai where idCL={$dsc['idCL']}"));
                            echo $dcloaitruyen['TenCL']; ?>
                        </small>
                    </div>
                </div>
            </a>
        </div>

        <?php } ;?>

    </div>
</div>


<!-- div chia truyen Hot-->
<div class="mb-5">
    <h4 class="title-loai">Truyện Hot</h4>
    <div class="row row-cols-1 row-cols-md-4 g-2">

        <?php
        $strHot="select * from nncms_truyen where AnHien=1 and TrangThai = 0 order by SoLanXem DESC limit 0, 4";
        $kqTrHot=mysqli_query($con, $strHot);
        while ($dsc=mysqli_fetch_array($kqTrHot)) { ?>

            <div class="col">
                <a href="index.php?key=chitiettruyen&idtruyen=<?php echo $dsc['idTruyen'] ;?>">
                    <div class="card card-list-truyen">
                        <div class="wrap-card-img"><img class="card-img-top"
                                                        src="upload/sanpham/<?php echo $dsc['UrlHinh'];?>" alt="hinh"></div>
                        <div class="card-body">
                            <h6 class="card-title"><?php echo $dsc['TenTruyen'];?></h6>
                            <small class="card-text">
                                <?php $dcloaitruyen=mysqli_fetch_array(mysqli_query($con, "select idCL, TenCL from nncms_chungloai where idCL={$dsc['idCL']}"));
                                echo $dcloaitruyen['TenCL']; ?>
                            </small>
                        </div>
                    </div>
                </a>
            </div>

        <?php } ;?>

    </div>
</div>
<!-- ket thuc truyen Hot-->

<!-- div chia truyen hoan thanh-->
<div class="mb-5">
    <h4 class="title-loai">Truyện Đã Hoàn Thành</h4>
    <div class="row row-cols-1 row-cols-md-4 g-2">

        <?php
        $strHot="select * from nncms_truyen where AnHien=1 and TrangThai = 1 order by SoLanXem DESC limit 0, 4";
        $kqTrHot=mysqli_query($con, $strHot);
        while ($dsc=mysqli_fetch_array($kqTrHot)) { ?>

            <div class="col">
                <a href="index.php?key=chitiettruyen&idtruyen=<?php echo $dsc['idTruyen'] ;?>">
                    <div class="card card-list-truyen">
                        <div class="wrap-card-img"><img class="card-img-top"
                                                        src="upload/sanpham/<?php echo $dsc['UrlHinh'];?>" alt="hinh"></div>
                        <div class="card-body">
                            <h6 class="card-title"><?php echo $dsc['TenTruyen'];?></h6>
                            <small class="card-text">
                                <?php $dcloaitruyen=mysqli_fetch_array(mysqli_query($con, "select idCL, TenCL from nncms_chungloai where idCL={$dsc['idCL']}"));
                                echo $dcloaitruyen['TenCL']; ?>
                            </small>
                        </div>
                    </div>
                </a>
            </div>

        <?php } ;?>

    </div>
</div>
<!-- ket thuc truyen hoan thanh -->