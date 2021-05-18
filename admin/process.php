<?php
include("../connect.php");

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
	$s = "delete from nncms_sanpham where idLoai in (select idLoai from nncms_loaisp where idCL={$_GET['idCL']}) ";
	$s2 = " delete from nncms_loaisp where idCL= {$_GET['idCL']}";
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

//xử ly phan them loai san pham
if(isset($_POST['themlsp']))
{
	$tenl=$_POST['txtloai'];
	$idcl=$_POST['chungloai']; //name cua <select>
	$thutu=$_POST['txtthutu'];
	$trangthai=$_POST['txtanhien'];

	$s= "insert into nncms_loaisp (idCL, TenLoai, ThuTu, AnHien) values ('$idcl', '$tenl', '$thutu', '$trangthai')";
	if(mysqli_query($con, $s))
	{
		header("location:index.php?key=dsloaisp&chungloai=".$idcl);
	}
	else
	{
		header("location:index.php?key=themloaisp");
	}
}

// xu ly phan sua loại san pham
if(isset($_POST['sualsp']))
{
	$idCL=$_POST['chungloai']; //name của nút select ở trong form
	$tenl=$_POST['txtloai'];
	$thutu=$_POST['txtthutu'];
	$trangthai=$_POST['txtanhien'];

	$sl= " update nncms_loaisp set idCL='$idCL', TenLoai='$tenl', ThuTu='$thutu', AnHien='$trangthai' where idLoai={$_POST['idL']}";
	if(mysqli_query($con, $sl))
	{
		header("location:index.php?key=dsloaisp&chungloai=".$idCL);
	}
	else
	{
		header("location:index.php?key=sualoaisp");
	}
}

//xu ly phan xoa loai
if(isset($_GET['loaixoa']))
{
	$s = "delete nncms_loaisp, nncms_sanpham from nncms_loaisp, nncms_sanpham where nncms_loaisp.idLoai = nncms_sanpham.idLoai  and nncms_loaisp.idLoai = {$_GET['loaixoa']}";
	if(mysqli_query($con, $s))
	{
		header("location:index.php?key=dsloaisp");
	}
	else
	{
		echo $s;
	}
}

//xử lý thêm sản phẩm
if(isset($_POST['themsanpham']))
{
	$idloai=$_POST['loai'] ;
	$tensp=$_POST['txttensp'];
	$gia=$_POST['txtgia'];
	$mota=$_POST['txtmota'];
	$chitiet=$_POST['txtchitiet'];
	$tonkho=$_POST['txttonkho'];
	$ghichu=$_POST['txtghichu'];
	$trangthai=$_POST['txtanhien'];
	$hinh=$_FILES["hinh"]["name"];
	$ngaydang = date('Y-m-d h:i:s', time());

	$ssp=" insert into nncms_sanpham (idLoai, TenSP, Gia, MoTa, ChiTiet, UrlHinh, NgayDang, TonKho, GhiChu, AnHien) values ('$idloai', '$tensp', '$gia', '$mota', '$chitiet', '$hinh', '$ngaydang', '$tonkho', '$ghichu', '$trangthai') ";
		move_uploaded_file($_FILES["hinh"]["tmp_name"],"../upload/sanpham/".$_FILES["hinh"]["name"]);
	if(mysqli_query($con, $ssp))
	{
		echo "<script>alert('Them thanh cong');location.href='index.php?key=dssanpham';</script>"; 
	}
	else
	{
		echo "<script>alert('Thêm Thất Bại! Xin kiểm tra lại');location.href='index.php?key=themsanpham';</script>";
	}
}
// sửa sản phẩm
if(isset($_POST['suasanpham']))
{
	$idloai=$_POST['loai'] ;
	$tensp=$_POST['txttensp'];
	$gia=$_POST['txtgia'];
	$mota=$_POST['txtmota'];
	$chitiet=$_POST['txtchitiet'];
	$tonkho=$_POST['txttonkho'];
	$ghichu=$_POST['txtghichu'];
	$trangthai=$_POST['txtanhien'];
	$hinh=$_FILES["hinh"]["name"];
	$ngaydang = date('Y-m-d h:i:s', time());

	if ($_FILES["hinh"]["name"]=="")
  	{
  		$s=" update nncms_sanpham set idLoai='$idloai', TenSP='$tensp', Gia='$gia', MoTa='$mota', ChiTiet='$chitiet', NgayDang='$ngaydang', TonKho='$tonkho', GhiChu='$ghichu', AnHien='$trangthai' where idSP={$_POST['idsp']} ";
  	}
  	else
 	{
		$s=" update nncms_sanpham set idLoai='$idloai', TenSP='$tensp', Gia='$gia', MoTa='$mota', ChiTiet='$chitiet', UrlHinh='$hinh', NgayDang='$ngaydang', TonKho='$tonkho', GhiChu='$ghichu', AnHien='$trangthai' where idSP={$_POST['idsp']} ";
		move_uploaded_file($_FILES["hinh"]["tmp_name"],"../upload/sanpham/".$_FILES["hinh"]["name"]);
	
	if(mysqli_query($con, $s))
	{
		echo "<script>alert('Sửa Sản Phẩm Thành Công!');location.href='index.php?key=dssanpham';</script>";

	}
	else
	{
		echo "<script>alert('Thất Bại! Sửa Sản Phẩm Chưa Thành Công');</script>";
	}
}
}


//xóa sản phẩm
if(isset($_GET['sanphamxoa']))
{
	$sxoa="delete from nncms_sanpham where idSP={$_GET['sanphamxoa']}";
	$kq=mysqli_query($con, $sxoa);
	if($kq)
	{
		echo "<script>alert('Xoa thanh cong');location.href='index.php?key=dssanpham';</script>";
	}
	else
	{
		echo "<script>alert('Xoa khong thanh cong');location.href='index.php?key=dssanpham';</script>";
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

?>