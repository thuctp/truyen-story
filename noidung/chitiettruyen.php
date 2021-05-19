<?php
    $idGetTruyen = $_GET['idtruyen'];
	$kqtruyen=mysqli_query($con, "select * from nncms_truyen where idTruyen=$idGetTruyen");
	$dctt=mysqli_fetch_array($kqtruyen);
;?>
<div class="panel panel-primary">
	<div class="panel-heading">

	</div>
	<div class="panel-body">
		<div class="row">
			<div class="col-sm-3">
				<div class="thumbnail">
					<a href="#" target="">
						<img src="upload/sanpham/<?php echo $dctt['UrlHinh'] ;?>" alt="sanpham" width="100%">			
					</a>
				</div>
			</div>
			<div class="col-sm-9">
				<div class="panel-default">
					<div class="panel-body">
                        <div><h2><?php echo $dctt['TenTruyen'] ;?></h2></div>
						<div><?php echo $dctt['MoTa'] ;?> </div>
						<div>Nguon Truyen </div>
						<div>Ngay Dang: <?php echo $dctt['NgayDang'] ;?> </div>
						<div>Luot Xem: <?php echo $dctt['SoLanXem'] ;?> </div>
						<div>Trang Thai: <?php echo $dctt['TrangThai'] ;?> </div>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- kết thúc thông tin kỹ thuật -->


<!-- list cac chuong -->
<div class="panel panel-info">
    <div class="panel-heading">
        <h5><b><i>Truyen Cung The Loai</i></b></h5>
    </div>
    <div class="panel-body">
        <div class="row">

            <?php
            $listChuong="select * from nncms_chuong where idTruyen = $idGetTruyen order by NgayDang DESC limit 0,10 ";
            $kqlc=mysqli_query($con, $listChuong);
            while ($dlq=mysqli_fetch_array($kqlc)) {
                ?>

                <div class="col-sm-2">
                    <div class="thumbnail" style="text-align:center;padding:0px;height: 75px">
                        <p class="ten"><?php echo $dlq['TenChuong'] ;?></p>
                        <p class="ten"><?php echo $dlq['SoLanXem'] ;?></p>
                    </div>
                </div>
            <?php } ?>

        </div>
    </div>
</div>
<!-- kết thúc list cac chuong giá tuyowng đương -->

<!-- sản phẩm giá tuyowng đương -->
<div class="panel panel-info">
	<div class="panel-heading">
		<h5><b><i>Truyen Cung The Loai</i></b></h5>
	</div>
	<div class="panel-body">
		<div class="row">

		<?php
			$cungcl= $dctt['idCL'];
			$slq="select * from nncms_truyen where idCL = $cungcl and idTruyen != {$_GET['idtruyen']} order by SoLanXem DESC limit 0,5 ";
			$kqlq=mysqli_query($con, $slq);
			while ($dlq=mysqli_fetch_array($kqlq)) {
		?>

			<div class="col-sm-2">
				<div class="thumbnail" style="height: 150px; margin-bottom: 0px">
					<a style="text-decoration:none;" href="index.php?key=chitiettruyen&idtruyen=<?php echo $dlq['idTruyen'] ;?>" target="">
						<img src="upload/sanpham/<?php echo $dlq['UrlHinh'] ;?>" alt="sanpham" >	
					</a>
				</div>
				<div class="thumbnail" style="text-align:center;padding:0px;height: 75px">
					<p class="ten"><?php echo $dlq['TenTruyen'] ;?></p>
					<p class="ten"><?php echo $dlq['SoLanXem'] ;?></p>
				</div>
			</div>
			<?php } ?>

		</div>
	</div>
</div>
<!-- kết thúc sản phẩm giá tuyowng đương -->