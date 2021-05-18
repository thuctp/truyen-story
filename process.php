<?php
session_start();

include('connect.php');

/*****************************************************
*	xử lý phần đăng nhập
******************************************************/
if(isset($_POST['dangnhap']))
{
	$pass = md5($_POST['pass']);
	
	$s = "Select * from nncms_nguoidung where Email = '{$_POST['email']}' and MatKhau = '$pass' and KichHoat = 0 ";
	$kq1 = mysqli_query($con, $s);
	if(mysqli_num_rows($kq1) == 0)
	{
		echo "<script>alert('Thất Bại!, Vui lòng kiểm tra lại đăng nhập'); location.href='index.php'; </script>";
	}
	else
	{
		
		$d=mysqli_fetch_array($kq1);

		$_SESSION['nguoidung']=$d['idNguoiDung'];


		echo "<script>alert('Đăng Nhập Thành Công'); location.href='index.php'; </script>";
	}
}

if(isset($_GET['huydn']))
{
	unset($_SESSION['nguoidung']);
	header("location:index.php");
}


/*****************************************************
*	xử lý phần giỏ hàng
******************************************************/
if(isset($_GET['dat'])){

	$kiemtra=0;
	for($i=0; $i<count($_SESSION['giohang']); $i++){ 
		if($_GET['idSP']==$_SESSION['giohang'][$i]['idSP']){
			$kiemtra=1; //
			$_SESSION['giohang'][$i]['soluong']+=$_GET['soluong'];
			break;
		}
	}

	if($kiemtra==0){
		$_SESSION['giohang'];
		include("connect.php");
		$s="select idSP, TenSP, Gia,UrlHinh from nncms_sanpham where idSP={$_GET['idSP']}";
		$kq=mysqli_query($con, $s);
		$d=mysqli_fetch_array($kq);
		$soluong=isset($_GET['soluong']) ? $_GET['soluong'] : 1;

		// bắt đàu tạo giở hàng và vào đàu trang index để đạt biến kiểm tra. khởi tạo giỏ hàng và các thuộc tính cần lưu tạm khi mua hàng các session này có tác dụng đưa thông tin ở phần truy vấn dữ liệu và có thể mang ra in ở các trang khác và dduocj lưu vào các session tương ứng mới khỏi tạo ở dưới
		$k=count($_SESSION['giohang']); //để ngắn gọi thì ta gọi biến đếm session giỏ hàng là biến k
		$_SESSION['giohang'][$k]['idSP']=$d['idSP']; //cach khai báo biến session tương ứng lần lược là giỏ hàng rồi dêm giỏ hàng và tên tương ứng
		$_SESSION['giohang'][$k]['gia']=$d['Gia'];
		$_SESSION['giohang'][$k]['ten']=$d['TenSP'];
		$_SESSION['giohang'][$k]['hinh']=$d['UrlHinh'];	
		$_SESSION['giohang'][$k]['soluong']=$soluong;
	}
	header("location:index.php");
}
//cập nhật giỏ hàng
if(isset($_GET['capnhat'])){
	for($i=0; $i<count($_SESSION['giohang']); $i++){
		$_SESSION['giohang'][$i]['soluong']=$_GET['SL'.$i];
	}
	header("location:index.php");
}

//xóa từng sản phẩm san pham
if(isset($_GET['xoa'])){
	for($i=$_GET['xoa']; $i<count($_SESSION['giohang']); $i++){
		$j=$i+1;
		$_SESSION['giohang'][$i]=$_SESSION['giohang'][$j];
	}
	$temp = count($_SESSION['giohang'])-1;
	unset($_SESSION['giohang'][$temp]);
	header("location:index.php");
}

//xóa từng sản phẩm san pham
if(isset($_GET['huytatca'])){
	unset($_SESSION['giohang']);
	header("location:index.php");
}


/*****************************************************
*	xử lý phần đăng ký tài khaongr người dùng
******************************************************/
if(isset($_POST['dangky']))
{
	$email=$_POST['email'];
	$pass=md5($_POST['pass']);
	$ten=$_POST['ten'];
	$sdt=$_POST['sdt'];
	$diachi=$_POST['diachi'];
	$ngaysinh=date('Y-m-d',strtotime( $_POST['ngaysinh']));
	$gioitinh=$_POST['gioitinh'];
	$ngaydangky = date('Y-m-d h:i:s', time());
	$mangaunhien=md5(rand(0,9999));

	 $s=" insert into nncms_nguoidung (MatKhau, Email, HoTen, DienThoai, DiaChi, NgaySinh, GioiTinh, NgayDangKy, idNhom, KichHoat, MaNgauNhien, DiemSMS ) values ('$pass', '$email', '$ten', '$sdt','$diachi', '$ngaysinh', '$gioitinh', '$ngaydangky', 0, 1, '$mangaunhien', 0)";
	if(mysqli_query($con, $s))
	{
		// header("location:index.php"); die();
		include('gmail.php');
	}
	else
	{
		echo "<script>alert('Thất Bại!, Email đã được sử dụng hoặc vui lòng kiểm trả thông tin của bạn'); location.href='index.php?key=dangkynguoidung'; </script>";
	}
}

