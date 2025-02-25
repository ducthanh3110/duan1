-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 06, 2023 lúc 04:00 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fashion`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `mabl` int(11) NOT NULL,
  `makh` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `noidung` varchar(500) NOT NULL,
  `ngaygui` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`mabl`, `makh`, `masp`, `noidung`, `ngaygui`) VALUES
(3, 2, 58, 'sản phẩm chất lượng', '2023-12-05 10:22:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `mahd` int(11) NOT NULL,
  `masp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`mahd`, `masp`) VALUES
(12, 58),
(13, 58);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `madm` int(11) NOT NULL,
  `tendm` varchar(50) NOT NULL,
  `soluongsp` int(11) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`madm`, `tendm`, `soluongsp`, `thutu`) VALUES
(1, 'Thời trang nam', 125, 1),
(2, 'Thời trang nữ', 110, 2),
(3, 'Áo khoác nam', 100, 3),
(4, 'Phụ Kiện', 100, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` int(11) NOT NULL,
  `makh` int(11) NOT NULL,
  `ngaydathang` date NOT NULL,
  `tongtien` int(11) NOT NULL,
  `ghichu` text NOT NULL,
  `trangthai` set('gio-hang','chuan-bi-don-hang','dang-giao-hang','da-giao') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `makh`, `ngaydathang`, `tongtien`, `ghichu`, `trangthai`) VALUES
(10, 2, '2023-12-04', 950, 'awfawfawf', 'chuan-bi-don-hang'),
(11, 2, '2023-12-04', 400, 'ffas', 'chuan-bi-don-hang'),
(12, 1, '2023-12-05', 0, 'text', 'gio-hang'),
(13, 2, '2023-12-05', 0, 'text', 'gio-hang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(11) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `dongia` int(11) NOT NULL,
  `khuyenmai` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `ngaytao` datetime NOT NULL DEFAULT current_timestamp(),
  `anh` varchar(500) DEFAULT NULL,
  `mota` text NOT NULL,
  `soluotxem` int(11) NOT NULL,
  `hoatdong` int(11) NOT NULL,
  `madm` int(11) NOT NULL,
  `mabl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `dongia`, `khuyenmai`, `soluong`, `ngaytao`, `anh`, `mota`, `soluotxem`, `hoatdong`, `madm`, `mabl`) VALUES
