-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 02, 2021 lúc 04:57 PM
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
-- Cấu trúc bảng cho bảng `nncms_admin`
--

CREATE TABLE `nncms_admin` (
  `idAdmin` int(255) NOT NULL,
  `TenDangNhap` varchar(255) CHARACTER SET utf8 NOT NULL,
  `MatKhau` varchar(255) CHARACTER SET utf8 NOT NULL,
  `HoTen` varchar(255) CHARACTER SET utf8 NOT NULL,
  `DienThoai` varchar(15) NOT NULL,
  `Email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `DiaChi` varchar(255) CHARACTER SET utf8 NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` tinyint(4) NOT NULL,
  `NgayDangKy` date NOT NULL,
  `idRole` int(10) NOT NULL DEFAULT 3,
  `DiemThuong` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nncms_admin`
--

INSERT INTO `nncms_admin` (`idAdmin`, `TenDangNhap`, `MatKhau`, `HoTen`, `DienThoai`, `Email`, `DiaChi`, `NgaySinh`, `GioiTinh`, `NgayDangKy`, `idRole`, `DiemThuong`) VALUES
(1, 'superAdmin', '5a3144aef06bd68dd13254d720a01e90', 'Minh Thức', '377810088', 'minhthuc2796@gmail.com', 'ho chi minh', '1996-07-20', 0, '2021-05-21', 0, 0),
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Trương Minh Thức', '03785100100', 'minhthuc12345678@gmail.com', 'ho chi minh', '1996-07-20', 0, '2021-05-21', 2, 0);

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
(16, 'Kiếm Hiệp', 3, 1),
(17, 'Tình Yêu', 2, 1),
(18, 'Truyện Ma', 0, 1),
(19, 'Cổ Đại', 0, 1),
(20, 'Khoa Học', 0, 1),
(21, 'Du Lịch', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nncms_chuong`
--

CREATE TABLE `nncms_chuong` (
  `idChuong` int(255) NOT NULL,
  `idTruyen` int(255) NOT NULL,
  `ChuongSo` int(255) NOT NULL,
  `TenChuong` varchar(255) CHARACTER SET utf8 NOT NULL,
  `SoLanXem` int(255) NOT NULL DEFAULT 0,
  `NoiDung` text CHARACTER SET utf8 NOT NULL,
  `NgayDang` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nncms_chuong`
--

INSERT INTO `nncms_chuong` (`idChuong`, `idTruyen`, `ChuongSo`, `TenChuong`, `SoLanXem`, `NoiDung`, `NgayDang`) VALUES
(14, 20, 1, 'Chương 1', 39, '<p>\r\n	test</p>\r\n', '2021-05-21'),
(15, 20, 2, 'Chương 2: Dây Là Chuong Thứ2', 239, '<p>\r\n	haha&nbsp;</p>\r\n', '2021-05-21'),
(16, 20, 3, 'Chuong 3', 27, '<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Giấc mơ về một ng&ocirc;i nh&agrave; biệt lập với s&acirc;n vườn xung quanh đ&atilde; l&agrave; niềm mơ ước của nhiều thế hệ người Canada. B&acirc;y giờ, n&oacute; l&agrave; ti&ecirc;u chuẩn v&agrave; tiếp tục khiến giới trẻ noi theo. Ngay cả những người nhập cư v&agrave;o Canada cũng coi đ&oacute; l&agrave; mục ti&ecirc;u để phấn đấu. Sở hữu một ng&ocirc;i nh&agrave; c&oacute; s&acirc;n vườn đ&atilde; trở th&agrave;nh chuẩn mực m&agrave; đại đa số người d&acirc;n Canada đều nỗ lực hướng tới.</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Một b&aacute;o c&aacute;o của Tạp ch&iacute; Bất động sản Canada cho thấy d&ugrave; nguồn cung căn hộ ở Canada đang tăng l&ecirc;n nhưng nh&igrave;n chung, người trẻ tuổi vẫn muốn một ng&ocirc;i nh&agrave; độc lập. Trong khi đ&oacute;, nỗ lực của ch&iacute;nh quyền nhằm th&uacute;c đẩy những căn hộ chung cư gi&aacute; rẻ ở trung t&acirc;m c&aacute;c th&agrave;nh phố lại v&ocirc; t&igrave;nh đẩy mọi người đi xa hơn về c&aacute;c v&ugrave;ng ngoại &ocirc; để c&oacute; được một căn nh&agrave; mơ ước.</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Xu hướng n&agrave;y kh&ocirc;ng chỉ diễn ra trong thời điểm dịch bệnh ho&agrave;nh h&agrave;nh. Ngay từ năm 2018, c&oacute; 24.000 cư d&acirc;n với phần nhiều l&agrave; c&aacute;c hộ gia đ&igrave;nh trẻ đ&atilde; chuyển từ Montreal đến c&aacute;c v&ugrave;ng ngoại &ocirc; của Quebec để mua nh&agrave;. Đ&acirc;y được m&ocirc; tả l&agrave; đợt di cư khỏi v&ugrave;ng l&otilde;i lớn nhất kể từ năm 2010.</p>\r\n', '2021-05-21'),
(17, 20, 4, 'chương 4', 24, '<p data-placeholder=\"[nhập chú thích]\" style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Người Canada cũng c&oacute; tư tưởng &quot;an cư, lạc nghiệp&quot; với &quot;nh&agrave; cao, vườn rộng&quot;. T&iacute;nh trung b&igrave;nh, nh&agrave; của người Canada c&oacute; diện t&iacute;ch lớn nhất thế giới, vượt qua Anh, Ph&aacute;p hay thậm ch&iacute; l&agrave; Mỹ. D&ugrave; l&agrave; quốc gia rộng thứ 2 thế giới về mặt diện t&iacute;ch nhưng Canada cũng kh&ocirc;ng tr&aacute;nh khỏi hiện tượng cạn kiệt đất đai như những g&igrave; đ&atilde; diễn ra ở ch&acirc;u &Acirc;u, Nhật Bản hay c&aacute;c khu vực kh&aacute;c tr&ecirc;n thế giới trong những năm gần đ&acirc;y.</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Thiếu tướng Australia n&oacute;i thẳng: Mỹ thừa biết m&igrave;nh kh&ocirc;ng c&oacute; &quot;cửa thắng&quot; nếu gi&agrave;nh Đ&agrave;i Loan với TQ Trung Quốc bị tố tr&aacute;o trở nuốt trọn b&atilde;i Scarborough v&agrave; lời thừa nhận kh&ocirc;ng ngờ của &ocirc;ng Tập Bất ngờ tặng TT Putin &quot;m&oacute;n qu&agrave; qu&yacute;&quot; về Nord Stream 2, Mỹ m&acirc;u thuẫn đỉnh điểm: Tất cả v&igrave; Đức?</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Đại dịch Covid-19 khiến việc sở hữu một ng&ocirc;i nh&agrave; ri&ecirc;ng biệt, c&oacute; s&acirc;n vườn c&agrave;ng quan trọng hơn bao giờ hết. Khi đại đa số người d&acirc;n phải l&agrave;m việc ở nh&agrave; để hạn chế tiếp x&uacute;c, những ng&ocirc;i nh&agrave; như vậy trở th&agrave;nh những &quot;khu nghỉ dưỡng&quot; tại gia để mọi người c&oacute; thể sống một c&aacute;ch thoải m&aacute;i.</p>\r\n<div id=\"lv_isv_container\" style=\"line-height: 20pt; color: rgb(0, 0, 0); text-align: justify; width: 690px; height: 0px; transition: height 2s ease 0s; overflow: hidden; font-family: Arial !important; font-size: 11.2pt !important;\">\r\n	<iframe frameborder=\"0\" id=\"lv_isv_banner\" scrolling=\"no\" src=\"https://libs.lavanetwork.net/videojs/inread/index.html#123,690,431,,https://delivery.lavanetwork.net/www/delivery/fc.php?script=bannerTypeHtml:vastInlineBannerTypeHtml:vastInlineHtmlExtend&amp;format=vast&amp;nz=1&amp;zones=pre-roll%253D1314&amp;version=2,true,true,https://docbao.vn/the-gioi/giai-ma-con-sot-ngoi-nha-mo-uoc-khien-quoc-gia-rong-thu-2-the-gioi-roi-vao-canh-khat-dat-tintuc759441\" style=\"margin: 0px; padding: 0px; outline-style: none; outline-width: 0px; width: 690px; height: 0px;\"></iframe></div>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Trong khi đất tại c&aacute;c th&agrave;nh phố được ưu ti&ecirc;n l&agrave;m c&ocirc;ng sở hoặc phục vụ c&aacute;c dự &aacute;n nh&agrave; chung cư, người Canada sẵn s&agrave;ng đi xa hơn để c&oacute; được một ng&ocirc;i nh&agrave; mơ ước. Điều n&agrave;y khiến những v&ugrave;ng ngoại &ocirc; trở n&ecirc;n tấp nập người đến ở v&agrave; thực sự tạo ra một cơn sốt.</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	N&oacute;i Canada hết đất kh&ocirc;ng chỉ l&agrave; c&acirc;u n&oacute;i v&iacute; von. Những th&agrave;nh phố l&agrave; nơi quy tụ phần lớn d&acirc;n số Australia. Văn h&oacute;a sở hữu nh&agrave; của người d&acirc;n Canada c&ugrave;ng với đặc th&ugrave; của c&aacute;c c&ocirc;ng tr&igrave;nh n&agrave;y g&acirc;y ra hiện tượng khan hiếm đất thực sự ở trong th&agrave;nh phố v&agrave; những v&ugrave;ng ngoại &ocirc; l&acirc;n cận. Trong khi đ&oacute;, những v&ugrave;ng ngoại &ocirc; kh&ocirc;ng trải d&agrave;i m&atilde;i m&atilde;i.</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Vancouver nằm giữa Th&aacute;i B&igrave;nh Dương v&agrave; c&aacute;c d&atilde;y n&uacute;i, Toronto v&agrave; Ottawa chịu những quy định để co lại như những &quot;h&ograve;n đảo&quot; để phục vụ mục đ&iacute;ch ph&aacute;t triển trong khi Montreal thực sự l&agrave; một h&ograve;n đảo khiến t&agrave;i nguy&ecirc;n đất đai của ch&uacute;ng bị giới hạn. Những ng&ocirc;i nh&agrave; chung cư lại kh&ocirc;ng được ưa chuộng v&agrave; những điều n&agrave;y tạo ra một b&agrave;i to&aacute;n kh&oacute;.</p>\r\n', '2021-05-21'),
(18, 20, 5, 'Chương 5', 18, '<p data-placeholder=\"[nhập chú thích]\" style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Trong khi đ&oacute;, thế hệ Millennials cũng đang sẵn s&agrave;ng trả nhiều tiền hơn để mua được những ng&ocirc;i nh&agrave; mơ ước. Thậm ch&iacute;, những người dưới 35 tuổi c&ograve;n đang rất sẵn s&agrave;ng tham gia v&agrave;o c&aacute;c cuộc đấu gi&aacute; để c&oacute; được một nơi ở m&agrave; đ&atilde; trở th&agrave;nh ti&ecirc;u chuẩn của người Cananda.</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Theo khảo s&aacute;t chung, 1/3 số người được hỏi ở Canada cho biết họ sẵn s&agrave;ng tham gia đấu gi&aacute; để mua được ng&ocirc;i nh&agrave; như &yacute;. Tuy nhi&ecirc;n, c&oacute; tới 51% những người dưới 35 tuổi sẵn s&agrave;ng cho điều n&agrave;y. N&oacute; cao hơn rất nhiều so với 31% của nh&oacute;m từ 35 đến 45 tuổi. Với những người từ 55 tuổi trở n&ecirc;n, chỉ c&oacute; 18% số người sẵn s&agrave;ng trả gi&aacute; cao hơn để mua nh&agrave;.</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Thậm ch&iacute;, trong số những người tham gia khảo s&aacute;t, c&oacute; 19% tuy&ecirc;n bố sẵn s&agrave;ng trả nhiều hơn 50.000 USD để c&oacute; được ng&ocirc;i nh&agrave; như &yacute;. Số người sẵn s&agrave;ng trải th&ecirc;m từ 50.000 đến 100.000 USD khi&ecirc;m tốn hơn với 13%.</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Tuy nhi&ecirc;n, một nửa trong số những người được hỏi nhận thấy rằng việc mua nh&agrave; đang kh&oacute; khăn hơn so với trước dịch. D&ugrave; đại dịch cho ph&eacute;p một số người Canada tiết kiệm được nhiều tiền v&agrave; dễ d&agrave;ng mua một ng&ocirc;i nh&agrave;, số kh&aacute;c lại phải đối mặt với bất ổn kinh tế. 1/3 số người được hỏi tin rằng t&agrave;i ch&iacute;nh c&aacute; nh&acirc;n của họ khiến việc mua nh&agrave; trở n&ecirc;n k&eacute;m khả thi hơn.</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Ngo&agrave;i ra, t&igrave;nh trạng khan hiếm h&agrave;ng tồn cũng đang khiến thị trường bất động sản Canada trở n&ecirc;n s&ocirc;i động. Đi c&ugrave;ng với đ&oacute;, gi&aacute; những ng&ocirc;i nh&agrave; cũng tăng cao hơn, đồng nghĩa với việc g&acirc;y kh&oacute; cho c&aacute;c gia đ&igrave;nh trong việc t&igrave;m kiếm một ng&ocirc;i nh&agrave; mơ ước trong năm nay v&agrave; những năm tới.</p>\r\n', '2021-05-21'),
(19, 20, 6, 'Chương 6', 14, '<p data-placeholder=\"[nhập chú thích]\" style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Người Canada cũng c&oacute; tư tưởng &quot;an cư, lạc nghiệp&quot; với &quot;nh&agrave; cao, vườn rộng&quot;. T&iacute;nh trung b&igrave;nh, nh&agrave; của người Canada c&oacute; diện t&iacute;ch lớn nhất thế giới, vượt qua Anh, Ph&aacute;p hay thậm ch&iacute; l&agrave; Mỹ. D&ugrave; l&agrave; quốc gia rộng thứ 2 thế giới về mặt diện t&iacute;ch nhưng Canada cũng kh&ocirc;ng tr&aacute;nh khỏi hiện tượng cạn kiệt đất đai như những g&igrave; đ&atilde; diễn ra ở ch&acirc;u &Acirc;u, Nhật Bản hay c&aacute;c khu vực kh&aacute;c tr&ecirc;n thế giới trong những năm gần đ&acirc;y.</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Thiếu tướng Australia n&oacute;i thẳng: Mỹ thừa biết m&igrave;nh kh&ocirc;ng c&oacute; &quot;cửa thắng&quot; nếu gi&agrave;nh Đ&agrave;i Loan với TQ Trung Quốc bị tố tr&aacute;o trở nuốt trọn b&atilde;i Scarborough v&agrave; lời thừa nhận kh&ocirc;ng ngờ của &ocirc;ng Tập Bất ngờ tặng TT Putin &quot;m&oacute;n qu&agrave; qu&yacute;&quot; về Nord Stream 2, Mỹ m&acirc;u thuẫn đỉnh điểm: Tất cả v&igrave; Đức?</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Đại dịch Covid-19 khiến việc sở hữu một ng&ocirc;i nh&agrave; ri&ecirc;ng biệt, c&oacute; s&acirc;n vườn c&agrave;ng quan trọng hơn bao giờ hết. Khi đại đa số người d&acirc;n phải l&agrave;m việc ở nh&agrave; để hạn chế tiếp x&uacute;c, những ng&ocirc;i nh&agrave; như vậy trở th&agrave;nh những &quot;khu nghỉ dưỡng&quot; tại gia để mọi người c&oacute; thể sống một c&aacute;ch thoải m&aacute;i.</p>\r\n<div id=\"lv_isv_container\" style=\"line-height: 20pt; color: rgb(0, 0, 0); text-align: justify; width: 690px; height: 0px; transition: height 2s ease 0s; overflow: hidden; font-family: Arial !important; font-size: 11.2pt !important;\">\r\n	<iframe frameborder=\"0\" id=\"lv_isv_banner\" scrolling=\"no\" src=\"https://libs.lavanetwork.net/videojs/inread/index.html#123,690,431,,https://delivery.lavanetwork.net/www/delivery/fc.php?script=bannerTypeHtml:vastInlineBannerTypeHtml:vastInlineHtmlExtend&amp;format=vast&amp;nz=1&amp;zones=pre-roll%253D1314&amp;version=2,true,true,https://docbao.vn/the-gioi/giai-ma-con-sot-ngoi-nha-mo-uoc-khien-quoc-gia-rong-thu-2-the-gioi-roi-vao-canh-khat-dat-tintuc759441\" style=\"margin: 0px; padding: 0px; outline-style: none; outline-width: 0px; width: 690px; height: 0px;\"></iframe></div>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Trong khi đất tại c&aacute;c th&agrave;nh phố được ưu ti&ecirc;n l&agrave;m c&ocirc;ng sở hoặc phục vụ c&aacute;c dự &aacute;n nh&agrave; chung cư, người Canada sẵn s&agrave;ng đi xa hơn để c&oacute; được một ng&ocirc;i nh&agrave; mơ ước. Điều n&agrave;y khiến những v&ugrave;ng ngoại &ocirc; trở n&ecirc;n tấp nập người đến ở v&agrave; thực sự tạo ra một cơn sốt.</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	N&oacute;i Canada hết đất kh&ocirc;ng chỉ l&agrave; c&acirc;u n&oacute;i v&iacute; von. Những th&agrave;nh phố l&agrave; nơi quy tụ phần lớn d&acirc;n số Australia. Văn h&oacute;a sở hữu nh&agrave; của người d&acirc;n Canada c&ugrave;ng với đặc th&ugrave; của c&aacute;c c&ocirc;ng tr&igrave;nh n&agrave;y g&acirc;y ra hiện tượng khan hiếm đất thực sự ở trong th&agrave;nh phố v&agrave; những v&ugrave;ng ngoại &ocirc; l&acirc;n cận. Trong khi đ&oacute;, những v&ugrave;ng ngoại &ocirc; kh&ocirc;ng trải d&agrave;i m&atilde;i m&atilde;i.</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Vancouver nằm giữa Th&aacute;i B&igrave;nh Dương v&agrave; c&aacute;c d&atilde;y n&uacute;i, Toronto v&agrave; Ottawa chịu những quy định để co lại như những &quot;h&ograve;n đảo&quot; để phục vụ mục đ&iacute;ch ph&aacute;t triển trong khi Montreal thực sự l&agrave; một h&ograve;n đảo khiến t&agrave;i nguy&ecirc;n đất đai của ch&uacute;ng bị giới hạn. Những ng&ocirc;i nh&agrave; chung cư lại kh&ocirc;ng được ưa chuộng v&agrave; những điều n&agrave;y tạo ra một b&agrave;i to&aacute;n kh&oacute;.</p>\r\n<p data-placeholder=\"[nhập chú thích]\" style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Trong khi đ&oacute;, thế hệ Millennials cũng đang sẵn s&agrave;ng trả nhiều tiền hơn để mua được những ng&ocirc;i nh&agrave; mơ ước. Thậm ch&iacute;, những người dưới 35 tuổi c&ograve;n đang rất sẵn s&agrave;ng tham gia v&agrave;o c&aacute;c cuộc đấu gi&aacute; để c&oacute; được một nơi ở m&agrave; đ&atilde; trở th&agrave;nh ti&ecirc;u chuẩn của người Cananda.</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Theo khảo s&aacute;t chung, 1/3 số người được hỏi ở Canada cho biết họ sẵn s&agrave;ng tham gia đấu gi&aacute; để mua được ng&ocirc;i nh&agrave; như &yacute;. Tuy nhi&ecirc;n, c&oacute; tới 51% những người dưới 35 tuổi sẵn s&agrave;ng cho điều n&agrave;y. N&oacute; cao hơn rất nhiều so với 31% của nh&oacute;m từ 35 đến 45 tuổi. Với những người từ 55 tuổi trở n&ecirc;n, chỉ c&oacute; 18% số người sẵn s&agrave;ng trả gi&aacute; cao hơn để mua nh&agrave;.</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Thậm ch&iacute;, trong số những người tham gia khảo s&aacute;t, c&oacute; 19% tuy&ecirc;n bố sẵn s&agrave;ng trả nhiều hơn 50.000 USD để c&oacute; được ng&ocirc;i nh&agrave; như &yacute;. Số người sẵn s&agrave;ng trải th&ecirc;m từ 50.000 đến 100.000 USD khi&ecirc;m tốn hơn với 13%.</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Tuy nhi&ecirc;n, một nửa trong số những người được hỏi nhận thấy rằng việc mua nh&agrave; đang kh&oacute; khăn hơn so với trước dịch. D&ugrave; đại dịch cho ph&eacute;p một số người Canada tiết kiệm được nhiều tiền v&agrave; dễ d&agrave;ng mua một ng&ocirc;i nh&agrave;, số kh&aacute;c lại phải đối mặt với bất ổn kinh tế. 1/3 số người được hỏi tin rằng t&agrave;i ch&iacute;nh c&aacute; nh&acirc;n của họ khiến việc mua nh&agrave; trở n&ecirc;n k&eacute;m khả thi hơn.</p>\r\n<p style=\"line-height: 20pt; margin-bottom: 15px; margin-top: 15px; position: relative; color: rgb(0, 0, 0); text-align: justify; font-size: 11.2pt !important; font-family: Arial !important;\">\r\n	Ngo&agrave;i ra, t&igrave;nh trạng khan hiếm h&agrave;ng tồn cũng đang khiến thị trường bất động sản Canada trở n&ecirc;n s&ocirc;i động. Đi c&ugrave;ng với đ&oacute;, gi&aacute; những ng&ocirc;i nh&agrave; cũng tăng cao hơn, đồng nghĩa với việc g&acirc;y kh&oacute; cho c&aacute;c gia đ&igrave;nh trong việc t&igrave;m kiếm một ng&ocirc;i nh&agrave; mơ ước trong năm nay v&agrave; những năm tới.</p>\r\n', '2021-05-21'),
(20, 20, 7, 'Chương 7: Con Đường Hạnh Phúc', 3, '<p>\r\n	khong biết n&oacute;i g&igrave;!</p>\r\n', '2021-05-21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nncms_comments`
--

CREATE TABLE `nncms_comments` (
  `idCmt` int(255) NOT NULL,
  `idTruyen` int(255) NOT NULL,
  `idNguoiDung` int(255) NOT NULL,
  `NoiDung` varchar(255) CHARACTER SET utf8 NOT NULL,
  `NgayDang` date DEFAULT NULL,
  `TrangThai` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nncms_comments`
--

INSERT INTO `nncms_comments` (`idCmt`, `idTruyen`, `idNguoiDung`, `NoiDung`, `NgayDang`, `TrangThai`) VALUES
(5, 20, 1, 'comment dao 2', '2021-06-01', 0),
(6, 20, 20, 'Tui binh luan lan 3', '2021-06-01', 0),
(8, 20, 21, 'haha cười ỉa', '2021-06-01', 0),
(9, 20, 1, 'hêh', '2021-06-02', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nncms_comments_rep`
--

CREATE TABLE `nncms_comments_rep` (
  `idCmtRep` int(255) NOT NULL,
  `idCmt` int(255) NOT NULL,
  `idNguoiDung` int(11) NOT NULL,
  `NoiDung` mediumtext CHARACTER SET utf8 NOT NULL,
  `NgayDang` date DEFAULT NULL,
  `TrangThai` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nncms_comments_rep`
--

INSERT INTO `nncms_comments_rep` (`idCmtRep`, `idCmt`, `idNguoiDung`, `NoiDung`, `NgayDang`, `TrangThai`) VALUES
(1, 5, 1, 'tra loi binh lian của comment dao 2', '2021-06-02', 0),
(2, 5, 1, 'tra loi lần 2 binh lian của comment dao 2', '2021-06-02', 1),
(3, 5, 1, 'tra loi lần 3 binh lian của comment dao 2', '2021-06-02', 0),
(5, 5, 20, 'tra loi binh lian của comment dao 2', '2021-06-02', 0),
(7, 8, 1, 'hahahaahaha', NULL, 0),
(8, 8, 1, 'huhu huhu', '2021-06-02', 0);

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
(18, '21232f297a57a5a743894a0e4a801fc3', 'minhthuc12345678@gmail.com', 'test', '52345345', 'ho chi minh', '2012-12-12', 0, '2021-05-21', 0, 1, '7d2be41b1bde6ff8fe45150c37488ebb', 0),
(19, '21232f297a57a5a743894a0e4a801fc3', 'minhthuc1@gmail.com', 'Minh Thức', '11111111', 'ho chi minh', '2021-04-30', 0, '2021-05-22', 0, 1, '1a9dcba2349fef2bb823c39e45dd6c96', 0),
(20, '21232f297a57a5a743894a0e4a801fc3', 'minhthuc123@gmail.com', 'Thị Nở', '18001008', 'ho chi minh', '1990-10-10', 1, '2021-05-30', 0, 0, 'a223c6b3710f85df22e9377d6c4f7553', 0),
(21, '21232f297a57a5a743894a0e4a801fc3', 'minhthuc1234@gmail.com', 'Quynh', '121212', 'ho chi minh', '2000-12-12', 1, '2021-05-30', 0, 0, 'b4affa4f6b27df047d63d66fe4ac5600', 0);

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
-- Cấu trúc bảng cho bảng `nncms_truyen`
--

CREATE TABLE `nncms_truyen` (
  `idTruyen` int(255) NOT NULL,
  `idCL` int(255) NOT NULL,
  `TenTruyen` varchar(255) CHARACTER SET utf8 NOT NULL,
  `TacGia` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'User',
  `Nguon` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'Internet',
  `MoTa` text CHARACTER SET utf8 NOT NULL,
  `UrlHinh` varchar(255) NOT NULL,
  `NgayDang` date NOT NULL,
  `SoLanXem` int(255) NOT NULL DEFAULT 0,
  `TrangThai` tinyint(4) NOT NULL,
  `AnHien` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nncms_truyen`
--

INSERT INTO `nncms_truyen` (`idTruyen`, `idCL`, `TenTruyen`, `TacGia`, `Nguon`, `MoTa`, `UrlHinh`, `NgayDang`, `SoLanXem`, `TrangThai`, `AnHien`) VALUES
(20, 16, 'Kiếm Đạo Độc Tôn', 'Users', 'Internet', '<div>\r\n	Được s&aacute;ng t&aacute;c bởi t&aacute;c giả Kiếm Du Th&aacute;i Hư, truyện ti&ecirc;n hiệp nổi tiếng Kiếm Đạo Độc T&ocirc;n đ&atilde; nhanh ch&oacute;ng chiếm được cảm t&igrave;nh của đ&ocirc;ng đảo đọc giả mộ điệu ngay từ những ng&agrave;y đầu ra mắt, h&agrave;ng trăm t&aacute;c phẩm đ&atilde; được b&aacute;n ra v&agrave; số lượng vẫn kh&ocirc;ng ngừng tăng l&ecirc;n ở những tuần tiếp theo đ&oacute;, chỉ như vậy cũng đ&atilde; đủ để n&oacute;i l&ecirc;n sự hấp dẫn của bộ truyện đặc sắc n&agrave;y. Đến nay, truyện ti&ecirc;n hiệp Kiếm Đạo Độc T&ocirc;n đ&atilde; trở th&agrave;nh một trong những tượng đ&agrave;i của thể loại truyện ti&ecirc;n hiệp Trung Quốc, ho&agrave;n to&agrave;n c&oacute; thể s&aacute;nh vai c&ugrave;ng c&aacute;c đại t&aacute;c phẩm kh&aacute;c như Gi&agrave; Thi&ecirc;n, B&aacute;ch Luyện Th&agrave;nh Ti&ecirc;n, Ph&agrave;m Nh&acirc;n Tu Ti&ecirc;n &hellip;. Đọc giả y&ecirc;u th&iacute;ch truyện Kiếm Đạo Độc T&ocirc;n kh&ocirc;ng chỉ v&igrave; nội dung c&acirc;u chuyện c&oacute; sức l&ocirc;i cuốn m&atilde;nh liệt, những t&igrave;nh huống trong c&acirc;u chuyện được thắt mở v&ocirc; c&ugrave;ng hợp l&yacute; m&agrave; c&ograve;n v&igrave; phong c&aacute;ch dẫn truyện v&ocirc; c&ugrave;ng tinh tế của t&aacute;c giả Kiếm Du Th&aacute;i Hư. Những h&igrave;nh ảnh đầy l&atilde;n mạn của đ&ocirc;i lứa y&ecirc;u nhau, những b&iacute; kiếp v&otilde; c&ocirc;ng đầy uy vũ, cho đến những trận thư h&ugrave;ng đầy kịch t&iacute;nh...tất cả dường như đ&atilde; trở th&agrave;nh một bức họa r&otilde; n&eacute;t hiện ra trước mắt đọc giả.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Mở đầu c&acirc;u chuyện, nh&acirc;n vật ch&iacute;nh của ch&uacute;ng ta l&agrave; ch&agrave;ng thiếu ni&ecirc;n Diệp Trần vốn l&agrave; đại c&ocirc;ng tử của gia tộc Diệp Gia tại v&ugrave;ng đất Ch&acirc;n Linh Đại Lục rộng lớn. Với thi&ecirc;n ph&uacute; v&otilde; học thấp k&eacute;m n&ecirc;n từ nhỏ ch&agrave;ng đ&atilde; l&agrave; trung t&acirc;m của những lời d&egrave;m pha tr&ecirc;u chọc từ ch&iacute;nh những người anh em trong d&ograve;ng tộc của m&igrave;nh.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Kh&ocirc;ng cam phận với hai từ &ldquo;phế vật&rdquo; m&agrave; bọn họ g&aacute;n cho m&igrave;nh, Diệp Trần quyết định xin l&agrave;m một đệ tử ngoại m&ocirc;n của Lưu V&acirc;n T&ocirc;ng t&ocirc;ng ph&aacute;i với mong muốn trở th&agrave;nh một kiếm sĩ h&ugrave;ng mạnh. Thế nhưng mọi chuyện cũng kh&ocirc;ng đơn giản như vậy, ngay từ trận đấu tuyển chọn đầu ti&ecirc;n ch&agrave;ng đ&atilde; bị đ&aacute;nh thảm hại đến mức nằm liệt tr&ecirc;n giường bệnh dưỡng thương. Nhưng cũng ch&iacute;nh l&uacute;c n&agrave;y, Diệp Trần đ&atilde; ngộ ra ch&acirc;n l&yacute; v&otilde; học m&agrave; m&igrave;nh phải dấn th&acirc;n, linh hồn lực cũng v&igrave; vậy bạo ph&aacute;t, mọi cảm nhận về thế giới xung quanh cũng trở n&ecirc;n v&ocirc; c&ugrave;ng tinh tế. Sau khi thương thế được hồi phục, ch&agrave;ng ra sức tu luyện v&agrave; lần lượt tinh th&ocirc;ng những b&iacute; kiếp kiếm đạo của t&ocirc;ng m&ocirc;n, những chuyến mạo hiểm săn bắt y&ecirc;u th&uacute; trong rừng thi&ecirc;n nước độc đ&atilde; gi&uacute;p cho ch&agrave;ng dần lĩnh ngộ được năng lực kiếm &yacute; huyền thoại m&agrave; ngay cả những kiếm kh&aacute;ch nổi danh cũng chưa hẳn đ&atilde; c&oacute; thể ngộ ra. V&agrave; con đường sự nghiệp v&otilde; học của Diệp Trần cũng thay đổi kể từ đ&acirc;y &hellip;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Sống tr&ecirc;n con đường kiếm đạo, một thế giới mạnh được yếu thua đ&atilde; biến nhiều nh&acirc;n sĩ trở th&agrave;nh những đấu giả, những trận thư h&ugrave;ng kinh thi&ecirc;n động địa diễn ra kh&ocirc;ng ngớt khiến cho thế giới v&otilde; đạo dường như kh&ocirc;ng c&ograve;n cực hạn. Những b&iacute; kiếp v&otilde; học cổ xưa c&ugrave;ng tr&iacute; tuệ hậu nh&acirc;n đ&atilde; mang đến cho những tu nh&acirc;n khả năng phi&ecirc;n giang đ&agrave;o hải, th&ocirc;ng thi&ecirc;n độn địa. C&oacute; thể n&oacute;i, mọi thứ đều tồn tại trong thế giới của Kiếm Đạo Độc T&ocirc;n m&agrave;u nhiệm&hellip;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&quot;Ph&acirc;n chia cảnh giới v&otilde; học trong truyện bao gồm c&aacute;c cấp bậc từ thấp đến cao như : Luyện Kh&iacute; Cảnh, Ngưng Ch&acirc;n Cảnh, B&atilde;o Nguy&ecirc;n Cảnh, Tinh Cực Cảnh, Linh Hải Cảnh, Sinh Tử Cảnh &hellip; Mỗi cấp bậc lại được chia th&agrave;nh mười tầng, tầng cuối c&ugrave;ng ch&iacute;nh l&agrave; giai đoạn nối tiếp được gọi l&agrave; đỉnh phong.&quot;</div>\r\n', 'test1.jpg', '2021-05-19', 380, 0, 1),
(21, 16, 'THẦN CHIẾN', 'Tui Đây Chứ Ai', 'Internet', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">Vũ trụ hồng hoang, vụ nổ lớn ph&aacute; vỡ b&oacute;ng tối v&ocirc; hạn, tạo n&ecirc;n kh&ocirc;ng gian, thời gian. Thời gian v&ocirc; tận, c&aacute;c giới đản sinh. Vũ trụ chia Thần, Thi&ecirc;n, Địa, Nh&acirc;n tứ giới. Chủng lo&agrave;i chia: Nh&acirc;n, ti&ecirc;n, y&ecirc;u, ma.. Nh&acirc;n loại thu kh&iacute; cho m&igrave;nh d&ugrave;ng tạo n&ecirc;n hệ thống ngự kh&iacute; sư. Đẳng cấp chia: Ngự nh&acirc;n, Dị nh&acirc;n, Hiền nh&acirc;n, Th&aacute;nh nh&acirc;n.. C&acirc;u chuyện xoay quanh Trần Cảnh, thiếu chủ họ Trần thuộc vương triều Văn lang. Điều g&igrave; đang chờ đợi cậu ở tương lai.</span></p>\r\n', 'test2.jpg', '2021-05-19', 14, 0, 1),
(22, 17, 'Cô Vợ Ngọt Ngào Có Chút Bất Lương', 'Users', 'Internet', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">Bạn đang đọc truyện&nbsp;</span><b style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">C&ocirc; Vợ Ngọt Ngào Có Chút B&acirc;́t Lương</b><span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">&nbsp;của t&aacute;c giả&nbsp;</span><b style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">Quẫn Quẫn Hữu Y&ecirc;u</b><span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">.</span><br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">&quot;Khẩu vị của người n&agrave;y rốt cuộc nặng đến bao nhi&ecirc;u vậy, c&aacute;i n&agrave;y cũng bỏ v&agrave;o miệng được &agrave;?&quot;</span><br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">Tỉnh lại từ sau giấc ngủ, c&ocirc; nh&igrave;n ch&iacute;nh m&igrave;nh trong gương đầu xăm mặt giống như quỷ, cảm gi&aacute;c như nh&igrave;n th&ecirc;m một gi&acirc;y nữa đều cay đ&ocirc;i mắt.</span><br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">Trước khi sống lại, c&ocirc; y&ecirc;u một l&ograve;ng Cố Việt Trạch, sau đ&oacute; lại hận anh ta đến thấu xương.</span><br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">Đời trước n&atilde;o c&ocirc; bị cửa kẹp n&ecirc;n mới kh&ocirc;ng muốn lấy một &ocirc;ng x&atilde; tuyệt sắc, lại bị đ&ocirc;i cặn nam tiện nữ h&atilde;m hại, bị người bạn th&acirc;n nhất tẩy n&atilde;o, dẫn đến kết cục l&agrave; ch&uacute;ng bạn xa l&aacute;nh.</span><br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">Đời n&agrave;y mặc cho c&aacute;c ngươi tr&acirc;u b&ograve; rắn rết trăm phương ngh&igrave;n kế, muốn c&ocirc; ly dị</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">&nbsp;nhường đi ng&ocirc;i vị phu nh&acirc;n. Ngượng ng&ugrave;ng qu&aacute; ~~, chỉ số th&ocirc;ng minh của bản tiểu thư đ&atilde; l&ecirc;n d&acirc;y rồi nh&eacute;! C&ugrave;ng đ&oacute;n&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">n&agrave;y để biết kết cục c&acirc;u chuyện.</span></p>\r\n', 'test3.jpg', '2021-05-19', 4, 0, 1),
(23, 17, 'Ép Yêu 100 Ngày', 'Users', 'Internet', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">Bạn đang đọc truyện&nbsp;</span><b style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">&Eacute;p Y&ecirc;u 100 Ng&agrave;y</b><span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">&nbsp;của t&aacute;c giả&nbsp;</span><b style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">Diệp Phi Dạ</b><span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">. Hai th&aacute;ng sau khi bị &eacute;p y&ecirc;u, v&agrave; một lần ngo&agrave;i &yacute; muốn ngủ c&ugrave;ng nhau, c&ocirc; mang trong m&igrave;nh d&ograve;ng m&aacute;u của anh, anh v&agrave; c&ocirc; theo lời cha mẹ m&agrave; kết h&ocirc;n.</span><br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">C&ocirc; n&oacute;i: &quot;Cố ti&ecirc;n sinh, t&ocirc;i th&iacute;ch đồ ăn nh&agrave; h&agrave;ng n&agrave;y&quot;, ngay ng&agrave;y h&ocirc;m sau đầu bếp nh&agrave; h&agrave;ng đ&atilde; trở th&agrave;nh đầu bếp ri&ecirc;ng trong nh&agrave; c&ocirc;.</span><br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">C&ocirc; n&oacute;i: &quot;Cố ti&ecirc;n sinh, t&ocirc;i th&iacute;ch t&uacute;i ở cửa h&agrave;ng n&agrave;y&quot;, ngay đ&ecirc;m đ&oacute; nh&agrave; thiết kế n&agrave;y liền trở th&agrave;nh người thiết kế ri&ecirc;ng của c&ocirc;.</span><br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">Những tưởng kết h&ocirc;n kh&ocirc;ng c&oacute; t&igrave;nh y&ecirc;u&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">c&ocirc; v&agrave; anh sẽ giống như trước, nhưng anh lại sủng &aacute;i c&ocirc; đến tận trời... kh&ocirc;ng biết c&oacute;&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">hay kh&ocirc;ng?</span><br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">C&ocirc; muốn đi l&agrave;m, anh kh&ocirc;ng đồng &yacute;, c&ocirc; liền l&eacute;n t&igrave;m việc nhưng cuối c&ugrave;ng do anh sau lưng dở tr&ograve; quỷ khiến c&ocirc; kh&ocirc;ng t&igrave;m được c&ocirc;ng việc. C&ocirc; tức giận đến t&igrave;m anh, anh liền cười h&iacute;p mắt an b&agrave;i cho c&ocirc; một c&ocirc;ng việc.</span><br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">ng&agrave;y h&ocirc;m sau, c&ocirc; vui vẻ đi l&agrave;m lại ph&aacute;t hiện ra bản c&ocirc;ng việc của m&igrave;nh viết, họ v&agrave; t&ecirc;n: Tần Chỉ Y&ecirc;u, chức vụ: Vợ của Cố Dư Sinh</span></p>\r\n', 'test6.png', '2021-05-19', 41, 1, 1),
(24, 18, 'Làm Dâu Âm Phủ', 'Users', 'Internet', '<p>\r\n	<span font-size:=\"\" segoe=\"\" style=\"color: rgb(0, 0, 0); font-family: \">Một trong những&nbsp;</span><span font-size:=\"\" segoe=\"\" style=\"color: rgb(0, 0, 0); font-family: \">kinh dị nổi tiếng của t&aacute;c giả Nhan Uyển Huy&ecirc;n l&agrave; t&aacute;c phẩm&nbsp;</span><span font-size:=\"\" segoe=\"\" style=\"color: rgb(0, 0, 0); font-family: \">Cũng như nhiều&nbsp;</span><span font-size:=\"\" segoe=\"\" style=\"color: rgb(0, 0, 0); font-family: \">kh&aacute;c, L&agrave;m D&acirc;u &Acirc;m Phủ mang nhiều yếu tố t&acirc;m linh, kỳ b&iacute; nhưng cũng kh&ocirc;ng k&eacute;m phần hồi hộp, l&ocirc;i cuốn v&agrave; v&ocirc; c&ugrave;ng hấp dẫn.</span><br font-size:=\"\" segoe=\"\" style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: \" />\r\n	<br font-size:=\"\" segoe=\"\" style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: \" />\r\n	<span font-size:=\"\" segoe=\"\" style=\"color: rgb(0, 0, 0); font-family: \">Tr&iacute;ch dẫn truyện:</span><br font-size:=\"\" segoe=\"\" style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: \" />\r\n	<br font-size:=\"\" segoe=\"\" style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: \" />\r\n	<span font-size:=\"\" segoe=\"\" style=\"color: rgb(0, 0, 0); font-family: \">​Tịch Liễu l&otilde;a lồ chạy trốn giữa mảnh đồng kh&ocirc;ng m&ocirc;ng quạnh, cho d&ugrave; c&ocirc; c&oacute; cố gắng chạy như thế n&agrave;o đi chăng nữa cũng trốn kh&ocirc;ng tho&aacute;t khỏi Hi&ecirc;n Vi&ecirc;n Mặc.</span><br font-size:=\"\" segoe=\"\" style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: \" />\r\n	<br font-size:=\"\" segoe=\"\" style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: \" />\r\n	<span font-size:=\"\" segoe=\"\" style=\"color: rgb(0, 0, 0); font-family: \">​Hắn tựa như l&agrave; c&aacute;i b&oacute;ng của c&ocirc;, c&ocirc; đi tới đ&acirc;u, hắn đều theo s&aacute;t c&ocirc; tới đ&oacute;.</span><br font-size:=\"\" segoe=\"\" style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: \" />\r\n	<br font-size:=\"\" segoe=\"\" style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: \" />\r\n	<span font-size:=\"\" segoe=\"\" style=\"color: rgb(0, 0, 0); font-family: \">​&quot;Cầu xin anh bu&ocirc;ng cho t&ocirc;i.&quot;</span><br font-size:=\"\" segoe=\"\" style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: \" />\r\n	<br font-size:=\"\" segoe=\"\" style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: \" />\r\n	<span font-size:=\"\" segoe=\"\" style=\"color: rgb(0, 0, 0); font-family: \">​Th&acirc;n thể Tịch Liễu run l&ecirc;n, đ&aacute;y mắt Hi&ecirc;n Vi&ecirc;n Mặc kh&ocirc;ng c&oacute; một tia thương cảm.</span><br font-size:=\"\" segoe=\"\" style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: \" />\r\n	<br font-size:=\"\" segoe=\"\" style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: \" />\r\n	<span font-size:=\"\" segoe=\"\" style=\"color: rgb(0, 0, 0); font-family: \">​&quot;Đ&acirc;y mới chỉ l&agrave; bắt đầu th&ocirc;i.&quot;</span><br font-size:=\"\" segoe=\"\" style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: \" />\r\n	<br font-size:=\"\" segoe=\"\" style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: \" />\r\n	<span font-size:=\"\" segoe=\"\" style=\"color: rgb(0, 0, 0); font-family: \">​&Acirc;m thanh lạnh băng như từ dưới địa ngục truyền ra. Tịch Liễu bị đặt tr&ecirc;n đồng cỏ.</span><br font-size:=\"\" segoe=\"\" style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: \" />\r\n	<br font-size:=\"\" segoe=\"\" style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: \" />\r\n	<span font-size:=\"\" segoe=\"\" style=\"color: rgb(0, 0, 0); font-family: \">​Cỏ dại xoẹt qua l&agrave;n da mềm mại của c&ocirc;, giống như những lưỡi dao b&eacute;n nhọn đang kh&ocirc;ng ngừng cứa l&ecirc;n da thịt c&ocirc; dưới &aacute;nh trăng m&aacute;u đỏ thẫm gh&ecirc; rợn.</span></p>\r\n', 'test7.jpg', '2021-05-19', 9, 1, 1),
(26, 19, 'Tam Quốc Diễn Nghĩa', 'Users', 'Internet', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">Ngay từ đầu thế kỉ 20, truyện&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">&nbsp;đ&atilde; xuất hiện ở Việt Nam, mang đến cho người Việt những b&agrave;i học về đạo l&iacute; vua t&ocirc;i, trung với nước, hiếu với d&acirc;n&hellip;Nhận ra gi&aacute; trị của bộ truyện tranh, C&ocirc;ng ty văn h&oacute;a Đinh Tị đ&atilde; mua bản quyền bộ truyện tranh Tam Quốc Diễn Nghĩa được chuyển thể từ bộ phim hoạt h&igrave;nh c&ugrave;ng t&ecirc;n, nhằm phục vụ cho đ&ocirc;ng đảo nhu cầu của bạn đọc thưởng thức t&aacute;c phẩm bằng n&eacute;t vẽ đặc sắc v&agrave; độc đ&aacute;o của c&aacute;c họa sỹ t&agrave;i ba.</span><br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">Truyện&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">Tam quốc Diễn Nghĩa lấy bối cảnh v&agrave;o những năm cuối triều đại nh&agrave; H&aacute;n, sự suy yếu của của triều đ&igrave;nh l&agrave;m cho x&atilde; hội Trung Hoa rơi v&agrave;o cảnh n&aacute;o loạn. Vua tin dung hoạn quan khinh rẻ hiền t&agrave;i, đam m&ecirc; tửu sắc bỏ qu&ecirc;n ch&iacute;nh sự n&ecirc;n triều đ&igrave;nh ng&agrave;y c&agrave;ng đổ n&aacute;t, cuộc sống người d&acirc;n ng&agrave;y c&agrave;ng lần than, cực khổ, giặc cướp nổi l&ecirc;n khắp nơi. V&agrave; nổi l&ecirc;n trong đ&oacute; l&agrave; loạn đảng khăn V&agrave;ng của anh em nh&agrave; Trương Gi&aacute;c với mấy vạn đồ đệ theo hầu. Loạn thế xuất anh h&ugrave;ng, nhiều h&agrave;o kiệt bắt đầu lộ diện gi&uacute;p nước nh&agrave; như ba anh em Lưu Bị, Quan Vũ, Trường Phi, quan Thừa ở Hạ Phi t&ecirc;n T&ocirc;n Ki&ecirc;n, Quan Kỵ đ&ocirc; u&yacute; T&agrave;o Th&aacute;o&hellip; Được sự gi&uacute;p sức, cuối c&ugrave;ng triều đ&igrave;nh cũng đ&aacute;nh tan được loạn đảng. Tuy nhi&ecirc;n, nh&agrave; vua vẫn ngựa quen đường cũ, bọn hoạn quan vẫn lộng h&agrave;nh. Thứ sử T&acirc;y Lương l&agrave; Đổng Tr&aacute;c nh&acirc;n cơ hội n&agrave;y đ&atilde; phế truất vua cũ, lập vua mới rồi tự phong cho m&igrave;nh l&agrave;m tướng quốc nắm hết quyền h&agrave;nh. H&agrave;nh vi t&agrave;n bạo, lộng quyền của Đổng Tr&aacute;c khiến c&aacute;c quan v&ocirc; c&ugrave;ng phẫn nổ. Thứ sử c&aacute;c ch&acirc;u, quận dẫn đầu l&agrave; Kỳ Hương Hầu Vi&ecirc;n Thiệu hội qu&acirc;n tiến đ&aacute;nh nhưng do nội bộ bất ho&agrave; n&ecirc;n qu&acirc;n đội cũng tan r&atilde;.</span><br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<br style=\"box-sizing: border-box; outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">Kể từ thời điểm n&agrave;y c&aacute;c cuộc chiến tranh gi&agrave;nh đất đai, quyền lực xảy ra li&ecirc;n mi&ecirc;n kh&ocirc;ng dứt giữa c&aacute;c l&atilde;nh ch&uacute;a ở c&aacute;c ch&acirc;u quận, sau n&agrave;y dần dần h&igrave;nh th&agrave;nh n&ecirc;n thế Tam Quốc với Lưu Bị ở đất Thục, T&agrave;o Th&aacute;o nh&agrave; Ngụy v&agrave; T&ocirc;n Quyền nh&agrave; Ng&ocirc;. Cuộc chiến giữa 3 thế lực k&eacute;o d&agrave;i gần một thế kỉ g&acirc;y n&ecirc;n bao nhi&ecirc;u tổn thất cho b&aacute; t&aacute;nh đương thời nhưng đ&oacute; cũng l&agrave; những bản anh h&ugrave;ng ca về sự dũng cảm, mưu lược, tấm l&ograve;ng nh&acirc;n &aacute;i trung nghĩa của anh h&ugrave;ng Tam Quốc. Đ&oacute; l&agrave; những con người m&agrave; hậu thế ch&uacute;ng ta khi nh&igrave;n lại vẫn phải thấy cảm k&iacute;ch. Một&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 15px;\">&nbsp;đầy sức h&uacute;t, đọc v&agrave; thu nhận những b&agrave;i học qu&yacute; gi&aacute; cho ch&iacute;nh m&igrave;nh</span></p>\r\n', 'test10.jpg', '2021-05-19', 11, 0, 1),
(27, 16, 'Hoa Vũ Chiến Thần', 'Users', 'Internet', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam eius facilis libero minus repellendus. Blanditiis consequuntur delectus ipsa ipsam laboriosam molestiae quaerat quisquam, totam. Aliquid illum labore maxime obcaecati repudiandae?</p>\r\n<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam eius facilis libero minus repellendus. Blanditiis consequuntur delectus ipsa ipsam laboriosam molestiae quaerat quisquam, totam. Aliquid illum labore maxime obcaecati repudiandae?</p>\r\n<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam eius facilis libero minus repellendus. Blanditiis consequuntur delectus ipsa ipsam laboriosam molestiae quaerat quisquam, totam. Aliquid illum labore maxime obcaecati repudiandae?</p>\r\n<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam eius facilis libero minus repellendus. Blanditiis consequuntur delectus ipsa ipsam laboriosam molestiae quaerat quisquam, totam. Aliquid illum labore maxime obcaecati repudiandae?</p>\r\n', 'test15.jpg', '2021-05-19', 0, 0, 1),
(28, 16, 'Thiếu Tướng, Vợ Ngài Nổi Giận Rồi', 'Users', 'Internet', '<div>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam eius facilis libero minus repellendus. Blanditiis consequuntur delectus ipsa ipsam laboriosam molestiae quaerat quisquam, totam. Aliquid illum labore maxime obcaecati repudiandae?</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam eius facilis libero minus repellendus. Blanditiis consequuntur delectus ipsa ipsam laboriosam molestiae quaerat quisquam, totam. Aliquid illum labore maxime obcaecati repudiandae?</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam eius facilis libero minus repellendus. Blanditiis consequuntur delectus ipsa ipsam laboriosam molestiae quaerat quisquam, totam. Aliquid illum labore maxime obcaecati repudiandae?</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam eius facilis libero minus repellendus. Blanditiis consequuntur delectus ipsa ipsam laboriosam molestiae quaerat quisquam, totam. Aliquid illum labore maxime obcaecati repudiandae?</div>\r\n', 'test11.jpg', '2021-05-19', 6, 1, 1),
(29, 16, 'Đừng Buông Tay Anh', 'Users', 'Internet', '<div>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam eius facilis libero minus repellendus. Blanditiis consequuntur delectus ipsa ipsam laboriosam molestiae quaerat quisquam, totam. Aliquid illum labore maxime obcaecati repudiandae?</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam eius facilis libero minus repellendus. Blanditiis consequuntur delectus ipsa ipsam laboriosam molestiae quaerat quisquam, totam. Aliquid illum labore maxime obcaecati repudiandae?</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam eius facilis libero minus repellendus. Blanditiis consequuntur delectus ipsa ipsam laboriosam molestiae quaerat quisquam, totam. Aliquid illum labore maxime obcaecati repudiandae?</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam eius facilis libero minus repellendus. Blanditiis consequuntur delectus ipsa ipsam laboriosam molestiae quaerat quisquam, totam. Aliquid illum labore maxime obcaecati repudiandae?</div>\r\n', 'test13.jpg', '2021-05-19', 5, 0, 1),
(30, 16, 'Em Chồng, Anh Đừng Qua Đây!', 'Users', 'Internet', '<div>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam eius facilis libero minus repellendus. Blanditiis consequuntur delectus ipsa ipsam laboriosam molestiae quaerat quisquam, totam. Aliquid illum labore maxime obcaecati repudiandae?</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam eius facilis libero minus repellendus. Blanditiis consequuntur delectus ipsa ipsam laboriosam molestiae quaerat quisquam, totam. Aliquid illum labore maxime obcaecati repudiandae?</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam eius facilis libero minus repellendus. Blanditiis consequuntur delectus ipsa ipsam laboriosam molestiae quaerat quisquam, totam. Aliquid illum labore maxime obcaecati repudiandae?</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam eius facilis libero minus repellendus. Blanditiis consequuntur delectus ipsa ipsam laboriosam molestiae quaerat quisquam, totam. Aliquid illum labore maxime obcaecati repudiandae?</div>\r\n', 'test12.jpg', '2021-05-19', 0, 0, 1),
(31, 20, 'Cuộc Du Hành Vào Vũ Trụ', 'Users', 'Internet', '', 'test13.jpg', '2021-05-20', 31, 0, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nncms_admin`
--
ALTER TABLE `nncms_admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Chỉ mục cho bảng `nncms_chungloai`
--
ALTER TABLE `nncms_chungloai`
  ADD PRIMARY KEY (`idCL`);

--
-- Chỉ mục cho bảng `nncms_chuong`
--
ALTER TABLE `nncms_chuong`
  ADD PRIMARY KEY (`idChuong`);

--
-- Chỉ mục cho bảng `nncms_comments`
--
ALTER TABLE `nncms_comments`
  ADD PRIMARY KEY (`idCmt`);

--
-- Chỉ mục cho bảng `nncms_comments_rep`
--
ALTER TABLE `nncms_comments_rep`
  ADD PRIMARY KEY (`idCmtRep`);

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
-- Chỉ mục cho bảng `nncms_slider`
--
ALTER TABLE `nncms_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nncms_truyen`
--
ALTER TABLE `nncms_truyen`
  ADD PRIMARY KEY (`idTruyen`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `nncms_admin`
--
ALTER TABLE `nncms_admin`
  MODIFY `idAdmin` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nncms_chungloai`
--
ALTER TABLE `nncms_chungloai`
  MODIFY `idCL` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `nncms_chuong`
--
ALTER TABLE `nncms_chuong`
  MODIFY `idChuong` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `nncms_comments`
--
ALTER TABLE `nncms_comments`
  MODIFY `idCmt` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `nncms_comments_rep`
--
ALTER TABLE `nncms_comments_rep`
  MODIFY `idCmtRep` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nncms_menus`
--
ALTER TABLE `nncms_menus`
  MODIFY `idMenu` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `nncms_nguoidung`
--
ALTER TABLE `nncms_nguoidung`
  MODIFY `idNguoiDung` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `nncms_quangcao`
--
ALTER TABLE `nncms_quangcao`
  MODIFY `idQC` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nncms_slider`
--
ALTER TABLE `nncms_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nncms_truyen`
--
ALTER TABLE `nncms_truyen`
  MODIFY `idTruyen` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
