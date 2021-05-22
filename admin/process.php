<?php
include("../connect.php");

/*****************************************************
 *	xử lý phần đăng nhập
 ******************************************************/
if(isset($_POST['dangnhapadmin'])){
    $myusername=$_POST['myusername'];
//    $mypassword=$_POST['mypassword'];
    $mypassword = md5($_POST['mypassword']);

    $sql="SELECT * FROM nncms_admin WHERE TenDangNhap='$myusername' and MatKhau='$mypassword'";
    $result=mysqli_query($con, $sql);
    $count=mysqli_num_rows($result);

    if($count==0){
        echo "<script>alert('Sai ten dang nhap hoac mat khau');location.href='login.php';</script>";

    }
    else {
        $d=mysqli_fetch_array($result);
        session_start();
        $_SESSION['username']= $d['idAdmin'];;
        header("location:index.php");
    }
}

if(isset($_GET['dangxuatadmin'])) {
    session_start();
    session_destroy();
    header("location:login.php");
}


//thêm vao  the loai
if(isset($_POST['themcl'])) 
{
	$tencl = $_POST['txttencl'] ;
	$thutu = $_POST['txtthutucl'] ;
	$trthai = $_POST['txtanhien'];
	$s = "insert into nncms_chungloai ( TenCL, ThuTu, AnHien) values ('$tencl','$thutu', '$trthai')";
	if(mysqli_query($con, $s))
	{
	 	echo "<script>alert('Them thanh cong');location.href='index.php?key=dschungloai';</script>";
	}
	else
	{
		echo "<script>alert('Thêm Thất Bại! Xin Kiểm tra lại');location.href='index.php?key=themchungloai';</script>";
	}
}

//sửa dữ liệu the loai
if(isset($_POST['suacl']))
{
	$tencl = $_POST['txttencl'] ;
	$thutu = $_POST['txtthutucl'] ;
	$trthai = $_POST['txtanhien'];
	$s = "update nncms_chungloai set TenCL='$tencl', ThuTu='$thutu', AnHien='$trthai' where idCL= {$_POST['idCL']}";
	if(mysqli_query($con, $s))
	{
		echo "<script>alert('Sửa Chủng Loại Thành Công!');location.href='index.php?key=dschungloai';</script>";

	}
	else
	{
		echo "<script>alert('Thất Bại! Sửa Chủng Loại Chưa Thành Công');location.href='index.php?key=suachungloai';</script>";
	}
}
/******************************************
* bug -> chi xoa dc 1 dong du lieu 
******************************************/
//xóa dữ liệu the loai 
if(isset($_GET['idCL'])) 
{
	$s = "delete from nncms_chuong where idTruyen in (select idTruyen from nncms_truyen where idCL={$_GET['idCL']}) ";
	$s2 = " delete from nncms_truyen where idCL= {$_GET['idCL']}";
	$s3 = " delete from nncms_chungloai where idCL = {$_GET['idCL']}";
	mysqli_query($con, $s);
	mysqli_query($con, $s2);
	if(mysqli_query($con, $s3))
	{
		header("location:index.php?key=dschungloai");
	}
	else
	{
		echo $s3;
	}
}


/*****************************************************
 *	xử lý phần tạo mới user Admin
 ******************************************************/
if(isset($_POST['dangkyadmin']))
{
    $tendn=$_POST['tendangnhap'];
    $pass=md5($_POST['pass']);
    $ten=$_POST['ten'];
    $sdt=$_POST['sdt'];
    $email=$_POST['email'];
    $diachi=$_POST['diachi'];
    $ngaysinh=date('Y-m-d',strtotime( $_POST['ngaysinh']));
    $gioitinh=$_POST['gioitinh'];
    $ngaydangky = date('Y-m-d h:i:s', time());

    $sEmail = "Select Email from nncms_admin where TenDangNhap = '$tendn' or Email = '$email'";
    $kqEmail = mysqli_query($con, $sEmail);
    if(mysqli_num_rows($kqEmail) == 0){
        $s=" insert into nncms_admin (TenDangNhap, MatKhau, HoTen, DienThoai, Email, DiaChi, NgaySinh, GioiTinh, NgayDangKy, idRole, DiemThuong ) values ('$tendn', '$pass', '$ten', '$sdt', '$email','$diachi', '$ngaysinh', '$gioitinh', '$ngaydangky', 2, 0)";
        if(mysqli_query($con, $s))
        {
            echo "<script>alert('Đăng Ký Thành Công');location.href='index.php?key=dsadmin';</script>";
        }
        else
        {
            echo "<script>alert('Thất Bại!, Email đã được sử dụng hoặc vui lòng kiểm trả thông tin của bạn'); location.href='index.php?key=addadmin'; </script>";
        }
    } else{
        echo "<script>alert('Ten Dang Nhap đã được sử dụng hoặc vui lòng kiểm trả thông tin của bạn'); location.href='index.php?key=addadmin'; </script>";
    }


}

