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
    $tenchuong=$_POST['txttenchuong'];
    $noidung=$_POST['txtnoidung'];
    $ngaydang = date('Y-m-d h:i:s', time());

    $ssp=" insert into nncms_chuong (idTruyen, TenChuong, NoiDung, NgayDang) values ('$idtruyen', '$tenchuong', '$noidung', '$ngaydang') ";
    if(mysqli_query($con, $ssp))
    {
        echo "<script>alert('Them thanh cong');location.href='index.php?key=dschuong';</script>";
    }
    else
    {
        echo "<script>alert('Thêm Thất Bại! Xin kiểm tra lại');location.href='index.php?key=themchuong';</script>";
    }
}
// sửa chuong
if(isset($_POST['suachuong']))
{
    $idtruyen=$_POST['truyen'] ;
    $tenchuong=$_POST['txttenchuong'];
    $noidung=$_POST['txtnoidung'];
    $ngaydang = date('Y-m-d h:i:s', time());

    $sl= " update nncms_chuong set idTruyen='$idtruyen', TenChuong='$tenchuong', NoiDung='$noidung', NgayDang='$ngaydang' where idChuong={$_POST['idchuong']}";
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