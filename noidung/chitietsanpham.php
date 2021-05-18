<?php
	$kqctt=mysqli_query($con, "select idSP, TenSP, Gia, MoTa, ChiTiet, UrlHinh, TonKho from nncms_sanpham where idSP={$_GET['idSP']}");
	$dctt=mysqli_fetch_array($kqctt);
;?>
<div class="panel panel-primary">
	<div class="panel-heading">
		<?php echo $dctt['TenSP'] ;?>
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
						<div><b>Số Lượng</b> <?php echo $dctt['TonKho'] ;?> </div>
						<div><b>Giá</b> <?php echo number_format($dctt['Gia']) ;?>.VNĐ </div>
						<div><b>Số Lượng:</b> 
						<form id="form1" name="form1" method="get" action="process.php">
							<input type="hidden" name="idSP" value="<?php echo $dctt['idSP'] ;?>">
							<input type="number" name="soluong" required min="1" max="<?php echo $dctt['TonKho'];?>" value="1">
							<input type="submit" name="dat" value="Đặt Mua">
							</form>
						</div>

					</div>
					<div class="panel-body">
						<div><b>Thông Tin Sản Phẩm</b></div>
						<div> <?php echo $dctt['MoTa'] ;?> </div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- thong tin kỹ thuật -->
<div class="panel panel-info">
	<div class="panel-heading">
		<h5><b><i>THÔNG TIN KỸ THUẬT</i></b></h5>
	</div>
	<div class="panel-body">
		<div><?php echo $dctt['ChiTiet'] ;?></div>
	</div>
</div>
<!-- kết thúc thông tin kỹ thuật -->

<!-- sản phẩm giá tuyowng đương -->
<div class="panel panel-info">
	<div class="panel-heading">
		<h5><b><i>SẢN PHẨM GIÁ TƯƠNG ĐƯƠNG</i></b></h5>
	</div>
	<div class="panel-body">
		<div class="row">

		<?php
			$gialq= $dctt['Gia'];
			$slq="select idSP, idLoai, UrlHinh, TenSP, Gia from nncms_sanpham where Gia < $gialq order by Gia DESC limit 0,6 ";
			$kqlq=mysqli_query($con, $slq);
			while ($dlq=mysqli_fetch_array($kqlq)) {
		?>

			<div class="col-sm-2">
				<div class="thumbnail" style="height: 150px; margin-bottom: 0px">
					<a style="text-decoration:none;" href="index.php?key=chitietsanpham&idSP=<?php echo $dlq['idSP'] ;?>" target="">
						<img src="upload/sanpham/<?php echo $dlq['UrlHinh'] ;?>" alt="sanpham" >	
					</a>
				</div>
				<div class="thumbnail" style="text-align:center;padding:0px;height: 75px">
					<p class="ten"><?php echo $dlq['TenSP'] ;?></p>
					<p><b>Giá: </b><?php echo number_format($dlq['Gia']) ;?> VND</p>
					<a href="process.php?soluong=1&dat=1&idSP=<?php echo $dlq['idSP'] ;?>"><button class="btn btn-xs"><b>Mua Hàng</b></button></a> <!-- chú thích ở bên trang sản phẩm  -->
				</div>
			</div>
			<?php } ?>

		</div>
	</div>
</div>
<!-- kết thúc sản phẩm giá tuyowng đương -->