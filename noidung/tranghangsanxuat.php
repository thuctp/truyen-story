<?php
	include("../connect.php");

	$sotin1trang = 5;
	$trang = $_GET['trang'];
	settype($trang, "int");

	$from = ($trang - 1) * $sotin1trang;

	$s = "select idHSX, idCL, TenHang, ThuTu, AnHien from nncms_hangsanxuat where AnHien=1 order by ThuThu 
	ASC limit $from, $sotin1trang";
	$kq = mysqli_query($con, $s);
	while ( $d=mysqli_fetch_array($kq)) {
?>
	<a style="text-decoration:none;display: block;border-bottom:1px dotted #999;" href="index.php?key=hangsanxuat&idHSX=<?php echo $d['idHSX'];?>"><?php echo $d['TenHang'] ;?></a>
<?php }
?>