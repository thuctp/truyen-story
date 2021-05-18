<div class="panel panel-danger ">
		
	<div class="panel-heading">
		<b>Tên Sản Phẩm</b>
	</div>
	<div class="panel-body">
		<?php
			if(isset($_GET['idLoai']))

			$sodong=16; // 12 san pham ad
		 	$sonhom=5; // 5 trang ad
			$sl="select idSP, TenSP, Gia, UrlHinh, AnHien from nncms_sanpham where idLoai={$_GET['idLoai']}";
			$kqsp=mysqli_query($con, $sl);
	 	$tongsotrang=ceil(mysqli_num_rows($kqsp)/$sodong);
			if (!isset($_GET["p"])) //kiểm tra get so trang xuống nếu không có trang thì cho mặt định nó là
		  {
              $p=1; //cho mặt định nó là một
		  }
		  else
		  {
			$p=intval($_GET["p"]);
		  }
			$x=($p-1)*$sodong; //lấy số trang hiện hành, để chia ra từng trang sản phẩn trong từng trang. đay là sản phẩm bắt đàu của mỗi trang

			$sl="select idSP, TenSP, Gia, UrlHinh, AnHien from nncms_sanpham where idLoai={$_GET['idLoai']} limit $x,$sodong";
			$kqsp=mysqli_query($con, $sl);
			while ($d=mysqli_fetch_array($kqsp)) {
		?>
		<div class="col-sm-3">
			<div class="thumbnail" style="height: 180px; margin-bottom: 0px">
				<a style="text-decoration:none;" href="index.php?key=chitietsanpham&idSP=<?php echo $d['idSP'] ;?>" target="">
					<img src="upload/sanpham/<?php echo $d['UrlHinh'] ;?>" alt="sanpham" >	
				</a>
			</div>
			<div class="thumbnail" style="text-align:center;padding:0px;height: 60px">
			<p class="ten"><?php echo $d['TenSP'] ;?></p>
			<p><b>Giá: </b><?php echo number_format($d['Gia']) ;?> VND</p>
			<a href="process.php?soluong=1&dat=1&idSP=<?php echo $d['idSP'] ;?>"><button class="btn btn-xs"><b>Mua Hàng</b></button></a> <!-- chú thích ở bên trang sản phẩm  -->
			</div>
		</div>
		<?php } ?>				
	</div>
	<div class="panel-footer">
	<!-- Phần hiển thị số trang -->
	<p class="pagenavi" align="center" style="clear:both; font-weight: bold;">
	<?php 
		$dau = $p-2;
		if($dau<1)
			{$dau=1;}
			$cuoi = $dau + $sonhom - 1;
		if($cuoi>$tongsotrang)
			{$cuoi=$tongsotrang;}
	?>
		<!-- trang hien tai cua tổng số trang -->
	    <span style="float: left;">Page <?php echo $p; ?> of <?php echo $tongsotrang;?></span>
		<!-- hien <trang đau> hiện về trang đàu tiên -->
	    <a href="index.php?key=sploai&idLoai=<?php echo $_GET['idLoai'];?>&p=1">Trang đầu</a>
		<!-- icon hiển thị các trang phía trước của trang hien tai -->
	<?php if ($p>1) {
		$p1=$p-1;
	?>
		<a href="index.php?key=sploai&idLoai=<?php echo $_GET['idLoai'];?>&p=<?php echo $p1; ?>"><img src="images/icon/1328101938_Arrow-Right.png" width="40" height="20"/></a>&nbsp;
	<?php } ?>	
		<!-- liet ke thu tu cac trang trong nhom -->
	<?php
		for($i=$dau;$i<=$cuoi;$i++)
		{ 
		if ($i<=$tongsotrang)
		{
		if ($i==$p)
		   { 
		   		echo $i."&nbsp;";
		   }
		   else
		   {
	 ?>
	 	<a href="index.php?key=sploai&idLoai=<?php echo $_GET['idLoai'];?>&p=<?php echo $i; ?>"><?php echo $i; ?></a>
	<?php
	   		}
		  }
		}
	?>   
	<!-- hien trang sau -->
	<?php if ($p<$tongsotrang) {
		$p2=$p+1;
	?>
		<a href="index.php?key=sploai&idLoai=<?php echo $_GET['idLoai'];?>&p=<?php echo $p2; ?>"><img src="images/icon/1328101938_Arrow-left.png" width="40" height="20" /></a>&nbsp;
	<?php } ?>
	<?php
	    if($p=$tongsotrang){ 
	        $trangcuoi=$p;
	?>
	    <a href="index.php?key=sploai&idLoai=<?php echo $_GET['idLoai'];?>&p=<?php echo $trangcuoi; ?>">Trang cuối</a>
	<?php } ?>
	</p>
	</div>
</div>