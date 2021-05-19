<!-- The Loai truyen -->
<div class="mb-4">
    <ul class="list-group">
        <li class="list-group-item">
            <h5 class="text-primary mb-0">The Loai Truyen</h5>
        </li>
        <li class="list-group-item">
            <ul class="c-ul-type-none c-list-loai-truyen">
                <?php $listTheLoai=mysqli_query($con, "select idCL, TenCL, ThuTu, AnHien from nncms_chungloai where AnHien=1 order by ThuTu DESC limit 0,15");
                while ($looptheloai=mysqli_fetch_array($listTheLoai)){
                    ?>
                    <li><a class="text-dark" href="index.php?key=truyenCL&idcl=<?php echo $looptheloai['idCL'] ;?>"><i class="fas fa-tags fa-sm me-1"></i> <?php echo $looptheloai['TenCL'] ?> </a></li>
                <?php } ?>
            </ul>
        </li>
    </ul>
</div>

<!-- thong tin san pham xem nhieu -->
<div class="">
    <ul class="list-group">
        <li class="list-group-item">
            <h5 class="text-primary mb-0">Truyện Xem Nhiều</h5>
        </li>
        <?php $listTheLoaiXemNhieu=mysqli_query($con, "select idTruyen, TenTruyen, SoLanXem, UrlHinh, AnHien from nncms_truyen where AnHien=1 order by SoLanXem DESC limit 0,10");
        while ($looptheloailxem=mysqli_fetch_array($listTheLoaiXemNhieu)){
            ?>
            <li class="list-group-item">
                <div class="wrap-truyen-xem-nhieu">
                    <div class="wrap-img-small"><img class="card-img-small"
                              src="upload/sanpham/<?php echo $looptheloailxem['UrlHinh'];?>" alt="hinh"></div>
                    <a class="text-dark" href="index.php?key=chitiettruyen&idtruyen=<?php echo $looptheloailxem['idTruyen'] ;?>">
                        <p class="fs-14 text-truncate"><?php echo $looptheloailxem['TenTruyen'] ?></p>
                    </a>
                    <small>
                        <i class="fas fa-eye fa-sm"></i>
                        <?php echo $looptheloailxem['SoLanXem'] ?>
                    </small>
                </div>
            </li>
        <?php } ?>
    </ul>
</div>