/*****************************************************
 *	xử lý phần chỉnh sửa user Admin
 ******************************************************/
if(isset($_POST['chinhsuaadminprofile']))
{
    $idadmin=$_POST['idadmin'];
    $tendn=$_POST['tendangnhap'];
    $ten=$_POST['ten'];
    $sdt=$_POST['sdt'];
    $email=$_POST['email'];
    $diachi=$_POST['diachi'];
    $ngaysinh=date('Y-m-d',strtotime( $_POST['ngaysinh']));
    $gioitinh=$_POST['gioitinh'];

    $sEmail2 = "Select Email from nncms_admin where TenDangNhap = '$tendn' or Email = '$email'";
    $kqEmail2 = mysqli_query($con, $sEmail2);
    if(mysqli_num_rows($kqEmail2) == 0){
        $sl= " update nncms_admin set TenDangNhap='$tendn', HoTen='$ten', DienThoai='$sdt', Email='$email', DiaChi='$diachi', NgaySinh='$ngaysinh', GioiTinh='$gioitinh' where idAdmin=$idadmin";
        if(mysqli_query($con, $sl))
        {
            echo "<script>alert('Them thanh cong');location.href='index.php?key=profile';</script>";
        }
        else
        {
            echo "<script>alert('Thêm Thất Bại! Xin kiểm tra lại');location.href='index.php?key=profile';</script>";
        }
    } else{
        echo "<script>alert('Ten Dang Nhap đã được sử dụng hoặc vui lòng kiểm trả thông tin của bạn'); location.href='index.php?key=profile'; </script>";
    }
}

/*****************************************************
 *	xử lý phần chỉnh sửa Vai Trò user Admin
 ******************************************************/
if(isset($_POST['chinhsuaroleadmin']))
{
    $idrole=$_POST['idroleadmin'];
    $role=$_POST['vaitro'];


    $sl= " update nncms_admin set idRole='$role' where idAdmin=$idrole";
    if(mysqli_query($con, $sl))
    {
        echo "<script>alert('Them thanh cong');location.href='index.php?key=dsadmin';</script>";
    }
    else
    {
        echo "<script>alert('Thêm Thất Bại! Xin kiểm tra lại');location.href='index.php?key=dsadmin';</script>";
    }
}

/*****************************************************
 *	xử lý phần xoa thông tin user Admin
 ******************************************************/
if(isset($_GET['xoaadmin']))
{
    $s = "delete from nncms_admin where idAdmin={$_GET['xoaadmin']}";
    if(mysqli_query($con, $s))
    {
        echo "<script>alert('Xoa thanh cong');location.href='index.php?key=dsadmin';</script>";
    }
    else
    {
        echo "<script>alert('Xoa khong thanh cong');location.href='index.php?key=dsadmin';</script>";
    }
}

/*****************************************************
 *	xử lý phần xoa thông tin khách hàng
 ******************************************************/
if(isset($_GET['xoanguoidung']))
{
    $s = "delete from nncms_nguoidung where idNguoiDung={$_GET['xoanguoidung']}";
    if(mysqli_query($con, $s))
    {
//        header("location:index.php?key=dsuser");
        echo "<script>alert('Xoa thanh cong');location.href='index.php?key=dsuser';</script>";
    }
    else
    {
//        echo $s;
        echo "<script>alert('Xoa khong thanh cong');location.href='index.php?key=dsuser';</script>";
    }
}

/*****************************************************
 *	xử lý phần đổi mật khẩu
 ******************************************************/
