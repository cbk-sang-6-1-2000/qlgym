-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 08, 2023 lúc 09:00 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `gym`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `name`) VALUES
(1, 'admin', 'admin', 'Hoàng Sang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calamviec`
--

CREATE TABLE `calamviec` (
  `id_ca` int(11) NOT NULL,
  `Thoigian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `calamviec`
--

INSERT INTO `calamviec` (`id_ca`, `Thoigian`) VALUES
(1, 'Ca sáng'),
(2, 'Ca tối'),
(3, 'Cả ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congviec`
--

CREATE TABLE `congviec` (
  `idCv` int(11) NOT NULL,
  `TenCV` varchar(50) NOT NULL,
  `Tratien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `congviec`
--

INSERT INTO `congviec` (`idCv`, `TenCV`, `Tratien`) VALUES
(1, 'Quản lý', 8000000),
(2, 'Thu ngân', 2500000),
(3, 'Huấn luyện viên', 4000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `id` int(11) NOT NULL,
  `Tendv` varchar(50) NOT NULL,
  `Gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`id`, `Tendv`, `Gia`) VALUES
(1, 'Bài tập mức 1', 100000),
(2, 'Bài tập mức 2', 200000),
(4, 'Bài tập mức 3', 300000),
(5, 'Bài tập mức 4', 400000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemdanh`
--

CREATE TABLE `diemdanh` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Ngaydd` datetime NOT NULL,
  `kiemtra` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `diemdanh`
--

INSERT INTO `diemdanh` (`id`, `user_id`, `Ngaydd`, `kiemtra`) VALUES
(27, 20, '2023-04-17 11:28:47', '2023-04-17'),
(28, 21, '2023-04-17 14:17:16', '2023-04-17'),
(29, 20, '2023-04-18 17:05:34', '2023-04-18'),
(30, 20, '2023-04-20 12:47:22', '2023-04-20'),
(31, 25, '2023-04-20 12:49:32', '2023-04-20'),
(32, 22, '2023-04-21 08:37:36', '2023-04-21'),
(33, 24, '2023-04-21 08:37:37', '2023-04-21'),
(40, 20, '2023-04-24 20:02:43', '2023-04-23'),
(41, 22, '2023-04-24 20:07:11', '2023-04-24'),
(42, 24, '2023-04-24 20:07:33', '2023-04-24'),
(43, 52, '2023-04-24 20:07:34', '2023-04-24'),
(44, 55, '2023-04-24 20:07:36', '2023-04-24'),
(45, 56, '2023-04-24 20:07:37', '2023-04-24'),
(46, 58, '2023-04-24 20:07:40', '2023-04-24'),
(55, 52, '2023-04-25 08:28:23', '2023-04-25'),
(73, 20, '2023-04-30 14:32:33', '2023-04-30'),
(74, 24, '2023-04-30 14:47:24', '2023-04-30'),
(75, 22, '2023-04-30 14:50:41', '2023-04-30'),
(76, 25, '2023-04-30 14:51:59', '2023-04-30'),
(77, 53, '2023-04-30 14:52:00', '2023-04-30'),
(78, 56, '2023-04-30 14:52:02', '2023-04-30'),
(79, 58, '2023-04-30 14:52:03', '2023-04-30'),
(80, 54, '2023-04-30 14:52:03', '2023-04-30'),
(88, 60, '2023-05-04 16:07:58', '2023-05-04'),
(89, 55, '2023-05-04 16:09:16', '2023-05-04'),
(90, 25, '2023-05-04 16:09:19', '2023-05-04'),
(91, 52, '2023-05-04 16:11:25', '2023-05-04'),
(92, 57, '2023-05-04 16:11:31', '2023-05-04'),
(93, 20, '2023-05-04 16:11:36', '2023-05-04'),
(94, 22, '2023-05-04 16:22:22', '2023-05-04'),
(95, 54, '2023-05-04 16:23:11', '2023-05-04'),
(96, 25, '2023-05-05 07:21:45', '2023-05-05'),
(97, 52, '2023-05-05 08:27:23', '2023-05-05'),
(98, 56, '2023-05-05 09:42:10', '2023-05-05'),
(99, 59, '2023-05-05 09:42:12', '2023-05-05'),
(100, 22, '2023-05-05 09:42:16', '2023-05-05'),
(101, 22, '2023-05-08 11:17:00', '2023-05-08'),
(102, 52, '2023-05-08 11:17:01', '2023-05-08'),
(103, 25, '2023-05-08 11:17:02', '2023-05-08'),
(104, 57, '2023-05-08 11:17:03', '2023-05-08'),
(105, 54, '2023-05-08 11:17:04', '2023-05-08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `ngaythanhtoan` date NOT NULL,
  `ghichu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `user_id`, `tongtien`, `ngaythanhtoan`, `ghichu`) VALUES
(95, 20, 2400000, '2023-05-08', 'Đã thanh toán'),
(96, 25, 1100000, '2023-05-08', 'Đã thanh toán'),
(98, 57, 1500000, '2023-05-08', 'Đã thanh toán'),
(99, 22, 500000, '2023-05-08', 'Đã thanh toán');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `user_id` int(11) NOT NULL,
  `Hoten` varchar(50) NOT NULL,
  `Taikhoan` varchar(50) NOT NULL,
  `Matkhau` varchar(50) NOT NULL,
  `Gioitinh` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `id_nhanvien` int(11) DEFAULT 0,
  `Ngaybd` date NOT NULL,
  `Ngaykt` date NOT NULL,
  `Tongtien` int(11) NOT NULL,
  `Diachi` varchar(50) NOT NULL,
  `Sdt` int(11) NOT NULL,
  `Kehoach` varchar(50) NOT NULL,
  `Trangthai` varchar(50) NOT NULL,
  `Diemdanh` int(11) NOT NULL,
  `Chieucaobd` float NOT NULL,
  `Cannangbd` float NOT NULL,
  `Vong1bd` float NOT NULL,
  `Vong2bd` float NOT NULL,
  `Vong3bd` float NOT NULL,
  `Dangnguoibd` varchar(50) NOT NULL,
  `Dangnguoitd` varchar(50) NOT NULL,
  `Ngaycapnhatthaydoi` date NOT NULL,
  `Loinhac` int(11) NOT NULL DEFAULT 0,
  `TT` int(11) NOT NULL,
  `kiemtra` date NOT NULL,
  `ngaythue` date DEFAULT NULL,
  `ngayktthue` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`user_id`, `Hoten`, `Taikhoan`, `Matkhau`, `Gioitinh`, `id`, `id_nhanvien`, `Ngaybd`, `Ngaykt`, `Tongtien`, `Diachi`, `Sdt`, `Kehoach`, `Trangthai`, `Diemdanh`, `Chieucaobd`, `Cannangbd`, `Vong1bd`, `Vong2bd`, `Vong3bd`, `Dangnguoibd`, `Dangnguoitd`, `Ngaycapnhatthaydoi`, `Loinhac`, `TT`, `kiemtra`, `ngaythue`, `ngayktthue`) VALUES
(20, 'Thái Hoàng Sang', 'sang', '1', 'Male', 2, 7, '2023-03-14', '2023-10-14', 1200000, 'Nghệ An', 818940765, '6', '1', 14, 175, 65, 80, 70, 80, 'mập mạp', 'Cân đối', '2023-05-05', 0, 0, '2023-05-08', '2023-05-08', '2023-08-08'),
(21, 'Trịnh Ngọc Quỳnh', 'quynh', '1', 'Male', 2, 7, '2023-05-08', '2023-06-08', 200000, 'Nghệ An', 336310704, '1', '', 1, 0, 46, 55, 0, 0, 'mảnh khảnh', 'Cân đối', '2023-04-18', 0, 0, '2023-05-08', '2023-05-08', '2023-06-08'),
(22, 'Nguyễn Hùng Cường', 'cuong', '1', 'Nam', 1, 7, '2023-05-08', '2023-06-08', 100000, 'Nghệ An', 123456789, '1', '1', 12, 0, 54, 0, 0, 0, 'mập mạp', '', '2023-04-18', 0, 1, '2023-05-08', '2023-05-08', '2023-06-08'),
(24, 'Nguyễn Văn Thái', 'thai', '1', 'Male', 1, 8, '2023-04-14', '2023-05-14', 100000, 'Nghệ An', 123456789, '1', '', 5, 0, 52, 0, 0, 0, 'mảnh khảnh', '', '2023-05-05', 0, 0, '2023-05-08', '2023-05-08', '2023-08-08'),
(25, 'Võ Văn Hồng', 'hong', '1', 'Male', 2, 8, '2023-02-14', '2023-07-14', 600000, 'Nghệ An', 123456789, '3', '1', 10, 165, 55, 70, 70, 70, 'cân đối', 'Cân đối', '2023-05-04', 0, 1, '2023-05-08', '2023-05-08', '2023-06-08'),
(52, 'Nguyễn Ngọc Nhã', 'nha', '1', 'Male', 4, 7, '2023-04-24', '2024-04-24', 3600000, 'Nghệ An', 123456789, '12', '', 7, 165, 65, 80, 70, 86, 'mập mạp', '', '0000-00-00', 0, 1, '2023-05-08', '2023-05-08', '2023-06-08'),
(53, 'Nguyễn Ngọc Khánh', 'khanh', '1', 'Male', 5, 8, '2023-04-24', '2023-10-24', 2400000, 'Hà Nội', 123456789, '6', '', 7, 165, 50, 80, 65, 70, 'mảnh khảnh', '', '0000-00-00', 0, 0, '2023-05-08', '2023-05-08', '2023-06-08'),
(54, 'Nguyễn Văn Song', 'song', '1', 'Male', 2, 7, '2023-04-24', '2024-04-24', 2400000, 'Nghệ An', 123456789, '12', '', 7, 175, 65, 70, 70, 70, 'mập mạp', '', '0000-00-00', 0, 1, '2023-05-08', '2023-05-08', '2023-06-08'),
(55, 'Trần AnhHoàng', 'hoang', '1', 'Male', 2, 8, '2023-04-24', '2023-05-24', 200000, 'Nghệ An', 123456789, '1', '', 2, 165, 65, 70, 70, 70, 'cân đối', '', '0000-00-00', 0, 0, '2023-05-08', '2023-05-08', '2023-06-08'),
(56, 'Nguyễn Hồng Sơn', 'son', '1', 'Male', 5, 7, '2023-04-24', '2023-10-24', 2400000, 'Nghệ An', 123456789, '6', '', 3, 175, 75, 80, 70, 80, 'cân đối', '', '0000-00-00', 0, 0, '2023-05-08', '2023-05-08', '2023-06-08'),
(57, 'Trần Đinh Dũng', 'dung', '1', 'Male', 1, 7, '2023-04-24', '2023-07-24', 300000, 'Nghệ An', 123456789, '3', '1', 5, 165, 50, 70, 60, 70, 'mảnh khảnh', '', '2023-05-05', 0, 1, '2023-05-08', '2023-05-08', '2023-08-08'),
(58, 'Trần Đình Thắng', 'thang', '1', 'Male', 4, 8, '2023-04-24', '2024-04-24', 3600000, 'Nghệ An', 123456789, '12', '', 2, 173, 60, 70, 65, 70, 'mảnh khảnh', '', '0000-00-00', 0, 0, '2023-05-08', '2023-05-08', '2023-06-08'),
(59, 'Chu Văn Hưng', 'hung', '1', 'Male', 5, 8, '2023-04-24', '2024-04-24', 4800000, 'Nghệ An', 123456789, '12', '', 1, 150, 46, 60, 60, 60, 'mảnh khảnh', '', '0000-00-00', 0, 0, '2023-05-08', '2023-05-08', '2023-06-08'),
(60, 'Hoàng Ngọc Tâm', 'tam', '1', 'Male', 2, 8, '2023-04-24', '2023-10-24', 1200000, 'Nghệ An', 123456789, '6', '', 3, 169, 54, 70, 70, 70, 'cân đối', '', '0000-00-00', 0, 0, '2023-05-08', '2023-05-08', '2023-06-08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luong`
--

CREATE TABLE `luong` (
  `id` int(11) NOT NULL,
  `id_nhanvien` int(11) NOT NULL,
  `Tienthuong` int(11) NOT NULL,
  `Tongtien` float NOT NULL,
  `Ngaytraluong` date NOT NULL,
  `Ghichu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `luong`
--

INSERT INTO `luong` (`id`, `id_nhanvien`, `Tienthuong`, `Tongtien`, `Ngaytraluong`, `Ghichu`) VALUES
(19, 9, 500000, 3000000, '2023-05-05', ''),
(20, 8, 500000, 4500000, '2023-05-08', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id_nhanvien` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Hoten` varchar(50) NOT NULL,
  `Gioitinh` varchar(50) NOT NULL,
  `Diachi` varchar(50) NOT NULL,
  `Sodienthoai` varchar(50) NOT NULL,
  `congviec` int(11) NOT NULL,
  `Giathue` int(11) NOT NULL,
  `id_ca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id_nhanvien`, `username`, `password`, `email`, `Hoten`, `Gioitinh`, `Diachi`, `Sodienthoai`, `congviec`, `Giathue`, `id_ca`) VALUES
(4, 'huy', '1', 'huy@gmail.com', 'Trần Quang Huy', 'Nam', 'Nghệ An', '0123456789', 1, 0, 3),
(7, 'hong', '1', 'hong@gmail.com', 'Võ Văn Hồng', 'Nam', 'Nghệ An', '0123456789', 3, 400000, 1),
(8, 'thai', '1', 'thai@gmail.com', 'Nguyễn Văn Thái', 'Nam ', 'Nghệ An', '0123456789', 3, 500000, 2),
(9, 'quynh', '1', 'quynh@gmail.com', 'Trịnh Ngọc Quỳnh', 'Nữ', 'Nghệ An', '0123456789', 2, 0, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thietbi`
--

CREATE TABLE `thietbi` (
  `id_thietbi` int(11) NOT NULL,
  `Tenthietbi` varchar(50) NOT NULL,
  `Nhacungcap` varchar(50) NOT NULL,
  `Chitiet` varchar(500) NOT NULL,
  `Gia` int(11) NOT NULL,
  `Soluong` int(11) NOT NULL,
  `Tongtien` int(11) NOT NULL,
  `Diachi` varchar(50) NOT NULL,
  `Sodienthoai` varchar(50) NOT NULL,
  `Ngaynhap` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thietbi`
--

INSERT INTO `thietbi` (`id_thietbi`, `Tenthietbi`, `Nhacungcap`, `Chitiet`, `Gia`, `Soluong`, `Tongtien`, `Diachi`, `Sodienthoai`, `Ngaynhap`) VALUES
(5, 'Máy chạy bộ', 'Nguyễn Văn A', 'Chạy bộ vốn là bộ môn thông dụng và phổ biến với hầu hết các gymer. Bởi vậy có thể nói gần như 100% các mẫu phòng tập gym hiện đại đều trang bị các loại máy chạy bộ là điều vô cùng dễ hiểu.', 200000, 5, 1000000, 'Hà Nội', '0123456789', '2023-04-14'),
(6, 'Máy tập cơ ngực, tay sau', 'Trần Văn B', 'Các vùng cơ như cơ ngực, cơ bắp tay trước, cơ bắp tay sau sẽ được cải thiện đáng kể với những bài tập từ máy tập gym. Khi tập loại máy này, bạn sẽ thực hiện các động tác tương tự với lúc hít đất. Đây không chỉ là loại máy giúp tăng cơ cho nam giới hiệu quả mà còn là một loại máy tập gym cho nữ.  Phần lớn chị em đều mong ước có một vòng ba nở nang, săn chắc. Bởi vậy mà đây cũng là một sự lựa chọn hoàn hảo cho chị em.', 1000000, 3, 3000000, 'Hồ Chí Minh', '0123456789', '2023-04-14'),
(7, 'Máy tập cơ xô, cơ lưng', 'Nguyễn Văn C', 'Lat Pull Down là loại máy tập chuyên dụng để thực hiện các bài tập tác động cơ xô; là máy tập cơ bản tại phòng gym cho cơ lưng hiệu quả thay cho hít xà đơn. Nếu bạn có ý định kéo xà đơn để tập xô thì máy Lat Pull Down là loại máy thích hợp nhất để bắt đầu quá trình tập luyện.', 400000, 4, 1600000, 'Đà Nẵng', '0123456789', '2023-04-14'),
(8, 'Máy đạp chân ngang có ghế tựa', 'Trần Văn D', 'Leg Press là thiết bị tập gym yêu thích của nhiều người bởi hiệu quả nó mang lại khá tốt. Đây là một loại máy chuyên dùng cho các bài tập chân an toàn và hiệu quả.  Đồng thời, Leg Press Machine cũng là loại máy tập gym cơ bản tại phòng gym được các huấn luyện viên chọn để tập cho phần thân dưới.', 2000000, 2, 4000000, 'Nghệ An', '0123456789', '2023-04-14'),
(11, 'Các loại tạ', 'Nguyễn Văn A', 'Tạ là các dụng cụ cơ bản nhất mà bất kì người mới hay người đã tập lâu năm đều sử dụng. Tạ là dụng cụ chính và dụng cụ kết hợp với các thiết bị phòng tập gym khác trong các bài tập giúp phát triển cơ bắp ngực, vai, lưng, tay, bụng và mông đùi. Bạn nên đầu tư nhiều loại tạ khác nhau trong phòng tập của mình để mọi người có thể sử dụng', 40000, 50, 2000000, 'Nghệ An', '0123456789', '2023-04-24'),
(12, 'Máy tập chân / máy tập mông đùi', 'Trần Văn B', 'Sau nhóm cơ lớn ngực thì nhóm cơ chân đùi là nhóm cơ lớn thứ hai mà mọi người rất chú trọng tập, nhất là các bạn nữ. Nhóm máy tập chân/ máy tập mông đùi ; Khung tập Squat (giá tập gánh đùi), Máy tập dẫn hướng (Smith Machine), Máy tập đá đùi trước, Máy tập móc đùi sau, Ghế tập bắp chuối,…', 2000000, 4, 8000000, 'Hà Nội', '0123456789', '2023-04-24'),
(13, 'Máy tập vai', 'Trần Văn B', 'Vai là một nhóm cơ quan trọng  giúp người tập định hình form cơ thể đẹp hơn. Có thể tận dụng các thanh tạ để tập vai nhưng đối với người mới để tránh chấn thương và tập chuẩn form thì phòng tập cũng nên đầu tư một số máy tập đẩy vai hoặc các máy robot tác động vào đa nhóm cơ vai, tay sau.   ', 1500000, 6, 9000000, 'Hà Nội', '0123456789', '2023-04-24'),
(14, 'Máy robot / máy khối', 'Trần Văn D', 'Máy robot/máy khối giúp tập các nhóm cơ một cách linh hoạt và hiệu quả. Máy định vị tư thế ngồi của người tập, thiết kế máy thường tác động tới nhóm cơ cụ thể. Thông thường, phòng gym cơ bản đến nâng cao đều sẽ có máy robot cho người tập luyện, vì đây là nhóm máy rất dễ luyện tập nhóm cơ cho người mới bắt đầu.', 3000000, 2, 6000000, 'Nghệ An', '0123456789', '2023-04-24'),
(15, 'Khung tập đa năng', 'Trần Văn D', 'Nhằm tiết kiệm diện tích, chi phí và trải nghiệm luyện tập thì các khung tập đa năng luôn có mặt tại các phòng gym, nhất là phòng gym tại nhà. Khung tập đa năng là máy có thiết kế đa chức năng, có thể tập luyện nhiều bài trên một máy và tác động đa dạng nhóm cơ.', 2000000, 3, 6000000, 'Hà Nội', '0123456789', '2023-04-24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Noidung` varchar(500) NOT NULL,
  `Ngaydangbai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thongbao`
--

INSERT INTO `thongbao` (`id`, `user_id`, `Noidung`, `Ngaydangbai`) VALUES
(9, 1, 'Nghỉ lễ 30/4 - 1/5 năm 2023, người lao động được nghỉ 5 ngày liên tiếp (29/4 - 3/5).', '2023-04-17'),
(10, 1, 'Tình hình covid nước ta đã xuất hiện trở lại, khách hàng vui lòng đeo khẩu trang khi ra đường để đảm bảo sức khỏe cho bản thân cũng như góp phần đẩy lùi dịch covid', '2023-04-21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinthaydoi`
--

CREATE TABLE `thongtinthaydoi` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Chieucaotd` int(11) NOT NULL,
  `Cannangtd` int(11) NOT NULL,
  `Vong1td` int(11) NOT NULL,
  `Vong2td` int(11) NOT NULL,
  `Vong3td` int(11) NOT NULL,
  `Dangnguoitd` varchar(50) NOT NULL,
  `Ngaycapnhat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtinthaydoi`
--

INSERT INTO `thongtinthaydoi` (`id`, `user_id`, `Chieucaotd`, `Cannangtd`, `Vong1td`, `Vong2td`, `Vong3td`, `Dangnguoitd`, `Ngaycapnhat`) VALUES
(7, 20, 175, 70, 75, 70, 70, 'Cân đối', '2023-04-18 10:19:24'),
(8, 20, 180, 75, 80, 75, 75, 'Cân đối', '2023-04-18 10:23:11'),
(9, 20, 11, 11, 11, 11, 11, 'Cân đối', '2023-04-18 10:45:19'),
(10, 25, 170, 65, 65, 65, 65, 'Cân đối', '2023-05-04 12:02:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vieccanlam`
--

CREATE TABLE `vieccanlam` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Nhiemvu` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL DEFAULT 'Đang thực hiện',
  `Ngayghi` date NOT NULL,
  `Ngayhoanthanh` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vieccanlam`
--

INSERT INTO `vieccanlam` (`id`, `user_id`, `Nhiemvu`, `Status`, `Ngayghi`, `Ngayhoanthanh`) VALUES
(10, 25, 'hom nay tap nhay 100 cai', 'Hoàn Thành', '2023-04-17', '2023-04-17'),
(11, 20, 'Chạy bộ 1000 km', 'Đang thực hiện', '2023-05-04', '0000-00-00'),
(12, 20, 'Gập bụng 100 lần', 'Đang thực hiện', '2023-05-04', '0000-00-00'),
(13, 20, 'Chạy bộ 1000 km', 'Hoàn Thành', '2023-05-05', '2023-05-05');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `calamviec`
--
ALTER TABLE `calamviec`
  ADD PRIMARY KEY (`id_ca`);

--
-- Chỉ mục cho bảng `congviec`
--
ALTER TABLE `congviec`
  ADD PRIMARY KEY (`idCv`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_nhanvien` (`id_nhanvien`);

--
-- Chỉ mục cho bảng `luong`
--
ALTER TABLE `luong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nhanvien` (`id_nhanvien`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id_nhanvien`),
  ADD KEY `id_ca` (`id_ca`);

--
-- Chỉ mục cho bảng `thietbi`
--
ALTER TABLE `thietbi`
  ADD PRIMARY KEY (`id_thietbi`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `thongtinthaydoi`
--
ALTER TABLE `thongtinthaydoi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `vieccanlam`
--
ALTER TABLE `vieccanlam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `calamviec`
--
ALTER TABLE `calamviec`
  MODIFY `id_ca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `congviec`
--
ALTER TABLE `congviec`
  MODIFY `idCv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `diemdanh`
--
ALTER TABLE `diemdanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `luong`
--
ALTER TABLE `luong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id_nhanvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `thietbi`
--
ALTER TABLE `thietbi`
  MODIFY `id_thietbi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `thongtinthaydoi`
--
ALTER TABLE `thongtinthaydoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `vieccanlam`
--
ALTER TABLE `vieccanlam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD CONSTRAINT `diemdanh_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `khachhang` (`user_id`);

--
-- Các ràng buộc cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`id`) REFERENCES `dichvu` (`id`);

--
-- Các ràng buộc cho bảng `luong`
--
ALTER TABLE `luong`
  ADD CONSTRAINT `luong_ibfk_1` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`id_ca`) REFERENCES `calamviec` (`id_ca`);

--
-- Các ràng buộc cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD CONSTRAINT `thongbao_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin` (`user_id`);

--
-- Các ràng buộc cho bảng `thongtinthaydoi`
--
ALTER TABLE `thongtinthaydoi`
  ADD CONSTRAINT `thongtinthaydoi_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `khachhang` (`user_id`);

--
-- Các ràng buộc cho bảng `vieccanlam`
--
ALTER TABLE `vieccanlam`
  ADD CONSTRAINT `vieccanlam_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `khachhang` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
