-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 19, 2021 lúc 06:48 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `leather_another`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT 'Id của danh mục mà sản phẩm thuộc về, là khóa ngoại liên kết với bảng categories',
  `title` varchar(100) DEFAULT NULL COMMENT 'Tên sản phẩm',
  `avatar` varchar(100) DEFAULT NULL COMMENT 'Tên file ảnh sản phẩm',
  `price` int(11) DEFAULT NULL COMMENT 'Giá sản phẩm',
  `amount` int(11) DEFAULT NULL COMMENT 'Số lượng sản phẩm trong kho',
  `summary` varchar(100) DEFAULT NULL COMMENT 'Mô tả ngắn cho sản phẩm',
  `content` text DEFAULT NULL COMMENT 'Mô tả chi tiết cho sản phẩm',
  `status` tinyint(3) DEFAULT 0 COMMENT 'Trạng thái danh mục: 0 - Inactive, 1 - Active',
  `seo_title` varchar(100) DEFAULT NULL COMMENT 'Từ khóa seo cho title',
  `seo_description` varchar(100) DEFAULT NULL COMMENT 'Từ khóa seo cho phần mô tả',
  `seo_keywords` varchar(100) DEFAULT NULL COMMENT 'Các từ khóa seo',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày cập nhật cuối'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `avatar`, `price`, `amount`, `summary`, `content`, `status`, `seo_title`, `seo_description`, `seo_keywords`, `created_at`, `updated_at`) VALUES
(13, 4, 'Túi1', 'bag-2728000_1920.jpg', 1000000, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit libero magni rerum!\r\n', '<p>&nbsp;Adipisci deserunt et harum laboriosam laudantium minus necessitatibus neque odio quasi reprehenderit, temporibus, ullam? Ad iusto quo repellat?</p>\r\n', 1, '', '', '', '2020-12-18 12:22:04', '2021-01-05 22:32:48'),
(14, 4, 'Thắt Lưng1', 'belt-139757_1920.jpg', 1500000, 2, '', '', 1, '', '', '', '2020-12-18 12:22:29', NULL),
(15, 4, 'Thắt lưng2', 'belt-2146914_1920.jpg', 2500000, 2, '', '', 1, '', '', '', '2020-12-18 12:22:48', NULL),
(16, 4, 'Thắt lưng3', 'belts-2172333_1920.jpg', 3500000, 1, '', '', 1, '', '', '', '2020-12-18 12:23:28', NULL),
(17, 4, 'Thắt lưng4', 'belts-2735438_1920.jpg', 5632000, 2, '', '', 1, '', '', '', '2020-12-18 12:23:43', NULL),
(18, 4, 'Giày1', 'boots-1638873_1920.jpg', 3000000, 3, '', '', 1, '', '', '', '2020-12-18 12:24:05', NULL),
(20, 5, 'Giày2', 'boots-1638873_1920.jpg', 1520000, 1, '', '', 1, '', '', '', '2020-12-18 12:25:56', NULL),
(21, 5, 'Giày3', 'fashion-601565_1920.jpg', 6000500, 1, '', '', 1, '', '', '', '2020-12-18 12:26:25', '2021-01-05 20:54:40'),
(22, 5, 'Giày4', 'hiking-shoes-3074971_1920.jpg', 2560000, 1, '', '', 1, '', '', '', '2020-12-18 12:26:54', '2021-01-05 20:54:21'),
(23, 5, 'Túi2', 'leather bag.jpg', 1500000, 2, '', '', 1, '', '', '', '2020-12-18 12:27:17', '2021-01-05 20:53:58'),
(24, 5, 'Thắt lưng5', 'menswear-952836_1920.jpg', 2600000, 2, '', '', 1, '', '', '', '2020-12-18 12:30:45', '2021-01-05 20:53:40'),
(25, 5, 'Ví', 'money-1934036_1920.jpg', 5000000, 2, '', '', 1, '', '', '', '2020-12-18 12:31:57', '2021-01-05 20:52:22'),
(26, 5, 'Túi3', 'online-shopping-2650383_1920.jpg', 1000000, 2, '', '', 1, '', '', '', '2020-12-18 12:32:17', '2021-01-05 20:53:24'),
(27, 5, 'Túi4', 'package-1052370_1920.jpg', 950000, 1, '', '', 1, '', '', '', '2020-12-18 12:32:35', '2021-01-05 20:52:51'),
(28, 6, 'Túi5', 'people-2560084_1920.jpg', 2650000, 1, '', '', 1, '', '', '', '2020-12-18 12:32:49', '2020-12-18 19:33:14'),
(29, 6, 'Ví2', 'portfolio-602504_1920.jpg', 1650000, 1, '', '', 1, '', '', '', '2020-12-18 12:33:36', NULL),
(30, 6, 'Ví3', 'wallet-50273_1920.jpg', 2650000, 3, '', '', 1, '', '', '', '2020-12-18 12:34:04', NULL),
(31, 6, 'Ví4', 'wallet-389941_1920.jpg', 3560000, 5, '', '', 1, '', '', '', '2020-12-18 12:34:21', NULL),
(32, 6, 'Ví5', 'wallet-1081310_1920.jpg', 3562000, 6, '', '', 1, '', '', '', '2020-12-18 12:34:38', NULL),
(33, 6, 'Ví6', 'wallet-4976998_1920.jpg', 6500000, 6, '', '', 1, '', '', '', '2020-12-18 12:34:58', NULL),
(35, 6, 'Giày5', 'wingtip-1684700_1920.jpg', 3562000, 3, '', '', 1, '', '', '', '2020-12-18 12:35:27', '2021-01-05 20:52:39');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
