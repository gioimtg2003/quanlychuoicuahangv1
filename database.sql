-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 29, 2023 lúc 12:44 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlychuoicuahang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(15) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gtinh` varchar(3) DEFAULT NULL,
  `user_admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `userName`, `password`, `email`, `address`, `phone`, `name`, `gtinh`, `user_admin`) VALUES
(30, 'admin', 'admin', 'conggioi.pro264@gmail.com', '12 Cộng Hòa, phường 15, Quận Tân Bình, TP Hồ Chí Minh', '0367093723', 'Administrator', 'nam', 1),
(53, 'admin1', 'Admin123@', 'conggioi.pro264@gmail.com', 'Tân Bình', '012345678798', 'Nguyễn Công Giới', 'nam', 1),
(54, 'gioimtg2003', 'Gioimtg2003@', 'conggioi.pro264@gmail.com', 'xóm Hải Thượng, thông Vạn Tường, xã Bình Hải, huyện Bình Sơn, tỉnh Quảng Ngãi', '0367093723', 'Nguyễn Công Giới', 'nam', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `branch`
--

CREATE TABLE `branch` (
  `id` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `branch`
--

INSERT INTO `branch` (`id`, `name`, `address`, `img`) VALUES
(1, 'đậu xanh', 'bình hải', '123.png'),
(4, 'Hamburger King', '108 Nguyễn Huệ, Quận 1, TP HCM', '123.png'),
(5, 'Chi Nhánh phụ 1', '23 Cộng Hòa, Q.Tân Bình, TPHCM', '123.png'),
(6, 'Chi Nhánh phụ 2', '23 Cộng Hòa, Q.Tân Bình, TPHCM', '123.png'),
(7, 'Chi Nhánh phụ 3', '23 Trường Chinh, Q.Tân Bình, TPHCM', '123.png'),
(8, 'Chi Nhánh phụ 4', '23 Hoàng Hoa Thám, Q.Tân Bình, TPHCM', '123.png'),
(9, 'Chi Nhánh phụ 5', '1 Nguyễn Huệ, Q.1, TPHCM', '123.png'),
(10, 'Chi Nhánh phụ 6', '200 Hoàng Sa, Q.Bình Thạnh, TPHCM', '123.png'),
(11, 'Chi Nhánh phụ 7', '54 Xô Viết Nghệ Tĩnh, Q.Bình Thạnh, TPHCM', '123.png'),
(12, 'Chi Nhánh phụ 8', '294 Paster, Q.3, TPHCM', '123.png'),
(13, 'Chi nhánh 9', '23 Nam Kỳ Khởi Nghĩa, Q.3, TP HCM', '123.png'),
(25, 'Chi nhánh 10', '102 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(26, 'Chi nhánh 11', '83 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(27, 'Chi nhánh 12', '61 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(28, 'Chi nhánh 13', '205 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(29, 'Chi nhánh 14', '193 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(30, 'Chi nhánh 15', '100 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(31, 'Chi nhánh 16', '70 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(32, 'Chi nhánh 17', '201 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(33, 'Chi nhánh 18', '147 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(34, 'Chi nhánh 19', '80 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(35, 'Chi nhánh 20', '111 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(36, 'Chi nhánh 21', '66 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(37, 'Chi nhánh 22', '147 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(38, 'Chi nhánh 23', '88 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(39, 'Chi nhánh 24', '149 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(40, 'Chi nhánh 25', '232 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(41, 'Chi nhánh 2', 'Địa chỉ 2', '123.png'),
(42, 'Chi nhánh 2', 'Địa chỉ 2', '123.png'),
(43, 'Chi nhánh 2', 'Địa chỉ 2', '123.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(2, 'Khuyến mãi', '/public/images/29.png'),
(3, 'Cơm - Mỳ Ý', '/public/images/11.png'),
(4, 'Hamburger', '/public/images/4.png'),
(5, 'Thức uống', '/public/images/14.png'),
(6, 'Thức ăn nhẹ', '/public/images/12.png'),
(7, 'Gà ráng', '/public/images/6.png'),
(8, 'Combo thức ăn', '/public/images/10.png'),
(9, 'Món ăn kèm', '/public/images/27.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oder`
--

CREATE TABLE `oder` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `status` enum('pending','delivered','shipping','cancel','success') NOT NULL DEFAULT 'pending',
  `create_order` datetime DEFAULT NULL,
  `order_completion` datetime DEFAULT NULL,
  `price_total` int(10) NOT NULL,
  `id_branch` int(15) NOT NULL,
  `delivery_address` varchar(255) DEFAULT NULL,
  `delivery_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `oder`
--

INSERT INTO `oder` (`id`, `user_id`, `status`, `create_order`, `order_completion`, `price_total`, `id_branch`, `delivery_address`, `delivery_time`) VALUES
(97, 30, 'success', '2023-06-30 11:01:45', '2023-06-30 11:03:08', 176800, 13, '12 Cộng hòa, Tân Bình, TP HCM', '2023-06-30 12:00:00'),
(98, 30, 'success', '2023-06-30 11:09:24', '2023-06-30 11:10:34', 122560, 25, '23 Hoàng Hoa Thám, Tân Bình, TP HCM', '2023-07-01 10:00:00'),
(99, 30, 'cancel', '2023-06-30 11:11:23', '2023-06-30 11:11:38', 58000, 1, 'không có', '2023-08-01 08:00:00'),
(100, 30, 'success', '2023-06-30 14:19:01', '2023-06-30 14:19:50', 58000, 1, 'không có', '2023-06-30 14:00:00'),
(101, 30, 'cancel', '2023-06-30 20:38:00', '2023-06-30 20:38:31', 65400, 27, '43 Trường Chinh, Quận Tân Phú, TP Hồ Chí Minh', '2023-07-01 10:00:00'),
(102, 30, 'success', '2023-06-30 20:40:50', '2023-06-30 20:41:21', 168000, 32, 'Sài gòn', '2023-07-01 08:00:00'),
(103, 54, 'success', '2023-06-30 20:43:08', '2023-06-30 20:43:39', 435000, 30, 'xóm Hải Thượng, thông Vạn Tường, xã Bình Hải, huyện Bình Sơn, tỉnh Quảng Ngãi', '2023-08-01 08:00:00'),
(104, 54, 'success', '2023-06-30 20:44:08', '2023-06-30 20:49:37', 180000, 11, 'xóm Hải Thượng, thông Vạn Tường, xã Bình Hải, huyện Bình Sơn, tỉnh Quảng Ngãi', '2023-07-01 12:00:00'),
(105, 30, 'success', '2023-07-02 23:01:16', '2023-07-02 23:01:33', 590000, 32, 'không có', '2023-09-01 08:00:00'),
(106, 54, 'cancel', '2023-07-02 23:24:57', '2023-07-02 23:25:03', 114000, 1, 'xóm Hải Thượng, thông Vạn Tường, xã Bình Hải, huyện Bình Sơn, tỉnh Quảng Ngãi', '2023-09-01 08:00:00'),
(107, 54, 'cancel', '2023-07-02 23:25:21', '2023-07-02 23:25:25', 45000, 1, 'xóm Hải Thượng, thông Vạn Tường, xã Bình Hải, huyện Bình Sơn, tỉnh Quảng Ngãi', '2023-11-01 08:00:00'),
(108, 54, 'cancel', '2023-07-02 23:27:14', '2023-07-02 23:27:21', 29000, 1, 'xóm Hải Thượng, thông Vạn Tường, xã Bình Hải, huyện Bình Sơn, tỉnh Quảng Ngãi', '2023-10-01 08:00:00'),
(109, 30, 'cancel', '2023-07-14 11:32:06', '2023-07-14 11:33:58', 35000, 26, '12 Cộng Hòa, phường 15, Quận Tân Bình, TP Hồ Chí Minh', '2023-07-14 11:00:00'),
(110, 30, 'cancel', '2023-07-14 11:33:30', '2023-07-14 11:33:43', 35000, 11, '12 Cộng Hòa, phường 15, Quận Tân Bình, TP Hồ Chí Minh', '2023-07-14 11:00:00'),
(111, 30, 'success', '2023-07-14 11:34:47', '2023-07-17 12:34:06', 45000, 1, '12 Cộng Hòa, phường 15, Quận Tân Bình, TP Hồ Chí Minh', '2023-07-14 11:00:00'),
(112, 30, 'cancel', '2023-07-14 11:37:44', '2023-07-14 12:05:49', 17500, 1, '12 Cộng Hòa, phường 15, Quận Tân Bình, TP Hồ Chí Minh', '2023-07-14 11:00:00'),
(113, 30, 'cancel', '2023-07-14 11:40:53', '2023-07-17 03:05:43', 39000, 1, '12 Cộng Hòa, phường 15, Quận Tân Bình, TP Hồ Chí Minh', '2023-07-14 11:00:00'),
(114, 30, 'success', '2023-07-14 11:42:20', '2023-07-14 12:04:50', 58000, 30, '12 Cộng Hòa, phường 15, Quận Tân Bình, TP Hồ Chí Minh', '2023-07-14 11:00:00'),
(115, 30, 'success', '2023-07-14 12:29:02', '2023-07-14 12:43:30', 107500, 9, '12 Cộng Hòa, phường 15, Quận Tân Bình, TP Hồ Chí Minh', '2023-07-14 13:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oder_item`
--

CREATE TABLE `oder_item` (
  `id` int(15) NOT NULL,
  `oder_id` int(15) NOT NULL,
  `product_id` int(15) NOT NULL,
  `quantity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `oder_item`
--

INSERT INTO `oder_item` (`id`, `oder_id`, `product_id`, `quantity`) VALUES
(104, 97, 61, 1),
(105, 97, 62, 1),
(106, 97, 136, 1),
(107, 97, 135, 3),
(108, 98, 69, 2),
(109, 98, 70, 1),
(110, 98, 126, 1),
(111, 99, 70, 1),
(112, 99, 69, 1),
(113, 100, 69, 1),
(114, 100, 70, 1),
(115, 101, 69, 1),
(116, 101, 136, 2),
(117, 102, 61, 1),
(118, 102, 62, 1),
(119, 102, 69, 2),
(120, 103, 61, 1),
(121, 103, 62, 1),
(122, 103, 63, 1),
(123, 103, 103, 1),
(124, 104, 86, 3),
(125, 104, 67, 1),
(126, 105, 61, 1),
(127, 105, 62, 5),
(128, 105, 63, 5),
(129, 106, 66, 1),
(130, 106, 65, 1),
(131, 107, 67, 1),
(132, 108, 70, 1),
(133, 109, 60, 2),
(134, 110, 60, 2),
(135, 111, 61, 1),
(136, 112, 60, 1),
(137, 113, 65, 1),
(138, 114, 69, 2),
(139, 115, 60, 1),
(140, 115, 61, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `id` int(15) NOT NULL,
  `oder_id` int(15) NOT NULL,
  `method` enum('cash','card') NOT NULL DEFAULT 'cash'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` int(15) NOT NULL,
  `branch_id` int(15) NOT NULL,
  `image` varchar(255) NOT NULL,
  `expried` tinyint(1) NOT NULL,
  `discount` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `category_id`, `branch_id`, `image`, `expried`, `discount`) VALUES
(60, 'Bắp Cải Trộn (Vừa)', 'Bắp Cải Trộn (Vừa)', 25000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_045116_bpcitrn.jpg', 2, 30),
(61, 'Mì Ý', 'Mì Ý (M)', 45000.00, 3, 6, 'http://api.popeyes.vn/api/v1/files/08072022_051222_M.jpg', 2, NULL),
(62, 'Combo Mì Ý S2', 'Mì Ý +  1 Thức Uống', 65000.00, 3, 6, 'http://api.popeyes.vn/api/v1/files/08072022_073233_Miynuoc.jpeg', 2, NULL),
(63, 'Combo C1', 'Cơm BBQ + 1 Gà Giòn (Phần gà được phục vụ ngẫu nhiên)', 44000.00, 3, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071102_cmBBQggin.jpg', 2, NULL),
(64, 'Popcorn BBQ', 'Popcorn BBQ', 29000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/28092022_032216_popcorn3.jpg', 2, NULL),
(65, 'Khoai tây Nghiền (Lớn)', 'Khoai tây Nghiền (Lớn)', 39000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_065600_Khoaitynghin.jpg', 2, NULL),
(66, 'Gà Và Hải Sản', 'Gà Và Hải Sản (Phần gà được phục vụ ngẫu nhiên)', 75000.00, 7, 6, 'http://api.popeyes.vn/api/v1/files/08072022_065744_2gkhngxng1ccajun.jpg', 2, NULL),
(67, '1 miếng Gà Kpop ', 'Gà KPop', 45000.00, 7, 6, 'http://api.popeyes.vn/api/v1/files/ComboKpopChicken1pc.jpg', 2, NULL),
(68, 'Cơm Trắng', 'Cơm Trắng', 10000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_065822_cmtrng.jpg', 2, NULL),
(69, 'Khoai tây Chiên (Vừa)', 'Khoai tây Chiên (Vừa)', 29000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071220_khoaitychin.jpg', 2, NULL),
(70, 'Popcorn Sốt Phô Mai', 'Popcorn Sốt Phô Mai', 29000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/28092022_032306_popcorn2.jpg', 2, NULL),
(71, 'Donut Tôm', 'Donut Tôm', 29000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_063612_Donuttm.jpg', 2, NULL),
(72, '4 Miếng Snack Cá', '4 Miếng Snack Cá', 36000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_072046_snackc.jpg', 2, NULL),
(73, 'Combo C2', 'Cơm BBQ + Canh Soup + 2 Gà Không Xương', 44000.00, 3, 6, 'http://api.popeyes.vn/api/v1/files/08072022_074637_comgakhongxuongcanh.jpeg', 2, NULL),
(74, 'Snack Mực', 'Snack Mực', 45000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_072154_snackmc.jpg', 2, NULL),
(75, 'Combo C3', 'Cơm BBQ + Gà Giòn + Canh Soup (Phần gà được phục vụ ngẫu nhiên)', 54000.00, 3, 6, 'http://api.popeyes.vn/api/v1/files/ComboC3.png', 2, NULL),
(76, 'Gà Không Xương (5 Miếng)', 'Gà Không Xương (5 miếng) + 1 Sốt Tự Chọn ', 79000.00, 7, 6, 'http://api.popeyes.vn/api/v1/files/08072022_072318_gakhongxng5ming.jpg', 2, NULL),
(77, 'Khoai tây Chiên (Lớn)', 'Khoai tây Chiên (Lớn)', 39000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071334_khoaitychin.jpg', 2, NULL),
(78, 'Combo C4', 'Cơm Trắng + Gà Tắm Nước Mắm + Canh Soup + Bắp Cải Trộn (Vừa) + 1 Thức Uống (Phần gà được phục vụ ngẫu nhiên)', 79000.00, 3, 6, 'http://api.popeyes.vn/api/v1/files/08072022_074837_comGTNMbapcaitroncanhnuoc.jpeg', 2, NULL),
(79, '1 Miếng Gà Giòn', '1 Miếng Gà Giòn (Phần gà được phục vụ ngẫu nhiên)', 38000.00, 7, 6, 'http://api.popeyes.vn/api/v1/files/08072022_072235_1ggin.jpg', 2, NULL),
(80, 'Gà Không Xương (3 Miếng)', 'Gà Không Xương 3 Miếng +  1 Sốt Chấm Tự Chọn', 59000.00, 7, 6, 'http://api.popeyes.vn/api/v1/files/11072022_050849_Gkhngxng3ming.jpg', 2, NULL),
(81, 'Canh Soup', 'Soup', 10000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_065719_soup.jpg', 2, NULL),
(82, 'Combo Mì Ý S3', 'Mì Ý + 1 Gà Giòn + 1 Thức Uống (Phần gà được phục vụ ngẫu nhiên)', 95000.00, 3, 6, 'http://api.popeyes.vn/api/v1/files/08072022_073036_Miygagionnuoc.jpeg', 2, NULL),
(83, '1 Miếng Gà Tắm Nước Mắm', '1 Miếng Gà Tắm Nước Mắm', 45000.00, 7, 6, 'http://api.popeyes.vn/api/v1/files/08072022_040934_1pcGTNM.jpg', 2, NULL),
(84, 'Bắp Cải Trộn (Lớn)', 'Bắp Cải Trộn (Lớn)', 39000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_045649_bpcitrn.jpg', 2, NULL),
(85, 'Khoai tây Nghiền (Vừa)', 'Khoai tây Nghiền (Vừa)', 19000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071428_Khoaitynghin.jpg', 2, NULL),
(86, '1 Miếng Gà Tắm Nước Mắm', '1 Miếng Gà Tắm Nước Mắm', 45000.00, 7, 6, 'http://api.popeyes.vn/api/v1/files/08072022_040934_1pcGTNM.jpg', 2, NULL),
(87, 'Salad Sốt Chanh Dây', 'Salad Chanh Dây', 19000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/Passionfruitsalad.jpg', 2, NULL),
(88, 'Combo Mì Ý S4', 'Mì Ý + 1 Gà Giòn + 2 Gà Không Xương +1 Khoai Tây Nghiền (Vừa) + 2 Thức Uống (Phần gà được phục vụ ngẫu nhiên)', 145000.00, 3, 6, 'http://api.popeyes.vn/api/v1/files/08072022_072820_Miygagiongakhongxuongkhoaitaynghiennuoc.jpeg', 2, NULL),
(89, 'Popcorn ', 'Popcorn Rong Biển', 24000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/28092022_032044_popcorn1.jpg', 2, NULL),
(90, 'Pop Burger A', '1 Pop Burger + 1 Gà giòn + 1 Thức uống', 89000.00, 4, 6, 'http://api.popeyes.vn/api/v1/files/ComboPopBurgerA.jpg', 2, NULL),
(91, 'Kid Combo 4', '1 Mì Ý + 1 Milo + 1 Gà Không Xương', 65000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/08072022_072230_Kidcombo04.jpeg', 2, NULL),
(92, 'Burger Cá', 'Burger Cá', 54000.00, 4, 6, 'http://api.popeyes.vn/api/v1/files/08072022_073823_BurgerC.jpg', 2, NULL),
(93, 'Combo burger Gà', '1 Burger Gà Cajun + 1 Thức Uống ', 69000.00, 4, 6, 'http://api.popeyes.vn/api/v1/files/08072022_093821_burgergCoke.png', 2, NULL),
(94, 'Kid Combo 2', '2 Gà Không Xương + 2 Snack cá + 1 Milo', 49000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071515_kidcombo02.jpg', 2, NULL),
(95, 'Kid Combo 3', '1 Gà Giòn + 1 Milo + 1 Khoai Tây Chiên (Vừa) (Phần gà được phục vụ ngẫu nhiên)', 55000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071443_kidcombo03.jpg', 2, NULL),
(96, 'Dasani', 'Dasani', 25000.00, 5, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071658_dasani.jpg', 2, NULL),
(97, 'Combo Burger Tôm', '1 Bơ Gơ Tôm + 1 Thức Uống ', 59000.00, 4, 6, 'http://api.popeyes.vn/api/v1/files/08072022_153509_burgertmCoke.png', 2, NULL),
(98, 'Combo Burger Cá', '1 Burger Cá  + 1 Thức Uống ', 64000.00, 4, 6, 'http://api.popeyes.vn/api/v1/files/08072022_152239_burgercCoke.png', 2, NULL),
(99, 'Coke Zero', 'Coke Zero', 25000.00, 5, 6, 'http://api.popeyes.vn/api/v1/files/06012023_081437_viber_image_20230106_151242830.jpg', 2, NULL),
(100, 'Fanta', 'Fanta TA', 25000.00, 5, 6, 'http://api.popeyes.vn/api/v1/files/08072022_065051_Fanta.jpg', 2, NULL),
(101, 'Milo', 'Milo', 27000.00, 5, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071609_LyMilo.jpg', 2, NULL),
(102, 'Burger Tôm', 'Burger Tôm', 46000.00, 4, 6, 'http://api.popeyes.vn/api/v1/files/08072022_074929_BurgerTm.jpg', 2, NULL),
(103, 'Combo gia đình A', 'Family A', 281000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/ComboFamilyA.jpg', 2, NULL),
(104, 'Combo Kid Meal 1A', '1 Pop Burger + Milo 115ml', 49000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/combokid1.jpg', 2, NULL),
(105, 'Combo gia đình B', 'Family B', 369000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/ComboFamilyB.jpg', 2, NULL),
(106, 'Sprite', 'Sprite TA', 25000.00, 5, 6, 'http://api.popeyes.vn/api/v1/files/08072022_064309_Sprite.jpg', 2, NULL),
(107, 'Burger Gà', 'Burger Gà', 56000.00, 4, 6, 'http://api.popeyes.vn/api/v1/files/08072022_073759_BurgerG.jpg', 2, NULL),
(108, 'Kid Combo 1', '1 Burger Tôm + 1 Milo', 49000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071610_Kidcombo01.jpg', 2, NULL),
(109, 'Combo gia đình C', 'Family C', 379000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/ComboFamilyC.jpg', 2, NULL),
(110, 'Kid Combo 2', '1 Popcorn rong biển/Số Phô mai/Sốt BBQ + 1 Khoai Tây Chiên (R) + 1 Milo', 55000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/10102022_100115_hinhcombokid2.jpg', 2, NULL),
(111, 'Combo Pop Burger B', '1 Pop Burger + 1 gà giòn + 1 khoai tây nghiền + 1 nước ngọt (Phần gà được phục vụ ngẫu nhiên)', 99000.00, 4, 6, 'http://api.popeyes.vn/api/v1/files/ComboPopBurgerB.jpg', 2, 0),
(112, 'Coca Cola', 'Coca TA', 25000.00, 5, 6, 'http://api.popeyes.vn/api/v1/files/08072022_080645_coca.png', 2, NULL),
(113, 'Kid Combo 1', '1 Burger Tôm + 1 Milo', 49000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071550_Kidcombo01.jpg', 2, NULL),
(115, 'Bia Tiger Bạc', 'Bia Tiger Bạc', 20000.00, 5, 34, 'https://quancathaibinh.vn/uploads/products/2222.png', 0, 50),
(123, 'Combo Gà Tuyết Vàng', 'Combo Gold Chicken 55k  02 Gà Tuyết Vàng', 78000.00, 2, 6, 'https://dscnnwjxnwl3f.cloudfront.net/media/catalog/product/cache/d82c51daf8ac1d5486aa3b0b5b376157/c/h/chicken_ga_tuyet_vang.png', 2, 17),
(124, 'Chào Hè 1', '0', 0.00, 2, 6, 'https://dscnnwjxnwl3f.cloudfront.net/media/catalog/product/cache/d82c51daf8ac1d5486aa3b0b5b376157/m/e/menu_spaghetti_1_1.png', 2, 59),
(126, 'CB SUMMER 1', 'Gà Rán Phần Upsize 02 Gà rán \r\n01 Khoai tây lắc\r\n01 Pepsi (L)', 127000.00, 2, 6, 'https://dscnnwjxnwl3f.cloudfront.net/media/catalog/product/cache/d82c51daf8ac1d5486aa3b0b5b376157/s/u/summer_1.png', 2, 72),
(127, 'CB SUMMER 2', '0', 0.00, 2, 6, 'https://dscnnwjxnwl3f.cloudfront.net/media/catalog/product/cache/d82c51daf8ac1d5486aa3b0b5b376157/s/u/summer_2.png', 2, 72),
(129, 'Gà Pie', 'Gà Pie', 45000.00, 2, 6, 'https://dscnnwjxnwl3f.cloudfront.net/media/catalog/product/cache/d82c51daf8ac1d5486aa3b0b5b376157/g/_/g_pie_1.png', 2, 29),
(130, 'Gà Pie + Pepsi (M)', 'Gà Pie + Pepsi (M)', 59000.00, 2, 6, 'https://dscnnwjxnwl3f.cloudfront.net/media/catalog/product/cache/d82c51daf8ac1d5486aa3b0b5b376157/g/_/g_pie_pep.png', 2, 30),
(131, 'Khoai Tây Lắc', 'Khoai Tây Lắc', 39000.00, 2, 6, 'https://dscnnwjxnwl3f.cloudfront.net/media/catalog/product/cache/d82c51daf8ac1d5486aa3b0b5b376157/d/e/dessert-534x374px_shake-potato.png', 2, 35),
(132, 'Gà Lắc', 'Gà Lắc', 43000.00, 2, 6, 'https://dscnnwjxnwl3f.cloudfront.net/media/catalog/product/cache/d82c51daf8ac1d5486aa3b0b5b376157/d/e/dessert-534x374px_shake-chicken.png', 2, 32),
(133, 'Phô Mai Que', 'Phô Mai Que', 35000.00, 2, 6, 'https://dscnnwjxnwl3f.cloudfront.net/media/catalog/product/cache/d82c51daf8ac1d5486aa3b0b5b376157/d/e/dessert-534x374px_cheese-stick.png', 2, 13),
(134, 'Khoai Tây Chiên (M)', 'Khoai Tây Chiên (M)', 29000.00, 2, 6, 'https://dscnnwjxnwl3f.cloudfront.net/media/catalog/product/cache/d82c51daf8ac1d5486aa3b0b5b376157/d/e/dessert-534x374px_frenchfries.png', 2, 34),
(135, 'Bánh Táo', 'Bánh Táo', 20000.00, 2, 6, 'https://dscnnwjxnwl3f.cloudfront.net/media/catalog/product/cache/d82c51daf8ac1d5486aa3b0b5b376157/d/e/dessert-534x374px_apple-pie.png', 2, 19),
(136, 'Mực Rán (3 miếng)', 'Mực Rán (3 miếng)', 28000.00, 2, 6, 'https://dscnnwjxnwl3f.cloudfront.net/media/catalog/product/cache/d82c51daf8ac1d5486aa3b0b5b376157/d/e/dessert-534x374px_squid-ring_2.png', 2, 35);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `review`
--

CREATE TABLE `review` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `product_id` int(15) NOT NULL,
  `rating` int(1) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userName` (`userName`);

--
-- Chỉ mục cho bảng `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oder`
--
ALTER TABLE `oder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_oder_user` (`user_id`),
  ADD KEY `fk_branch_id` (`id_branch`);

--
-- Chỉ mục cho bảng `oder_item`
--
ALTER TABLE `oder_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_oder_item_oder` (`oder_id`),
  ADD KEY `fk_oder_item_product` (`product_id`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_payment_oder` (`oder_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_category` (`category_id`),
  ADD KEY `fk_product_branch` (`branch_id`);

--
-- Chỉ mục cho bảng `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_review_user` (`user_id`),
  ADD KEY `fk_review_product` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `oder`
--
ALTER TABLE `oder`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT cho bảng `oder_item`
--
ALTER TABLE `oder_item`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT cho bảng `review`
--
ALTER TABLE `review`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `oder`
--
ALTER TABLE `oder`
  ADD CONSTRAINT `fk_branch_id` FOREIGN KEY (`id_branch`) REFERENCES `branch` (`id`),
  ADD CONSTRAINT `fk_oder_user` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `oder_item`
--
ALTER TABLE `oder_item`
  ADD CONSTRAINT `fk_oder_item_oder` FOREIGN KEY (`oder_id`) REFERENCES `oder` (`id`),
  ADD CONSTRAINT `fk_oder_item_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_payment_oder` FOREIGN KEY (`oder_id`) REFERENCES `oder` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_branch` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `fk_review_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_review_user` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
