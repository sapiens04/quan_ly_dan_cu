-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 28, 2025 lúc 04:05 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cachly`
--

CREATE TABLE `cachly` (
  `ID` int(11) NOT NULL,
  `SoCMT` varchar(12) NOT NULL,
  `tgian_bat_dau` varchar(10) NOT NULL,
  `muc_do_cach_ly` varchar(12) DEFAULT NULL,
  `hinh_thuc_test` varchar(50) DEFAULT NULL,
  `thoi_gian_test` varchar(20) DEFAULT NULL,
  `Ket_qua_test` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cachly`
--

INSERT INTO `cachly` (`ID`, `SoCMT`, `tgian_bat_dau`, `muc_do_cach_ly`, `hinh_thuc_test`, `thoi_gian_test`, `Ket_qua_test`) VALUES
(1, '20207643', '', '0', 'xét nghiệm máu', '20/12', 'Âm tính'),
(2, '20215516', '21/12', '1', 'xét nghiệm máu', '21/12', 'Dương tính'),
(3, '20225291', '', '0', 'xét nghiệm máu', '18/12', 'Âm tính'),
(4, '20207643', '25/12', '2', 'xét nghiệm máu', '25/12', 'Dương tính'),
(5, '20207662', '25/12', '2', 'xét nghiệm máu', '25/12', 'Dương tính');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khaibao`
--

CREATE TABLE `khaibao` (
  `id_khaibao` int(11) NOT NULL,
  `SoCMT` varchar(12) DEFAULT NULL,
  `da_di_qua` varchar(50) NOT NULL,
  `trang_thai_suc_khoe` varchar(50) NOT NULL,
  `ngay_khai_bao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khaibao`
--

INSERT INTO `khaibao` (`id_khaibao`, `SoCMT`, `da_di_qua`, `trang_thai_suc_khoe`, `ngay_khai_bao`) VALUES
(1, '20207643', 'Thanh Hóa', 'Chóng mặt, buồn nôn', '2025-12-28'),
(2, '20215516', 'Thanh Hóa', 'Tức ngực, khó thở', '2025-12-28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoan_thu`
--

