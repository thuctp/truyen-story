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

    $sEmail = "Select Email from nncms_nguoidung where Email = '$email'";
    $kqEmail = mysqli_query($con, $sEmail);
    if(mysqli_num_rows($kqEmail) == 0){
        $s=" insert into nncms_nguoidung (MatKhau, Email, HoTen, DienThoai, DiaChi, NgaySinh, GioiTinh, NgayDangKy, idNhom, KichHoat, MaNgauNhien, DiemSMS ) values ('$pass', '$email', '$ten', '$sdt','$diachi', '$ngaysinh', '$gioitinh', '$ngaydangky', 0, 1, '$mangaunhien', 0)";
        if(mysqli_query($con, $s))
        {
            echo "<script>alert('Dang Ky thanh cong'); location.href='index.php'; </script>";
//		include('gmail.php');
        }
        else
        {
            echo "<script>alert('Thất Bại!, Email đã được sử dụng hoặc vui lòng kiểm trả thông tin của bạn'); location.href='index.php?key=dangkynguoidung'; </script>";
        }
    } else {
        echo "<script>alert('Email Da duoc dang ky! vui long kiem tra lai'); location.href='index.php?key=dangkynguoidung'; </script>";
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

if(isset($_POST['comment'])) {
    $noidung=$_POST['txtcomment'];
    $idTruyen=$_POST['textIdTruyen'];
    $idUser=$_POST['textIdNguoiDung'];
    $ngaydang = date('Y-m-d h:i:s', time());

    $ssp=" insert into nncms_comments (idTruyen, idNguoiDung, NoiDung) values ('$idTruyen', '$idUser' ,'$noidung') ";
    if(mysqli_query($con, $ssp))
    {
        echo "<script>alert('Comment thanh cong');location.href='index.php?key=chitiettruyen&idtruyen=$idTruyen';</script>";
    }
    else
    {
        echo "<script>alert('Comment Thất Bại! Xin kiểm tra lại');location.href='index.php?key=key=chitiettruyen&idtruyen=$idTruyen';</script>";
    }
}

if(isset($_POST['replyComment'])) {
    $noidung=$_POST['txtcommentRep'];
    $idComment=$_POST['textIdCmtRep'];
    $idTruyen=$_POST['textIdTruyenRep'];
    $idUser=$_POST['textIdNguoiDungRep'];
    $ngaydang = date('Y-m-d h:i:s', time());

    $ssp=" insert into nncms_comments_rep (idCmt, idNguoiDung, NoiDung) values ('$idComment', '$idUser' ,'$noidung') ";
    if(mysqli_query($con, $ssp))
    {
        echo "<script>alert('Comment thanh cong');location.href='index.php?key=chitiettruyen&idtruyen=$idTruyen';</script>";
    }
    else
    {
        echo "<script>alert('Comment Thất Bại! Xin kiểm tra lại');location.href='index.php?key=key=chitiettruyen&idtruyen=$idTruyen';</script>";
    }
}


?>