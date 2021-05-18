<div class="panel panel-default">
		
	<div class="panel-heading">
		<b>Ten San Pham</b>
	</div>
	<div class="panel-body">
		<?php
			if(isset($_GET['idHSX']))
			$shang="select idSP, TenSP, Gia, UrlHinh, AnHien from nncms_sanpham where AnHien=1 and idHSX={$_GET['idHSX']}";
			$kqhang=mysqli_query($con, $shang);
			while ($dhang=mysqli_fetch_array($kqhang)) {
		?>
		<div class="col-sm-3">
			<div class="thumbnail" style="height: 180px; margin-bottom: 0px">
				<a style="text-decoration:none;" href="index.php?key=chitietsanpham&idSP=<?php echo $dhang['idSP'] ;?>" target="">
					<img src="upload/sanpham/<?php echo $dhang['UrlHinh'] ;?>" alt="sanpham" >	
				</a>
			</div>
			<div class="thumbnail" style="text-align:center;padding:0px;height: 80px">
			<p><b><?php echo $dhang['TenSP'] ;?></b></p>
			<p><b>Giá: </b><?php echo number_format($dhang['Gia']) ;?> VND</p>
			</div>
		</div>
		<?php } ?>				
	</div>

</div>