/*****************************************************
*	xử lý phần đặt hàng
******************************************************/
if (isset($_POST['dathang'])) {
	$idnd=$_POST['idnguoidung'];
	$ten=$_POST['ten'];
	$diadiem=$_POST['diadiem'];
	$email=$_POST['email'];
	$sdt=$_POST['sdt'];
	$ghichu=$_POST['ghichu'];
	$ngaydangky = date('Y-m-d');
	$ngaygiao = strtotime(date('Y-m-d', strtotime($ngaydangky)). "+1 week");
	$ngaygiao = strftime("%Y-%m-%d", $ngaygiao);

	$s=" insert into nncms_donhang (idNguoiDung, ThoiGianDat, TenNguoiNhan, DiaDiemGiao, NgayGiaoHang, Email, DienThoai, GhiChu, TinhTrang) values ($idnd, '$ngaydangky', '$ten', '$diadiem', '$ngaygiao', '$email', '$sdt', '$ghichu', 0) ";
	if(mysqli_query($con, $s))
	{
		$mahd=mysqli_insert_id();
		for($i=0; $i<count($_SESSION['giohang']); $i++){
			$idsp=$_SESSION['giohang'][$i]['idSP'];
			$soluong=$_SESSION['giohang'][$i]['soluong'];
			$gia=$_SESSION['giohang'][$i]['gia'];
			$ss = "insert into nncms_donhangchitiet values('$mahd','$idsp','$soluong','$gia')";
			mysqli_query($con, $ss);
		}
		unset($_SESSION['giohang']);
		include('gmaildathang.php');

	}
	else{
		echo "that bai";
	}
}

/*****************************************************
*	xử lý phần chỉnh sửa thông tin khách hàng
******************************************************/
if(isset($_POST['chinhsua']))
{
	$idnguoidung=$_POST['idnguoidung'];
	$email=$_POST['guimail'];
	$ten=$_POST['ten'];
	$sdt=$_POST['sdt'];
	$diachi=$_POST['diachi'];
	$ngaysinh=date('Y-m-d',strtotime( $_POST['ngaysinh']));
	$gioitinh=$_POST['gioitinh'];
	$ngaydangky = date('Y-m-d h:i:s', time());

	 $s = "update nncms_nguoidung set Email='$email', HoTen='$ten', DienThoai='$sdt', DiaChi='$diachi', NgaySinh='$ngaysinh', GioiTinh='$gioitinh' where idNguoiDung= $idnguoidung";
	if(mysqli_query($con, $s))
	{
		echo "<script>alert('Cập Nhật Thông Tin Thành Công!');location.href='index.php';</script>";
	}
	else
	{
		echo "<script>alert('Thất Bại!, Vui lòng kiểm tra lại'); location.href='index.php?key=suauser'; </script>";
	}
}



/*****************************************************
*	xử lý phần đổi mật khẩu
******************************************************/
if(isset($_POST['doimatkhau']))
{
	$id=$_POST['id'];
	$email=$_POST['email'];
	$pass = md5($_POST['pass']);
	$passnew = md5($_POST['passnew']);
	$repassnew = md5($_POST['repassnew']);
	
	$s = "Select * from nncms_nguoidung where Email = '$email' and MatKhau = '$pass' ";
	$kq1 = mysqli_query($con, $s);
	if(mysqli_num_rows($kq1) == 0)
	{
		echo "<script>alert('Thất Bại!, Email hoặc Mật Khẩu Không Đúng'); location.href='index.php?key=suauser&idNguoiDung=<?php echo $id ;?>'; </script>";
	}
	else
	{
		if($passnew == $repassnew){
			$su = "update nncms_nguoidung set MatKhau='$passnew' where idNguoiDung= $id";

			if(mysqli_query($con, $su))
			{
				echo "<script>alert('Cập Nhật Mật Khẩu Thành Công!');location.href='index.php';</script>";
			}
			else
			{
				echo "<script>alert('Thất Bại!, Vui lòng kiểm tra lại');  </script>";
			}
		}
		else
		{
			echo "<script>alert('Thất Bại!, Mật Khẩu Mới Không Khớp'); location.href='index.php?key=suauser&idNguoiDung=<?php echo $id ;?>'; </script>";
		}
	}
}

?>