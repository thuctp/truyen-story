-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 18, 2021 lúc 04:44 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `test`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nncms_cauhinhchung`
--

CREATE TABLE `nncms_cauhinhchung` (
  `id` int(1) NOT NULL,
  `TieuDe` varchar(300) NOT NULL,
  `Banner` varchar(255) NOT NULL,
  `Footer` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `DienThoai` varchar(100) NOT NULL,
  `DiaChi` varchar(500) NOT NULL,
  `DungHoatDong` tinyint(4) NOT NULL,
  `ThongBao` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nncms_chungloai`
--

CREATE TABLE `nncms_chungloai` (
  `idCL` int(255) NOT NULL,
  `TenCL` varchar(255) NOT NULL,
  `ThuTu` int(4) NOT NULL,
  `AnHien` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nncms_chungloai`
--

INSERT INTO `nncms_chungloai` (`idCL`, `TenCL`, `ThuTu`, `AnHien`) VALUES
(13, 'the loai truyen', 0, 1),
(14, 'the loai truyen 2', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nncms_donhang`
--

CREATE TABLE `nncms_donhang` (
  `idDH` int(255) NOT NULL,
  `idNguoiDung` int(255) NOT NULL,
  `ThoiGianDat` date NOT NULL,
  `TenNguoiNhan` varchar(100) NOT NULL,
  `DiaDiemGiao` varchar(500) NOT NULL,
  `GhiChu` varchar(500) DEFAULT NULL,
  `TinhTrang` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nncms_donhangchitiet`
--

CREATE TABLE `nncms_donhangchitiet` (
  `idDH` int(255) NOT NULL,
  `idSP` int(255) NOT NULL,
  `SoLuong` int(255) NOT NULL,
  `Gia` decimal(15,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nncms_hangsanxuat`
--

CREATE TABLE `nncms_hangsanxuat` (
  `idHSX` int(255) NOT NULL,
  `idCL` int(255) NOT NULL,
  `TenHang` varchar(255) NOT NULL,
  `ThuTu` int(4) NOT NULL,
  `AnHien` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nncms_hangsanxuat`
--

INSERT INTO `nncms_hangsanxuat` (`idHSX`, `idCL`, `TenHang`, `ThuTu`, `AnHien`) VALUES
(1, 1, 'Nokia', 1, 1),
(2, 1, 'Motorola', 1, 1),
(3, 1, 'LG', 1, 1),
(4, 1, 'K-Touch', 1, 1),
(5, 1, 'Samsung', 1, 1),
(6, 1, 'Cayon', 1, 1),
(7, 1, 'Sony Ericsson', 1, 1),
(8, 1, 'WellcoM', 1, 1),
(9, 1, 'HTC', 1, 1),
(10, 1, 'Mobell', 1, 1),
(11, 1, 'Lenovo', 1, 1),
(12, 1, 'KONKA', 1, 1),
(13, 1, 'Malata', 1, 1),
(14, 1, 'InnoStream', 1, 1),
(15, 1, 'Acer', 1, 1),
(16, 1, 'Pantech', 1, 1),
(17, 1, 'F-Mobile', 1, 1),
(18, 1, 'palmOne', 1, 1),
(19, 1, 'Philips', 1, 1),
(20, 1, 'Bird', 1, 1),
(21, 1, 'Mobistar', 1, 1),
(22, 1, 'VK Mobile', 1, 1),
(23, 1, 'Dell', 1, 1),
(24, 1, 'V.Fone', 1, 1),
(25, 1, 'eTouch', 1, 1),
(26, 1, 'Dopod', 1, 1),
(27, 1, 'HQ', 1, 1),
(28, 1, 'Toplux', 1, 1),
(29, 1, 'I-mobile', 1, 1),
(30, 1, 'Sharp', 1, 1),
(31, 1, 'G-Plus', 1, 1),
(32, 1, 'HP', 1, 1),
(33, 1, 'Huawei', 1, 1),
(34, 1, 'Panasonic', 1, 1),
(35, 1, 'BenQ-Siemens', 1, 1),
(36, 1, 'Mobiado', 1, 1),
(37, 1, 'ITALK', 1, 1),
(38, 1, 'Vertu', 1, 1),
(39, 1, 'G-Tide', 1, 1),
(40, 1, 'Apple', 1, 1),
(41, 1, 'O2', 1, 1),
(42, 1, 'Asus', 1, 1),
(43, 1, 'Gionee', 1, 1),
(44, 1, 'Toshiba', 1, 1),
(45, 1, 'Q-Mobile', 1, 1),
(46, 1, 'BlackBerry', 1, 1),
(47, 1, 'Bavapen', 1, 1),
(48, 1, 'Sfone-CDMA', 1, 1),
(49, 1, 'Umeox', 1, 1),
(50, 1, 'Gigabyte', 1, 1),
(51, 1, 'Siemens', 1, 1),
(52, 2, 'Acer', 1, 1),
(53, 2, 'Toshiba ', 1, 1),
(54, 2, 'Asus ', 1, 1),
(55, 2, 'Samsung ', 1, 1),
(56, 2, 'HP-Compaq ', 1, 1),
(57, 2, 'BenQ ', 1, 1),
(58, 2, 'Dell ', 1, 1),
(59, 2, 'Gateway ', 1, 1),
(60, 2, 'IBM - Lenovo ', 1, 1),
(61, 2, 'Sony ', 1, 1),
(62, 2, 'Apple ', 1, 1),
(63, 2, 'Logitech ', 1, 1),
(64, 2, 'CMS ', 1, 1),
(65, 2, 'Elitegroup ', 1, 1),
(66, 2, 'Axioo ', 1, 1),
(67, 2, 'Fujitsu ', 1, 1),
(68, 2, 'MSI ', 1, 1),
(69, 2, 'Nec ', 1, 1),
(70, 2, 'Panasonic ', 1, 1),
(71, 2, 'Twinhead ', 1, 1),
(72, 2, 'Sharp ', 1, 1),
(73, 2, 'Hãng khác... ', 1, 1),
(74, 2, 'Suzuki ', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nncms_lienket`
--

CREATE TABLE `nncms_lienket` (
  `idLK` int(255) NOT NULL,
  `TenLK` varchar(255) NOT NULL,
  `Url` varchar(400) NOT NULL,
  `ThuTu` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nncms_loaisp`
--

CREATE TABLE `nncms_loaisp` (
  `idLoai` int(255) NOT NULL,
  `idCL` int(255) NOT NULL,
  `TenLoai` varchar(255) NOT NULL,
  `ThuTu` int(4) NOT NULL,
  `AnHien` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nncms_loaisp`
--

INSERT INTO `nncms_loaisp` (`idLoai`, `idCL`, `TenLoai`, `ThuTu`, `AnHien`) VALUES
(78, 13, 'ten truyen', 0, 1),
(79, 13, 'ten truyen 2', 0, 1),
(80, 14, 'ten truyen thuoc loaij 2', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nncms_loaitin`
--

CREATE TABLE `nncms_loaitin` (
  `idLT` int(255) NOT NULL,
  `idCapCha` int(255) NOT NULL,
  `TieuDe` varchar(300) NOT NULL,
  `ThuTu` int(10) NOT NULL,
  `AnHien` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nncms_loaitin`
--

INSERT INTO `nncms_loaitin` (`idLT`, `idCapCha`, `TieuDe`, `ThuTu`, `AnHien`) VALUES
(1, 0, 'Xã hội', 1, 1),
(2, 0, 'Thế giới', 2, 1),
(3, 0, 'Kinh Doanh', 3, 1),
(4, 0, 'Văn Hóa', 4, 1),
(5, 0, 'Thể Thao', 5, 1),
(6, 0, 'Pháp luật', 6, 1),
(7, 0, 'Đời sống', 7, 1),
(8, 0, 'Khoa Học', 8, 1),
(9, 1, 'Giáo Dục', 1, 1),
(10, 1, 'Nhịp Điệu Trẻ', 2, 1),
(11, 1, 'Du Lịch', 3, 1),
(12, 1, 'Du Học', 4, 1),
(13, 2, 'Cuộc Sống Đó Đây', 1, 1),
(14, 2, 'Ảnh', 2, 1),
(15, 2, 'Người Việt 5 Châu', 3, 1),
(16, 2, 'Phân Tích', 4, 1),
(17, 2, 'Tư liệu', 5, 1),
(19, 3, 'Chứng Khoán', 1, 1),
(20, 3, 'Bất Động Sản', 2, 1),
(21, 3, 'Doanh Nhân', 3, 1),
(22, 3, 'Mua Sắm', 4, 1),
(23, 4, 'Hoa Hậu', 1, 1),
(24, 4, 'Nghệ Sĩ', 2, 1),
(25, 4, 'Âm Nhạc', 3, 1),
(26, 4, 'Thời Trang', 4, 1),
(27, 4, 'Điện Ảnh', 5, 1),
(28, 4, 'Mỹ Thuật', 6, 1),
(29, 4, 'Văn Học', 7, 1),
(30, 5, 'Bóng Đá', 1, 1),
(31, 5, 'Tennis', 2, 1),
(32, 5, 'Chân Dung', 3, 1),
(33, 5, 'Ảnh - Video', 4, 1),
(34, 6, 'Hình Sự', 1, 1),
(35, 6, 'Ký Sự', 2, 1),
(36, 6, 'Tư Vấn', 3, 1),
(37, 7, 'Gia Đình', 1, 1),
(38, 7, 'Sức Khỏe', 2, 1),
(39, 7, 'Ẩm Thực', 3, 1),
(40, 7, 'Làm Đẹp', 5, 1),
(41, 7, 'Cửa Sổ Blog', 5, 1),
(42, 8, 'Môi Trường', 1, 1),
(43, 8, 'Thiên Nhiên', 2, 1),
(44, 8, 'Ảnh', 3, 1),
(45, 8, 'Công Nghệ Mới', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nncms_menus`
--

CREATE TABLE `nncms_menus` (
  `idMenu` int(255) NOT NULL,
  `idCapCha` int(255) NOT NULL,
  `TieuDe` varchar(255) NOT NULL,
  `LienKet` varchar(500) DEFAULT NULL,
  `ThuTu` int(10) NOT NULL,
  `AnHien` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nncms_nguoidung`
--

CREATE TABLE `nncms_nguoidung` (
  `idNguoiDung` int(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `HoTen` varchar(100) NOT NULL,
  `DienThoai` varchar(100) NOT NULL,
  `DiaChi` varchar(500) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` tinyint(4) NOT NULL,
  `NgayDangKy` date NOT NULL,
  `idNhom` int(10) NOT NULL,
  `KichHoat` tinyint(4) NOT NULL,
  `MaNgauNhien` varchar(255) NOT NULL,
  `DiemSMS` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nncms_nguoidung`
--

INSERT INTO `nncms_nguoidung` (`idNguoiDung`, `MatKhau`, `Email`, `HoTen`, `DienThoai`, `DiaChi`, `NgaySinh`, `GioiTinh`, `NgayDangKy`, `idNhom`, `KichHoat`, `MaNgauNhien`, `DiemSMS`) VALUES
(1, '21232f297a57a5a743894a0e4a801fc3', 'minhthuc12345678@gmail.com', 'thuc', '12345654321', 'ho chi minh', '2021-05-05', 0, '2021-05-18', 0, 0, '47257279d0b4f033e373b16e65f8f089', 0),
(7, '21232f297a57a5a743894a0e4a801fc3', 'minhthuc12345678@gmail.com', 'test', '452345345234', 'ho chi minh', '2021-05-09', 0, '2021-05-18', 0, 1, '549406198764950208345d143aa67c7d', 0),
(8, '21232f297a57a5a743894a0e4a801fc3', 'minhthuc12345678@gmail.com', 'test', '452345345234', 'ho chi minh', '2021-05-09', 0, '2021-05-18', 0, 1, '62459f4e225e2f4f196c9d42f4ad7111', 0),
(9, '21232f297a57a5a743894a0e4a801fc3', 'minhthuc12345678@gmail.com', 'test', '452345345234', 'ho chi minh', '2021-05-09', 0, '2021-05-18', 0, 1, '62d2b7ba91f34c0ac08aa11c359a8d2c', 0),
(10, '21232f297a57a5a743894a0e4a801fc3', 'minhthuc12345678@gmail.com', 'test', '452345345234', 'ho chi minh', '2021-05-09', 0, '2021-05-18', 0, 1, '6d7d394c9d0c886e9247542e06ebb705', 0),
(11, '21232f297a57a5a743894a0e4a801fc3', 'minhthuc12345678@gmail.com', 'test', '23123123213', 'ho chi minh', '2021-05-16', 0, '2021-05-18', 0, 1, 'e1054bf2d703bca1e8fe101d3ac5efcd', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nncms_quangcao`
--

CREATE TABLE `nncms_quangcao` (
  `idQC` int(255) NOT NULL,
  `MoTa` varchar(255) NOT NULL,
  `UrlQC` varchar(400) NOT NULL,
  `UrlHinh` varchar(400) NOT NULL,
  `ViTri` varchar(30) NOT NULL,
  `idMenu` int(255) NOT NULL,
  `SoLanBam` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nncms_sanpham`
--

CREATE TABLE `nncms_sanpham` (
  `idSP` int(255) NOT NULL,
  `idCL` int(255) NOT NULL,
  `idLoai` int(255) NOT NULL,
  `idHSX` int(255) DEFAULT NULL,
  `TenSP` varchar(255) NOT NULL,
  `Gia` decimal(15,4) NOT NULL,
  `MoTa` text DEFAULT NULL,
  `ChiTiet` text DEFAULT NULL,
  `UrlHinh` varchar(255) NOT NULL,
  `NgayDang` date NOT NULL,
  `TonKho` int(255) NOT NULL DEFAULT 0,
  `GhiChu` varchar(500) DEFAULT NULL,
  `SoLanMua` int(255) NOT NULL DEFAULT 0,
  `SoLanXem` int(255) NOT NULL DEFAULT 0,
  `AnHien` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nncms_slider`
--

CREATE TABLE `nncms_slider` (
  `id` int(11) NOT NULL,
  `tieude` text NOT NULL,
  `mota` text NOT NULL,
  `url` text NOT NULL,
  `hinhnho` varchar(150) NOT NULL,
  `hinhlon` varchar(150) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT 0,
  `anhien` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nncms_slider`
--

INSERT INTO `nncms_slider` (`id`, `tieude`, `mota`, `url`, `hinhnho`, `hinhlon`, `stt`, `anhien`) VALUES
(1, 'Cảnh sát chống bạo động khống chế kẻ dọa tự thiêu', 'Sau 4 tiếng cố thủ trong vòng vây của hơn 100 cảnh sát, kẻ tưới đẫm xăng dọa tự thiêu', 'chitiettin.php?idTin=15', 'image1-small.jpg', 'image1.jpg', 0, 0),
(2, 'Hot girl Sài Gòn nhập vai thiếu nữ H’Mông', 'Đan Cha và Bảo Ngọc, hai ứng viên sáng giá của Miss Teen 2010, chia sẻ những trải nghiệm lý thú', 'chitiettin.php?idTin=16', 'image2-small.jpg', 'image2.jpg', 0, 0),
(3, 'Lindsay Lohan đâm xe vào nôi em bé', 'Có nhân chứng khẳng định, hôm 1/9, Lindsay lơ đễnh đâm vào xe nôi chở em bé do một cô trông trẻ đẩy qua đường', 'chitiettin.php?itTin=17', 'image3-small.jpg', 'image3.jpg', 0, 0),
(4, 'Đàm Vĩnh Hưng trong vòng vây người đẹp ', 'Hàng loạt mỹ nhân showbiz Việt hội tụ tại khách sạn Daewoo, Hà Nội tối 1/9 để chúc mừng Mr. Đàm ', 'chitiettin.php?idTIn=18', 'image4-small.jpg', 'image4.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nncms_tin`
--

CREATE TABLE `nncms_tin` (
  `idTin` int(255) NOT NULL,
  `idLT` int(255) NOT NULL,
  `urlHinh` varchar(150) DEFAULT NULL,
  `TieuDe` varchar(500) NOT NULL,
  `TomTat` text NOT NULL,
  `NoiDung` longtext NOT NULL,
  `AnHien` tinyint(4) NOT NULL DEFAULT 1,
  `NgayDang` date DEFAULT NULL,
  `idNguoiDung` int(255) NOT NULL,
  `SoLanXem` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nncms_tin`
--

INSERT INTO `nncms_tin` (`idTin`, `idLT`, `urlHinh`, `TieuDe`, `TomTat`, `NoiDung`, `AnHien`, `NgayDang`, `idNguoiDung`, `SoLanXem`) VALUES
(1, 9, '1.jpg', 'Anh mở đại học tiêu chuẩn quốc tế ở Đà Nẵng ', 'Trường đại học Anh Việt theo tiêu chuẩn quốc tế ở Đà Nẵng có thể đi vào hoạt động từ năm tới, tân đại sứ Anh ở Việt Nam Antony Stokes cho biết.', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/40/59/tt1.jpg\" border=\"1\" alt=\"Đại sứ Anh ở Việt Nam Antony Stokes. Ảnh: H.N.\" width=\"250\" height=\"195\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">T&acirc;n Đại sứ Anh tại Việt Nam Antony Stokes. Ảnh: <em>H.N.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2 class=\"Lead\">Trường đại học Anh Việt theo ti&ecirc;u chuẩn quốc tế ở Đ&agrave;  Nẵng c&oacute; thể đi v&agrave;o hoạt động từ năm tới, t&acirc;n đại sứ Anh ở Việt Nam  Antony Stokes cho biết.</h2>\r\n<p class=\"Normal\">Ph&aacute;t biểu trong cuộc họp b&aacute;o h&ocirc;m qua, đại sứ Stokes  cho hay một trong những ưu ti&ecirc;n h&agrave;ng đầu của &ocirc;ng trong nhiệm kỳ ở Việt  Nam l&agrave; gi&aacute;o dục. Nước Anh sẽ hỗ trợ Việt Nam n&acirc;ng cao chất lượng gi&aacute;o  dục, cụ thể l&agrave; Anh đang x&acirc;y trường đại học Anh Việt ở Đ&agrave; Nẵng.</p>\r\n<p class=\"Normal\">\"Sinh vi&ecirc;n Việt Nam v&igrave; thế c&oacute; thể thụ hưởng nền gi&aacute;o dục đẳng cấp quốc tế m&agrave; kh&ocirc;ng phải du học\", đại sứ Stokes n&oacute;i.</p>\r\n<p class=\"Normal\">Đại sứ cũng cho hay mỗi năm c&oacute; tới 2.000 sinh vi&ecirc;n  Việt Nam tới Anh theo học bậc đại học v&agrave; tr&ecirc;n đại học. &Ocirc;ng hy vọng con  số n&agrave;y sẽ sớm tăng l&ecirc;n 3.000. &Ocirc;ng th&ecirc;m rằng Anh muốn trở th&agrave;nh đối t&aacute;c  h&agrave;ng đầu của Việt Nam về gi&aacute;o dục.</p>\r\n<p class=\"Normal\">Thương mại v&agrave; đầu tư cũng l&agrave; một trong ba ưu ti&ecirc;n m&agrave;  Đại sứ Stokes nhắc tới. &Ocirc;ng cho biết rất lạc quan về triển vọng đầu tư  của Anh ở Việt Nam. Giao dịch hai chiều mỗi năm đ&atilde; l&ecirc;n tới gần 2 tỷ USD  v&agrave; đại sứ hy vọng con số n&agrave;y sẽ tăng l&ecirc;n 3 tỷ USD trong nhiệm kỳ của  &ocirc;ng.</p>\r\n<p class=\"Normal\">Anh sẵn s&agrave;ng hỗ trợ việc thiết lập đường bay thẳng  giữa Việt Nam v&agrave; Anh, hy vọng trong năm 2011. Vietnam Airlines muốn mở  đường bay thẳng từ H&agrave; Nội v&agrave; TP Hồ Ch&iacute; Minh đến London, v&agrave; đang nỗ lực  x&aacute;c định c&aacute;c điểm hạ c&aacute;nh ở Anh cũng như tần suất bay.</p>\r\n<p class=\"Normal\">Anh cũng cam kết sử dụng t&agrave;i trợ để hỗ trợ qu&aacute; tr&igrave;nh  ph&aacute;t triển kinh tế bền vững của Việt Nam, bao gồm c&aacute;c lĩnh vực như c&aacute;c  mục ti&ecirc;u ph&aacute;t triển thi&ecirc;n ni&ecirc;n kỷ, thương mại v&agrave; tăng trưởng, quản trị  nh&agrave; nước v&agrave; biến đổi kh&iacute; hậu.</p>\r\n<p class=\"Normal\">Đại sứ Stokes đến Việt Nam nhậm chức hơn hai tuần nay.  Đ&acirc;y cũng l&agrave; lần đầu ti&ecirc;n &ocirc;ng tới đ&acirc;y. Ấn tượng đầu ti&ecirc;n của &ocirc;ng về Việt  Nam l&agrave; sự năng động, nhạy b&eacute;n tr&agrave;n đầy sức sống của người d&acirc;n. &Ocirc;ng cho  biết rất h&agrave;o hứng tham gia ăn mừng chiến thắng của đội tuyển b&oacute;ng đ&aacute;  Việt Nam ở H&agrave; Nội. &Ocirc;ng cũng nhận thấy sự nồng hậu của người d&acirc;n Việt Nam  đối với người nước ngo&agrave;i, người Anh v&agrave; bản th&acirc;n &ocirc;ng.</p>\r\n<p class=\"Normal\">Tiến sĩ Stokes từng giữ chức đại sứ Anh tại Latvia.  Trước đ&oacute; &ocirc;ng phụ tr&aacute;ch khu vực Nam &Aacute; của Bộ Ngoại giao Anh. &Ocirc;ng đ&atilde; c&oacute;  thời gian l&agrave;m việc ở H&agrave;n Quốc v&agrave; Th&aacute;i Lan.</p>', 1, '0000-00-00', 1, 0),
(2, 9, '2.jpg', 'Học bổng thạc sĩ tại Đại học Rmit ', 'Đại học Quốc tế Rmit Việt Nam lần thứ 2 giới thiệu cơ hội học bổng và tuyển sinh cho chương trình thạc sĩ kỹ thuật (điện tử và máy tính).', '<h2 class=\"Lead\">Đại học Quốc tế Rmit Việt Nam lần thứ 2  giới thiệu cơ hội học bổng v&agrave; tuyển sinh cho chương tr&igrave;nh thạc sĩ kỹ  thuật (điện tử v&agrave; m&aacute;y t&iacute;nh).</h2>\r\n<p class=\"Normal\">Mỗi suất học bổng thạc sĩ bao gồm to&agrave;n bộ  học ph&iacute;, c&aacute;c kh&oacute;a học tiếng Anh ở tr&igrave;nh độ cao cấp (nếu cần thiết), t&agrave;i  liệu học tập, phụ cấp tiền thu&ecirc; nh&agrave; v&agrave; cơ hội học một học kỳ tại Đại  học Rmit, Australia. Chương tr&igrave;nh học bổng Intel Việt Nam c&oacute; hai đặc  t&iacute;nh: đ&agrave;o tạo bằng cấp của Australia v&agrave; cơ hội ph&aacute;t triển sự nghiệp kỹ  thuật tại Intel Việt Nam. Intel sẽ t&agrave;i trợ c&aacute;c sinh vi&ecirc;n tốt nghiệp  chuy&ecirc;n ng&agrave;nh kỹ thuật từ c&aacute;c trường đại học trong nước theo học chương  tr&igrave;nh thạc sĩ kỹ thuật (điện tử v&agrave; m&aacute;y t&iacute;nh) tại Rmit Việt Nam. Sau khi  tốt nghiệp, bạn sẽ được ph&aacute;t triển sự nghiệp tại Intel Việt Nam.</p>\r\n<p class=\"Normal\">B&ecirc;n cạnh đ&oacute;, cơ quan ph&aacute;t triển quốc tế  Australia (AusAID) tại Việt Nam sẽ th&iacute; điểm m&ocirc; h&igrave;nh mới về chương tr&igrave;nh  học bổng trong nước hợp t&aacute;c với Rmit Việt Nam nhằm mở rộng chương tr&igrave;nh  viện trợ quốc tế. Mục ti&ecirc;u của chương tr&igrave;nh l&agrave; mang lại tr&igrave;nh độ quốc tế  cho ng&agrave;nh kỹ thuật Việt Nam. Rmit đang x&uacute;c tiến qu&aacute; tr&igrave;nh xin Hiệp hội  Kỹ sư Australia c&ocirc;ng nhận chương tr&igrave;nh đ&agrave;o tạo n&agrave;y. Chương tr&igrave;nh sẽ gi&uacute;p  sinh vi&ecirc;n tốt nghiệp thạc sĩ kỹ thuật đạt bằng cấp kỹ thuật được quốc  tế c&ocirc;ng nhận. Học bổng AusAID nhắm đến đối tượng l&agrave; giảng vi&ecirc;n c&aacute;c  trường đại học v&agrave; c&aacute;c ứng vi&ecirc;n sẽ cống hiến cho sự ph&aacute;t triển của Việt  Nam sau n&agrave;y.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/3C/64/rmit1.jpg\" border=\"1\" alt=\"\" width=\"450\" height=\"300\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Chương tr&igrave;nh học bổng n&agrave;y sẽ nhận đơn đến  18/3/2011. Kết quả tuyển chọn sẽ được c&ocirc;ng bố v&agrave;o th&aacute;ng 4/2011. C&aacute;c  sinh vi&ecirc;n nhận học bổng sẽ bắt đầu học tại Rmit Việt Nam, cơ sở Nam S&agrave;i  G&ograve;n từ th&aacute;ng 5/2011 với chương tr&igrave;nh Anh ngữ dự bị (nếu cần thiết).</p>\r\n<p class=\"Normal\">Khi ho&agrave;n th&agrave;nh chương tr&igrave;nh v&agrave;o năm 2013,  sinh vi&ecirc;n sẽ nhận bằng thạc sĩ v&agrave; bắt đầu sự nghiệp với Intel Việt Nam  (đối với người nhận học bổng Intel) hoặc sự nghiệp kỹ thuật kh&aacute;c (đối  với người nhận học bổng AusAID). Người nhận học bổng AusAID cần cam kết  l&agrave;m việc &iacute;t nhất hai năm tại Việt Nam.</p>\r\n<p>Chương tr&igrave;nh sẽ tồ chức hội thảo tại bốn  th&agrave;nh phố: Cần Thơ (30/11), TP HCM (11/12), Đ&agrave; Nẵng (15/12) v&agrave; H&agrave; Nội  (15/1), để biết th&ecirc;m th&ocirc;ng tin của chương tr&igrave;nh, li&ecirc;n lạc (08) 37761369</p>', 1, '0000-00-00', 1, 0),
(3, 9, '3.jpg', '\'Sốc\' với thắc mắc tâm lý của học sinh tiểu học ', 'Trong lá thư gửi chuyên gia tâm lý, một học sinh lớp 5 nguệch ngoạc viết: \'Con và bạn kia thích nhau. Nhưng giờ thì không còn nữa. Con cảm thấy rất buồn. Mỗi khi gặp nhau là hai đứa không biết nói gì. Tình cảm của con là gì, làm sao để con quên được bạn ấy\'.', '<h2 class=\"Lead\">Trong l&aacute; thư gửi chuy&ecirc;n gia t&acirc;m l&yacute;, một học sinh lớp 5  nguệch ngoạc viết: \'Con v&agrave; bạn kia th&iacute;ch nhau. Nhưng giờ th&igrave; kh&ocirc;ng c&ograve;n  nữa. Con cảm thấy rất buồn. Mỗi khi gặp nhau l&agrave; hai đứa kh&ocirc;ng biết n&oacute;i  g&igrave;. T&igrave;nh cảm của con l&agrave; g&igrave;, l&agrave;m sao để con qu&ecirc;n được bạn ấy\'.<br /><br /><a class=\"Lead\" href=\"http://vnexpress.net/GL/Xa-hoi/Giao-duc/2010/11/3BA237FB/\"></a></h2>\r\n<p class=\"Normal\">Đ&oacute; l&agrave; một trong h&agrave;ng trăm l&aacute; thư m&agrave; học sinh trường  tiểu học Ph&ugrave;ng Hưng, quận 11, TP HCM, gửi cho chuy&ecirc;n vi&ecirc;n tư vấn t&acirc;m l&yacute;  Mỹ Linh, người phụ tr&aacute;ch c&ocirc;ng t&aacute;c tư vấn học đường của trường.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/39/D3/tu-van-1.jpg\" alt=\"chuy&ecirc;n vi&ecirc;n tư vấn t&acirc;m l&yacute; cho c&aacute;c học sinh\" width=\"480\" height=\"355\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Chuy&ecirc;n vi&ecirc;n tư vấn t&acirc;m l&yacute; cho c&aacute;c học sinh. Ảnh: <em>Hải Duy&ecirc;n</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Chuy&ecirc;n gia Mỹ Linh cho biết, b&acirc;y giờ học sinh ph&aacute;t  triển rất nhanh. C&oacute; em từ lớp 4, lớp 5 đ&atilde; c&oacute; biểu hiện bước v&agrave;o tuổi dậy  th&igrave;, ph&aacute;t sinh t&igrave;nh cảm với bạn kh&aacute;c ph&aacute;i. Một học sinh lớp 4 từng \"cầu  cứu\" c&ocirc; Linh: \"Em th&iacute;ch một bạn nam, nhưng c&oacute; bạn nữ trong lớp cũng  th&iacute;ch bạn ấy. C&ocirc; c&oacute; thể cho em biết phải l&agrave;m sao kh&ocirc;ng? Em đang rất b&acirc;ng  khu&acirc;ng...\".</p>\r\n<p class=\"Normal\">Thậm ch&iacute; cảm gi&aacute;c buồn b&atilde; v&igrave; t&igrave;nh y&ecirc;u cũng sớm h&igrave;nh  th&agrave;nh trong c&aacute;c em n&agrave;y. Một học sinh lớp 5 gửi bức thư với những d&ograve;ng  chữ tha thiết: \"Con v&agrave; bạn kia th&iacute;ch nhau, nhưng giờ th&igrave; kh&ocirc;ng c&ograve;n nữa.  Con cảm thấy rất buồn v&agrave; kh&ocirc;ng thể qu&ecirc;n bạn ấy. Mỗi khi gặp nhau l&agrave; hai  đứa kh&ocirc;ng biết n&oacute;i g&igrave;. Mong c&ocirc; gi&uacute;p con. T&igrave;nh cảm của con l&agrave; g&igrave;, l&agrave;m sao  để con qu&ecirc;n được bạn ấy...\".</p>\r\n<p class=\"Normal\">Với học sinh nhỏ tuổi hơn một ch&uacute;t, c&aacute;c thắc mắc  thường li&ecirc;n quan đến chuyện gia đ&igrave;nh. Đ&oacute; thường l&agrave; những em phải sống  trong gia đ&igrave;nh kh&ocirc;ng hạnh ph&uacute;c, cha mẹ hay c&atilde;i nhau, ly th&acirc;n hoặc bị bạo  h&agrave;nh, thiếu quan t&acirc;m... Khi buồn tủi, lo lắng, thậm ch&iacute; rơi v&agrave;o cảm  gi&aacute;c c&ocirc; đơn, c&aacute;c b&eacute; dễ c&oacute; suy nghĩ bị mọi người gh&eacute;t bỏ v&agrave; khao kh&aacute;t  được chia sẻ.</p>\r\n<p class=\"Normal\">\"C&ocirc; Mỹ Linh ơi! Sao ba mẹ con cứ c&atilde;i lộn ho&agrave;i, rồi ba  con bỏ đi 3-4 ng&agrave;y kh&ocirc;ng về\", hay \"C&ocirc; &agrave;, con cảm thấy ba con c&oacute; vợ b&eacute;.  Mỗi lần ba về qu&ecirc; l&agrave; để thăm vợ của ba. Dạo n&agrave;y con thấy ba kh&ocirc;ng c&ograve;n  y&ecirc;u con nữa...\" l&agrave; những d&ograve;ng chữ thường thấy trong c&aacute;c thắc mắc của học  sinh lớp 3.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/39/D3/tu-van-2.jpg\" alt=\"Những thắc mắc của học sinh sẽ được bỏ v&agrave;o th&ugrave;ng thư v&agrave; chỉ m&igrave;nh chuy&ecirc;n vi&ecirc;n tư vấn t&acirc;m l&yacute; được biết.\" width=\"480\" height=\"381\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Những thắc mắc của học sinh sẽ được bỏ v&agrave;o th&ugrave;ng thư v&agrave; chỉ m&igrave;nh chuy&ecirc;n vi&ecirc;n tư vấn t&acirc;m l&yacute; đọc. Ảnh: <em>Hải Duy&ecirc;n</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Theo kinh nghiệm của nữ chuy&ecirc;n vi&ecirc;n tư vấn t&acirc;m l&yacute;, ở  mỗi độ tuổi c&aacute;c em c&oacute; nhu cầu tư vấn kh&aacute;c nhau. C&aacute;ch đ&oacute;n tiếp, tr&ograve;  chuyện v&agrave; khuy&ecirc;n giải cũng được chọn lọc cho ph&ugrave; hợp.</p>\r\n<p class=\"Normal\">Đối với thắc mắc về gia đ&igrave;nh, ngo&agrave;i việc giải th&iacute;ch  c&aacute;c vấn đề xảy ra của người lớn, an ủi v&agrave; khuy&ecirc;n nhủ học sinh, theo c&ocirc;  Linh, người l&agrave;m c&ocirc;ng t&aacute;c tư vấn cũng n&ecirc;n tiếp cận, trao đổi với phụ  huynh để họ biết được t&acirc;m trạng con m&igrave;nh. Từ đ&oacute; tạo đường d&acirc;y li&ecirc;n kết  giữa cha mẹ v&agrave; con c&aacute;i, l&agrave;m cho c&aacute;c thắc mắc nhanh ch&oacute;ng được giải tỏa.</p>\r\n<p class=\"Normal\">C&ograve;n chuyện t&igrave;nh cảm nam nữ, theo nữ chuy&ecirc;n vi&ecirc;n, đ&oacute; l&agrave;  những rung động rất tự nhi&ecirc;n về t&acirc;m sinh l&yacute;, chứ kh&ocirc;ng phải l&agrave; biểu  hiện lệch lạc. V&igrave; thế, c&aacute;c em thường kh&ocirc;ng muốn thổ lộ với cha mẹ.</p>\r\n<p class=\"Normal\">\"T&acirc;m l&yacute; phụ huynh khi biết con m&igrave;nh y&ecirc;u sớm thường tức  giận, tr&aacute;ch m&oacute;c, la mắng con theo kiểu \'mới t&yacute; tuổi m&agrave; y&ecirc;u đương\'.  Trong trường hợp n&agrave;y, ch&uacute;ng ta phải kh&eacute;o l&eacute;o giải th&iacute;ch, định hướng cho  c&aacute;c em hiểu v&agrave; giữ g&igrave;n, tr&acirc;n trọng t&igrave;nh cảm trong s&aacute;ng đ&oacute; với bạn b&egrave;\",  c&ocirc; Linh n&oacute;i.</p>\r\n<p class=\"Normal\">Qua nhiều năm l&agrave;m chuy&ecirc;n vi&ecirc;n tư vấn t&acirc;m l&yacute;, Mỹ Linh  nh&igrave;n nhận, việc tư vấn học đường cho học sinh, nhất l&agrave; bậc tiểu học l&agrave;  cần thiết. Bởi, đ&acirc;y l&agrave; giai đoạn c&aacute;c em c&ograve;n chịu nghe lời người lớn, dễ  được uốn nắn v&agrave; định hướng từ đầu.</p>', 1, '0000-00-00', 1, 0),
(4, 9, '4.jpg', 'Nan giải bài toán di dời trường đại học ra ngoại thành ', 'Thiếu đất, giải phóng mặt bằng chậm trễ, không đủ tiền để xây dựng cơ sở mới... là hàng loạt khó khăn của các trường đại học trong việc thực hiện kế hoạch di dời ra ngoại thành.', '<h2 class=\"Lead\">Thiếu đất, giải ph&oacute;ng mặt bằng chậm trễ, kh&ocirc;ng đủ tiền  để x&acirc;y dựng cơ sở mới... l&agrave; h&agrave;ng loạt kh&oacute; khăn của c&aacute;c trường đại học  trong việc thực hiện kế hoạch di dời ra ngoại th&agrave;nh.</h2>\r\n<p class=\"Normal\">Trong hội nghị về việc x&acirc;y hệ thống trường ĐH, CĐ diễn  ra ở TP HCM ng&agrave;y 1/12, đại diện c&aacute;c trường, l&atilde;nh đạo c&aacute;c bộ ng&agrave;nh li&ecirc;n  quan c&oacute; dịp mổ xẻ kh&oacute; khăn v&agrave; t&igrave;m c&aacute;ch giải quyết.</p>\r\n<p class=\"Normal\">Theo Đề &aacute;n quy hoạch mạng lưới c&aacute;c trường ĐH, CĐ giai  đoạn 2006 - 2020, Nh&agrave; nước sẽ hỗ trợ c&aacute;c trường về đất đai. Dự &aacute;n n&agrave;y đ&atilde;  được <span style=\"color: #3f3f3f;\"><strong>Ch&iacute;nh phủ ph&ecirc; duyệt c&aacute;ch đ&acirc;y 4 năm, tuy nhi&ecirc;n cho đến nay vẫn chưa hề c&oacute; chuyển biến</strong></span>.  Theo kế hoạch, diện t&iacute;ch tối thiểu cho c&aacute;c trường ĐH c&oacute; quy m&ocirc; 5.000  sinh vi&ecirc;n l&agrave; 10 ha. Những trường c&oacute; khoảng 15.000-25.000 sinh vi&ecirc;n th&igrave;  diện t&iacute;ch tối thiểu phải l&agrave; từ 30 đến 40 ha.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/3A/FA/di-doi-dai-hoc-4.jpg\" border=\"1\" alt=\"Voi tốc độ ph&aacute;t triển về quy m&ocirc; như hiện nay, điều kiện cơ sở vật chất c&aacute;c trường hiện n&agrave;y kh&oacute; đ&aacute;p ứng được nhu cầu\" width=\"480\" height=\"383\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Việc di dời c&aacute;c trường đại học ra ngoại th&agrave;nh sẽ g&oacute;p phần l&agrave;m giảm t&igrave;nh trạng &aacute;ch tắc giao th&ocirc;ng trong nội th&agrave;nh. Ảnh: <em>Hải Duy&ecirc;n.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Ph&aacute;t biểu trong hội nghị, Hiệu trưởng ĐH Văn hiến  Nguyễn Mạnh H&ugrave;ng n&ecirc;u ra thực tế, trong thời gian qua c&aacute;c trường c&ocirc;ng  lập, cũng như d&acirc;n lập đều rơi v&agrave;o t&igrave;nh trạng thiếu cơ sở n&ecirc;n phải thu&ecirc;  mướn tới 3, 4 địa điểm trong th&agrave;nh phố. C&oacute; những trường phải t&igrave;m đất đai  ở B&igrave;nh Dương, Long An... Việc quy hoạch mạng lưới c&aacute;c trường phải dựa  v&agrave;o quy m&ocirc;, khả năng t&agrave;i ch&iacute;nh cũng như nhu cầu về đất đai của từng  trường. Nếu để c&aacute;c trường tự quy hoạch một c&aacute;ch manh m&uacute;n th&igrave; việc di dời  rất kh&oacute; khăn.</p>\r\n<p class=\"Normal\">Từ năm 2007, trường Văn hiến được cấp một l&ocirc; đất rất  đẹp 5,6 ha gần đại lộ Nguyễn Văn Linh, quận 7, TP HCM. Nhưng đến giờ,  việc giải tỏa vẫn chưa ho&agrave;n th&agrave;nh bởi gi&aacute; đền b&ugrave; tăng l&ecirc;n ch&oacute;ng mặt. C&oacute;  những l&ocirc; đất phải tăng gi&aacute; đền b&ugrave; từ 1,6 triệu l&ecirc;n 10-12 triệu một m2.</p>\r\n<p class=\"Normal\">\"Trường học l&agrave; một đơn vị gi&aacute;o dục, kh&ocirc;ng thể chấp  nhận chi số tiền đền b&ugrave; với gi&aacute; của một đơn vị kinh doanh. Trong khi Nh&agrave;  nước c&oacute; văn bản chỉ đạo phải l&agrave;m cho được, phải c&oacute; đất trắng cho trường  đầu tư\", &ocirc;ng H&ugrave;ng bức x&uacute;c.</p>\r\n<p class=\"Normal\">Đồng t&igrave;nh với những kh&oacute; khăn trong việc đất đai để x&acirc;y  dựng trường mới, Cục trưởng Cục cơ sở vật chất v&agrave; thiết bị trường học  (Bộ GD&amp;ĐT) Trần Duy Tạo cho rằng: \"Bộ sẽ tham mưu cho Ch&iacute;nh phủ t&igrave;m  nguồn t&agrave;i ch&iacute;nh để giải quyết c&aacute;c vấn đề giải ph&oacute;ng mặt bằng. V&igrave; nếu  Ch&iacute;nh phủ kh&ocirc;ng giao đất sạch m&agrave; để cho c&aacute;c trường tự quy hoạch th&igrave; bản  th&acirc;n nội lực c&aacute;c trường cũng kh&ocirc;ng l&agrave;m được\".</p>\r\n<p class=\"Normal\"><strong><span style=\"color: #2f2f2f;\">Một vấn đề kh&aacute;c được đại biểu đặt ra l&agrave; khi c&oacute; được đất rồi, kiếm đ&acirc;u ra tiền để đầu tư x&acirc;y dựng.</span></strong></p>\r\n<p class=\"Normal\">Cục trưởng Trần Duy Tạo đưa ra v&iacute; dụ: ĐH Sư phạm thể  dục thể thao TP HCM được Bộ Gi&aacute;o dục v&agrave; Bộ T&agrave;i ch&iacute;nh đồng &yacute; cho chuyển  nhượng khu đất ở trung t&acirc;m quận 5 bằng c&aacute;ch đấu gi&aacute; v&agrave; di dời sang quận  9. Nhưng 3 năm nay việc đấu gi&aacute; vẫn chưa được thực hiện v&igrave; kh&ocirc;ng đạt  được gi&aacute; như mong muốn. Kh&ocirc;ng b&aacute;n được đất ở quận 5 th&igrave; kh&ocirc;ng c&oacute; tiền để  x&acirc;y dựng cơ sở mới ở quận 9.</p>\r\n<p class=\"Normal\">Tương tự ĐH Ng&acirc;n h&agrave;ng TP HCM d&ugrave; đ&atilde; được cấp đất nhưng  vẫn chưa tiến h&agrave;nh x&acirc;y dựng v&igrave; chưa thống nhất được thủ tục, v&agrave; nguồn  kinh ph&iacute;.</p>\r\n<p class=\"Normal\">Trong khi đ&oacute;, nhiều trường muốn vay vốn để x&acirc;y dựng  nhưng kh&ocirc;ng được ph&eacute;p vay v&igrave; l&agrave; trường c&ocirc;ng. Theo &ocirc;ng Tạo, c&aacute;ch giải  quyết vần đề n&agrave;y l&agrave; để cho c&aacute;c trường tự chủ về t&agrave;i ch&iacute;nh, được ph&eacute;p vay  dưới nhiều h&igrave;nh thức như: vay k&iacute;ch cầu, hoặc từ nguồn vốn ODA.</p>\r\n<p class=\"Normal\">Thứ trưởng Bộ Gi&aacute;o dục B&ugrave;i Văn Ga khẳng định: \"Bộ sẽ  thống nhất &yacute; kiến v&agrave; tr&igrave;nh Ch&iacute;nh phủ. C&aacute;c trường tự đứng ra quy hoạch  th&igrave; rất kh&oacute;, nếu kh&ocirc;ng muốn n&oacute;i l&agrave; kh&ocirc;ng l&agrave;m được. Do vậy, phương &aacute;n  giao đất sạch cho trường l&agrave; việc m&agrave; nh&agrave; nước phải l&agrave;m\". &Yacute; kiến của &ocirc;ng  được hầu hết c&aacute;c đại biểu đồng t&igrave;nh.</p>\r\n<p class=\"Normal\">Thứ trưởng n&oacute;i th&ecirc;m, nếu vấn đề n&agrave;y kh&ocirc;ng l&agrave;m b&acirc;y giờ  th&igrave; với tốc độ ph&aacute;t triển sinh vi&ecirc;n như hiện nay, trong v&agrave;i năm nữa, cơ  sở vật chất c&aacute;c trường kh&oacute; đ&aacute;p ứng được c&ocirc;ng t&aacute;c đ&agrave;o tạo.</p>\r\n<p class=\"Normal\">\"Bộ đang xem x&eacute;t về khả năng cho c&aacute;c trường đi vay vốn  ng&acirc;n h&agrave;ng để đầu tư. Đ&acirc;y được xem l&agrave; một trong những giải ph&aacute;p căn cơ  về vấn đề thiếu kinh ph&iacute; tại c&aacute;c trường hiện nay&rdquo;, &ocirc;ng Ga đưa ra phương  hướng giải quyết.</p>\r\n<p class=\"Normal\"><strong>Hải Duy&ecirc;n</strong></p>', 1, '0000-00-00', 1, 0),
(5, 9, '5.jpg', '1,5 tỷ đồng ươm mầm tài năng trẻ ', 'Năm học 2010-2011 sẽ có 1.000 học bổng trị giá một triệu đồng mỗi suất được trao cho 1.000 học sinh xuất sắc trên cả nước.', '<p class=\"Normal\">Học sinh được nhận học bổng l&agrave; những em học lực giỏi,  đạt giải trong c&aacute;c kỳ thi cấp tỉnh, th&agrave;nh phố hoặc học sinh ngh&egrave;o,  khuyết tật, vượt kh&oacute; đạt th&agrave;nh t&iacute;ch cao trong c&aacute;c lĩnh vực văn - thể -  mỹ. Phần thưởng n&agrave;y nằm trong quỹ học bổng ươm mầm t&agrave;i năng trẻ của  Vinamilk.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/3A/4A/hoc_bong_vinamilk_%28tren_trang%29.jpg\" alt=\"\" width=\"480\" height=\"350\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Một ngh&igrave;n học sinh sẽ được nhận học bổng ươm mầm t&agrave;i năng trẻ trong năm học 2010-2011. <em>Ảnh: Ho&agrave;ng Th&ugrave;y.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Ngo&agrave;i ra, học sinh tiểu học c&ograve;n được tham gia cuộc thi  ươm mầm t&agrave;i năng Việt với nội dung gồm: To&aacute;n v&agrave; khoa học tự nhi&ecirc;n,  tiếng Anh, h&ugrave;ng biện, vẽ v&agrave; năng khiếu. 50 học sinh v&agrave;o v&ograve;ng chung kết  sẽ nhận được học bổng t&agrave;i năng với mỗi suất trị gi&aacute; 5 triệu đồng.</p>\r\n<p class=\"Normal\">Trong khu&ocirc;n khổ của quỹ học bổng, 250 triệu đồng sẽ được d&agrave;nh để x&acirc;y dựng 5 thư viện tại 5 tỉnh th&agrave;nh.</p>\r\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"3\" width=\"100%\" bgcolor=\"#dfffdf\">\r\n<tbody>\r\n<tr>\r\n<td class=\"Normal\">Quỹ học bổng <strong>&ldquo;</strong>Vinamilk - Ươm mầm t&agrave;i năng trẻ Việt Nam<strong>&rdquo;</strong> l&agrave; chương tr&igrave;nh thường ni&ecirc;n được Bộ GD&amp;ĐT c&ugrave;ng c&ocirc;ng ty Vinamilk  phối hợp tổ chức. Đ&acirc;y l&agrave; năm thứ 8 li&ecirc;n tiếp quỹ d&agrave;nh sự quan t&acirc;m đặc  biệt cho học sinh tiểu học tr&ecirc;n to&agrave;n quốc. T&iacute;nh đến năm học 2010-2011,  tổng số tiền Vinamilk t&agrave;i trợ cho quỹ học bổng l&agrave; gần 16 tỷ đồng.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\"><strong>Ho&agrave;ng Th&ugrave;y</strong></p>', 1, '0000-00-00', 1, 0),
(6, 9, '6.jpg', 'U60 đi học vỡ lòng', 'Bên phá Tam Giang (Thừa Thiên - Huế) có lớp học mà người lớn nhất năm nay 56 tuổi, người ít nhất đã 24. Đêm đêm họ lênh đênh trên phá mưu sinh, khi bình minh hé rạng lại tất tưởi đến lớp.', '<p class=\"Normal\">Lớp  b&igrave;nh d&acirc;n học vụ ở th&ocirc;n Ngư Mỹ Thạnh, x&atilde; Quảng Lợi (Quảng Điền, Thừa  Thi&ecirc;n Huế) do Trung t&acirc;m Gi&aacute;o dục thường xuy&ecirc;n huyện Quảng Điền phối hợp  với dự &aacute;n Ph&aacute;t triển cộng đồng RLS tổ chức. Lớp được mở từ 4 năm nay  nhằm x&oacute;a m&ugrave; chữ cho người d&acirc;n v&ugrave;ng đầm ph&aacute;, gi&uacute;p họ ổn định cuộc sống  bằng ch&iacute;nh việc học.</p>\r\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"3\" width=\"330\" align=\"center\" bgcolor=\"#eaeaff\">\r\n<tbody>\r\n<tr>\r\n<td class=\"Normal\"><strong><br /><a href=\"http://vnexpress.net/GL/Xa-hoi/Giao-duc/2010/11/3BA238D0/page_1.asp\"></a></strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Như th&agrave;nh lệ, bắt đầu tiết học, ph&iacute;a dưới lớp lại x&igrave;  x&agrave;o chuyện ngo&agrave;i ph&aacute;, n&agrave;o l&agrave; đ&ecirc;m qua nh&agrave; b&agrave; H&agrave; thả lừ được mấy k&yacute; t&ocirc;m,  nh&agrave; &ocirc;ng Năm mới sắm ghe mới, thằng cả nh&agrave; &ocirc;ng Thắng đi học đại học chưa&hellip;  Khi thầy gi&aacute;o g&otilde; nhẹ l&ecirc;n bảng, những c&acirc;u chuyện thường ng&agrave;y mới tạm  dừng, tiếng &ecirc; a học b&agrave;i cất l&ecirc;n. Thầy đọc trước, tr&ograve; đ&aacute;nh vần theo&hellip;</p>\r\n<p class=\"Normal\"><span style=\"color: #000000;\">Ở lớp học n&agrave;y, thầy chỉ đọc mỗi  lần 2 từ, tr&ograve; ch&eacute;p xong thầy mới đọc tiếp 2 từ. C&oacute; khi cả buổi s&aacute;ng lớp  chỉ ch&eacute;p được một b&agrave;i tập đọc. Nhiều người do lớn tuổi, mắt k&eacute;m, đọc chữ  trong s&aacute;ch gi&aacute;o khoa nhỏ qu&aacute; n&ecirc;n đ&agrave;nh chịu, thầy viết tr&ecirc;n bảng được  chữ n&agrave;o biết chữ đấy. Một số người lặn lội l&ecirc;n th&agrave;nh phố cắt được cặp  k&iacute;nh, về lớp mấy người thay nhau mượn đeo để ch&eacute;p b&agrave;i. Bởi k&iacute;nh ai cũng  cần nhưng kh&ocirc;ng phải nh&agrave; n&agrave;o cũng c&oacute; điều kiện mua.</span></p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/38/D0/anh_2a.jpg\" alt=\"\" width=\"495\" height=\"352\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Thầy Hồ Quang Ch&iacute;nh đ&atilde; 21 năm dạy x&oacute;a m&ugrave; chữ. Lớp của  thầy ở th&ocirc;n Ngư Mỹ Thạnh được đ&aacute;nh gi&aacute; l&agrave; th&agrave;nh c&ocirc;ng nhất trong huyện.  Ảnh: <em>Văn Nguyễn.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Thầy Hồ Quang Ch&iacute;nh, người trực tiếp đứng lớp cho biết, do học tr&ograve; đều lớn tuổi n&ecirc;n việc cư xử phải rất tế nhị. <span style=\"color: #000000;\">&ldquo;Kh&oacute;  lắm mới vận động được người d&acirc;n đến học, gọi l&agrave; tr&ograve;, nhưng đều ngang,  hơn tuổi m&igrave;nh, n&oacute;i nặng lời l&agrave; họ tự &aacute;i bỏ về&rdquo;, thầy Ch&iacute;nh kể.</span></p>\r\n<p class=\"Normal\"><span style=\"color: #000000;\">Ng&agrave;y </span><span style=\"color: #000000;\">trước  chưa c&oacute; ph&ograve;ng, phải học nhờ nh&agrave; d&acirc;n, thấy phiền n&ecirc;n lớp chỉ l&egrave;o t&egrave;o mấy  người. Giờ lớp học l&agrave; ng&ocirc;i nh&agrave; cộng đồng th&ocirc;n khang trang nằm ngay b&ecirc;n  ph&aacute; với hơn chục bộ b&agrave;n k&ecirc; ngay ngắn. Được thầy Ch&iacute;nh c&ugrave;ng trưởng th&ocirc;n  đến từng nh&agrave; vận động, số người đi học đ&atilde; tăng l&ecirc;n v&agrave; đến nay bất kể mưa  nắng, sĩ số &ldquo;cứng&rdquo; của lớp l&agrave; 40.</span></p>\r\n<p class=\"Normal\">40 học tr&ograve; của thầy Ch&iacute;nh đều c&oacute; ho&agrave;n cảnh kh&oacute; khăn. A<span style=\"color: #000000;\">nh  Trần Đợt, 22 tuổi, th&iacute;ch đi học n&ecirc;n nghỉ hẳn nghề thả lưới. Học được  hơn một th&aacute;ng, ba bị ung thư phổi rồi qua đời, anh Đợt phải bỏ học để ra  ph&aacute; kiếm tiền nu&ocirc;i mẹ gi&agrave; v&agrave; ba em ăn học. &ldquo;Khi n&agrave;o kinh tế gia đ&igrave;nh đỡ  chật vật, em sẽ đến lớp học tiếp. Thời buổi n&agrave;y m&agrave; kh&ocirc;ng biết chữ, kh&oacute;  sống lắm&rdquo;, anh Đợt n&oacute;i. </span><span style=\"color: #000000;\">Anh Đợt từng đi TP  HCM l&agrave;m thu&ecirc;, đến khi c&oacute; người quen xin v&agrave;o c&ocirc;ng ty để ổn định thu nhập  th&igrave; Đợt lại kh&ocirc;ng biết chữ, đ&agrave;nh quay về.</span></p>\r\n<p class=\"Normal\"><span style=\"color: #000000;\">Sau mỗi buổi học tr&ecirc;n lớp, về  nh&agrave; anh Trần Ho&agrave;ng v&agrave; chị La Thị Lai lại mang s&aacute;ch, vở ra nhờ con g&aacute;i  Trần Thị Liễu (lớp 8, trường THCS Quảng Lợi) dạy th&ecirc;m. Nhờ đ&oacute; m&agrave; anh chị  nhận diện mặt chữ, t&iacute;nh to&aacute;n nhanh hơn những người học c&ugrave;ng lớp. Anh  Ho&agrave;ng kể, t</span><span style=\"color: #000000;\">rước đ&acirc;y gia đ&igrave;nh sống tr&ecirc;n nh&agrave;  dựng tạm bợ tr&ecirc;n ph&aacute;, kh&ocirc;ng được học chữ. H&ocirc;m đi l&agrave;m giấy đăng k&yacute; kết  h&ocirc;n, c&aacute;n bộ x&atilde; phải lăn dấu v&acirc;n tay của hai vợ chồng thay cho chữ k&yacute;.</span></p>\r\n<p class=\"Normal\"><span style=\"color: #000000;\">&Ocirc;ng Ho&agrave;ng Phong, 56 tuổi, l&agrave; một  trong những người cao tuổi nhất lớp học. Ng&agrave;y mới đến lớp, &ocirc;ng phải nhờ  thầy gi&aacute;o cầm tay tập viết bằng b&uacute;t ch&igrave;, đến khi quen n&eacute;t chữ mới  chuyển sang b&uacute;t bi. &Ocirc;ng Phong cười bảo: &ldquo;Tay m&igrave;nh quen cầm mảnh lưới,  m&aacute;i ch&egrave;o, giờ cầm c&acirc;y viết thấy ngường ngượng n&ecirc;n phải tập viết cho  quen&rdquo;.</span></p>\r\n<p class=\"Normal\"><span style=\"color: #000000;\">Hai vợ chồng Phong l&agrave; d&acirc;n thủy  diện, kh&ocirc;ng biết chữ. Đến khi c&oacute; dự &aacute;n di d&acirc;n l&ecirc;n bờ, &ocirc;ng đều lo cho con  c&aacute;i đi học. Khi c&aacute;c con c&oacute; gia đ&igrave;nh v&agrave; dọn ra ri&ecirc;ng, &ocirc;ng b&agrave; thay phi&ecirc;n  nhau đi học. Kh&oacute;a học trước, b&agrave; Nguyễn Thị G&aacute;i, vợ &ocirc;ng đi học v&agrave; nay đ&atilde;  đọc th&ocirc;ng, viết thạo. Kh&oacute;a học n&agrave;y &ocirc;ng động vi&ecirc;n b&agrave; ở nh&agrave; chăm đ&agrave;n lợn  để &ocirc;ng đến lớp quyết t&acirc;m học chữ cho bằng mọi người trong th&ocirc;n v&agrave; cho  bằng&hellip; b&agrave;.</span></p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/38/D0/anh_7a.jpg\" alt=\"\" width=\"336\" height=\"450\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Lớp 40 người, nhưng chỉ c&oacute; cặp k&iacute;nh duy nhất n&ecirc;n c&aacute;c học tr&ograve; lớn tuổi phải chuyền tay nhau để đọc. Ảnh: <em>Văn Nguyễn.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\"><span style=\"color: #000000;\">Vợ chồng anh Trần Đường v&agrave; chị  Trần Thị B dẫn nhau đi học với hy vọng tho&aacute;t ngh&egrave;o. Anh Đường bảo gần 40  năm sống nhờ con t&ocirc;m, con c&aacute; tr&ecirc;n ph&aacute;, nhưng mấy năm trở lại đ&acirc;y, t&ocirc;m  c&aacute; &iacute;t dần do người d&acirc;n khai th&aacute;c ồ ạt n&ecirc;n anh chị quyết đi học, biết đọc  chữ để mua s&aacute;ch nu&ocirc;i g&agrave; về đọc, dự định ph&aacute;t triển kinh tế trang trại.  Học được gần hai th&aacute;ng, anh chị đ&atilde; đọc được s&aacute;ch, vui như &ldquo;mở cờ trong  bụng!&rdquo;.</span></p>\r\n<p class=\"Normal\"><span style=\"color: #000000;\">&Ocirc;ng Trần Văn Minh, Trưởng th&ocirc;n  Ngư Mỹ Thạnh, cho biết to&agrave;n th&ocirc;n c&oacute; 186 hộ th&igrave; tới 28 hộ ngh&egrave;o, số người  kh&ocirc;ng biết chữ chiếm gần 40%. &ldquo;Kh&ocirc;ng biết chữ n&ecirc;n người d&acirc;n chỉ biết  gắn m&igrave;nh với con ph&aacute; theo m&ugrave;a ngọt, lợ bấp b&ecirc;nh. Hơn 4 năm nay, c&aacute;c lớp  x&oacute;a m&ugrave; chữ li&ecirc;n tục được mở ra, người d&acirc;n trong th&ocirc;n cũng biết &iacute;t chữ  nghĩa để l&agrave;m ăn v&agrave; đặc biệt l&agrave; c&oacute; &yacute; thức kh&ocirc;ng xả r&aacute;c bừa b&atilde;i, kh&ocirc;ng  đ&aacute;nh bắt thủy sản qu&aacute; nhỏ theo hướng tuyệt chủng\", &ocirc;ng Minh n&oacute;i.</span></p>\r\n<p class=\"Normal\"><span style=\"color: #000000;\">Gi&aacute;m đốc Trung t&acirc;m Gi&aacute;o dục thường xuy&ecirc;n huyện Quảng Điền, &ocirc;ng <span style=\"color: #000000;\">Phan Dũ, </span>đ&aacute;nh  gi&aacute; lớp học x&oacute;a m&ugrave; chữ cho người d&acirc;n ven ph&aacute; Tam Giang tại th&ocirc;n Ngư Mỹ  Thạnh l&agrave; lớp học th&agrave;nh c&ocirc;ng nhất của trung t&acirc;m bởi sĩ số ổn định v&agrave; tinh  thần học tập nghi&ecirc;m t&uacute;c. Kh&aacute;c với c&aacute;c lớp học trước đ&oacute; ở một số x&atilde;  người d&acirc;n đi học rời rạc, cầm chừng.</span></p>\r\n<p class=\"Normal\"><span style=\"color: #000000;\">&ldquo;Từ th&agrave;nh c&ocirc;ng của lớp, ch&uacute;ng  t&ocirc;i vừa cho khai giảng th&ecirc;m 4 lớp x&oacute;a m&ugrave; chữ cho người d&acirc;n tại c&aacute;c x&atilde;  Quảng Phước, Quảng Ngạn, Quảng Th&aacute;i v&agrave; Quảng Th&aacute;i. Sau khi người d&acirc;n  biết chữ, trung t&acirc;m sẽ tổ chức c&aacute;c chuy&ecirc;n đề để n&acirc;ng cao kiến thức, lo  sinh kế cho người d&acirc;n, đồng thời mở th&ecirc;m c&aacute;c lớp tập huấn kiến thức nu&ocirc;i  trồng thủy sản k&egrave;m với việc x&oacute;a m&ugrave; chữ cho người d&acirc;n v&ugrave;ng đầm ph&aacute;&rdquo;, &ocirc;ng  Dũ n&oacute;i.</span></p>\r\n<p class=\"Normal\"><span style=\"color: #000000;\"><strong>Văn Nguyễn</strong></span></p>\r\n<p id=\"pShow\" style=\"display: block;\"><a class=\"SForm\"><img style=\"cursor: pointer;\" src=\"http://vnexpress.net/Images/Y-kien-cua-ban.gif\" border=\"0\" alt=\"&Yacute; kiến của bạn\" /></a></p>', 1, '0000-00-00', 1, 0),
(7, 9, '7.jpg', 'Chúc mừng Đại tướng Võ Nguyên Giáp nhân ngày nhà giáo ', 'Phó thủ tướng Nguyễn Thiện Nhân kính chúc Đại tướng Võ Nguyên Giáp mạnh khỏe, trường thọ, tiếp tục có những đóng góp cho sự nghiệp xây dựng và bảo vệ tổ quốc. ', '<p class=\"Normal\">S&aacute;ng 16/11, Ph&oacute; thủ tướng Nguyễn Thiện  Nh&acirc;n c&ugrave;ng Bộ trưởng GD&amp;ĐT Phạm Vũ Luận đ&atilde; đến thăm v&agrave; ch&uacute;c mừng Đại  tướng V&otilde; Nguy&ecirc;n Gi&aacute;p, người thầy mẫu mực của nhiều thế hệ c&aacute;n bộ, chiến  sĩ qu&acirc;n đội Nh&acirc;n d&acirc;n Việt Nam nh&acirc;n Ng&agrave;y Nh&agrave; gi&aacute;o Việt Nam (20/11).</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/30/BA/Vo-Nguyen-Giap.jpg\" alt=\"Ảnh:\" width=\"450\" height=\"338\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Chủ tịch nước trao tặng huy hiệu cho Đại tướng V&otilde; Nguy&ecirc;n Gi&aacute;p. Ảnh: <em>TTXVN.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Thay mặt hơn một triệu thầy gi&aacute;o, c&ocirc; gi&aacute;o  v&agrave; h&agrave;ng chục triệu học sinh, sinh vi&ecirc;n cả nước, Ph&oacute; thủ tướng Nguyễn  Thiện Nh&acirc;n v&agrave; Bộ trưởng Phạm Vũ Luận gửi tới Đại tướng lời ch&uacute;c sức  khỏe, niềm k&iacute;nh trọng v&agrave; l&ograve;ng biết ơn s&acirc;u sắc.</p>\r\n<p class=\"Normal\">Ph&oacute; Thủ tướng n&oacute;i đại tướng V&otilde; Nguy&ecirc;n  Gi&aacute;p m&atilde;i m&atilde;i l&agrave; người thầy mẫu mực của nhiều thế hệ c&aacute;n bộ, chiến sĩ; l&agrave;  tấm gương s&aacute;ng để nhiều thế hệ người Việt Nam học tập, noi theo.</p>\r\n<p class=\"Normal\">Năm 1939, đại tướng V&otilde; Nguy&ecirc;n Gi&aacute;p từng l&agrave; gi&aacute;o vi&ecirc;n dạy m&ocirc;n Lịch sử ở trường tư thục Thăng Long, H&agrave; Nội.</p>', 1, '0000-00-00', 1, 0),
(8, 9, '8.jpg', '50 cơ hội trở thành \'Hạt giống lãnh đạo IPL\' ', '50 bạn trẻ ưu tú sẽ được tuyển chọn để tham gia chương trình “Hạt giống Lãnh đạo IPL” - mô hình phát hiện và phát triển nhân tài do gần 30 trí thức, doanh nhân cùng sáng lập và triển khai.', '<p class=\"Normal\">Đ&acirc;y l&agrave; m&ugrave;a tuyển sinh thứ hai của IPL trong lĩnh vực  ph&aacute;t triển c&aacute;c thế hệ l&atilde;nh đạo doanh nghiệp. Tối đa 50 &ldquo;hạt giống&rdquo; sẽ  được s&agrave;ng lọc, tuyển lựa th&ocirc;ng qua 5 v&ograve;ng thi tuyển gồm: đ&aacute;nh gi&aacute; hồ sơ,  l&agrave;m b&agrave;i thi viết, l&agrave;m b&agrave;i luận, thể hiện bản th&acirc;n v&agrave; phỏng vấn trực  tiếp.</p>\r\n<p class=\"Normal\">Tiếp đ&oacute;, c&aacute;c &ldquo;hạt giống l&atilde;nh đạo&rdquo; sẽ trải qua quy  tr&igrave;nh đ&agrave;o tạo 9 th&aacute;ng học tập li&ecirc;n tục tại trường. Trong đ&oacute;, những m&ocirc;n  học ch&iacute;nh trong chương tr&igrave;nh sẽ được giảng dạy trực tiếp bởi c&aacute;c gi&aacute;o sư  đến từ đại học Harvard, MIT, Stanford&hellip;. Ngo&agrave;i ra, học vi&ecirc;n c&ograve;n được đối  thoại trực tiếp với c&aacute;c nh&acirc;n vật dẫn đầu của Việt Nam v&agrave; thế giới trong  nhiều lĩnh vực th&ocirc;ng qua chương tr&igrave;nh IPL TopTalks. Cuối c&ugrave;ng, bạn c&oacute; 5  năm tự trải nghiệm về quản l&yacute;, l&atilde;nh đạo tại c&aacute;c doanh nghiệp, tập đo&agrave;n  để kết th&uacute;c chương tr&igrave;nh.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/30/56/400x300.jpg\" border=\"1\" alt=\"Học vi&ecirc;n IPL trong chương tr&igrave;nh Top Talk - Một số n&eacute;t đặc sắc trong &acirc;m nhạc truyền thống với diễn giả l&agrave; GS. Trần Văn Kh&ecirc;.\" width=\"400\" height=\"300\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Học vi&ecirc;n IPL trong chương tr&igrave;nh Top Talk - Một số n&eacute;t đặc sắc trong &acirc;m nhạc truyền thống với diễn giả l&agrave; GS. Trần Văn Kh&ecirc;.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Đại diện đơn vị điều h&agrave;nh chương tr&igrave;nh IPL, trường  Doanh nh&acirc;n PACE, cho biết những ứng vi&ecirc;n tr&uacute;ng tuyển IPL sẽ được hưởng  một cơ chế hỗ trợ t&agrave;i ch&iacute;nh đặc biệt, v&ocirc; điều kiện. Ứng vi&ecirc;n t&agrave;i năng  đều c&oacute; cơ hội tham gia v&agrave;o IPL, kể cả những bạn kh&oacute; khăn hoặc kh&ocirc;ng c&oacute;  điều kiện t&agrave;i ch&iacute;nh.</p>\r\n<p class=\"Normal\">Ra đời năm 2007, IPL l&agrave; một dự &aacute;n gi&aacute;o dục phi lợi  nhận với sự tham gia của nhiều doanh nh&acirc;n v&agrave; tr&iacute; thức như:  Gi&aacute;o sư Trần  Văn Thọ, TS L&ecirc; Đăng Doanh, TS Nguyễn Sỹ Dũng, V&otilde; Quốc Thắng (Đồng T&acirc;m),  Đặng L&ecirc; Nguy&ecirc;n Vũ (Trung Nguy&ecirc;n), Đặng Văn Th&agrave;nh (Sacombank), Th&aacute;i Tuấn  Ch&iacute; (Th&aacute;i Tuấn), Nguyễn Mạnh H&ugrave;ng (Viettel), L&yacute; Qu&yacute; Trung (Phở 24)...  c&ugrave;ng trường Doanh nh&acirc;n PACE.</p>\r\n<p class=\"Normal\">Mục ti&ecirc;u của dự &aacute;n l&agrave; tuyển chọn v&agrave; quy tụ những người  trẻ ưu t&uacute;, c&oacute; kh&aacute;t vọng v&agrave; tố chất l&atilde;nh đạo sau đ&oacute; triển khai, đ&agrave;o tạo  những &ldquo;hạt giống&rdquo; bằng c&aacute;c chương tr&igrave;nh đ&agrave;o tạo đặc biệt tr&ecirc;n nhiều  phương diện, nhằm g&oacute;p phần ph&aacute;t triển họ th&agrave;nh l&atilde;nh đạo t&agrave;i năng.</p>\r\n<p class=\"Normal\">Hiện 35 học vi&ecirc;n kh&oacute;a IPL1 đ&atilde; ho&agrave;n th&agrave;nh chương tr&igrave;nh  học tập v&agrave; bắt đầu qu&aacute; tr&igrave;nh tự trải nghiệm. Trong 5 năm trải nghiệm tại  doanh nghiệp, họ sẽ &aacute;p dụng, ph&aacute;t triển th&ecirc;m những kiến thức về quản l&yacute;  v&agrave; l&atilde;nh đạo đ&atilde; được học v&agrave;o thực tế. Trong thời gian n&agrave;y, trung b&igrave;nh  mỗi qu&yacute; một lần, học vi&ecirc;n sẽ về trường, trao đổi, chia sẻ hay đối thoại  với giảng vi&ecirc;n, người hướng dẫn, c&aacute;c diễn giả về những chủ đề m&igrave;nh quan  t&acirc;m hoặc vấn đề gặp phải.</p>\r\n<p class=\"Normal\">IPL sẽ nhận hồ sơ dự tuyển cho kh&oacute;a 2 đến hết ng&agrave;y 30/11. Bạn c&oacute; thể t&igrave;m hiểu th&ecirc;m về IPL qua <a class=\"Normal\" href=\"http://www.ipl.edu.vn/\">http://www.ipl.edu.vn/</a></p>', 1, '0000-00-00', 1, 0),
(9, 13, '9.jpg', 'Mỹ - Nhật tập trận trên bộ', 'Nhật Bản và Mỹ tiến hành một cuộc diễn tập trên bộ lớn ở miền nam Nhật Bản hôm qua. Đây là một phần trong cuộc tập trận khổng lồ chung giữa hai nước diễn ra tại nhiều nơi ở Nhật.', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/3E/FA/drill2.jpg\" border=\"1\" alt=\"\" width=\"460\" height=\"292\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">C&aacute;c binh l&iacute;nh Mỹ khi&ecirc;ng c&aacute;ng trở đồng đội bị thương giả định l&ecirc;n xe. Ảnh: <em>Xinhua</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Cuộc huấn luyện tr&ecirc;n bộ mang t&ecirc;n \"Forest Light\" bao  gồm 550 l&iacute;nh thuộc Lực lượng tự vệ mặt đất Nhật Bản (GSDF) v&agrave; 215 l&iacute;nh  hải qu&acirc;n v&agrave; thủy thủ từ Đơn vị Viễn chinh hải qu&acirc;n số 31 (MEU) của Mỹ.  Cuộc diễn tập n&agrave;y sẽ k&eacute;o d&agrave;i đến ng&agrave;y 15/12.</p>\r\n<p class=\"Normal\">C&aacute;c sự kiện tập huấn ch&iacute;nh bao gồm tấn c&ocirc;ng trực thăng  tay đ&ocirc;i, leo d&acirc;y từ trực thăng, di chuyển bằng động cơ để li&ecirc;n lạc, bắn  tỉa, th&ocirc;ng tin li&ecirc;n lạc v&agrave; sơ cứu v&agrave; nhiều hoạt động kh&aacute;c.</p>\r\n<p class=\"Normal\">Sau lễ khai mạc, hai b&ecirc;n lực lượng thực hiện hoạt động  sơ cứu khẩn cấp v&agrave;o buổi chiều, trong khi đ&oacute; l&iacute;nh hải qu&acirc;n Mỹ chia sẻ  với lực lượng ph&ograve;ng vệ Nhật Bản về những kinh nghiệm họ thu được trong  cuộc chiến tại Iraq v&agrave; những nơi kh&aacute;c.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"60%\" align=\"center\" bgcolor=\"#ffffaa\">\r\n<tbody>\r\n<tr>\r\n<td class=\"Normal\" align=\"center\"><a class=\"Normal\" href=\"http://vnexpress.net/GL/The-gioi/Anh/2010/12/3BA23EFA/page_1.asp\">Ảnh Mỹ - Nhật diễn tập sơ cứu khẩn cấp.</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Đại &uacute;y hải qu&acirc;n Caleb Eames thuộc MEU cho biết cuộc  tập trận song phương tr&ecirc;n bộ gi&uacute;p cả Mỹ v&agrave; Nhật duy tr&igrave; được sự sẵn s&agrave;ng  v&agrave; phối hợp t&aacute;c chiến. \"Ch&uacute;ng t&ocirc;i rất coi trọng sự hợp t&aacute;c v&agrave; chiến đấu  song phương\", &ocirc;ng n&oacute;i, v&agrave; th&ecirc;m rằng Mỹ \"cũng rất tự h&agrave;o khi l&agrave; đối t&aacute;c  của Lực lượng tự vệ mặt đất Nhật Bản\".</p>\r\n<p class=\"Normal\">\"Tinh thần hợp t&aacute;c song phương rất quan trọng đối với  mọi quốc gia, từ đ&oacute; gi&uacute;p duy tr&igrave; an ninh v&agrave; an to&agrave;n trong khu vực. Luyện  tập c&agrave;ng nhiều, phối hợp song phương c&agrave;ng ăn &yacute;, th&igrave; c&aacute;c b&ecirc;n tham gia  đều sẽ rất tiến bộ\".</p>\r\n<p class=\"Normal\">Eames cho biết c&ograve;n nhiều cuộc tập trận kh&aacute;c của Nhật  Bản tại những thời điểm kh&aacute;c, v&agrave; quy m&ocirc; của cuộc tập trận chung với Mỹ  kh&ocirc;ng kh&aacute;c so với những năm trước. Tuy nhi&ecirc;n, theo c&aacute;c b&aacute;o c&aacute;o, loạt tập  trận chung của Mỹ v&agrave; Nhật Bản lần n&agrave;y, nối tiếp cuộc diễn tập giữa Mỹ  v&agrave; H&agrave;n Quốc sau cuộc ph&aacute;o k&iacute;ch giữa hai nước li&ecirc;n Triều hồi cuối th&aacute;ng  11, được coi l&agrave; lớn nhất từ trước tới nay, với sự tham gia của hơn  34.000 l&iacute;nh Nhật v&agrave; 10.000 qu&acirc;n Mỹ.</p>\r\n<p class=\"Normal\">Về mặt phương tiện, khoảng 400 m&aacute;y bay v&agrave; 50 t&agrave;u chiến  tham gia cuộc diễn tập, trong đ&oacute; c&oacute; t&agrave;u s&acirc;n bay chạy bằng năng lượng  hạt nh&acirc;n USS George Washington của Mỹ, cũng như t&agrave;u chiến Aegis thế hệ  mới của Nhật Bản. H&agrave;n Quốc cũng lần đầu ti&ecirc;n tham gia tập trận với Nhật  Bản với tư c&aacute;ch l&agrave; quan s&aacute;t vi&ecirc;n.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/3E/FA/drill1.jpg\" border=\"1\" alt=\"\" width=\"460\" height=\"288\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">L&iacute;nh Mỹ v&aacute;c tr&ecirc;n vai một đồng đội bị thương giả định  trong cuộc tập huấn sơ cứu tr&ecirc;n bộ tại Khu vực huấn luyện Kirishima ở  Miyazaki, h&ocirc;m 7/12.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/3E/FA/drill2.jpg\" border=\"1\" alt=\"\" width=\"460\" height=\"292\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">C&aacute;c binh l&iacute;nh Mỹ khi&ecirc;ng c&aacute;ng trở đồng đội bị thương giả định l&ecirc;n xe.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/3E/FA/drill3.jpg\" border=\"1\" alt=\"\" width=\"460\" height=\"297\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Cuộc diễn tập tr&ecirc;n bộ mang t&ecirc;n \"Forest Light\" l&agrave; một phần trong cuộc tập trận khổng lồ giữa Mỹ v&agrave; Nhật Bản.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/3E/FA/drill4.jpg\" border=\"1\" alt=\"\" width=\"460\" height=\"298\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">C&aacute;c binh l&iacute;nh Nhật Bản mặc thử bộ trạng phục chống nước v&agrave; c&aacute;c thiết bị sơ cứu của hải qu&acirc;n Mỹ.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/3E/FA/drill5.jpg\" border=\"1\" alt=\"\" width=\"460\" height=\"271\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">M&agrave;n sơ cứu l&iacute;nh bị thương giả định tr&ecirc;n chiến trường.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/3E/FA/drill6.jpg\" border=\"1\" alt=\"\" width=\"460\" height=\"306\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">L&iacute;nh Mỹ hối hả l&ocirc;i đồng đội bị thương v&agrave;o khu vực an to&agrave;n.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/3E/FA/drill7.jpg\" border=\"1\" alt=\"\" width=\"460\" height=\"281\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Cuộc tập trận tr&ecirc;n bộ sẽ k&eacute;o d&agrave;i đến ng&agrave;y 15/12.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, '0000-00-00', 1, 0),
(10, 19, '10.jpg', 'Chứng khoán tiếp tục thăng hoa trong phiên đầu tuần ', 'Vn-Index khiến nhiều nhà đầu tư ngỡ ngàng khi tăng hơn 12 điểm ngay trong đợt khớp lệnh mở cửa. Giao dịch khả quan, đặc biệt tại nhóm cổ phiếu tài chính, bất động sản, giúp đà đi lên của chứng khoán tiếp tục được nối dài.', '<p class=\"Normal\">Sau 2 phi&ecirc;n giao dịch mang t&iacute;nh &ldquo;hồi sinh&rdquo; hồi cuối  tuần trước, thị trường chứng kho&aacute;n tiếp tục khởi động đầy hứng khởi  trong s&aacute;ng nay. Tăng tới 12,76 điểm chỉ trong v&ograve;ng 15 ph&uacute;t mở cửa,  Vn-Index vượt ngưỡng 480 điểm một c&aacute;ch dễ d&agrave;ng với 8,3 triệu chứng kho&aacute;n  được chuyển nhượng, tương đương 193,13 tỷ đồng.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/42/42/chung-khoan-0.jpg\" alt=\"Chứng kho&aacute;n tiếp tục nối d&agrave;i chuỗi thăng hoa. Ảnh minh họa: Ho&agrave;ng H&agrave;\" width=\"490\" height=\"320\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Chứng kho&aacute;n tiếp tục nối d&agrave;i chuỗi thăng hoa. Ảnh minh họa: Ho&agrave;ng H&agrave;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Trong số hơn 8 triệu cổ phiếu được sang tay n&oacute;i tr&ecirc;n,  PXL v&agrave; STB đ&oacute;ng g&oacute;p mỗi m&atilde; một triệu chứng kho&aacute;n, OGC, EIB, REE, HPG,  SJS&hellip; cũng c&oacute; giao dịch khả quan.</p>\r\n<p class=\"Normal\">Bước sang khớp lệnh li&ecirc;n tục, c&aacute;c lệnh mua được ồ ạt  đẩy v&agrave;o thị trường, tập trung v&agrave;o c&aacute;c m&atilde; t&agrave;i ch&iacute;nh&hellip; CTG, EIB, STB, SSI  nhanh ch&oacute;ng mất hết dư b&aacute;n. Trong khi đ&oacute;, tr&ecirc;n s&agrave;n H&agrave; Nội, ACB, BVS,  KLS, VND&hellip; cũng nhanh ch&oacute;ng rơi v&agrave;o cảnh ch&aacute;y h&agrave;ng.</p>\r\n<p class=\"Normal\">T&iacute;nh đến sau 9 giờ, bảng điện tử 2 s&agrave;n ghi nhận hơn  500 m&atilde; chứng kho&aacute;n tăng gi&aacute;, trong đ&oacute; c&oacute; khoảng 300 m&atilde; tăng trần.  Vn-Index vọt l&ecirc;n gần 17 điểm tại thời điểm n&agrave;y để tiệm cận ngưỡng 490  điểm. Sau thời điểm n&agrave;y, chỉ số của s&agrave;n TP HCM c&oacute; xu hướng đi ngang cho  d&ugrave; giao dịch tr&ecirc;n thị trường vẫn diễn biến s&ocirc;i động.</p>\r\n<p class=\"Normal\">Vn-Index ch&iacute;nh thức vượt ngưỡng kh&aacute;ng cự 490 điểm  trong đợt khớp lệnh đ&oacute;ng cửa bằng việc tăng 17,16 điểm. Chỉ số n&agrave;y chốt  phi&ecirc;n ở 490,22 điểm với 81,97 triệu chứng kho&aacute;n được chuyển nhượng,  tương đương 1.905,35 tỷ đồng. Bảng điện tử HOSE ghi nhận gần 20 cổ phiếu  chuyển nhượng được tr&ecirc;n một triệu chứng kho&aacute;n. Trong đ&oacute;, PXL l&agrave; m&atilde; &ldquo;đắt  h&agrave;ng&rdquo; nhất với hơn 4 triệu cổ phiếu được sang tay.</p>\r\n<p class=\"Normal\">Tr&ecirc;n s&agrave;n H&agrave; Nội, <strong><span style=\"color: #4f4f4f;\">HNX-Index</span></strong> cũng tăng 5,37 điểm, l&ecirc;n 121,76 điểm. Khối lượng giao dịch tr&ecirc;n s&agrave;n  cũng đạt 53,15 triệu cổ phiếu, tr&aacute;i phiếu, tương đương 1.074 tỷ đồng.  Mức tăng nhẹ cũng được ghi nhận tr&ecirc;n s&agrave;n <strong><span style=\"color: #4f4f4f;\">UPCoM</span></strong> khi Index t&iacute;ch lũy th&ecirc;m 0,32 điểm, l&ecirc;n 41,75 điểm. Lượng giao dịch  trong buổi s&aacute;ng cũng tương đối khả quan với 577.200 cổ phiếu được chuyển  nhượng, tương đương 5,8 tỷ đồng.</p>\r\n<p class=\"Normal\"><strong>Nhật Minh</strong></p>', 1, '0000-00-00', 1, 0);
INSERT INTO `nncms_tin` (`idTin`, `idLT`, `urlHinh`, `TieuDe`, `TomTat`, `NoiDung`, `AnHien`, `NgayDang`, `idNguoiDung`, `SoLanXem`) VALUES
(11, 23, '11.jpg', 'Hoa hậu Châu Á tại Mỹ về nước làm từ thiện', 'Từ ngày 15/12, Hoa hậu Michelle Nguyễn và Á hậu Thế giới Người Việt Thúy Vy Victoria mang số tiền do các người đẹp Việt ở Bắc California quyên góp về VN giúp trẻ nghèo.', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/42/20/10.jpg\" border=\"1\" alt=\"Giữa th&aacute;ng 11, tại th&agrave;nh phố San Jose, California, Mỹ diễn ra đ&ecirc;m g&acirc;y quỹ từ thiện cho c&aacute;c trẻ ngh&egrave;o v&agrave; bệnh tật ở Việt Nam. Buổi từ thiện do c&aacute;c người đẹp ở v&ugrave;ng Bắc California thực hiện. Trong ảnh, Miss National Asia Michelle Nguyễn Th&ugrave;y Trang xuất hiện tại đ&ecirc;m diễn.\" width=\"495\" height=\"317\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Giữa th&aacute;ng 11, tại th&agrave;nh phố San Jose, California, Mỹ  diễn ra đ&ecirc;m g&acirc;y quỹ từ thiện cho c&aacute;c trẻ ngh&egrave;o, bệnh tật ở Việt Nam.  Buổi từ thiện do c&aacute;c người đẹp ở v&ugrave;ng Bắc California thực hiện. Trong  ảnh, Miss National Asia Michelle Nguyễn Th&ugrave;y Trang tại buổi g&acirc;y quỹ.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/42/20/12.jpg\" border=\"1\" alt=\"MC Thanh Bạch cũng g&oacute;p mặt trong đ&ecirc;m g&acirc;y quỹ từ thiện tại Mỹ. Anh ủng hộ chương tr&igrave;nh bằng 20 quyển s&aacute;ch dạy ảo thuật để b&aacute;n tại đ&acirc;y.\" width=\"495\" height=\"334\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">MC Thanh Bạch cũng g&oacute;p mặt trong đ&ecirc;m g&acirc;y quỹ từ thiện  tại Mỹ. Anh ủng hộ chương tr&igrave;nh bằng 20 quyển s&aacute;ch dạy ảo thuật để b&aacute;n  tại đ&acirc;y.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/42/20/8.jpg\" border=\"1\" alt=\"Thanh Bạch gi&uacute;p c&aacute;c người đẹp đấu gi&aacute; tấm kh&aacute;nh v&agrave;ng tiệm v&agrave;ng Vinh Thanh của người Việt ở Grant Century Mall\" width=\"495\" height=\"305\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Thanh Bạch gi&uacute;p c&aacute;c người đẹp đấu gi&aacute; tấm kh&aacute;nh v&agrave;ng của tiệm v&agrave;ng Vinh Thanh.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/42/20/2.jpg\" border=\"1\" alt=\"MC Ngọc &Aacute;nh v&agrave; Jet Dương giới thiệu người đẹp Michelle Nguyen với c&aacute;c quan kh&aacute;ch.\" width=\"495\" height=\"308\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">MC Ngọc &Aacute;nh v&agrave; Jet Dương giới thiệu người đẹp Michelle Nguyen với c&aacute;c quan kh&aacute;ch.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/42/20/5.jpg\" border=\"1\" alt=\"Từ phải qua: &Aacute; hậu Thế giới Người Việt Th&uacute;y Vy Victoria, Hoa hậu Michell Nguyễn v&agrave; Tiana Tran - Miss Asia West Coast 2009 c&ugrave;ng lện s&acirc;n khấu ch&agrave;o kh&aacute;ch mời.\" width=\"495\" height=\"313\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Từ phải qua: &Aacute; hậu Thế giới Người Việt Th&uacute;y Vy  Victoria, Hoa hậu Michell Nguyễn v&agrave; Tiana Tran - Miss Asia West Coast  2009 c&ugrave;ng l&ecirc;n s&acirc;n khấu ch&agrave;o kh&aacute;ch mời.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/42/20/9.jpg\" border=\"1\" alt=\"\" width=\"495\" height=\"330\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Người đẹp Bảo V&acirc;n tươi cười mời mọi người ủng hộ cho chương tr&igrave;nh.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/42/20/7.jpg\" border=\"1\" alt=\"Sự duy&ecirc;n d&aacute;ng v&agrave; nghĩa cử của c&aacute;c người đẹp Việt ở Bắc California Mỹ khiến quan kh&aacute;ch nhiệt t&igrave;nh tham gia ủng hộ.\" width=\"495\" height=\"330\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Sự duy&ecirc;n d&aacute;ng v&agrave; nghĩa cử của c&aacute;c người đẹp Việt ở Bắc California Mỹ khiến quan kh&aacute;ch nhiệt t&igrave;nh tham gia.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/42/20/4.jpg\" border=\"1\" alt=\"Em Zhu, Miss Cathay Post 2009, biễu diễn thời trang với một bộ &aacute;o d&agrave;i c&aacute;ch điệu.\" width=\"400\" height=\"600\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Em Zhu, Miss Cathay Post 2009, tr&igrave;nh diễn một bộ &aacute;o d&agrave;i c&aacute;ch điệu.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/42/20/11.jpg\" border=\"1\" alt=\"Nh&agrave; thiết kế Ch&acirc;u Nguyễn ch&agrave;o kh&aacute;n giả sau m&agrave;n diễn của c&aacute;c người đẹp.\" width=\"495\" height=\"349\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Nh&agrave; thiết kế Ch&acirc;u Nguyễn ch&agrave;o kh&aacute;n giả sau m&agrave;n diễn của c&aacute;c người đẹp.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/42/20/3.jpg\" border=\"1\" alt=\"\" width=\"495\" height=\"309\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Ca sĩ Ho&agrave;ng Thanh biểu diễn những li&ecirc;n kh&uacute;c s&ocirc;i động.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/42/20/14.jpg\" border=\"1\" alt=\"\" width=\"495\" height=\"310\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Kết chương tr&igrave;nh, c&aacute;c người đẹp ở Bắc California quy&ecirc;n  g&oacute;p được 8.000 USD. Ng&agrave;y 15/12, người đẹp Michelle Nguyễn sẽ về Tr&agrave;  Vinh, Việt Nam để l&agrave;m từ thiện. Sau đ&oacute;, ng&agrave;y 17/12, &Aacute; hậu Th&uacute;y Vy  Victoria về nước c&ugrave;ng Michelle Nguyễn tiếp tục c&aacute;c hoạt động từ thiện v&igrave;  trẻ em ngh&egrave;o. Hai người đẹp rất mong th&agrave;nh lập được một tổ chức từ  thiện phi lợi nhuận để gậy quỹ, mỗi năm về nước gi&uacute;p đỡ người ngh&egrave;o.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\"><strong>Minh Hải<br /></strong><em>Ảnh</em>: <strong>Kevin Nguyễn </strong></p>', 1, '0000-00-00', 1, 0),
(12, 30, '12.jpg', 'Đánh bại Arsenal, MU chiếm lại ngôi đầu Ngoại hạng Anh ', 'Wayne Rooney đá hỏng phạt đền, nhưng pha lập công duy nhất của Park Ji-sung cũng đủ giúp MU giành chiến thắng 1-0 quý giá trong trận đấu muộn nhất vòng 17 tối thứ hai. ', '<table border=\"0\" cellspacing=\"1\" cellpadding=\"3\" width=\"231\" align=\"right\" bgcolor=\"#408080\">\r\n<tbody>\r\n<tr>\r\n<td class=\"PnDTitle\" align=\"middle\" bgcolor=\"#408080\">V&ograve;ng 17</td>\r\n</tr>\r\n<tr>\r\n<td class=\"PnLink\" align=\"left\" bgcolor=\"#ffffff\">Thứ bảy, ng&agrave;y 11/12<br /><strong>Aston Villa 2-1 West Brom</strong><br />(Downing 25\', Heskey 80\' - Scharner 89\')<br /><strong>Everton 0-0 Wigan<br />Fulham 0-0 Sunderland<br />Stoke 0-1 Blackpool<br /></strong>(Campbell 48\')<br /><strong>West Ham 1-3 Man City<br /></strong>(Tomkins 89\' - Yaya Toure 30\', Green 73\' phản lưới, A Johnson 81\')<br /><strong>Newcastle 3-1 Liverpool<br /></strong>(Nolan 15\', Barton 80\', Carroll 90\'+1 - Kuyt 49\')<br /><br />Chủ nhật, ng&agrave;y 12/12<br /><strong>Bolton 2-1 Blackburn</strong><br />(Muamba 65\', Holden 88\' - Diouf 87\')<br /><strong>Wolverhampton 1-0 Birmingham</strong><br />(Hunt 45\')<br /><strong>Tottenham 1-1 Chelsea<br /></strong>(Pavlyuchenko 15\' - Drogba 70\') <br /><br />Thứ hai, ng&agrave;y 13/12<br /><strong>MU 1-0 Arsenal<br /></strong>(Park Ji-sung 41\')</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Hồi th&aacute;ng 5/2009, sau một chiến thắng dễ ở Champions  League, Patrice Evra từng giễu cợt Arsenal bằng v&iacute; von rằng trận đấu khi  đ&oacute; giống như \"cuộc đối đầu giữa 11 người đ&agrave;n &ocirc;ng với 11 đứa trẻ\". Chừng  một năm rưỡi tr&ocirc;i qua, tối qua Arsenal đ&atilde; kh&ocirc;ng non dại như thế nữa.  Trong một trận đấu kh&ocirc;ng c&oacute; sự phục vụ của một số vị tr&iacute; quan trọng, đội  kh&aacute;ch vẫn thực hiện kh&aacute; tốt &yacute; đồ chơi chặt chẽ để &iacute;t nhất kiếm một trận  h&ograve;a h&ograve;ng bảo to&agrave;n ng&ocirc;i đầu bảng.</p>\r\n<p class=\"Normal\">Sự trưởng th&agrave;nh ấy c&oacute; thể nh&igrave;n nhận r&otilde; nhất qua việc  Arsenal... biết c&aacute;ch phạm lỗi (cả bốn thẻ v&agrave;ng trận n&agrave;y đều thuộc về  họ). Mỗi khi rơi v&agrave;o thế bất lợi trong c&aacute;c pha tranh chấp tay đ&ocirc;i, cầu  thủ Arsenal đều sẵn s&agrave;ng g&acirc;y va chạm vừa phải. Đ&oacute; hầu hết l&agrave; những t&igrave;nh  huống diễn ra ở xa khu cấm địa n&ecirc;n thường được trọng t&agrave;i nương tay. MU  v&igrave; vậy mất kh&ocirc;ng &iacute;t cơ hội tấn c&ocirc;ng nhanh, dẫn đến việc một số cầu thủ  v&agrave; thậm ch&iacute; l&agrave; HLV Alex Ferguson đ&atilde; c&oacute; l&uacute;c nổi c&aacute;u với trọng t&agrave;i Howard  Webb.</p>\r\n<p class=\"Normal\">Nhưng đ&oacute; cũng l&agrave; tất cả những g&igrave; Arsenal l&agrave;m được. Sự  chuyển biến họ tạo ra chưa đủ nhiều v&agrave; c&ograve;n thiếu căn bản. Phần tốt đẹp  nhất trận n&agrave;y thuộc về MU. Từ c&aacute;ch tổ chức trận đấu, sự phối kết hợp  giữa c&aacute;c tuyến, khả năng g&acirc;y sức &eacute;p cũng như dấu ấn c&aacute; nh&acirc;n... đội chủ  nh&agrave; đều tỏ ra trội hơn.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/42/A4/park.jpg\" border=\"1\" alt=\"Park Ji-sung kh&aacute; c&oacute; duy&ecirc;n trong những cuộc đối đầu với Arsenal.\" width=\"400\" height=\"260\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Park Ji-sung kh&aacute; c&oacute; duy&ecirc;n trong những cuộc đối đầu với Arsenal.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\"><strong><span style=\"color: #3f3f3f;\">V&igrave; vậy chiến thắng 1-0 d&agrave;nh cho MU ho&agrave;n to&agrave;n xứng đ&aacute;ng, d&ugrave; pha l&agrave;m b&agrave;n duy nhất của Park Ji-sung c&oacute; phần may mắn</span></strong>.  Ph&uacute;t 41 Nani r&ecirc; dắt chếch b&ecirc;n c&aacute;nh phải rồi tung ra đường chuyền, b&oacute;ng  chạm ch&acirc;n Gael Clichy v&ocirc; t&igrave;nh t&igrave;m đến đ&uacute;ng vị tr&iacute; của Park. Bị đeo k&egrave;m  v&agrave; nỗ lực đ&aacute;nh đầu trong tư thế với, nhưng c&uacute; dứt điểm của tiền vệ người  H&agrave;n Quốc cũng đủ tạo n&ecirc;n một đường cong lạ v&agrave; vượt qua tầm với của thủ  th&agrave;nh Arsenal.</p>\r\n<p class=\"Normal\">Chiến thắng tối qua gi&uacute;p MU c&oacute; lại đầy đủ lợi thế  trong cuộc đua ở Ngoại hạng Anh. B&ecirc;n cạnh ng&ocirc;i đầu bảng, họ b&acirc;y giờ c&oacute;  nhiều hơn hai đội đứng ngay sau l&agrave; Arsenal v&agrave; Man City hai điểm, v&agrave;  khoảng c&aacute;ch l&agrave; ba điểm nếu so với đương kim v&ocirc; địch Chelsea. Trong tay  thầy tr&ograve; HLV Alex Ferguson c&ograve;n một trận chưa đấu.</p>\r\n<p class=\"Normal\">Hai thủ m&ocirc;n Almunia v&agrave; Fabianski đều chấn thương n&ecirc;n  tối qua HLV Arsene Wenger bất đắc dĩ phải sử dụng Wojciech Szczesny c&ograve;n  non kinh nghiệm (mới 20 tuổi) cho vị tr&iacute; trong khung gỗ. Cesc Fabregas  chưa ho&agrave;n to&agrave;n b&igrave;nh phục n&ecirc;n chỉ được đưa v&agrave;o danh s&aacute;ch dự bị, trong khi  Robin van Persie kh&ocirc;ng đ&aacute; ch&iacute;nh. B&ecirc;n ph&iacute;a MU, HLV Ferguson cũng để  Dimitar Berbatov ngồi ngo&agrave;i, đẩy Rooney l&ecirc;n đ&aacute; tiền đạo cắm.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/42/A4/mu.jpg\" border=\"1\" alt=\"MU (&aacute;o đỏ) g&acirc;y được &aacute;p lực tấn c&ocirc;ng tốt hơn Arsenal.\" width=\"399\" height=\"278\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">MU (&aacute;o đỏ) g&acirc;y được &aacute;p lực tấn c&ocirc;ng tốt hơn Arsenal.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Tốc độ trận đấu được đẩy l&ecirc;n cao ngay từ đầu. Cũng  chơi với 5 tiền vệ n&ecirc;n khu giữa s&acirc;n của Arsenal tỏ ra chắc chắn, buộc MU  phải chấp nhận chia sẻ thế trận. Trong qu&aacute; nửa hiệp một, sự nguy hiểm  hai đội tạo về khung th&agrave;nh của nhau v&igrave; vậy kh&ocirc;ng r&otilde; r&agrave;ng. C&uacute; dứt điểm từ  xa của Rooney chưa đủ lực để đ&aacute;nh bại thủ th&agrave;nh Szczesny, trong khi  Chamakh đ&aacute;nh đầu như chuyền cho Van der Sar.</p>\r\n<p class=\"Normal\">Cơ hội ngon ăn nhất từ đầu trận diễn ra ở ph&uacute;t 23, v&agrave;  thuộc về MU. Từ quả lật v&agrave;o b&ecirc;n c&aacute;nh phải của Darren Fletcher, b&oacute;ng bị  ph&aacute; ra nhưng t&igrave;m đến đ&uacute;ng tầm quăng ch&acirc;n của Nani. Thủ th&agrave;nh Szczesny đ&atilde;  lặng người đứng nh&igrave;n nhưng b&oacute;ng đi chệch cột dọc ph&iacute;a xa trong gang  tấc. Như một mồi lửa, từ sau t&igrave;nh huống đ&oacute; &aacute;p lực tấn c&ocirc;ng của MU trở  n&ecirc;n mạnh hơn. Ph&uacute;t 30 MU đ&aacute;ng ra đ&atilde; được hưởng một quả phạt đền khi  Chamakh để tay chạm b&oacute;ng trong t&igrave;nh huống lui về hỗ trợ ph&ograve;ng ngự. Tuy  nhi&ecirc;n trọng t&agrave;i Webb đ&atilde; phớt lờ.</p>\r\n<table border=\"0\" cellspacing=\"1\" cellpadding=\"3\" width=\"266\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"PnDTitle\" align=\"middle\" bgcolor=\"#408080\"><a class=\"PnDTitle\" href=\"http://playmyfootball.com/manchester-united-1-0-arsenal-premier-league-highlights-video\">Xem clip b&agrave;n thắng</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Kh&ocirc;ng giống với bản t&iacute;nh thường thấy, trong khi hệ  thống ph&ograve;ng ngự &iacute;t mắc sai s&oacute;t, h&agrave;ng c&ocirc;ng vốn l&agrave; một thứ \"đặc sản\" của  Arsenal tối qua tỏ ra nhạt nh&ograve;a. MU đ&atilde; tổ chức bắt người tốt, nhưng quan  trọng hơn cả l&agrave; đội kh&aacute;ch c&oacute; vẻ như kh&ocirc;ng quyết liệt tấn c&ocirc;ng. C&aacute;c pha  phối hợp của họ thường chỉ lởn vởn trước cấm địa rồi chẳng đi đến đ&acirc;u.  Giữ sạch m&agrave;nh lưới mới l&agrave; mục ti&ecirc;u của Arsenal trận n&agrave;y.</p>\r\n<p class=\"Normal\">Tuy nhi&ecirc;n, khi tưởng như họ đ&atilde; c&oacute; thể kết th&uacute;c hiệp  một với tỷ số h&ograve;a kh&ocirc;ng b&agrave;n thắng th&igrave; bất ngờ Park Ji-sung l&ecirc;n tiếng ở  ph&uacute;t 41. B&agrave;n thắng thứ 4 tiền vệ người H&agrave;n Quốc c&oacute; được khi gặp Arsenal.</p>\r\n<p class=\"Normal\">Nhờ b&agrave;n dẫn trước, MU bước v&agrave;o hiệp hai hồ hởi v&agrave; mạnh  mẽ hơn hẳn. Họ g&acirc;y được &aacute;p lực to&agrave;n diện, v&agrave; su&yacute;t ch&uacute;t nữa n&acirc;ng được tỷ  số l&ecirc;n th&agrave;nh 2-0 nếu như b&oacute;ng kh&ocirc;ng t&igrave;m đ&uacute;ng vai của thủ th&agrave;nh Szczesny  trong t&igrave;nh huống Anderson tho&aacute;t xuống dứt điểm trong thế đối mặt.  Arsenal như sực tỉnh sau pha h&uacute;t chết ấy v&agrave; bắt đầu phản k&iacute;ch dữ dội.  Ph&uacute;t 56 họ đ&atilde; c&oacute; cơ hội kh&oacute; c&oacute; thể tốt hơn nhưng Chamakh thiếu một ch&uacute;t  b&igrave;nh tĩnh để c&oacute; thể th&agrave;nh c&ocirc;ng. Sau c&uacute; dứt điểm sệt của Nasri, b&oacute;ng bị  thủ th&agrave;nh Van der Sar đẩy ra. Chamakh lao v&agrave;o rất nhanh để đ&aacute; bồi nhưng  thay v&igrave; gh&igrave;m b&oacute;ng lại trước khi chọn v&iacute; tr&iacute; dứt điểm thuận lợi anh lại  s&uacute;t ngay tr&uacute;ng người Nemanja Vidic đ&atilde; nho&agrave;i người che chắn.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/42/A4/arsenal.jpg\" border=\"1\" alt=\"\" width=\"346\" height=\"344\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Arsenal (&aacute;o v&agrave;ng) để thua 5 trong 6 trận gặp MU gần đ&acirc;y.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">N&ocirc;n n&oacute;ng t&igrave;m b&agrave;n gỡ, Arsenal đẩy cao đội h&igrave;nh v&agrave; tấn  c&ocirc;ng quyết liệt. Nhưng đ&oacute; cũng l&agrave; l&uacute;c MU giăng bẫy bằng đ&ograve;n phản c&ocirc;ng.  Trong một lần như thế, ph&uacute;t 59 Nani đ&atilde; đột nhập v&agrave;o đến cấm địa, nhưng  hấp tấp dứt điểm vọt x&agrave; thay v&igrave; chuyền sang b&ecirc;n cho Rooney đang trong tư  thế thuận lợi.</p>\r\n<p class=\"Normal\">Quyết kh&ocirc;ng để mất điểm, HLV Wenger li&ecirc;n tục tung ra  những thay đổi sau đ&oacute;. Fabregas v&agrave; Van Persie c&ugrave;ng l&uacute;c v&agrave;o thay Tomas  Rosicky v&agrave; Jack Wilshere. Tuy nhi&ecirc;n cả hai điều chỉnh n&agrave;y cũng chẳng thể  gi&uacute;p Arsenal tạo n&ecirc;n đột biến trước một hệ thống ph&ograve;ng ngự rất k&iacute;n kẽ  của MU.</p>\r\n<p class=\"Normal\">Kh&ocirc;ng những kh&ocirc;ng thể tấn c&ocirc;ng, Arsenal th&ecirc;m một lần  nữa su&yacute;t d&iacute;nh b&agrave;n thua thứ hai ở ph&uacute;t 73. Trong t&igrave;nh huống tranh chấp ở  cấm địa, Clichy để tay chạm b&oacute;ng sau pha xử l&yacute; c&oacute; phần tinh qu&aacute;i của  Nani v&agrave; phạt đền được d&agrave;nh cho Rooney.</p>\r\n<p class=\"Normal\">Trước đ&acirc;y, Rooney đều lấy m&agrave;nh lưới của Arsenal để l&agrave;m  dấu mốc cho b&agrave;n thắng đầu ti&ecirc;n của c&aacute; nh&acirc;n với tư c&aacute;ch cầu thủ chuy&ecirc;n  nghiệp, b&agrave;n thắng đầu ti&ecirc;n trong m&agrave;u &aacute;o MU v&agrave; b&agrave;n thắng thứ 100 của c&aacute;  nh&acirc;n ở Ngoại hạng Anh. Nhưng h&ocirc;m qua anh đ&atilde; mất duy&ecirc;n, khi s&uacute;t qu&aacute; mạnh  từ chấm 11 m&eacute;t đưa b&oacute;ng vọt x&agrave;. Về gần cuối trận, Rooney đ&atilde; c&oacute; cơ hội  chuộc lỗi bằng c&uacute; bấm b&oacute;ng kh&aacute; tinh qu&aacute;i, nhưng thủ th&agrave;nh Szczesny vẫn  kịp tung người h&oacute;a giải.</p>\r\n<p class=\"Normal\">Dẫu vậy chiến thắng 1-0 cũng đủ để MU củng cố vị thế v&agrave; niềm tin trước chuyến h&agrave;nh qu&acirc;n đến s&acirc;n của Chelsea chủ nhật tuần n&agrave;y.</p>\r\n<p class=\"Normal\"><strong><span style=\"color: #3f3f3f;\">Đội h&igrave;nh thi đấu:</span></strong></p>\r\n<p class=\"Normal\"><strong><span style=\"color: #3f3f3f;\">MU:</span></strong> Van der Sar, Evra, Ferdinand, Vidic, Rafael Da Silva, Anderson (Giggs 85), Park Ji-Sung, Carrick, Nani, Fletcher, Rooney.</p>\r\n<p class=\"Normal\">B&agrave;n thắng: Park Ji-sung 41</p>\r\n<p class=\"Normal\"><strong><span style=\"color: #3f3f3f;\">Arsenal:</span></strong> Szczesny, Sagna, Koscielny, Squillaci, Clichy, Rosicky (Fabregas 64),  Nasri, A Song, Wilshere (Van Persie 64), Arshavin (Walcott 77), Chamakh.</p>\r\n<table border=\"0\" cellspacing=\"1\" cellpadding=\"3\" width=\"45\" align=\"center\" bgcolor=\"#408080\">\r\n<tbody>\r\n<tr>\r\n<td class=\"PnDTitle\" align=\"middle\" bgcolor=\"#408080\">Ngoại hạng Anh 2010-2011</td>\r\n</tr>\r\n<tr>\r\n<td bgcolor=\"#ffffff\">\r\n<table border=\"0\" cellspacing=\"1\" cellpadding=\"1\" width=\"246\">\r\n<tbody>\r\n<tr>\r\n<td class=\"PnDTitle\" align=\"center\" bgcolor=\"#3f3f3f\">TT</td>\r\n<td class=\"PnDTitle\" align=\"center\" bgcolor=\"#3f3f3f\">Đội</td>\r\n<td class=\"PnDTitle\" align=\"center\" bgcolor=\"#3f3f3f\">Trận</td>\r\n<td class=\"PnDTitle\" align=\"center\" bgcolor=\"#3f3f3f\">H/S</td>\r\n<td class=\"PnDTitle\" align=\"center\" bgcolor=\"#3f3f3f\">Điểm</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">1</td>\r\n<td class=\"BoxLink\" align=\"center\">MU</td>\r\n<td class=\"BoxLink\" align=\"center\">16</td>\r\n<td class=\"BoxLink\" align=\"center\">20</td>\r\n<td class=\"BoxLink\" align=\"center\">34</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">2</td>\r\n<td class=\"BoxLink\" align=\"center\">Arsenal</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">15</td>\r\n<td class=\"BoxLink\" align=\"center\">32</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">3</td>\r\n<td class=\"BoxLink\" align=\"center\">Man City</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">11</td>\r\n<td class=\"BoxLink\" align=\"center\">32</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">4</td>\r\n<td class=\"BoxLink\" align=\"center\">Chelsea</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">19</td>\r\n<td class=\"BoxLink\" align=\"center\">31</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">5</td>\r\n<td class=\"BoxLink\" align=\"center\">Tottenham</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">3</td>\r\n<td class=\"BoxLink\" align=\"center\">27</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">6</td>\r\n<td class=\"BoxLink\" align=\"center\">Bolton</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">6</td>\r\n<td class=\"BoxLink\" align=\"center\">26</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">7</td>\r\n<td class=\"BoxLink\" align=\"center\">Sunderland</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">2</td>\r\n<td class=\"BoxLink\" align=\"center\">24</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">8</td>\r\n<td class=\"BoxLink\" align=\"center\">Newcastle</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">1</td>\r\n<td class=\"BoxLink\" align=\"center\">22</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">9</td>\r\n<td class=\"BoxLink\" align=\"center\">Liverpool</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">-1</td>\r\n<td class=\"BoxLink\" align=\"center\">22</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">10</td>\r\n<td class=\"BoxLink\" align=\"center\">Blackpool</td>\r\n<td class=\"BoxLink\" align=\"center\">16</td>\r\n<td class=\"BoxLink\" align=\"center\">-5</td>\r\n<td class=\"BoxLink\" align=\"center\">22</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">11</td>\r\n<td class=\"BoxLink\" align=\"center\">West Brom</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">-5</td>\r\n<td class=\"BoxLink\" align=\"center\">22</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">12</td>\r\n<td class=\"BoxLink\" align=\"center\">Stoke</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">-1</td>\r\n<td class=\"BoxLink\" align=\"center\">21</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">13</td>\r\n<td class=\"BoxLink\" align=\"center\">Blackburn</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">-5</td>\r\n<td class=\"BoxLink\" align=\"center\">21</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">14</td>\r\n<td class=\"BoxLink\" align=\"center\">Aston Villa</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">-9</td>\r\n<td class=\"BoxLink\" align=\"center\">20</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">15</td>\r\n<td class=\"BoxLink\" align=\"center\">Everton</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">-2</td>\r\n<td class=\"BoxLink\" align=\"center\">18</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">16</td>\r\n<td class=\"BoxLink\" align=\"center\">Birmingham</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">-3</td>\r\n<td class=\"BoxLink\" align=\"center\">18</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">Fulham</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">-4</td>\r\n<td class=\"BoxLink\" align=\"center\">16</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">18</td>\r\n<td class=\"BoxLink\" align=\"center\">Wigan</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">-15</td>\r\n<td class=\"BoxLink\" align=\"center\">16</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">19</td>\r\n<td class=\"BoxLink\" align=\"center\">Wolves</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">-12</td>\r\n<td class=\"BoxLink\" align=\"center\">15</td>\r\n</tr>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">20</td>\r\n<td class=\"BoxLink\" align=\"center\">West Ham</td>\r\n<td class=\"BoxLink\" align=\"center\">17</td>\r\n<td class=\"BoxLink\" align=\"center\">-15</td>\r\n<td class=\"BoxLink\" align=\"center\">12</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, '0000-00-00', 1, 0),
(13, 34, '13.jpg', 'Ôsin 16 tuổi đột nhập nhà chủ cũ để khoắng đồ ', 'Bị đuổi việc nhưng nữ ôsin 16 tuổi thi thoảng vẫn lẻn đến nơi từng giúp việc để khoắng đồ. Ra tay đến lần thứ tư, cô gái này bị cảnh sát lật tẩy hành vi trộm cắp.', '<p class=\"Normal\">Chiều 10/12, C&ocirc;ng an phường Y&ecirc;n Phụ (quận T&acirc;y Hồ, H&agrave;  Nội) cho biết đ&atilde; bắt B&ugrave;i Thị Trang (16 tuổi ở Hậu Lộc, Thanh H&oacute;a) giao  cho c&ocirc;ng an quận để điều tra h&agrave;nh vi trộm cắp t&agrave;i sản. Cảnh s&aacute;t cho  biết, trước khi bị bắt, c&ocirc; g&aacute;i n&agrave;y đ&atilde; 3 lần thực hiện trộm cắp nhưng  chưa đủ tuổi n&ecirc;n chưa thể xử l&yacute; tr&aacute;ch nhiệm h&igrave;nh sự.</p>\r\n<p class=\"Normal\">Năm 2009, Trang l&ecirc;n H&agrave; Nội gi&uacute;p việc cho một gia đ&igrave;nh.  Khi gia chủ cho người nước ngo&agrave;i thu&ecirc; nh&agrave;, c&ocirc; g&aacute;i n&agrave;y đ&atilde; được họ đồng &yacute;  thu&ecirc; lại để gi&uacute;p việc. Tuy nhi&ecirc;n, sau một thời gian ở đ&acirc;y thấy đồ li&ecirc;n  tục bị mất, Trang đ&atilde; bị cho nghỉ việc.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/41/32/trom.jpg\" border=\"1\" alt=\"B&ugrave;i Thị Trang tại cơ quan điều tra. Ảnh: ANTĐ.\" width=\"350\" height=\"496\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">B&ugrave;i Thị Trang tại cơ quan điều tra. Ảnh: <em>ANTĐ.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Rạng s&aacute;ng 8/12, 3 c&ocirc; g&aacute;i người nước ngo&agrave;i đến c&ocirc;ng an  phường Y&ecirc;n Phụ tr&igrave;nh b&aacute;o bị mất cắp một số t&agrave;i sản. Qua r&agrave; so&aacute;t, cảnh  s&aacute;t cho rằng Trang l&agrave; t&igrave;nh nghi số một của vụ &aacute;n khi nơi ở c&oacute; nhiều đồ  đạc, tư trang c&ugrave;ng một chiếc xe mới mua.</p>\r\n<p class=\"Normal\">Một ng&agrave;y sau, Trang được mời l&ecirc;n trụ sở cảnh s&aacute;t. Tuy  nhi&ecirc;n, thiếu nữ n&agrave;y đ&atilde; chối to&agrave;n bộ vụ việc. \"&Iacute;t tuổi nhưng Trang tỏ ra  kh&aacute; l&igrave; lợm. C&ocirc; ta chỉ thừa nhận khi ch&uacute;ng t&ocirc;i triệu tập người l&agrave;m chứng  đ&atilde; mua xe m&aacute;y hộ Trang...\", một cảnh s&aacute;t n&oacute;i.</p>\r\n<p class=\"Normal\">Theo lời khai của nữ qu&aacute;i, sau một thời gian gi&uacute;p việc  cho 3 người ngoại quốc c&ocirc; ta được tin tưởng giao ch&igrave;a kh&oacute;a nh&agrave;. Lợi  dụng cơ hội n&agrave;y, Trang đ&atilde; mang ch&igrave;a kh&oacute;a đi đ&aacute;nh th&ecirc;m một bộ để chờ thời  cơ thực hiện &yacute; đồ xấu.</p>\r\n<p class=\"Normal\">Sau khi bị đuổi việc, Trang vẫn mang theo ch&ugrave;m ch&igrave;a  kh&oacute;a đ&aacute;nh trước đ&oacute;. Những l&uacute;c buổi trưa hoặc tối khi gia chủ đi vắng, c&ocirc;  ta đột nhập v&agrave;o nh&agrave; khoắng đồ.</p>\r\n<p class=\"Normal\">Cơ quan điều tra cho biết, thực hiện đến vụ thứ tư,  Trang mới bị bắt. Tổng cộng nữ &ocirc;sin n&agrave;y đ&atilde; cuỗm được gần 3.000 USD, một  m&aacute;y ảnh, 2 nhẫn trang sức gắn kim cương, 2 d&acirc;y chuyền v&agrave;ng, 6 triệu đồng  c&ugrave;ng nhiều đồ đạc kh&aacute;c (khoảng 50 triệu đồng).</p>\r\n<p class=\"Normal\">Sau khi lấy trộm được số tiền USD, Trang đ&atilde; mang đổi  ra tiền Việt. Tr&aacute;nh bị nghi ngờ, c&ocirc; ta kh&ocirc;n kh&eacute;o đưa tiền nhờ h&agrave;ng x&oacute;m  đi mua chiếc xe m&aacute;y để l&agrave;m phương tiện đi lại.</p>\r\n<p class=\"Normal\"><strong>H&agrave; Anh</strong></p>', 1, '0000-00-00', 1, 0),
(14, 37, '14.jpg', 'Vợ chồng chán nhau từ chuyện \'tế nhị\' ', 'Vợ cả năm chung thủy với một bộ đồ ngủ, lâm trận thì nằm ngay đơ nhắm tịt mắt; chồng 3 ngày không chịu thay quần lót, chinh chiến cứ chồm chồm cho xong. Chuyện tưởng nhỏ nhưng đã khiến không ít gia đình mất hạnh phúc.', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/41/D9/vo-chong-gian-nhau.jpg\" border=\"1\" alt=\"T&acirc;m l&yacute; \" width=\"250\" height=\"195\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">T&acirc;m l&yacute; \"cưới rồi sao cũng được\" khiến nhiều gia đ&igrave;nh mất hạnh ph&uacute;c. Ảnh minh họa: <em>Corbis.com.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Lấy nhau được gần một năm vẫn chưa c&oacute; con, tuy nhi&ecirc;n  thay v&igrave; cặm cụi &ldquo;c&agrave;y bừa&rdquo; kiếm mụn con như thời gian đầu, Hải, 34 tuổi,  dần t&igrave;m c&aacute;ch trốn tr&aacute;nh chuyện chăn gối với vợ, đơn giản chỉ v&igrave; kh&ocirc;ng  c&ograve;n cảm hứng v&agrave; nguy&ecirc;n nh&acirc;n chỉ v&igrave; vợ anh &ldquo;nằm đơ như c&acirc;y cơ&rdquo;.</p>\r\n<p class=\"Normal\">&ldquo;Thi thoảng c&ocirc; ấy nh&uacute;c nh&iacute;ch t&iacute;, nhưng thường l&agrave; nằm  y&ecirc;n, thậm ch&iacute; nhắm mắt như ngủ để t&ocirc;i muốn l&agrave;m g&igrave; th&igrave; l&agrave;m. Chinh chiến  đơn th&acirc;n độc m&atilde; m&atilde;i, t&ocirc;i thấy m&igrave;nh v&ocirc; duy&ecirc;n v&agrave; mất dần hứng th&uacute;. Thằng  nhỏ ban đầu c&ograve;n căng thẳng, giờ th&igrave; ỉu x&igrave;u. Đ&ocirc;i khi t&ocirc;i nghĩ, nếu như  vậy th&agrave; t&ocirc;i h&aacute;t solo c&ograve;n hơn&rdquo;, gọi điện đến chuy&ecirc;n gia t&acirc;m l&yacute;, anh Hải  thổ lộ.</p>\r\n<p class=\"Normal\">Kh&ocirc;ng khổ v&igrave; cảnh &ldquo;chinh chiến một m&igrave;nh&rdquo; như Hải,  Th&agrave;nh Nh&acirc;n, chủ một cửa h&agrave;ng b&aacute;ch h&oacute;a ở quận 5, TP HCM, lại rơi v&agrave;o cảnh  chịu hết nổi c&ocirc; vợ c&agrave;ng ng&agrave;y c&agrave;ng b&ecirc; bối dần.</p>\r\n<p class=\"Normal\">&ldquo;Gi&agrave;y d&eacute;p quăng lung tung, giường chiếu cũng kh&ocirc;ng bao  giờ vệ sinh đ&atilde; đ&agrave;nh, kể cả quần l&oacute;t &aacute;o ngực mặc xong bốc m&ugrave;i, c&ocirc; ấy  cũng vứt lung tung chứ kh&ocirc;ng th&egrave;m gom lại để giặt, nhiều buổi s&aacute;ng trước  khi đi l&agrave;m, c&ocirc; ấy mất gần nửa giờ lục lọi v&igrave; quần bẩn hết kh&ocirc;ng c&ograve;n c&aacute;i  n&agrave;o để mặc. Chỉ n&oacute;i như thế th&ocirc;i th&igrave; đủ biết khi gần nhau, t&ocirc;i phải  chịu &ldquo;ngửi&rdquo; c&aacute;i m&ugrave;i \'&acirc;n &aacute;i\' như thế n&agrave;o rồi&rdquo;, t&acirc;m sự với nh&acirc;n vi&ecirc;n Đ&agrave;i  1080 TP HCM, Nh&acirc;n n&oacute;i.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"40%\" align=\"right\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n<form method=\"POST\"></form> \r\n<tbody>\r\n<tr style=\"vertical-align: top;\">\r\n<td style=\"height: 3px; background: url(../images/vote/bg-top.gif) repeat-x scroll center top #ffffff;\" colspan=\"2\"><img src=\"http://vnexpress.net/images/vote/left-top.gif\" alt=\"\" /></td>\r\n<td class=\"txtr\" style=\"height: 3px; background: url(../images/vote/bg-top.gif) repeat-x scroll center top #ffffff;\"><img src=\"http://vnexpress.net/images/vote/right-top.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr style=\"vertical-align: top;\">\r\n<td style=\"width: 4px; height: 21px; background: url(../images/vote/bg-left.gif) repeat-y scroll center top #ffffff;\"><br /></td>\r\n<td style=\"height: 21px; vertical-align: top; padding-left: 8px; padding-top: 1px; padding-bottom: 2px; background-color: #ffffff;\"><label class=\"link-folder\">Thăm d&ograve; &yacute; kiến</label></td>\r\n<td style=\"width: 4px; height: 21px; background: url(../images/vote/bg-right.gif) repeat-y scroll center top #ffffff;\"><br /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"background: url(../images/vote/bg-left-c.gif) repeat-y scroll center top #ffffff;\"><br /></td>\r\n<td style=\"background-color: #eeeedd;\" valign=\"top\">\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" height=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td width=\"100%\" valign=\"top\">\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" height=\"100%\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"padding: 10px 0px 10px 8px; background-color: #eeeedd;\"><label style=\"font: bold 12px arial; color: #4d4d4d;\">Bạn từng mất hứng \'y&ecirc;u\' v&igrave; th&oacute;i quen xấu của vợ (chồng)?</label></td>\r\n</tr>\r\n<tr height=\"100%\" valign=\"top\">\r\n<td style=\"height: 100%; padding-left: 7px; background-color: #eeeedd;\" valign=\"top\"><input name=\"fsubjectid\" type=\"hidden\" value=\"1000489433\" /> <input name=\"fpageid\" type=\"hidden\" value=\"0\" /> <input name=\"fvoteid\" type=\"hidden\" value=\"345546764\" /> <input name=\"fvotetitle\" type=\"hidden\" value=\"Bạn từng mất hứng \'y&ecirc;u\' v&igrave; th&oacute;i quen xấu của vợ (chồng)?\" /> <input name=\"fvotefor\" type=\"hidden\" /> <input name=\"faction\" type=\"hidden\" value=\"0\" /> <input name=\"fDescription\" type=\"hidden\" /> <input name=\"fnumitem\" type=\"hidden\" value=\"4\" /> \r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" height=\"100%\">\r\n<tbody>\r\n<tr>\r\n<input name=\"fT_0\" type=\"hidden\" value=\"Thường xuy&ecirc;n\" /> <input name=\"fI_0\" type=\"hidden\" value=\"0\" /> <input name=\"fN_0\" type=\"hidden\" value=\"0\" />\r\n<td width=\"20px\" align=\"right\" valign=\"top\"><input style=\"font: 12px arial; color: #000000;\" name=\"fC_0\" type=\"checkbox\" value=\"0\" /></td>\r\n<td valign=\"top\"><label style=\"font: 12px arial; color: #000000; margin-left: 2px; margin-right: 2px;\">Thường xuy&ecirc;n</label></td>\r\n</tr>\r\n<tr>\r\n<input name=\"fT_1\" type=\"hidden\" value=\"Thỉnh thoảng\" /> <input name=\"fI_1\" type=\"hidden\" value=\"0\" /> <input name=\"fN_1\" type=\"hidden\" value=\"1\" />\r\n<td width=\"20px\" align=\"right\" valign=\"top\"><input style=\"font: 12px arial; color: #000000;\" name=\"fC_1\" type=\"checkbox\" value=\"1\" /></td>\r\n<td valign=\"top\"><label style=\"font: 12px arial; color: #000000; margin-left: 2px; margin-right: 2px;\">Thỉnh thoảng</label></td>\r\n</tr>\r\n<tr>\r\n<input name=\"fT_2\" type=\"hidden\" value=\"Hiếm khi\" /> <input name=\"fI_2\" type=\"hidden\" value=\"0\" /> <input name=\"fN_2\" type=\"hidden\" value=\"2\" />\r\n<td width=\"20px\" align=\"right\" valign=\"top\"><input style=\"font: 12px arial; color: #000000;\" name=\"fC_2\" type=\"checkbox\" value=\"2\" /></td>\r\n<td valign=\"top\"><label style=\"font: 12px arial; color: #000000; margin-left: 2px; margin-right: 2px;\">Hiếm khi</label></td>\r\n</tr>\r\n<tr>\r\n<input name=\"fT_3\" type=\"hidden\" value=\"Kh&ocirc;ng bao giờ\" /> <input name=\"fI_3\" type=\"hidden\" value=\"0\" /> <input name=\"fN_3\" type=\"hidden\" value=\"3\" />\r\n<td width=\"20px\" align=\"right\" valign=\"top\"><input style=\"font: 12px arial; color: #000000;\" name=\"fC_3\" type=\"checkbox\" value=\"3\" /></td>\r\n<td valign=\"top\"><label style=\"font: 12px arial; color: #000000; margin-left: 2px; margin-right: 2px;\">Kh&ocirc;ng bao giờ</label></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr height=\"10px\" valign=\"top\">\r\n<td style=\"background-color: #eeeedd; text-align: right;\" align=\"center\" valign=\"top\"><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n<td style=\"width: 4px; background: url(../images/vote/bg-right-c.gif) repeat-y scroll center top #ffffff;\"><br /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 4px; height: 25px; background: url(../images/vote/bg-left.gif) repeat-y scroll center top #ffffff;\"><br /></td>\r\n<td style=\"height: 25px; padding: 5px 5px 0px; background-color: #ffffff;\"><input style=\"cursor: pointer;\" src=\"http://vnexpress.net/Images/Vote/submit.gif\" type=\"image\" />&nbsp;&nbsp;<input style=\"cursor: pointer;\" src=\"http://vnexpress.net/Images/Vote/view.gif\" type=\"image\" /></td>\r\n<td style=\"height: 25px; background: url(../images/vote/bg-right.gif) repeat-y scroll center top transparent;\"><br /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 4px; height: 5px; background: url(../images/vote/left-bottom.gif) no-repeat scroll center bottom #ffffff;\"><br /></td>\r\n<td style=\"height: 5px; background: url(../images/vote/bg-bottom.gif) repeat-x scroll center bottom #ffffff; font-size: 1px;\">&nbsp;</td>\r\n<td style=\"width: 4px; height: 5px; background: url(../images/vote/right-bottom.gif) no-repeat scroll center bottom #ffffff;\"><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Nỗi khổ kh&ocirc;ng chỉ của ri&ecirc;ng đấng m&agrave;y r&acirc;u, m&agrave; ngược  lại, nhiều b&agrave; vợ cũng giận hờn v&igrave; &ocirc;ng chồng ng&agrave;y xưa vốn tỉa t&oacute;t, bảnh  bao, lịch l&atilde;m, chỉ sau v&agrave;i năm về ở với nhau đ&atilde; thay đổi ho&agrave;n to&agrave;n. Mỹ  Phượng, gi&aacute;o vi&ecirc;n, 32 tuổi nh&agrave; ở quận 12 l&agrave; một minh chứng.</p>\r\n<p class=\"Normal\">Quen ở tuổi đ&ocirc;i mươi, sau hơn 5 năm t&igrave;m hiểu, Phượng  quyết định chấp nhận lời cầu h&ocirc;n từ Dũng - ch&agrave;ng thợ điện lịch sự,  galăng, si&ecirc;ng năng. Tuy nhi&ecirc;n sống với nhau bằng thời gian t&igrave;m hiểu, c&ocirc;  gi&aacute;o tiểu học đ&atilde; phải quyết định ly th&acirc;n v&igrave; kh&ocirc;ng thể tiếp tục chịu đựng  m&ugrave;i vị của chồng.</p>\r\n<p class=\"Normal\">&ldquo;T&ocirc;i bảo &lsquo;sao kh&ocirc;ng thay quần&rsquo;, anh ấy n&oacute;i &lsquo;t&ocirc;i sửa đồ  điện ngồi một chỗ th&igrave; c&oacute; g&igrave; m&agrave; bẩn&rsquo;. T&ocirc;i khuy&ecirc;n anh đi c&agrave; v&ocirc;i răng,  đ&aacute;nh răng sau khi h&uacute;t thuốc hoặc ăn h&agrave;nh tỏi, anh bảo &lsquo;c&ocirc; coi t&ocirc;i l&agrave; con  &agrave;&rsquo;, rồi vẫn trơ trơ như thế. Kh&ocirc;ng chịu nổi m&ugrave;i vị của chồng, t&ocirc;i dần  n&eacute; mỗi khi anh h&ocirc;n v&agrave; kh&ocirc;ng c&ograve;n cảm gi&aacute;c, thậm ch&iacute; nhờn nhợn khi anh  gần&rdquo;, Phượng n&oacute;i.</p>\r\n<p class=\"Normal\"><strong><span style=\"color: #4f4f4f;\">Tiến sĩ Huỳnh Văn Sơn,  Trưởng bộ m&ocirc;n T&acirc;m l&yacute; học, trường ĐHSP TP HCM, cho biết, tại Trung t&acirc;m  đ&agrave;o tạo chăm s&oacute;c tinh thần &Yacute; tưởng Việt nơi &ocirc;ng l&agrave;m cố vấn, hầu như việc  vợ hoặc chồng than phiền về nhau li&ecirc;n quan đến chuyện tế nhị như tr&ecirc;n  l&agrave; kh&ocirc;ng hiếm.</span></strong></p>\r\n<p class=\"Normal\">&ldquo;Vợ bị chồng than ch&aacute;n v&igrave; l&uacute;c \'y&ecirc;u\' nằm y&ecirc;n như c&aacute;i  gối hoặc do quần l&oacute;t h&ocirc;i, hay chỗ ấy cũng đ&oacute;ng bợn bốc m&ugrave;i. Hoặc ngược  lại vợ ớn chồng th&oacute;i h&igrave; hục m&agrave; chả quan t&acirc;m y&ecirc;u thương hay người bẩn  thỉu&hellip; kh&ocirc;ng c&ograve;n l&agrave; chuyện lạ. Ch&uacute;ng t&ocirc;i gọi đ&acirc;y l&agrave; hiện tượng vợ chồng  ch&aacute;n nhau m&agrave; nguy&ecirc;n nh&acirc;n xuất ph&aacute;t từ chủ quan của ch&iacute;nh người trong  cuộc&rdquo;, Tiến sĩ Sơn n&oacute;i.</p>\r\n<p class=\"Normal\">Theo &ocirc;ng, c&oacute; nhiều nguy&ecirc;n nh&acirc;n khiến hiện tượng n&agrave;y  xảy ra. Ngo&agrave;i l&yacute; do kh&aacute;ch quan như phải b&ugrave; đầu với c&ocirc;ng việc mưu sinh  đến qu&ecirc;n chăm ch&uacute;t bản th&acirc;n, hoặc v&ocirc; tư kh&ocirc;ng ch&uacute; &yacute;, th&igrave; nguy&ecirc;n nh&acirc;n chủ  yếu xuất ph&aacute;t từ t&acirc;m l&yacute; sau khi cưới, thấy chắc chắn người ta đ&atilde; l&agrave; của  m&igrave;nh rồi n&ecirc;n thả nổi, kh&ocirc;ng quan t&acirc;m chăm ch&uacute;t tới bản th&acirc;n.</p>\r\n<p class=\"Normal\">&ldquo;Suy nghĩ cưới rồi th&igrave; sao cũng được khiến nhiều người  tuột phong độ thảm hại. Cụ thể như c&aacute;c anh chồng lười xỉa răng, lười  tắm; c&aacute;c c&ocirc; vợ th&igrave; cũng kh&ocirc;ng tỉa t&oacute;t chăm s&oacute;c \'c&aacute;i ng&agrave;n v&agrave;ng\', hoặc một  ch&uacute;t duy&ecirc;n, một ch&uacute;t gợi cảm trong quan hệ vợ chồng. Chuyện tưởng nhỏ  nhưng rất dễ khiến vợ chồng ch&aacute;n nhau. M&agrave; đ&atilde; ch&aacute;n rồi th&igrave; dễ ph&aacute;t sinh  những chuyện phức tạp kh&aacute;c&rdquo;, &ocirc;ng Sơn n&oacute;i.</p>\r\n<p class=\"Normal\">Để khắc phục t&igrave;nh trạng tr&ecirc;n, theo &ocirc;ng Sơn, kh&ocirc;ng g&igrave;  kh&aacute;c ch&iacute;nh l&agrave; việc vợ chồng phải lu&ocirc;n giữ được h&igrave;nh ảnh của m&igrave;nh như  ng&agrave;y mới quen v&agrave; hơn thế nữa, phải lu&ocirc;n biết l&agrave;m mới bản th&acirc;n.</p>\r\n<p class=\"Normal\">&ldquo;Kh&ocirc;ng kh&oacute; đ&acirc;u việc anh chồng thơm tho sạch sẽ, biết  chăm ch&uacute;t vợ từ kh&uacute;c dạo đầu, biết khen nịnh vợ v&agrave; c&ocirc; vợ quyến rũ trong  chiếc đầm ngủ mới, một t&iacute; nước hoa k&egrave;m theo c&aacute;i liếc mắt t&igrave;nh tứ. Mọi  thứ tuy nhỏ nhưng l&agrave; chất keo khiến t&igrave;nh cảm vợ chồng ng&agrave;y một mặn nồng  hơn&rdquo;, Tiến sĩ Sơn tư vấn.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"100%\" bgcolor=\"#b0d8ff\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p class=\"Normal\">Gi&uacute;p c&aacute;c gia đ&igrave;nh giữ lửa hạnh ph&uacute;c, hiện Hội li&ecirc;n  hiệp phụ nữ huyện Củ Chi, Nh&agrave; B&egrave;, H&oacute;c M&ocirc;n, Cần Giờ, B&igrave;nh Ch&aacute;nh v&agrave; quận  12 kết hợp c&ugrave;ng Mobifone li&ecirc;n tục tổ chức những buổi n&oacute;i chuyện chuy&ecirc;n  đề h&ocirc;n nh&acirc;n gia đ&igrave;nh v&agrave;o cuối tuần từ nay đến hết ng&agrave;y 26/12.</p>\r\n<p class=\"Normal\">Bằng những trường hợp thực tế, chuy&ecirc;n gia t&acirc;m l&yacute; sẽ  ph&acirc;n t&iacute;ch, giảng giải kết hợp với tr&igrave;nh chiếu video clip, tọa đ&agrave;m, thi  ứng xử về c&aacute;c t&igrave;nh huống m&acirc;u thuẫn hay nảy sinh trong gia đ&igrave;nh. Chương  tr&igrave;nh dự hiến sẽ gi&uacute;p hơn 1.800 gia đ&igrave;nh c&oacute; những kiến thức ứng xử ph&ugrave;  hợp, bắt s&oacute;ng cảm x&uacute;c, kết nối y&ecirc;u thương.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\"><strong> Cao L&acirc;m</strong></p>', 1, '0000-00-00', 1, 0);
INSERT INTO `nncms_tin` (`idTin`, `idLT`, `urlHinh`, `TieuDe`, `TomTat`, `NoiDung`, `AnHien`, `NgayDang`, `idNguoiDung`, `SoLanXem`) VALUES
(15, 42, '15.jpg', 'Cao ốc xanh có thể giải bài toán khủng hoảng sinh thái ', 'Cho rằng các đô thị toàn cầu đang quá tải bởi công trình cao tầng thải lượng lớn khí CO2 và tiêu thụ nhiều năng lượng, theo các kiến trúc sư Pháp, đối mặt với khủng hoảng sinh thái, TP HCM cần đầu tư xây dựng cao ốc xanh.', '<p class=\"Normal\">Ng&agrave;y 24/11, tại hội thảo Thiết kế v&agrave; kiến tr&uacute;c tiết  kiệm năng lượng trong t&ograve;a nh&agrave;, kiến tr&uacute;c sư Ph&aacute;p Albert Abut cho biết,  việc x&acirc;y dựng c&aacute;c c&ocirc;ng tr&igrave;nh d&agrave;y đặc đ&atilde; thải ra lượng kh&iacute; CO2 lớn tr&ecirc;n  to&agrave;n cầu. Người cư ngụ trong c&aacute;c t&ograve;a nh&agrave; đang phải g&aacute;nh chịu ch&iacute; ph&iacute;  năng lượng ng&agrave;y một tăng cao. Với t&igrave;nh trạng n&agrave;y k&eacute;o d&agrave;i, thế giới đang  phải đối mặt với cuộc khủng hoảng sinh th&aacute;i.</p>\r\n<p class=\"Normal\">&Ocirc;ng Albert Abut cho hay: \"Giải ph&aacute;p cho cuộc khủng  hoảng sinh th&aacute;i trong tương lai ch&iacute;nh l&agrave; x&acirc;y dựng cao ốc xanh tiết kiệm  năng lượng. Việc x&acirc;y dựng n&agrave;y khiến chi ph&iacute; tăng l&ecirc;n khoảng 25% tổng  suất đầu tư cho t&ograve;a nh&agrave; nhưng mang lại hiệu quả l&acirc;u d&agrave;i\". <br /><br />Theo  vị kiến tr&uacute;c sư n&agrave;y, c&aacute;c giải ph&aacute;p x&acirc;y cao ốc xanh đ&atilde; c&oacute; sẵn trong tự  nhi&ecirc;n. &Ocirc;ng chỉ ra, ở từng khu vực c&oacute; kh&iacute; hậu v&agrave; v&ugrave;ng địa l&yacute; kh&aacute;c nhau,  người d&acirc;n địa phương c&oacute; c&aacute;ch x&acirc;y dựng nh&agrave; ở kh&aacute;c nhau nhưng lại rất ph&ugrave;  hợp với m&ocirc;i trường như: c&oacute; hệ thống th&ocirc;ng gi&oacute; tự nhi&ecirc;n, hệ thống c&aacute;ch  nhiệt v&agrave; c&aacute;ch &acirc;m cổ điển nhưng hiệu quả.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/36/58/a_tb_cao_oc_xanh.jpg\" border=\"1\" alt=\"\" width=\"490\" height=\"350\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Nhiều chuy&ecirc;n gia kiến tr&uacute;c nhận x&eacute;t, lượng cao ốc xanh tại TP HCM c&ograve;n qu&aacute; mỏng. Ảnh: <em>Vũ L&ecirc;.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">&Ocirc;ng Albert Abut n&oacute;i th&ecirc;m: \"Ch&uacute;ng t&ocirc;i đang nghi&ecirc;n cứu  c&aacute;ch tạo một lớp vỏ bọc của c&ocirc;ng tr&igrave;nh nhằm tăng t&iacute;nh c&aacute;ch nhiệt, giảm  thiểu mức sử dụng m&aacute;y điều h&ograve;a, tiết kiệm năng lượng v&agrave; lọc tiếng ồn\".</p>\r\n<p class=\"Normal\">Tương tự, kiến tr&uacute;c sư Olivier Souquet cảnh b&aacute;o, c&aacute;c  t&ograve;a nh&agrave; được x&acirc;y dựng qu&aacute; d&agrave;y đặc trong những đ&ocirc; thị lớn sẽ kh&ocirc;ng thể  đảm bảo c&aacute;c yếu tố về sinh th&aacute;i v&agrave; năng lượng. Quan điểm của &ocirc;ng  Souquet, cao ốc xanh trong tương lai cần ch&uacute; trọng đến hai yếu tố: sử  dụng vật liệu tại chỗ v&agrave; tận dụng tối đa năng lượng tự nhi&ecirc;n: gi&oacute;, &aacute;nh  s&aacute;ng, nước cho việc th&ocirc;ng gi&oacute;, chiếu s&aacute;ng, l&agrave;m m&aacute;t.</p>\r\n<p class=\"Normal\">Nữ kiến tr&uacute;c sư Myriam Oliver cho hay, ở Ph&aacute;p, khi x&acirc;y  c&aacute;c t&ograve;a nh&agrave; đạt chuẩn xanh chi ph&iacute; tăng th&ecirc;m 15% so với những t&ograve;a nh&agrave;  b&igrave;nh thường. Tuy nhi&ecirc;n, c&aacute;c chi ph&iacute; n&agrave;y c&oacute; thể thu hồi được khi t&ograve;a nh&agrave;  đi v&agrave;o hoạt động v&igrave; c&aacute;c hệ thống tiết kiệm năng lượng sẽ gi&uacute;p việc vận  h&agrave;nh t&ograve;a nh&agrave; hiệu quả v&agrave; tiết kiệm hơn.</p>\r\n<p class=\"Normal\">B&agrave; Myriam Oliver ph&acirc;n t&iacute;ch, để giảm tiếng ồn v&agrave; l&agrave;m  m&aacute;t c&aacute;c cao ốc, chủ đầu tư cần phải quan t&acirc;m ngay từ l&uacute;c x&acirc;y dựng c&ocirc;ng  tr&igrave;nh. Thực tế l&agrave; vật liệu c&aacute;ch nhiệt cũng c&oacute; thể gi&uacute;p giảm được tiếng  ồn v&igrave; c&aacute;ch nhiệt v&agrave; c&aacute;ch &acirc;m lu&ocirc;n gắn liền nhau. <br /><br />Đồng gi&aacute;m đốc  Trung t&acirc;m dự b&aacute;o v&agrave; nghi&ecirc;n cứu đ&ocirc; thị, kiến tr&uacute;c sư Fanny Quertamp  Nguyễn cho rằng, TP HCM đang chịu ảnh hưởng nặng nề từ biến đổi kh&iacute; hậu  n&ecirc;n rất cần khuyến kh&iacute;ch đầu tư x&acirc;y dựng cao ốc xanh. B&agrave; nhấn mạnh, c&aacute;ch  tiếp cận mới cho c&aacute;c nh&agrave; quy hoạch TP HCM l&agrave; cần quan t&acirc;m đến vấn đề  biến đổi kh&iacute; hậu v&agrave; c&ocirc;ng tr&igrave;nh sử dụng năng lượng hiệu quả.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A2/36/58/a_tb_cao_oc_xanh_3.jpg\" border=\"1\" alt=\"\" width=\"350\" height=\"490\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Một trong những ti&ecirc;u ch&iacute; của cao ốc xanh l&agrave;: sử dụng  năng lượng hiệu quả, kiến tr&uacute;c h&agrave;i h&ograve;a với kh&ocirc;ng gian v&agrave; quy hoạch  chung, c&aacute;ch nhiệt, chiếu s&aacute;ng tự nhi&ecirc;n, giảm tiếng ồn v&agrave; c&oacute; t&iacute;nh s&aacute;ng  tạo cao. Ảnh: <em>Vũ L&ecirc;.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">B&agrave; Fanny Quertamp Nguyễn nhận định, l&agrave; đ&ocirc; thị lớn,  những th&aacute;ch thức m&agrave; TP HCM phải giải quyết trong thời gian tới l&agrave; vấn đề  đ&ocirc; thị h&oacute;a qu&aacute; nhanh, cao ốc đua nhau mọc l&ecirc;n nhưng chưa c&oacute; nhiều cao  ốc xanh. Kh&ocirc;ng những thế, TP HCM c&oacute; đến 60% diện t&iacute;ch đất kh&ocirc;ng x&acirc;y dựng  được v&igrave; ngập nước hoặc thuộc diện bảo tồn.</p>\r\n<p class=\"Normal\">Gi&aacute;m đốc Trung t&acirc;m tiết kiệm năng lượng TP HCM Huỳnh Kim Tước nhận định, <strong><span style=\"color: #4f4f4f;\">một  c&ocirc;ng tr&igrave;nh \"xanh\" sử dụng năng lượng hiệu quả c&oacute; nhiều ưu điểm m&agrave; bất  cứ ai cũng mong muốn đầu tư x&acirc;y dựng. Tuy nhi&ecirc;n, r&agrave;o cản lớn nhất l&agrave;  suất đầu tư sẽ gia tăng trung b&igrave;nh 20% thậm ch&iacute; l&ecirc;n đến 40% cho c&aacute;c chi  ph&iacute; li&ecirc;n quan đến lĩnh vực thiết bị cơ điện.</span></strong> Một hạn chế  kh&aacute;c, Việt Nam thiếu đội ngũ c&oacute; kinh nghiệm tư vấn thiết kế x&acirc;y dựng  c&ocirc;ng tr&igrave;nh xanh. Cần c&oacute; cơ chế hỗ trợ t&agrave;i ch&iacute;nh hoặc ch&iacute;nh s&aacute;ch ưu đ&atilde;i  đất đai cho những đơn vị đầu tư x&acirc;y dựng c&ocirc;ng tr&igrave;nh xanh.</p>\r\n<p class=\"Normal\">Theo &ocirc;ng Tước, Việt Nam hiện c&oacute; 2 xu hướng ph&aacute;t triển  c&ocirc;ng tr&igrave;nh xanh. Một l&agrave; x&acirc;y dựng c&aacute;c l&agrave;ng n&ocirc;ng th&ocirc;n đ&ocirc; thị, chuyển h&oacute;a  l&agrave;ng x&atilde; n&ocirc;ng th&ocirc;n theo hướng đ&ocirc; thị h&oacute;a. TP HCM đang chọn một x&atilde; tại  huyện Củ Chi để thực hiện. Hai l&agrave; ph&aacute;t triển c&aacute;c l&agrave;ng, khu c&ocirc;ng nghiệp,  đ&ocirc; thị sinh th&aacute;i. Hai xu hướng n&agrave;y đang thu h&uacute;t nhiều nh&agrave; đầu tư, ph&aacute;t  triển rất nhanh nhưng c&ograve;n tự ph&aacute;t. Hiện c&aacute;c chuẩn mực như thế n&agrave;o l&agrave;  kiến tr&uacute;c xanh, kiến tr&uacute;c sinh th&aacute;i Việt Nam vẫn chưa c&oacute; ti&ecirc;u ch&iacute; ri&ecirc;ng.</p>\r\n<p class=\"Normal\">&Ocirc;ng Tước cho hay, chứng nhận của nh&agrave; nước do những  ti&ecirc;u chuẩn bắt buộc về hiệu quả năng lượng trong c&ocirc;ng tr&igrave;nh mang t&iacute;nh  bắt buộc do Sở X&acirc;y dựng địa phương thẩm định. Thứ hai l&agrave; c&aacute;c chứng nhận  về c&ocirc;ng tr&igrave;nh xanh, t&ograve;a nh&agrave; hiệu quả năng lượng do c&aacute;c tổ chức phi ch&iacute;nh  phủ thực hiện.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"100%\" bgcolor=\"#c8effb\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p class=\"Normal\">TP HCM đầu tư cao ốc xanh đạt chuẩn quốc tế đầu ti&ecirc;n.  Đ&oacute; l&agrave; dự &aacute;n t&ograve;a nh&agrave; Sở khoa học c&ocirc;ng nghệ TP HCM tại số 244, Điện Bi&ecirc;n  Phủ c&oacute; t&ecirc;n Lotus. C&ocirc;ng tr&igrave;nh dự kiến cao 9 tầng với hơn 8.000 m2 s&agrave;n.</p>\r\n<p class=\"Normal\">Theo th&ocirc;ng tin từ Trung t&acirc;m tiết kiệm năng lượng th&agrave;nh  phố, t&ograve;a nh&agrave; n&agrave;y đăng k&yacute; hạng Bạc trong chuẩn Lotus của quốc tế về cao  ốc xanh tiết kiệm năng lượng. Dự kiến mức ti&ecirc;u thụ năng lượng của t&ograve;a  nh&agrave; sẽ giảm 20%, ti&ecirc;u thụ nước giảm 30%, chi ph&iacute; vật liệu x&acirc;y dựng giảm  40%, m&ocirc;i trường sinh th&aacute;i giảm 50%, khả năng ngập lụt, khả năng g&acirc;y &ocirc;  nhiễm v&agrave; chất thải giảm 50%... so với c&aacute;c c&ocirc;ng tr&igrave;nh kh&aacute;c. Kinh ph&iacute; x&acirc;y  dựng t&ograve;a nh&agrave; n&agrave;y sẽ được r&oacute;t từ ng&acirc;n s&aacute;ch th&agrave;nh phố.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\"><strong>H&agrave; Thanh</strong></p>', 1, '0000-00-00', 1, 0),
(16, 9, 'a2.jpg', 'as dasd sd', 'as dad asd', 'a sdad sd ', 1, '2010-12-19', 0, 1),
(17, 12, 'a2.jpg', ' ww w w w w ', ' w ww w  ww ', ' ww  w w ww  w', 1, '2010-12-19', 0, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nncms_cauhinhchung`
--
ALTER TABLE `nncms_cauhinhchung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nncms_chungloai`
--
ALTER TABLE `nncms_chungloai`
  ADD PRIMARY KEY (`idCL`);

--
-- Chỉ mục cho bảng `nncms_donhang`
--
ALTER TABLE `nncms_donhang`
  ADD PRIMARY KEY (`idDH`);

--
-- Chỉ mục cho bảng `nncms_donhangchitiet`
--
ALTER TABLE `nncms_donhangchitiet`
  ADD PRIMARY KEY (`idDH`,`idSP`);

--
-- Chỉ mục cho bảng `nncms_hangsanxuat`
--
ALTER TABLE `nncms_hangsanxuat`
  ADD PRIMARY KEY (`idHSX`);

--
-- Chỉ mục cho bảng `nncms_lienket`
--
ALTER TABLE `nncms_lienket`
  ADD PRIMARY KEY (`idLK`);

--
-- Chỉ mục cho bảng `nncms_loaisp`
--
ALTER TABLE `nncms_loaisp`
  ADD PRIMARY KEY (`idLoai`);

--
-- Chỉ mục cho bảng `nncms_loaitin`
--
ALTER TABLE `nncms_loaitin`
  ADD PRIMARY KEY (`idLT`);

--
-- Chỉ mục cho bảng `nncms_menus`
--
ALTER TABLE `nncms_menus`
  ADD PRIMARY KEY (`idMenu`);

--
-- Chỉ mục cho bảng `nncms_nguoidung`
--
ALTER TABLE `nncms_nguoidung`
  ADD PRIMARY KEY (`idNguoiDung`);

--
-- Chỉ mục cho bảng `nncms_quangcao`
--
ALTER TABLE `nncms_quangcao`
  ADD PRIMARY KEY (`idQC`);

--
-- Chỉ mục cho bảng `nncms_sanpham`
--
ALTER TABLE `nncms_sanpham`
  ADD PRIMARY KEY (`idSP`);

--
-- Chỉ mục cho bảng `nncms_slider`
--
ALTER TABLE `nncms_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nncms_tin`
--
ALTER TABLE `nncms_tin`
  ADD PRIMARY KEY (`idTin`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `nncms_chungloai`
--
ALTER TABLE `nncms_chungloai`
  MODIFY `idCL` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `nncms_donhang`
--
ALTER TABLE `nncms_donhang`
  MODIFY `idDH` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nncms_hangsanxuat`
--
ALTER TABLE `nncms_hangsanxuat`
  MODIFY `idHSX` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `nncms_lienket`
--
ALTER TABLE `nncms_lienket`
  MODIFY `idLK` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nncms_loaisp`
--
ALTER TABLE `nncms_loaisp`
  MODIFY `idLoai` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `nncms_loaitin`
--
ALTER TABLE `nncms_loaitin`
  MODIFY `idLT` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `nncms_menus`
--
ALTER TABLE `nncms_menus`
  MODIFY `idMenu` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `nncms_nguoidung`
--
ALTER TABLE `nncms_nguoidung`
  MODIFY `idNguoiDung` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `nncms_quangcao`
--
ALTER TABLE `nncms_quangcao`
  MODIFY `idQC` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nncms_sanpham`
--
ALTER TABLE `nncms_sanpham`
  MODIFY `idSP` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT cho bảng `nncms_slider`
--
ALTER TABLE `nncms_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nncms_tin`
--
ALTER TABLE `nncms_tin`
  MODIFY `idTin` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
