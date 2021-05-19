
<!-- The Loai truyen -->
<div class="row">
	<div class="col-sm-12">
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
	<div class="col-sm-12">
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

<!-- thong tin san pham ban chay -->
<div class="row">
	<div class="col-sm-12">
		<div class="panel panel-info">
			<div class="panel-heading">
				<b><i>Sản Phẩm Bán Chạy</i></b>
			</div>
			<div class="panel-body">
			<marquee id="marq" scrollamount="3" direction="right" loop="50" scrolldelay="0" onmouseover="this.stop()" onmouseout="this.start()" >
			<?php
				$kqbc=mysqli_query($con, "select idSP, UrlHinh, SoLanMua, AnHien from nncms_sanpham where AnHien=1 order by SoLanMua DESC limit 0,10");
				while ($dbc=mysqli_fetch_array($kqbc)) {
			?>		
					<a style="text-decoration:none; margin-right: 30px" href="index.php?key=chitietsanpham&idSP=<?php echo $dbc['idSP'] ;?>" target="">
						<img src="upload/sanpham/<?php echo $dbc['UrlHinh'];?>" alt="sanpham">
					</a>
			<?php } ?>
			</marquee>
			</div>
		</div>
	</div>
</div>

<!-- thong tin san pham moi -->
<div class="row">
	<div class="col-sm-12">
		<div class="panel panel-info">
			<div class="panel-heading">
				<b><i>Sản Phẩm Mới</i></b>
			</div>
			<div class="panel-body">
				<marquee id="marq" scrollamount="3" direction="left" loop="50" scrolldelay="0" onmouseover="this.stop()" onmouseout="this.start()" >
			<?php
				$kqm=mysqli_query($con, "select idSP, UrlHinh, AnHien from nncms_sanpham where AnHien=1 order by idSP DESC limit 0,10");
				while ($dm=mysqli_fetch_array($kqm)) {
			?>		
					<a style="text-decoration:none; margin-right: 30px;" href="index.php?key=chitietsanpham&idSP=<?php echo $dm['idSP'] ;?>" target="">
						<img src="upload/sanpham/<?php echo $dm['UrlHinh'];?>" alt="sanpham">
					</a>
			<?php } ?>
			</marquee>
			</div>
		</div>
	</div>
</div>