if(isset($_POST['doimatkhauadmin']))
{
    $id=$_POST['id'];
    $user=$_POST['user'];
    $pass = md5($_POST['pass']);
    $passnew = md5($_POST['passnew']);
    $repassnew = md5($_POST['repassnew']);

    $s = "Select * from nncms_admin where TenDangNhap = '$user' and MatKhau = '$pass' ";
    $kq1 = mysqli_query($con, $s);
    if(mysqli_num_rows($kq1) == 0)
    {
        echo "<script>alert('Thất Bại!, Tên Đăng Nhập hoặc Mật Khẩu Không Đúng'); location.href='index.php?key=profile'; </script>";
    }
    else
    {
        if($passnew == $repassnew){
            $su = "update nncms_admin set MatKhau='$passnew' where idAdmin= $id";

            if(mysqli_query($con, $su))
            {
                echo "<script>alert('Cập Nhật Mật Khẩu Thành Công! Mật Khẩu sẽ được thay đổi vào lần đăng nhập sau!');location.href='index.php?key=profile';</script>";
            }
            else
            {
                echo "<script>alert('Thất Bại!, Vui lòng kiểm tra lại');location.href='index.php?key=profile';  </script>";
            }
        }
        else
        {
            echo "<script>alert('Thất Bại!, Mật Khẩu Mới Không Khớp'); location.href='index.php?key=profile'; </script>";
        }
    }
}

/***********************************************
*  xử ly phan them truyen
***********************************************/
//xử ly phan them truyen
if(isset($_POST['themtruyen']))
{
    $tentr=$_POST['txttruyen'];
    $idcl=$_POST['chungloai']; //name cua <select>
    $mota=$_POST['txtmota'];
    $tacgia=$_POST['txttacgia'];
    $nguon=$_POST['txtnguon'];
    $anhbia=$_FILES["anhbia"]["name"];
    $ngaydang = date('Y-m-d h:i:s', time());
    $tinhtrang=$_POST['txttrangthai'];
    $trangthai=$_POST['txtanhien'];


    $addtruyen=" insert into nncms_truyen (idCL, TenTruyen, TacGia, Nguon, MoTa, UrlHinh, NgayDang, TrangThai, AnHien) values ('$idcl', '$tentr', '$tacgia', '$nguon', '$mota', '$anhbia', '$ngaydang', '$tinhtrang', '$trangthai') ";
    move_uploaded_file($_FILES["anhbia"]["tmp_name"],"../upload/sanpham/". basename($_FILES["anhbia"]["name"]));
    if(mysqli_query($con, $addtruyen))
    {
        echo "<script>alert('Them thanh cong');location.href='index.php?key=dstruyen';</script>";
    }
    else
    {
        echo "<script>alert('Thêm Thất Bại! Xin kiểm tra lại');location.href='index.php?key=themtruyen';</script>";
    }
}

// xu ly phan sua truyen
if(isset($_POST['suatruyen']))
{
    $tentr=$_POST['txttruyen'];
    $idcl=$_POST['chungloai']; //name cua <select>
    $mota=$_POST['txtmota'];
    $tacgia=$_POST['txttacgia'];
    $nguon=$_POST['txtnguon'];
    $anhbia=$_FILES["anhbia"]["name"];
    $ngaydang = date('Y-m-d h:i:s', time());
    $tinhtrang=$_POST['txttrangthai'];
    $trangthai=$_POST['txtanhien'];

    if ($_FILES["anhbia"]["name"]=="")
    {
        $s=" update nncms_truyen set idCL='$idcl', TenTruyen='$tentr', TacGia='$tacgia', Nguon='$nguon', MoTa='$mota', NgayDang='$ngaydang', TrangThai='$tinhtrang' , AnHien='$trangthai' where idTruyen={$_POST['idT']} ";
        if(mysqli_query($con, $s))
        {
            echo "<script>alert('Sửa truyen Thành Công!');location.href='index.php?key=dstruyen';</script>";

        }
        else
        {
            echo "<script>alert('Thất Bại! Sửa Sản Phẩm Chưa Thành Công');</script>";
        }
    }
    else
    {
        $s=" update nncms_truyen set idCL='$idcl', TenTruyen='$tentr', MoTa='$mota', UrlHinh='$anhbia', NgayDang='$ngaydang', TrangThai='$tinhtrang', AnHien='$trangthai' where idTruyen={$_POST['idT']} ";
        move_uploaded_file($_FILES["anhbia"]["tmp_name"],"../upload/sanpham/".$_FILES["anhbia"]["name"]);

        if(mysqli_query($con, $s))
        {
            echo "<script>alert('Sửa truyen Thành Công!');location.href='index.php?key=dstruyen';</script>";

        }
        else
        {
            echo "<script>alert('Thất Bại! Sửa Sản Phẩm Chưa Thành Công');</script>";
        }
    }


}