(11, 'Áo thun nữ phom rộng màu kem', 555, 450, 60, '2023-11-23 10:40:45', 'anhnu8.webp', 'Những cô nàng trẻ trung đang tìm váy đen dự tiệc cho đúng dresscode thì thiết kế này của Fashion là chân ái dành cho nàng. Thiết kế được may theo dáng chữ a ngắn trên gối tạo nên sự trẻ trung khi khéo léo khoe đôi chân. Điểm cộng cho mẫu đầm này thu hút hơn chính là thông số váy được NTK cắt, may một cách tỉ mỉ theo từng size ôm vừa vặn với từng cơ thể dù là size S hay XL đều có thể diện xinh. Gam màu đen của chất liệu nhung tưng lại giúp mẫu váy có chút cổ điển, cũng có chút hiện đại sang trọng khi kết hợp phần lưới kem đính ngọc trai nhỏ ở thân trên, đính thêm chiếc nơ nhỏ xinh điệu đà. Chỉ cần phối thêm chút phụ kiện lấp lánh, đôi giày cao gót, nàng sẽ chiếm trọn spotlight mỗi khi lên ảnh đấy.', 2, 0, 2, 0),
(12, 'Quần short caro nâu đen nữ lưng cao', 755, 550, 242, '2023-11-23 10:41:54', 'anhnu9.webp', 'Những cô nàng trẻ trung đang tìm váy đen dự tiệc cho đúng dresscode thì thiết kế này của Fashion là chân ái dành cho nàng. Thiết kế được may theo dáng chữ a ngắn trên gối tạo nên sự trẻ trung khi khéo léo khoe đôi chân. Điểm cộng cho mẫu đầm này thu hút hơn chính là thông số váy được NTK cắt, may một cách tỉ mỉ theo từng size ôm vừa vặn với từng cơ thể dù là size S hay XL đều có thể diện xinh. Gam màu đen của chất liệu nhung tưng lại giúp mẫu váy có chút cổ điển, cũng có chút hiện đại sang trọng khi kết hợp phần lưới kem đính ngọc trai nhỏ ở thân trên, đính thêm chiếc nơ nhỏ xinh điệu đà. Chỉ cần phối thêm chút phụ kiện lấp lánh, đôi giày cao gót, nàng sẽ chiếm trọn spotlight mỗi khi lên ảnh đấy.', 6, 0, 2, 0),
(13, 'Quần short nữ màu đen lưng cao', 950, 750, 222, '2023-11-23 10:42:45', 'anhnu10.webp', 'Những cô nàng trẻ trung đang tìm váy đen dự tiệc cho đúng dresscode thì thiết kế này của Fashion là chân ái dành cho nàng. Thiết kế được may theo dáng chữ a ngắn trên gối tạo nên sự trẻ trung khi khéo léo khoe đôi chân. Điểm cộng cho mẫu đầm này thu hút hơn chính là thông số váy được NTK cắt, may một cách tỉ mỉ theo từng size ôm vừa vặn với từng cơ thể dù là size S hay XL đều có thể diện xinh. Gam màu đen của chất liệu nhung tưng lại giúp mẫu váy có chút cổ điển, cũng có chút hiện đại sang trọng khi kết hợp phần lưới kem đính ngọc trai nhỏ ở thân trên, đính thêm chiếc nơ nhỏ xinh điệu đà. Chỉ cần phối thêm chút phụ kiện lấp lánh, đôi giày cao gót, nàng sẽ chiếm trọn spotlight mỗi khi lên ảnh đấy.', 7, 0, 2, 0),
(14, 'Đầm xòe đỏ cổ v xoắn ngực', 500, 200, 22, '2023-11-23 10:43:50', 'anhnu5.webp', 'Những cô nàng trẻ trung đang tìm váy đen dự tiệc cho đúng dresscode thì thiết kế này của Fashion là chân ái dành cho nàng. Thiết kế được may theo dáng chữ a ngắn trên gối tạo nên sự trẻ trung khi khéo léo khoe đôi chân. Điểm cộng cho mẫu đầm này thu hút hơn chính là thông số váy được NTK cắt, may một cách tỉ mỉ theo từng size ôm vừa vặn với từng cơ thể dù là size S hay XL đều có thể diện xinh. Gam màu đen của chất liệu nhung tưng lại giúp mẫu váy có chút cổ điển, cũng có chút hiện đại sang trọng khi kết hợp phần lưới kem đính ngọc trai nhỏ ở thân trên, đính thêm chiếc nơ nhỏ xinh điệu đà. Chỉ cần phối thêm chút phụ kiện lấp lánh, đôi giày cao gót, nàng sẽ chiếm trọn spotlight mỗi khi lên ảnh đấy.', 22, 0, 2, 0),
(21, 'Đầm ôm công sở nền đen hoạ tiết hoa', 555, 222, 100, '2023-11-23 16:12:59', 'anhnu6.webp', 'Những cô nàng trẻ trung đang tìm váy đen dự tiệc cho đúng dresscode thì thiết kế này của Fashion là chân ái dành cho nàng. Thiết kế được may theo dáng chữ a ngắn trên gối tạo nên sự trẻ trung khi khéo léo khoe đôi chân. Điểm cộng cho mẫu đầm này thu hút hơn chính là thông số váy được NTK cắt, may một cách tỉ mỉ theo từng size ôm vừa vặn với từng cơ thể dù là size S hay XL đều có thể diện xinh. Gam màu đen của chất liệu nhung tưng lại giúp mẫu váy có chút cổ điển, cũng có chút hiện đại sang trọng khi kết hợp phần lưới kem đính ngọc trai nhỏ ở thân trên, đính thêm chiếc nơ nhỏ xinh điệu đà. Chỉ cần phối thêm chút phụ kiện lấp lánh, đôi giày cao gót, nàng sẽ chiếm trọn spotlight mỗi khi lên ảnh đấy.', 22, 0, 2, 0),
(27, 'Áo sơ mi thun hoạ tiết hoa lavender nhún ngực', 900, 600, 70, '2023-11-23 16:44:34', 'anhnu7.webp', '', 11, 0, 2, 0),
(32, 'Đầm xòe công sở cổ sơ mi họa tiết caro', 750, 550, 111, '2023-11-24 11:11:57', 'anhnu4.webp', '', 66, 0, 2, 0),
(33, 'Đầm xòe tafta dự tiệc cổ V cách điệu', 600, 500, 222, '2023-11-25 21:45:50', 'anhnu2.webp', '', 0, 0, 2, 0),
(34, 'Đầm xòe xếp ly tay hến cổ xoắn', 800, 600, 23, '2023-11-26 21:37:45', 'anhnu1.webp', 'chat luong', 0, 0, 2, 0),
(43, 'Áo Khoác Không Nón Vải Denim', 750, 500, 100, '2023-11-30 15:10:11', 'anhnam1.jpg', '', 0, 0, 3, 0),
(44, 'Áo Khoác Không Nón Vải Dù', 550, 500, 100, '2023-11-30 15:15:07', 'anhnam2.jpg', '', 0, 0, 3, 0),
(45, 'Áo Khoác Không Nón Vải Denim', 900, 700, 100, '2023-11-30 15:16:19', 'anhnam3.jpg', '', 0, 0, 3, 0),
(46, 'Áo Khoác Có Nón Vải Dù Mỏng Nhẹ', 760, 650, 100, '2023-11-30 15:17:20', 'anhnam4.jpg', '', 0, 0, 3, 0),
(47, 'Áo Khoác Có Nón Vải Thun Giữ Ấm', 525, 500, 50, '2023-11-30 15:18:25', 'anhnam5.jpg', '', 0, 0, 3, 0),
(48, 'Áo Khoác Có Nón Vải Dù Trượt Nước', 567, 240, 67, '2023-11-30 15:19:31', 'anhnam6.jpg', '', 0, 0, 3, 0),
(49, 'Áo Khoác Không Nón Vải Thun Giữ Ấm ', 540, 450, 424, '2023-11-30 15:20:37', 'anhnam7.jpg', '', 0, 0, 3, 0),
(50, 'Áo Khoác Không Nón Vải Dù Chống Nắng', 350, 300, 45, '2023-11-30 15:30:08', 'anhnam8.jpg', '', 0, 0, 3, 0),
(51, 'Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 2 Chiều Thấm H', 250, 90, 40, '2023-11-30 15:31:47', 'aothunnam1.jpg', '', 0, 0, 1, 0),
(52, 'Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 2 Chiều Thấm H', 500, 400, 23, '2023-11-30 15:32:22', 'anhthunnam2.jpg', '', 0, 0, 1, 0),
(53, 'Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 4 Chiều Co Giã', 600, 550, 45, '2023-11-30 15:33:25', 'anhthunnam3.jpg', '', 0, 0, 1, 0),
(54, 'Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 2 Chiều', 700, 400, 36, '2023-11-30 15:34:12', 'anhthunnam4.jpg', '', 0, 0, 1, 0),
(55, 'Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 4 Chiều Co Giã', 650, 450, 23, '2023-11-30 15:34:56', 'anhthunnam5.jpg', '', 0, 0, 1, 0),
(56, 'Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 4 Chiều Co Giã', 450, 350, 47, '2023-11-30 15:35:52', 'anhthunnam6.jpg', '', 0, 0, 1, 0),
(57, 'Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 2 Chiều Thấm H', 789, 500, 23, '2023-11-30 15:37:17', 'anhthunnam7.jpg', '', 0, 0, 1, 0),
(58, 'Áo Thun Cổ Tròn Tay Ngắn Vải Cotton 2 Chiều Thấm H', 457, 400, 232, '2023-11-30 15:38:02', 'anhthunnam8.jpg', '', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `makh` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `diachi` text NOT NULL,
  `anh` varchar(500) NOT NULL,
  `quyen` varchar(50) NOT NULL DEFAULT 'user',
  `ngaysinh` date NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `hoatdong` tinyint(1) NOT NULL,
  `mabl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`makh`, `hoten`, `matkhau`, `email`, `diachi`, `anh`, `quyen`, `ngaysinh`, `sdt`, `hoatdong`, `mabl`) VALUES
(1, 'Nguyễn Nhựt Hào', '123456', 'hao@gmail.com', 'QTSC9.PM.QUANG TRUNG GÒ VẤP', 'upload/avatar/anhhao.jpg', 'admin', '2004-03-18', '0859692398', 0, 0),
(2, 'Nguyen tuong bao vy', '11223377', 'vy@gmail.com', 'GÒ VẤP', 'https://png.pngtree.com/png-vector/20191101/ourlarge/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 'user', '2004-11-15', '123456789', 0, 0),
(3, 'Vu Thanh Dat', '123', 'dat@gmail.com', 'GÒ VẤP', 'https://png.pngtree.com/png-vector/20191101/ourlarge/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 'admin', '2004-10-30', '123456789', 0, 0),
(8, 'HUU THANH', '13515315', 'thanh@gmail.com', '', 'upload/avatar/default.png', 'admin', '0000-00-00', '11223377', 0, 0),
(9, 'Nguyen Minh Khang', '1234', 'khang@gmail.com', '', 'https://png.pngtree.com/png-vector/20191101/ourlarge/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg', 'user', '0000-00-00', '123456789', 0, 0),
(14, 'Thu pham', '12345', 'thupham@gmail.com', '', 'upload/avatar/default.png', 'user', '0000-00-00', '266655', 0, 0),
(23, 'Nguyen Minh Kha1', '12345', 'kha1@gmail.com', 'GÒ VẤP dd', 'upload/avatar/default.png', 'user', '0000-00-00', '11223366', 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`mabl`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`mahd`,`masp`),
  ADD KEY `masp` (`masp`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`madm`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `makh` (`makh`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `madm` (`madm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`makh`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `mabl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `madm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`mahd`) REFERENCES `hoadon` (`mahd`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `taikhoan` (`makh`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`madm`) REFERENCES `danhmuc` (`madm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