CREATE TABLE `khoan_thu` (
  `ID_khoan_thu` int(11) NOT NULL,
  `ten_khoan_thu` varchar(50) DEFAULT NULL,
  `Sotien` int(11) NOT NULL,
  `Batbuoc` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khoan_thu`
--

INSERT INTO `khoan_thu` (`ID_khoan_thu`, `ten_khoan_thu`, `Sotien`, `Batbuoc`) VALUES
(1, 'Phí1', 100000, 1),
(2, 'Phí2', 50000, 0),
(3, 'Phí3', 25000, 0),
(4, 'Phí4 ', 15000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhankhau`
--

CREATE TABLE `nhankhau` (
  `SoCMT` varchar(12) NOT NULL,
  `Ho_ten` varchar(45) DEFAULT NULL,
  `namSinh` varchar(20) DEFAULT NULL,
  `gioiTinh` varchar(100) DEFAULT NULL,
  `noiSinh` varchar(100) DEFAULT NULL,
  `nguyenQuan` varchar(100) DEFAULT NULL,
  `danToc` varchar(100) DEFAULT NULL,
  `quocTich` varchar(100) DEFAULT NULL,
  `noiThuongTru` varchar(100) DEFAULT NULL,
  `diaChiHienNay` varchar(100) DEFAULT NULL,
  `SDT` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhankhau`
--

INSERT INTO `nhankhau` (`SoCMT`, `Ho_ten`, `namSinh`, `gioiTinh`, `noiSinh`, `nguyenQuan`, `danToc`, `quocTich`, `noiThuongTru`, `diaChiHienNay`, `SDT`) VALUES
('20207643', 'Trần Quốc Duy', '2002', 'Nam', 'Thanh Hóa', NULL, 'Kinh', 'Việt Nam', NULL, 'Hà Nội', '0222222222'),
('20207662', 'Lê Văn Duẩn', '2002', 'Nam', 'Nam Định', NULL, 'Kinh', 'Việt Nam', NULL, 'Hà Nội', '42131414'),
('20215516', 'Đặng Thế Vinh', '2003', 'Nam', 'Hà Nội', NULL, 'Kinh', 'Việt Nam', NULL, 'Hà Nội', '011111111'),
('20225291', 'Nguyễn Hữu Dũng', '2004', 'Nam', 'Hà Nội', NULL, 'Kinh', 'Việt Nam', NULL, 'Hà Nội', '03333333'),
('20225349', 'Trương Huy Khuê', '2004', 'Nam', 'Thái Bình', NULL, 'Kinh', 'Viet Nam', NULL, 'Hà Nội', '01111111'),
('202400131', 'Somphet Kousalivong', '2006', 'Nam', 'Unknown', NULL, 'Kinh', 'Việt Nam', NULL, 'Hà Nội', '011111111');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ql_dong_gop`
--

CREATE TABLE `ql_dong_gop` (
  `id` int(11) NOT NULL,
  `SoCMT` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID_khoan_thu` int(11) DEFAULT NULL,
  `Ngaynop` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ql_dong_gop`
--

INSERT INTO `ql_dong_gop` (`id`, `SoCMT`, `ID_khoan_thu`, `Ngaynop`) VALUES
(1, '20207643', 1, '2025-12-28'),
(2, '20207662', 1, '2025-12-28'),
(3, '20215516', 1, '2025-12-28'),
(4, '20225291', 1, '2025-12-28'),
(5, '20225349', 1, '2025-12-28'),
(6, '202400131', 1, '2025-12-28'),
(7, '20207662', 2, '2025-12-28'),
(8, '20225291', 3, '2025-12-28'),
(9, '20215516', 3, '2025-12-28'),
(10, '20225291', 4, '2025-12-28'),
(11, '20207662', 4, '2025-12-28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userss`
--

CREATE TABLE `userss` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `userss`
--

INSERT INTO `userss` (`username`, `password`) VALUES
('Admin', '123456');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cachly`
--
ALTER TABLE `cachly`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SoCMT` (`SoCMT`);

--
-- Chỉ mục cho bảng `khaibao`
--
ALTER TABLE `khaibao`
  ADD PRIMARY KEY (`id_khaibao`),
  ADD KEY `id_nhankhau` (`SoCMT`);

--
-- Chỉ mục cho bảng `khoan_thu`
--
ALTER TABLE `khoan_thu`
  ADD PRIMARY KEY (`ID_khoan_thu`);

--
-- Chỉ mục cho bảng `nhankhau`
--
ALTER TABLE `nhankhau`
  ADD PRIMARY KEY (`SoCMT`);

--
-- Chỉ mục cho bảng `ql_dong_gop`
--
ALTER TABLE `ql_dong_gop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nhankhau` (`SoCMT`),
  ADD KEY `ID_khoan_thu` (`ID_khoan_thu`);

--
-- Chỉ mục cho bảng `userss`
--
ALTER TABLE `userss`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cachly`
--
ALTER TABLE `cachly`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `khaibao`
--
ALTER TABLE `khaibao`
  MODIFY `id_khaibao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `khoan_thu`
--
ALTER TABLE `khoan_thu`
  MODIFY `ID_khoan_thu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `ql_dong_gop`
--
ALTER TABLE `ql_dong_gop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cachly`
--
ALTER TABLE `cachly`
  ADD CONSTRAINT `cachly_ibfk_1` FOREIGN KEY (`SoCMT`) REFERENCES `nhankhau` (`SoCMT`);

--
-- Các ràng buộc cho bảng `khaibao`
--
ALTER TABLE `khaibao`
  ADD CONSTRAINT `khaibao_ibfk_1` FOREIGN KEY (`SoCMT`) REFERENCES `nhankhau` (`SoCMT`);

--
-- Các ràng buộc cho bảng `ql_dong_gop`
--
ALTER TABLE `ql_dong_gop`
  ADD CONSTRAINT `ql_dong_gop_ibfk_1` FOREIGN KEY (`ID_khoan_thu`) REFERENCES `khoan_thu` (`ID_khoan_thu`),
  ADD CONSTRAINT `ql_dong_gop_ibfk_2` FOREIGN KEY (`SoCMT`) REFERENCES `nhankhau` (`SoCMT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