//xu ly phan xoa truyen
if(isset($_GET['truyenxoa']))
{
    $s = "delete nncms_truyen, nncms_chuong from nncms_truyen, nncms_chuong where nncms_truyen.idTruyen = nncms_chuong.idTruyen and nncms_truyen.idTruyen = {$_GET['truyenxoa']}";
//    $s="delete from nncms_truyen where idTruyen={$_GET['truyenxoa']}";
    if(mysqli_query($con, $s))
    {
        header("location:index.php?key=dstruyen");
    }
    else
    {
        echo $s;
    }
}

/***********************************************
 *  xử ly phan them chuong
 ***********************************************/
//xử lý thêm chuong
if(isset($_POST['themchuong']))
{
    $idtruyen=$_POST['truyen'] ;
    $chuongso=$_POST['txtchuongso'] ;
    $tenchuong=$_POST['txttenchuong'];
    $noidung=$_POST['txtnoidung'];
    $ngaydang = date('Y-m-d h:i:s', time());

    $ssp=" insert into nncms_chuong (idTruyen, ChuongSo , TenChuong, NoiDung, NgayDang) values ('$idtruyen', '$chuongso', '$tenchuong', '$noidung', '$ngaydang') ";
    if(mysqli_query($con, $ssp))
    {
        echo "<script>alert('Them thanh cong');location.href='index.php?key=dschuong';</script>";
    }
    else
    {
        echo "<script>alert('Thêm Thất Bại! Xin kiểm tra lại');location.href='index.php?key=themchuong';</script>";
    }
}

//
if(isset($_POST['themtruyenchuong']))
{
    $idtruyen=$_POST['txtidtruyen'] ;
    $tenchuong=$_POST['txttenchuong'];
    $noidung=$_POST['txtnoidung'];
    $ngaydang = date('Y-m-d h:i:s', time());

    $ssp=" insert into nncms_chuong (idTruyen, TenChuong, NoiDung, NgayDang) values ('$idtruyen', '$tenchuong', '$noidung', '$ngaydang') ";
    if(mysqli_query($con, $ssp))
    {
        echo "<script>alert('Them thanh cong');location.href='index.php?key=dstruyen';</script>";
    }
    else
    {
        echo "<script>alert('Thêm Thất Bại! Xin kiểm tra lại');location.href='index.php?key=themchuongtruyen';</script>";
    }
}



// sửa chuong
if(isset($_POST['suachuong']))
{
    $idtruyen=$_POST['truyen'] ;
    $chuongSo=$_POST['txtchuongso'];
    $tenchuong=$_POST['txttenchuong'];
    $noidung=$_POST['txtnoidung'];
    $ngaydang = date('Y-m-d h:i:s', time());

    $sl= " update nncms_chuong set idTruyen='$idtruyen', ChuongSo='$chuongSo', TenChuong='$tenchuong', NoiDung='$noidung', NgayDang='$ngaydang' where idChuong={$_POST['idchuong']}";
    if(mysqli_query($con, $sl))
    {
        echo "<script>alert('Them thanh cong');location.href='index.php?key=dschuong';</script>";
    }
    else
    {
        echo "<script>alert('Thêm Thất Bại! Xin kiểm tra lại');location.href='index.php?key=themchuong';</script>";
    }

}

//xóa chuong
if(isset($_GET['chuongxoa']))
{
    $sxoa="delete from nncms_chuong where idChuong={$_GET['chuongxoa']}";
    $kq=mysqli_query($con, $sxoa);
    if($kq)
    {
        echo "<script>alert('Xoa thanh cong');location.href='index.php?key=dschuong';</script>";
    }
    else
    {
        echo "<script>alert('Xoa khong thanh cong');location.href='index.php?key=dschuong';</script>";
    }

}
?>