<?php
if(isset($_GET['makh']))
{
	include("connect.php");
	$sl="update nncms_nguoidung set KichHoat=0, MaNgauNhien='' where MaNgauNhien='{$_GET['makh']}'";
	if(mysqli_query($con, $sl))
	{
		// echo "Tai khoan da kich hoat!";
		echo "<script>alert('Tài Khoản của bạn đã được kích hoạt. Chào mườn bạn đã trở thành thành viên của chúng tôi!');location.href='index.php';</script>";
	}
	else echo "Vui long thu lai!";
}
?>