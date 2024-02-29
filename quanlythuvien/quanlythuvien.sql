-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 03:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlythuvien`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietmt`
--

CREATE TABLE `chitietmt` (
  `id` int(11) NOT NULL,
  `ID_MuonTra` int(11) NOT NULL,
  `MaCaBiet` int(11) NOT NULL,
  `KieuMuon` varchar(10) NOT NULL,
  `HanTra` date NOT NULL,
  `Loai` varchar(11) NOT NULL,
  `NgayTra` date NOT NULL,
  `NguoiNhan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `chitietmt`
--

INSERT INTO `chitietmt` (`id`, `ID_MuonTra`, `MaCaBiet`, `KieuMuon`, `HanTra`, `Loai`, `NgayTra`, `NguoiNhan`) VALUES
(5, 18, 1, 'demve', '2024-03-01', 'muon', '0000-00-00', ''),
(6, 18, 2, 'demve', '2024-02-01', 'muon', '0000-00-00', ''),
(7, 18, 3, 'taicho', '2024-03-01', 'tra', '2024-03-06', 'Admin'),
(8, 19, 4, 'taicho', '2024-03-01', 'tra', '2024-03-16', 'Admin'),
(9, 19, 5, 'demve', '2024-02-01', 'tra', '2024-03-09', 'Admin'),
(10, 19, 6, 'taicho', '2024-02-01', 'tra', '2024-03-08', 'Admin'),
(11, 20, 1, 'demve', '2024-01-04', 'tra', '2024-03-01', 'Admin'),
(12, 20, 2, 'demve', '2024-03-01', 'tra', '2024-03-01', 'Admin'),
(13, 20, 3, 'demve', '2024-03-01', 'tra', '2024-04-01', 'Admin'),
(14, 21, 123, 'demve', '2024-02-20', 'tra', '2024-02-27', 'Admin'),
(15, 22, 123, 'demve', '2024-02-02', 'muon', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `docgia`
--

CREATE TABLE `docgia` (
  `SoThe` int(11) NOT NULL,
  `MaDK` int(11) NOT NULL,
  `AnhBarcode` text NOT NULL,
  `NgayCap` date NOT NULL,
  `HSD` date NOT NULL,
  `TinhTrang` text NOT NULL,
  `NguoiCN` text NOT NULL,
  `NgayCN` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `docgia`
--

INSERT INTO `docgia` (`SoThe`, `MaDK`, `AnhBarcode`, `NgayCap`, `HSD`, `TinhTrang`, `NguoiCN`, `NgayCN`, `status`) VALUES
(1, 0, 'anh dep day', '2022-03-01', '2022-03-11', 'binh thuong moi', 'present', '2022-03-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `donvi`
--

CREATE TABLE `donvi` (
  `MaDV` int(11) NOT NULL,
  `TenDV` text NOT NULL,
  `GhiChu` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `donvi`
--

INSERT INTO `donvi` (`MaDV`, `TenDV`, `GhiChu`, `status`) VALUES
(1, 'Thon Quan Nam I', '', 1),
(2, 'Thon Quan Nam II', '', 0),
(3, 'Thon Quan Nam III ', '', 1),
(4, 'Thon Quan Nam IV', '     ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dsdktaothe`
--

CREATE TABLE `dsdktaothe` (
  `MaDK` int(11) NOT NULL,
  `HoTen` text NOT NULL,
  `NamSinh` date NOT NULL,
  `GioiTinh` text NOT NULL,
  `ChucDanh` text NOT NULL,
  `MaDV` int(11) NOT NULL,
  `MaLop` int(11) NOT NULL,
  `KhoaHoc` text NOT NULL,
  `DienThoai` text NOT NULL,
  `Email` text NOT NULL,
  `AnhThe` text NOT NULL,
  `HinhThucDK` text NOT NULL,
  `LoaiDK` text NOT NULL,
  `NgayDK` date NOT NULL,
  `KTLePhi` text NOT NULL,
  `XuLy` text NOT NULL DEFAULT 'no',
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `dsdktaothe`
--

INSERT INTO `dsdktaothe` (`MaDK`, `HoTen`, `NamSinh`, `GioiTinh`, `ChucDanh`, `MaDV`, `MaLop`, `KhoaHoc`, `DienThoai`, `Email`, `AnhThe`, `HinhThucDK`, `LoaiDK`, `NgayDK`, `KTLePhi`, `XuLy`, `status`) VALUES
(1, 'Nguyệt', '2022-03-08', 'nam', 'khong', 1, 1, 'ok', '08543', 'pfggihgs', 'ok anh the', 'online', 'lam lai', '0000-00-00', 'yes', 'no', 0),
(2, 'Nguyễn Hữu Lộc', '2000-08-08', 'nam', 'Không', 1, 1, 'Th4', '0337646311', 'phuong2k88@gmail.com', 'none', 'online', 'lamlai', '0000-00-00', 'yes', 'yes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `MaLop` int(11) NOT NULL,
  `TenLop` text NOT NULL,
  `MaDV` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`MaLop`, `TenLop`, `MaDV`, `status`) VALUES
(1, 'Th4', 3, 1),
(2, '', 3, 1),
(3, 'cndl', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `muontra`
--

CREATE TABLE `muontra` (
  `ID_MuonTra` int(11) NOT NULL,
  `SoThe` int(11) NOT NULL,
  `NgayMuon` date NOT NULL,
  `NguoiChoMuon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `muontra`
--

INSERT INTO `muontra` (`ID_MuonTra`, `SoThe`, `NgayMuon`, `NguoiChoMuon`) VALUES
(18, 1, '2022-03-09', 'Admin'),
(19, 2, '2022-03-09', 'Admin'),
(20, 3, '2022-03-17', 'Admin'),
(21, 124, '2024-02-27', 'Admin'),
(22, 111, '2024-02-28', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `ngonngu`
--

CREATE TABLE `ngonngu` (
  `MaNgonNgu` int(11) NOT NULL,
  `TenNgonNgu` text NOT NULL,
  `GhiChu` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `ngonngu`
--

INSERT INTO `ngonngu` (`MaNgonNgu`, `TenNgonNgu`, `GhiChu`, `status`) VALUES
(1, 'Anh', 'Tiếng Anh', 0),
(2, 'Việt', 'Tiếng Việt', 1),
(3, 'Hàn', 'Tiếng Hàn', 0),
(4, 'Đức', 'Tiếng Đức ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `Username` text NOT NULL,
  `password` text NOT NULL,
  `HoTen` text NOT NULL,
  `NamSinh` date DEFAULT NULL,
  `GioiTinh` varchar(4) DEFAULT NULL,
  `ChucDanh` varchar(11) NOT NULL DEFAULT '0',
  `Email` text NOT NULL,
  `DienThoai` varchar(14) NOT NULL,
  `token` varchar(18) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `Username`, `password`, `HoTen`, `NamSinh`, `GioiTinh`, `ChucDanh`, `Email`, `DienThoai`, `token`, `status`) VALUES
(1, 'Admin', '123', 'Lộc', '1999-03-01', 'nam', 'admin', 'tycola123@gmail.com', '0', 'snjfhsjdjfjfjdiiss', 1),
(2, 'user01', '123456', 'Nguoi Dung', NULL, NULL, '0', '', '0', '', 0),
(3, 'user02', '123456', 'user02', NULL, NULL, '0', '', '0', 'wFuDbJUl6RQxgyI5XF', 0),
(4, 'user03', '123456', 'Yến', '2022-02-10', 'nu', '0', '', '0', '9w6IIjGIhfUu9jDcdY', 1),
(5, 'nguyet', '123', 'nguyệt', '2022-02-08', 'nu', '0', '', '0337646311', 'snjfhsjdjfjfjdiis1', 1),
(6, 'abc', 'abc', '', '0000-00-00', '', 'kythuat', '', '', 'IvS4b1n58MrJRcko5M', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` int(11) NOT NULL,
  `TenNCC` text NOT NULL,
  `DiaChi` text NOT NULL,
  `DienThoai` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`, `DiaChi`, `DienThoai`, `status`) VALUES
(1, 'Tây Âu', 'Đông Âu', '0337646311', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `MaNXB` int(11) NOT NULL,
  `TenNXB` text NOT NULL,
  `GhiChu` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`MaNXB`, `TenNXB`, `GhiChu`, `status`) VALUES
(1, 'Nhà xuất bản Trẻ', 'TP HCM', 1),
(2, 'Nhà xuất bản Kim Đồng', 'Hà Nội', 0),
(3, 'Nhà xuất bản Tổng hợp thành phố Hồ Chí Minh', 'TP HCM', 1),
(4, 'Nhà xuất bản Chính trị quốc gia Sự thật ', 'Hà Nội', 1),
(5, 'Khác', 'Hồ Chí Minh', 1),
(6, 'NXB Lao động', 'NXB Lao động', 1),
(7, 'NXB Kim Đồng', 'NXB Kim Đồng', 1),
(8, 'NXB Văn học', 'NXB Văn học', 1),
(9, 'Tác phẩm chọn lọc cho thiếu nhi', 'Tác phẩm chọn lọc cho thiếu nhi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `IDNhap` int(11) NOT NULL,
  `MaTL` int(11) NOT NULL,
  `MaNCC` int(11) NOT NULL,
  `NguoiNhap` text NOT NULL,
  `NgayNhap` date NOT NULL,
  `Soluong` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`IDNhap`, `MaTL`, `MaNCC`, `NguoiNhap`, `NgayNhap`, `Soluong`, `status`) VALUES
(1, 6, 1, '', '0000-00-00', 5, 0),
(2, 5, 1, 'present', '2022-03-01', 10, 1),
(3, 3, 1, 'present', '2022-03-01', 12, 1),
(4, 6, 1, 'present', '2022-03-01', 10, 1),
(5, 6, 1, 'present', '2022-03-01', 5, 1),
(6, 6, 1, 'present', '2022-03-01', 5, 1),
(7, 3, 1, 'present', '2022-03-06', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tacgia`
--

CREATE TABLE `tacgia` (
  `MaTG` int(11) NOT NULL,
  `TenTG` text NOT NULL,
  `GhiChu` text NOT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tacgia`
--

INSERT INTO `tacgia` (`MaTG`, `TenTG`, `GhiChu`, `status`) VALUES
(1, 'Son Tung', 'Sơn Tùng', 1),
(2, 'Hồ Chí Minh', 'Hồ Chí Minh', 1),
(3, 'Mạch Quang Thắng', 'Mạch Quang Thắng', 1),
(4, 'Nhiều tác Giả', 'Nhiều tác giả', 1),
(5, 'Kiều Mai Sơn', 'Kiều Mai Sơn', 1),
(6, 'Khánh Linh', 'Khánh Linh', 1),
(7, 'Ban Tuyên Giáo Trung Ương', 'Ban Tuyên Giáo Trung Ương', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tailieu`
--

CREATE TABLE `tailieu` (
  `MaTL` int(11) NOT NULL,
  `TenTL` text NOT NULL,
  `MaTheLoai` int(11) DEFAULT NULL,
  `MaDV` int(11) DEFAULT NULL,
  `MaTG` text DEFAULT NULL,
  `MaNXB` int(11) DEFAULT NULL,
  `NamXB` int(11) DEFAULT NULL,
  `MaNgonNgu` int(11) DEFAULT NULL,
  `NoiDung` text DEFAULT NULL,
  `SoTrang` int(11) DEFAULT NULL,
  `KhoGiay` varchar(22) DEFAULT NULL,
  `LanTB` int(11) DEFAULT NULL,
  `GiaBia` int(11) DEFAULT NULL,
  `SoPH` int(11) DEFAULT NULL,
  `NgayPH` date DEFAULT NULL,
  `TongSo` int(11) DEFAULT NULL,
  `MaVT` int(11) DEFAULT NULL,
  `NgayCN` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tailieu`
--

INSERT INTO `tailieu` (`MaTL`, `TenTL`, `MaTheLoai`, `MaDV`, `MaTG`, `MaNXB`, `NamXB`, `MaNgonNgu`, `NoiDung`, `SoTrang`, `KhoGiay`, `LanTB`, `GiaBia`, `SoPH`, `NgayPH`, `TongSo`, `MaVT`, `NgayCN`, `status`) VALUES
(1, 'Sách Giáo Khoa Toán Lớp 12 Toán', 7, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 'Nhật ký trong tù', 5, 1, '[\"2\"]', 8, 1943, 2, 'Sách về Bác', 64, 'a2', 2, 20000, 3, '2024-02-01', 12, 1, '2022-02-26', 1),
(3, 'Hồ Chí Minh Tên Người Sống Mãi', 5, 1, '[\"6\"]', 1, 2019, 2, 'Sách Về Bác', 258, '1', 1, 1, 1, '2024-03-01', 1, 1, '2022-03-20', 1),
(4, 'Suốt đời học Bác', 5, 1, '[\"5\"]', 7, 2020, 2, 'Sách về Bác', 150, '1', 1, 1, 1, '2024-02-16', 1, 1, '2022-02-26', 1),
(5, 'Búp Sen Xanh', 5, 1, '[\"1\"]', 1, 2000, 2, 'Sách về Bác', 96, '3', 4, 5, 1, '2024-02-18', 1, 1, '2022-02-27', 1),
(6, 'Hồ Chí Minh Thơ và Đời', 5, 1, '[\"4\"]', 8, 2022, 2, 'Sách về Bác', 1, '1', 1, 1, 1, '2022-02-01', 1, 1, '2022-02-28', 1),
(7, 'Hồ Chí Minh- Con người của sự Sống', 5, 1, '[\"3\"]', 3, 2014, 2, 'Sách về Bác', 519, '1', 1, 2333, 34, '2022-03-08', 12, 1, '2022-03-20', 1),
(8, 'Học tập và làm theo tư tưởng, đạo đức, phong cách Hồ Chí Minh ', 1, 1, '[\"7\"]', 4, 2017, 2, 'Sách về Bác', 100, '4', 4, 4, 4, '2022-03-07', 4, 1, '2022-03-20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `MaTheLoai` int(11) NOT NULL,
  `TenTheLoai` text NOT NULL,
  `GhiChu` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`MaTheLoai`, `TenTheLoai`, `GhiChu`, `status`) VALUES
(1, 'Trinh Tham', 'trinh tham', 1),
(2, 'Giai Tri', 'giai tri ', 0),
(3, 'Truyen Cuoi', 'truyen cuoi', 1),
(4, 'Truyen Ma', 'truyen ma', 1),
(5, 'Sách hay về Bác', '', 1),
(6, 'Sách chính trị', '', 1),
(7, 'Sach giao khoa', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tlchitiet`
--

CREATE TABLE `tlchitiet` (
  `MaCaBiet` int(11) NOT NULL,
  `MaTL` int(11) NOT NULL,
  `IDNhap` int(11) NOT NULL,
  `AnhBarcode` text NOT NULL,
  `NgayCN` date NOT NULL,
  `NguoiCN` text NOT NULL,
  `TinhTrang` text NOT NULL,
  `XuLy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tlchitiet`
--

INSERT INTO `tlchitiet` (`MaCaBiet`, `MaTL`, `IDNhap`, `AnhBarcode`, `NgayCN`, `NguoiCN`, `TinhTrang`, `XuLy`) VALUES
(1, 6, 0, '', '2022-03-01', 'present', 'moi', ''),
(2, 6, 0, '', '2022-03-01', 'present', 'moi', ''),
(3, 6, 0, '', '2022-03-01', 'present', 'moi', ''),
(4, 6, 0, '', '2022-03-01', 'present', 'moi', ''),
(5, 6, 0, '', '2022-03-01', 'present', 'moi', ''),
(6, 3, 0, '', '2022-03-06', 'present', 'moi', ''),
(7, 3, 0, '', '2022-03-06', 'present', 'moi', ''),
(8, 3, 0, '', '2022-03-06', 'present', 'moi', ''),
(9, 3, 0, '', '2022-03-06', 'present', 'moi', ''),
(10, 3, 0, '', '2022-03-06', 'present', 'moi', ''),
(11, 3, 0, '', '2022-03-06', 'present', 'moi', ''),
(12, 3, 0, '', '2022-03-06', 'present', 'moi', ''),
(13, 3, 0, '', '2022-03-06', 'present', 'moi', ''),
(14, 3, 0, '', '2022-03-06', 'present', 'moi', ''),
(15, 3, 0, '', '2022-03-06', 'present', 'moi', '');

-- --------------------------------------------------------

--
-- Table structure for table `vitri`
--

CREATE TABLE `vitri` (
  `MaVT` int(11) NOT NULL,
  `TenVT` text NOT NULL,
  `MoTa` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `vitri`
--

INSERT INTO `vitri` (`MaVT`, `TenVT`, `MoTa`, `status`) VALUES
(1, 'Kệ số 1', 'Từ ngoài vào bên trái', 1),
(2, 'Kệ số 2', 'kệ giữa bên trái trên', 1),
(3, 'Kệ số 3', 'Kệ giữa bên phải trên', 1),
(4, 'Kệ số 4', 'Kệ giữa bên trái dưới', 1),
(5, 'Kệ số 5', 'Kệ giữa bên phải dưới', 1),
(6, 'Kệ số 6', 'Từ ngoài vào bên phải', 1),
(7, 'Kệ số 7', 'Kệ ngang trong cùng', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xulyvp`
--

CREATE TABLE `xulyvp` (
  `IDPhat` int(11) NOT NULL,
  `SoThe` int(11) NOT NULL,
  `LyDoVP` text NOT NULL,
  `HTXuLy` text NOT NULL,
  `NgayXL` date NOT NULL,
  `NguoiXL` text NOT NULL,
  `NgayMoThe` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `xulyvp`
--

INSERT INTO `xulyvp` (`IDPhat`, `SoThe`, `LyDoVP`, `HTXuLy`, `NgayXL`, `NguoiXL`, `NgayMoThe`, `status`) VALUES
(1, 1, 'chiu ko ro', 'phat 100000d cho nho', '2022-03-03', 'present', '2022-03-26', 0),
(2, 2, 'chiu ko ro nua', 'ban 10 ngay', '2022-03-03', 'present', '2022-03-29', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietmt`
--
ALTER TABLE `chitietmt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `docgia`
--
ALTER TABLE `docgia`
  ADD PRIMARY KEY (`SoThe`);

--
-- Indexes for table `donvi`
--
ALTER TABLE `donvi`
  ADD PRIMARY KEY (`MaDV`);

--
-- Indexes for table `dsdktaothe`
--
ALTER TABLE `dsdktaothe`
  ADD PRIMARY KEY (`MaDK`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`MaLop`);

--
-- Indexes for table `muontra`
--
ALTER TABLE `muontra`
  ADD PRIMARY KEY (`ID_MuonTra`);

--
-- Indexes for table `ngonngu`
--
ALTER TABLE `ngonngu`
  ADD PRIMARY KEY (`MaNgonNgu`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`Username`) USING HASH;

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Indexes for table `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`MaNXB`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`IDNhap`);

--
-- Indexes for table `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`MaTG`);

--
-- Indexes for table `tailieu`
--
ALTER TABLE `tailieu`
  ADD PRIMARY KEY (`MaTL`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`MaTheLoai`);

--
-- Indexes for table `tlchitiet`
--
ALTER TABLE `tlchitiet`
  ADD PRIMARY KEY (`MaCaBiet`);

--
-- Indexes for table `vitri`
--
ALTER TABLE `vitri`
  ADD PRIMARY KEY (`MaVT`);

--
-- Indexes for table `xulyvp`
--
ALTER TABLE `xulyvp`
  ADD PRIMARY KEY (`IDPhat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietmt`
--
ALTER TABLE `chitietmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `docgia`
--
ALTER TABLE `docgia`
  MODIFY `SoThe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donvi`
--
ALTER TABLE `donvi`
  MODIFY `MaDV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dsdktaothe`
--
ALTER TABLE `dsdktaothe`
  MODIFY `MaDK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lop`
--
ALTER TABLE `lop`
  MODIFY `MaLop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `muontra`
--
ALTER TABLE `muontra`
  MODIFY `ID_MuonTra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ngonngu`
--
ALTER TABLE `ngonngu`
  MODIFY `MaNgonNgu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `MaNCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `MaNXB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `IDNhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `MaTG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tailieu`
--
ALTER TABLE `tailieu`
  MODIFY `MaTL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `MaTheLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tlchitiet`
--
ALTER TABLE `tlchitiet`
  MODIFY `MaCaBiet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vitri`
--
ALTER TABLE `vitri`
  MODIFY `MaVT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `xulyvp`
--
ALTER TABLE `xulyvp`
  MODIFY `IDPhat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
