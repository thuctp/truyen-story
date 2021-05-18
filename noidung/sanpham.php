			<!-- div chia tung loai san phamm sieu cap-->
			<div class="panel panel-primary ">
			
				<div class="panel-heading">
					<b>Sản Phẩm Siêu Cấp</b> </i> > 10.000.000 VND</i>
				</div>
				<div class="panel-body">
				<?php
					$ssc="select idSP, TenSP, Gia, UrlHinh from nncms_sanpham where AnHien=1 and Gia > 10000000 order by idSP DESC limit 0, 20";
					$kqsc=mysqli_query($con, $ssc);
					while ($dsc=mysqli_fetch_array($kqsc)) {
				?>
					<div class="col-sm-3">
						<div class="thumbnail" style="height: 150px; margin-bottom: 0px">
							<a style="text-decoration:none;" href="index.php?key=chitietsanpham&idSP=<?php echo $dsc['idSP'] ;?>" target="">
								<img class="img-responsive" src="upload/sanpham/<?php echo $dsc['UrlHinh'];?>" alt="sanpham">
							</a>
						</div>
						<div class="thumbnail" style="text-align:center;padding:0px;height: 60px">
							
							<p class="ten"><?php echo $dsc['TenSP'];?></p>
							<p><b>Giá: </b><?php echo number_format($dsc['Gia']);?> VND</p>
							<a href="process.php?soluong=1&dat=1&idSP=<?php echo $dsc['idSP'] ;?>"><button class="btn btn-xs"><b>Mua Hàng</b></button></a> <!-- tạo nút để khi kich vào thì mua hàng, cho link chạy vào file prosess để xử lý, ở đay phải chuyền lên biến đặt và trùng với lại nút mua ở trang chi tiết tin vì khi kiểm tra isset ở bên file prosess và gắng thêm idSP để nó biết được chọn sản phẩm nào để đặt điều kiện truy vấn -->
						</div>
					</div>
				<?php } ;?>					
				</div>

			</div>
			<!-- ket thus phan san pham sieu cap-->

			<!-- div chia tung loai san phamm cao cap-->
			<div class="panel panel-primary ">
			
				<div class="panel-heading">
					<b>Sản Phẩm Cao Cấp</b> <i>5.000.000 -> 10.000.000 VND</i>
				</div>
				<div class="panel-body">
				<?php
					$scc="select idSP, TenSP, Gia, UrlHinh from nncms_sanpham where AnHien=1 and Gia > 5000000 and Gia < 10000000 order by idSP DESC limit 0, 20";
					$kqcc=mysqli_query($con, $scc);
					while ($dcc=mysqli_fetch_array($kqcc)) {
				?>
					<div class="col-sm-3">
						<div class="thumbnail" style="height: 150px; margin-bottom: 0px">
							<a style="text-decoration:none;" href="index.php?key=chitietsanpham&idSP=<?php echo $dcc['idSP'] ;?>" target="">
								<img src="upload/sanpham/<?php echo $dcc['UrlHinh'];?>" alt="sanpham">
							</a>
						</div>
						<div class="thumbnail" style="text-align:center;padding:0px;height: 60px">
							<p class="ten"><?php echo $dcc['TenSP'];?></p>
							<p><b>Giá: </b><?php echo number_format($dcc['Gia']);?> VND</p>
							<a href="process.php?soluong=1&dat=1&idSP=<?php echo $dcc['idSP'] ;?>"><button class="btn btn-xs">Mua Hàng</button></a> <!-- chú thích ở bên trên -->
						</div>
					</div>
				<?php } ;?>					
				</div>

			</div>
			<!-- ket thus phan san pham cao cap -->

			<!-- div chia tung loai san phamm truing cap -->
			<div class="panel panel-primary ">
			
				<div class="panel-heading">
					<b>Sản Phẩm Trung Cấp</b> <i> < 5.000.000 VND</i>
				</div>
				<div class="panel-body">
				<?php
					$stc="select idSP, TenSP, Gia, UrlHinh from nncms_sanpham where AnHien=1 and Gia > 2000000 and Gia < 5000000 order by idSP DESC limit 0, 20";
					$kqtc=mysqli_query($con, $stc);
					while ($dtc=mysqli_fetch_array($kqtc)) {
				?>
					<div class="col-sm-3">
						<div class="thumbnail" style="height: 150px; margin-bottom: 0px">
							<a style="text-decoration:none;" href="index.php?key=chitietsanpham&idSP=<?php echo $dtc['idSP'] ;?>" target="">
								<img src="upload/sanpham/<?php echo $dtc['UrlHinh'];?>" alt="sanpham">
							</a>
						</div>
						<div class="thumbnail" style="text-align:center;padding:0px;height: 60px">
							<p  class="ten"><?php echo $dtc['TenSP'];?></p>
							<p><b>Giá: </b><?php echo number_format($dtc['Gia']);?> VND</p>
							<a href="process.php?soluong=1&dat=1&idSP=<?php echo $dtc['idSP'] ;?>"><button class="btn btn-xs">Mua Hàng</button></a> <!-- chú thích ở bên trên -->
						</div>
					</div>
				<?php } ;?>					
				</div>

			</div>
			<!-- ket thus phan san pham trung cap -->