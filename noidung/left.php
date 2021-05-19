<!-- The Loai truyen -->
<div class="row mb-4">
	<div class="col-sm-12 bg-white">
		<div class="panel panel-info">
			<div class="panel-heading">
				<b>The Loai Truyen</b>
			</div>
			<div class="panel-body">
                <ul>
                    <?php $listTheLoai=mysqli_query($con, "select idCL, TenCL, ThuTu, AnHien from nncms_chungloai where AnHien=1 order by ThuTu limit 0,15");
                    while ($looptheloai=mysqli_fetch_array($listTheLoai)){
                        ?>
                        <li> <?php echo $looptheloai['TenCL'] ?> </li>
                    <?php } ?>
                </ul>
			</div>
		</div>
	</div>
</div>

<!-- thong tin san pham xem nhieu -->
<div class="row">
	<div class="col-sm-12 bg-white">
		<div class="panel panel-info">
			<div class="panel-heading">
				<b><i>Sản Phẩm Xem Nhiều</i></b>
			</div>
			
			<div class="panel-body">

                <ul>
                    <?php $listTheLoaiXemNhieu=mysqli_query($con, "select idTruyen, TenTruyen, SoLanXem, UrlHinh, AnHien from nncms_truyen where AnHien=1 order by SoLanXem DESC limit 0,15");
                    while ($looptheloailxem=mysqli_fetch_array($listTheLoaiXemNhieu)){
                        ?>
                        <li>
                            <a style="text-decoration:none;" href="index.php?key=chitiettruyen&idtruyen=<?php echo $looptheloailxem['idTruyen'] ;?>" target="">
                                <?php echo $looptheloailxem['TenTruyen'] ?>
                            </a>
                        </li>
                    <?php } ?>
                </ul>
			</div>
			
		</div>
	</div>
</div>

