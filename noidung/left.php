<div class="row">
	<div class="col-sm-12">
		<?php include('noidung/giohang.php') ;?>
	</div>
</div>

<!-- danh muc -->
<div class="row">
	<div class="col-sm-12">
		<?php include('menu/menudoc.php') ;?>
	</div>
</div>

<!-- thong tin hang su dung -->
<div class="row">
	<div class="col-sm-12">
		<div class="panel panel-info">
			<div class="panel-heading">
				<b>Hãng Sản Xuất</b>
			</div>
			<div class="panel-body">
				<?php
				$kqhsx=mysqli_query($con, "select idHSX, idCL, TenHang, ThuTu, AnHien from nncms_hangsanxuat where AnHien=1 order by ThuTu limit 0,5");
				while ( $dhsx=mysqli_fetch_array($kqhsx)) {
				?>
				<a style="text-decoration:none;display: block;border-bottom:1px dotted #999;" href="index.php?key=hangsanxuat&idHSX=<?php echo $dhsx['idHSX'];?>"><?php echo $dhsx['TenHang'] ;?></a>
				<?php } ?>
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
			<marquee id="marq" scrollamount="3" direction="left" loop="50" scrolldelay="0" onmouseover="this.stop()" onmouseout="this.start()" >
			<?php
				$kqxn=mysqli_query($con, "select idSP, UrlHinh, SoLanXem, AnHien from nncms_sanpham where AnHien=1 order by SoLanXem DESC limit 0,10");
				while ($dxn=mysqli_fetch_array($kqxn)) {
			?>		
					<a style="text-decoration:none; margin-right: 30px" href="index.php?key=chitietsanpham&idSP=<?php echo $dxn['idSP'] ;?>" target="">
						<img src="upload/sanpham/<?php echo $dxn['UrlHinh'];?>" alt="sanpham">
					</a>

			<?php } ?>
			</marquee>
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

