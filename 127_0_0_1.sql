-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 06, 2021 lúc 07:02 PM
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
-- Cơ sở dữ liệu: `king_of_sneaker`
--
CREATE DATABASE IF NOT EXISTS `leather_another` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
USE `leather_another`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT 'Tên danh mục',
  `type` tinyint(3) DEFAULT 0 COMMENT 'Loại danh mục: 0 - Product, 1 - News',
  `avatar` varchar(100) DEFAULT NULL COMMENT 'Tên file ảnh danh mục',
  `description` text DEFAULT NULL COMMENT 'Mô tả chi tiết cho danh mục',
  `status` tinyint(3) DEFAULT 0 COMMENT 'Trạng thái danh mục: 0 - Inactive, 1 - Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo danh mục',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày cập nhật cuối'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `type`, `avatar`, `description`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Túi', 0, '', '<p>Adidsa</p>\r\n', 1, '2020-12-18 12:20:50', '2020-12-19 22:34:11'),
(5, 'Giày', 0, '', '<p>Nike</p>\r\n', 1, '2020-12-18 12:21:00', '2020-12-19 22:34:07'),
(6, 'VÍ', 0, '', '<p>Converse</p>\r\n', 1, '2020-12-18 12:21:14', '2020-12-19 22:34:01'),
(7, 'Thắt lưng', 0, '1608649093-4be754735f75ae2bf764.jpg', '', 1, '2020-12-22 14:58:13', '2021-01-05 20:49:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT 'Id của danh mục mà tin tức thuộc về, là khóa ngoại liên kết với bảng categories',
  `title` varchar(100) NOT NULL COMMENT 'Tiêu đề tin tức',
  `summary` varchar(100) DEFAULT NULL COMMENT 'Mô tả ngắn cho tin tức',
  `avatar` varchar(100) DEFAULT NULL COMMENT 'Tên file ảnh tin tức',
  `content` text DEFAULT NULL COMMENT 'Mô tả chi tiết cho sản phẩm',
  `status` tinyint(3) DEFAULT 0 COMMENT 'Trạng thái danh mục: 0 - Inactive, 1 - Active',
  `seo_title` varchar(100) DEFAULT NULL COMMENT 'Từ khóa seo cho title',
  `seo_description` varchar(100) DEFAULT NULL COMMENT 'Từ khóa seo cho phần mô tả',
  `seo_keywords` varchar(100) DEFAULT NULL COMMENT 'Các từ khóa seo',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày cập nhật cuối'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'Id của user trong trường hợp đã login và đặt hàng, là khóa ngoại liên kết với bảng users',
  `fullname` varchar(100) DEFAULT NULL COMMENT 'Tên khách hàng',
  `address` varchar(100) DEFAULT NULL COMMENT 'Địa chỉ khách hàng',
  `mobile` int(11) DEFAULT NULL COMMENT 'SĐT khách hàng',
  `email` varchar(100) DEFAULT NULL COMMENT 'Email khách hàng',
  `note` text DEFAULT NULL COMMENT 'Ghi chú từ khách hàng',
  `price_total` int(11) DEFAULT NULL COMMENT 'Tổng giá trị đơn hàng',
  `payment_status` tinyint(2) DEFAULT NULL COMMENT 'Trạng thái đơn hàng: 0 - Chưa thành toán, 1 - Đã thành toán',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo đơn',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày cập nhật cuối'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `address`, `mobile`, `email`, `note`, `price_total`, `payment_status`, `created_at`, `updated_at`) VALUES
(28, NULL, 'ưăefqwefq', 'Thiết kế - Quảng cáo', 2147483647, 'thanhppm@gmail.com', '', 1251261235, 0, '2020-12-22 18:56:09', NULL),
(29, NULL, 'Không Gian Xanh', 'Thiết kế - Quảng cáo', 2147483647, 'kobiet123u@gmail.com', 'awega', 13712500, 0, '2021-01-05 14:56:42', NULL),
(30, NULL, 'Không Gian Xanh', 'Thiết kế - Quảng cáo', 2147483647, 'kobiet123u@gmail.com', 'awega', 13712500, 0, '2021-01-05 14:56:43', NULL),
(31, NULL, 'Long', 'qưerqwerqwer', 134513451, 'kobiet123u@gmail.com', 'avgasefWFE', 13712500, 0, '2021-01-05 14:57:29', NULL),
(32, NULL, 'Long', 'qưerqwerqwer', 134513451, 'kobiet123u@gmail.com', 'avgasefWFE', 13712500, 0, '2021-01-05 14:59:24', NULL),
(33, NULL, 'Long', 'qưerqwerqwer', 134513451, 'kobiet123u@gmail.com', 'avgasefWFE', 13712500, 0, '2021-01-05 14:59:36', NULL),
(34, NULL, 'Long', 'qưerqwerqwer', 134513451, 'kobiet123u@gmail.com', 'avgasefWFE', 13712500, 0, '2021-01-05 14:59:44', NULL),
(35, NULL, 'Long', 'qưerqwerqwer', 134513451, 'kobiet123u@gmail.com', 'avgasefWFE', 13712500, 0, '2021-01-05 15:00:17', NULL),
(36, NULL, 'Long', 'qưerqwerqwer', 134513451, 'kobiet123u@gmail.com', 'avgasefWFE', 13712500, 0, '2021-01-05 15:00:32', NULL),
(37, NULL, 'Long', 'qưerqwerqwer', 134513451, 'kobiet123u@gmail.com', 'avgasefWFE', 13712500, 0, '2021-01-05 15:00:34', NULL),
(38, NULL, 'Long', 'qưerqwerqwer', 134513451, 'kobiet123u@gmail.com', 'avgasefWFE', 13712500, 0, '2021-01-05 15:01:10', NULL),
(39, NULL, 'Nam', 'Thiết kế - Quảng cáo', 988879661, 'xanh356.kd5@gmail.com', 'awefqagwe', 13712500, 0, '2021-01-05 15:01:27', NULL),
(40, NULL, 'Không Gian Xanh', 'Số 236 Nguyễn Trãi, Thanh Xuân, Hà Nội', 988879661, 'xanh356.kd5@gmail.com', 'sdvsdfvsdf', 13712500, 0, '2021-01-05 15:02:54', NULL),
(41, NULL, 'Không Gian Xanh', 'Số 236 Nguyễn Trãi, Thanh Xuân, Hà Nội', 988879661, 'xanh356.kd5@gmail.com', 'ewefwer', 16212500, 0, '2021-01-05 16:13:02', NULL),
(42, NULL, 'Không Gian Xanh', 'Số 236 Nguyễn Trãi, Thanh Xuân, Hà Nội', 988879661, 'xanh356.kd5@gmail.com', 'qưergtwert', 16212500, 0, '2021-01-05 16:14:36', NULL),
(43, NULL, 'Quang', 'VN', 987438409, 'vuhuyquang2k@gmail.com', 'tạm ổn', 3000000, 0, '2021-06-19 05:48:03', NULL),
(44, NULL, 'Long', 'fkwamf', 7641, 'dfkawmfl@gmail.com', '', 1000000, 0, '2021-06-19 14:15:23', NULL),
(45, NULL, 'Long', 'VNđâf', 1312312, 'dfkawmfl@gmail.com', '', 1000000, 0, '2021-06-19 14:19:44', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) DEFAULT NULL COMMENT 'Id của order tương ứng, là khóa ngoại liên kết với bảng orders',
  `product_id` int(11) DEFAULT NULL COMMENT 'Id của product tương ứng, là khóa ngoại liên kết với bảng products',
  `price` int(11) DEFAULT NULL COMMENT 'Giá sản phẩm đã đặt',
  `quantity` int(11) DEFAULT NULL COMMENT 'Số sản phẩm đã đặt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `price`, `quantity`) VALUES
(15, 11, 25000000, 1),
(16, 11, 25000000, 1),
(17, 9, NULL, 1),
(18, 13, NULL, 1),
(18, 14, NULL, 3),
(19, 20, NULL, 2),
(20, 20, NULL, 2),
(21, 20, NULL, 2),
(22, 20, NULL, 2),
(23, 20, NULL, 2),
(25, 20, NULL, 2),
(27, 20, NULL, 2),
(28, 36, NULL, 1),
(29, 13, NULL, 1),
(29, 14, NULL, 1),
(29, 21, NULL, 1),
(29, 29, NULL, 1),
(29, 35, NULL, 1),

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
(13, 4, 'Adidas1', '1608294124-product-ad-023.jpg', 1000000, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit libero magni rerum!\r\n', '<p>&nbsp;Adipisci deserunt et harum laboriosam laudantium minus necessitatibus neque odio quasi reprehenderit, temporibus, ullam? Ad iusto quo repellat?</p>\r\n', 1, '', '', '', '2020-12-18 12:22:04', '2021-01-05 22:32:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL COMMENT 'Tên đăng nhập',
  `password` varchar(100) DEFAULT NULL COMMENT 'Mật khẩu đăng nhập',
  `first_name` varchar(100) DEFAULT NULL COMMENT 'Fist name',
  `last_name` varchar(100) DEFAULT NULL COMMENT 'Last name',
  `phone` int(11) DEFAULT NULL COMMENT 'SĐT user',
  `address` varchar(100) DEFAULT NULL COMMENT 'Địa chỉ user',
  `email` varchar(100) DEFAULT NULL COMMENT 'Email của user',
  `avatar` varchar(100) DEFAULT NULL COMMENT 'File ảnh đại diện',
  `jobs` varchar(100) DEFAULT NULL COMMENT 'Nghề nghiệp',
  `last_login` datetime DEFAULT NULL COMMENT 'Lần đăng nhập gần đây nhất',
  `facebook` varchar(100) DEFAULT NULL COMMENT 'Link facebook',
  `status` tinyint(3) DEFAULT 0 COMMENT 'Trạng thái danh mục: 0 - Inactive, 1 - Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày cập nhật cuối'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `phone`, `address`, `email`, `avatar`, `jobs`, `last_login`, `facebook`, `status`, `created_at`, `updated_at`) VALUES
(3, 'long', 'sieunhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-06-19 08:37:39', NULL),
(4, 'long123', '36ed58c5c14dc2f58eef099585d2a939', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-06-19 08:39:18', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Cơ sở dữ liệu: `leather_another`
--
CREATE DATABASE IF NOT EXISTS `leather_another` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
USE `leather_another`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT 'Tên danh mục',
  `type` tinyint(3) DEFAULT 0 COMMENT 'Loại danh mục: 0 - Product, 1 - News',
  `avatar` varchar(100) DEFAULT NULL COMMENT 'Tên file ảnh danh mục',
  `description` text DEFAULT NULL COMMENT 'Mô tả chi tiết cho danh mục',
  `status` tinyint(3) DEFAULT 0 COMMENT 'Trạng thái danh mục: 0 - Inactive, 1 - Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo danh mục',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày cập nhật cuối'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `type`, `avatar`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Túi xách', 0, '', 'good', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT 'Id của danh mục mà tin tức thuộc về, là khóa ngoại liên kết với bảng categories',
  `title` varchar(100) NOT NULL COMMENT 'Tiêu đề tin tức',
  `summary` varchar(100) DEFAULT NULL COMMENT 'Mô tả ngắn cho tin tức',
  `avatar` varchar(100) DEFAULT NULL COMMENT 'Tên file ảnh tin tức',
  `content` text DEFAULT NULL COMMENT 'Mô tả chi tiết cho sản phẩm',
  `status` tinyint(3) DEFAULT 0 COMMENT 'Trạng thái danh mục: 0 - Inactive, 1 - Active',
  `seo_title` varchar(100) DEFAULT NULL COMMENT 'Từ khóa seo cho title',
  `seo_description` varchar(100) DEFAULT NULL COMMENT 'Từ khóa seo cho phần mô tả',
  `seo_keywords` varchar(100) DEFAULT NULL COMMENT 'Các từ khóa seo',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày cập nhật cuối'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'Id của user trong trường hợp đã login và đặt hàng, là khóa ngoại liên kết với bảng users',
  `fullname` varchar(100) DEFAULT NULL COMMENT 'Tên khách hàng',
  `address` varchar(100) DEFAULT NULL COMMENT 'Địa chỉ khách hàng',
  `mobile` int(11) DEFAULT NULL COMMENT 'SĐT khách hàng',
  `email` varchar(100) DEFAULT NULL COMMENT 'Email khách hàng',
  `note` text DEFAULT NULL COMMENT 'Ghi chú từ khách hàng',
  `price_total` int(11) DEFAULT NULL COMMENT 'Tổng giá trị đơn hàng',
  `payment_status` tinyint(2) DEFAULT NULL COMMENT 'Trạng thái đơn hàng: 0 - Chưa thành toán, 1 - Đã thành toán',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo đơn',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày cập nhật cuối'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `address`, `mobile`, `email`, `note`, `price_total`, `payment_status`, `created_at`, `updated_at`) VALUES
(29, NULL, 'Không Gian Xanh', 'Thiết kế - Quảng cáo', 2147483647, 'kobiet123u@gmail.com', 'awega', 13712500, 0, '2021-01-05 14:56:42', NULL),
(30, NULL, 'Không Gian Xanh', 'Thiết kế - Quảng cáo', 2147483647, 'kobiet123u@gmail.com', 'awega', 13712500, 0, '2021-01-05 14:56:43', NULL),
(31, NULL, 'Long', 'qưerqwerqwer', 134513451, 'kobiet123u@gmail.com', 'avgasefWFE', 13712500, 0, '2021-01-05 14:57:29', NULL),
(32, NULL, 'Long', 'qưerqwerqwer', 134513451, 'kobiet123u@gmail.com', 'avgasefWFE', 13712500, 0, '2021-01-05 14:59:24', NULL),
(33, NULL, 'Long', 'qưerqwerqwer', 134513451, 'kobiet123u@gmail.com', 'avgasefWFE', 13712500, 0, '2021-01-05 14:59:36', NULL),
(34, NULL, 'Long', 'qưerqwerqwer', 134513451, 'kobiet123u@gmail.com', 'avgasefWFE', 13712500, 0, '2021-01-05 14:59:44', NULL),
(35, NULL, 'Long', 'qưerqwerqwer', 134513451, 'kobiet123u@gmail.com', 'avgasefWFE', 13712500, 0, '2021-01-05 15:00:17', NULL),
(36, NULL, 'Long', 'qưerqwerqwer', 134513451, 'kobiet123u@gmail.com', 'avgasefWFE', 13712500, 0, '2021-01-05 15:00:32', NULL),
(37, NULL, 'Long', 'qưerqwerqwer', 134513451, 'kobiet123u@gmail.com', 'avgasefWFE', 13712500, 0, '2021-01-05 15:00:34', NULL),
(38, NULL, 'Long', 'qưerqwerqwer', 134513451, 'kobiet123u@gmail.com', 'avgasefWFE', 13712500, 0, '2021-01-05 15:01:10', NULL),
(39, NULL, 'Nam', 'Thiết kế - Quảng cáo', 988879661, 'xanh356.kd5@gmail.com', 'awefqagwe', 13712500, 0, '2021-01-05 15:01:27', NULL),
(40, NULL, 'Không Gian Xanh', 'Số 236 Nguyễn Trãi, Thanh Xuân, Hà Nội', 988879661, 'xanh356.kd5@gmail.com', 'sdvsdfvsdf', 13712500, 0, '2021-01-05 15:02:54', NULL),
(41, NULL, 'Không Gian Xanh', 'Số 236 Nguyễn Trãi, Thanh Xuân, Hà Nội', 988879661, 'xanh356.kd5@gmail.com', 'ewefwer', 16212500, 0, '2021-01-05 16:13:02', NULL),
(42, NULL, 'Không Gian Xanh', 'Số 236 Nguyễn Trãi, Thanh Xuân, Hà Nội', 988879661, 'xanh356.kd5@gmail.com', 'qưergtwert', 16212500, 0, '2021-01-05 16:14:36', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) DEFAULT NULL COMMENT 'Id của order tương ứng, là khóa ngoại liên kết với bảng orders',
  `product_id` int(11) DEFAULT NULL COMMENT 'Id của product tương ứng, là khóa ngoại liên kết với bảng products',
  `price` int(11) DEFAULT NULL COMMENT 'Giá sản phẩm đã đặt',
  `quantity` int(11) DEFAULT NULL COMMENT 'Số sản phẩm đã đặt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `price`, `quantity`) VALUES
(15, 11, 25000000, 1),
(16, 11, 25000000, 1),
(17, 9, NULL, 1),
(18, 13, NULL, 1),
(18, 14, NULL, 3),
(19, 20, NULL, 2),
(20, 20, NULL, 2),
(21, 20, NULL, 2),
(22, 20, NULL, 2),
(23, 20, NULL, 2),
(25, 20, NULL, 2),
(27, 20, NULL, 2),
(28, 36, NULL, 1),
(29, 13, NULL, 1),
(29, 14, NULL, 1),
(29, 21, NULL, 1),
(29, 29, NULL, 1),
(29, 35, NULL, 1),
(31, 13, NULL, 1),

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
(35, 6, 'Giày5', 'wingtip-1684700_1920.jpg', 3562000, 3, '', '', 1, '', '', '', '2020-12-18 12:35:27', '2021-01-05 20:52:39'),
(37, 1, 'túi xách đen', '1625550788-product-package-1052370_1920.jpg', 3500000, 10, 'good', '', 0, '', '', '', '2021-07-06 05:53:08', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL COMMENT 'Tên đăng nhập',
  `password` varchar(100) DEFAULT NULL COMMENT 'Mật khẩu đăng nhập',
  `first_name` varchar(100) DEFAULT NULL COMMENT 'Fist name',
  `last_name` varchar(100) DEFAULT NULL COMMENT 'Last name',
  `phone` int(11) DEFAULT NULL COMMENT 'SĐT user',
  `address` varchar(100) DEFAULT NULL COMMENT 'Địa chỉ user',
  `email` varchar(100) DEFAULT NULL COMMENT 'Email của user',
  `avatar` varchar(100) DEFAULT NULL COMMENT 'File ảnh đại diện',
  `jobs` varchar(100) DEFAULT NULL COMMENT 'Nghề nghiệp',
  `last_login` datetime DEFAULT NULL COMMENT 'Lần đăng nhập gần đây nhất',
  `facebook` varchar(100) DEFAULT NULL COMMENT 'Link facebook',
  `status` tinyint(3) DEFAULT 0 COMMENT 'Trạng thái danh mục: 0 - Inactive, 1 - Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày cập nhật cuối'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `phone`, `address`, `email`, `avatar`, `jobs`, `last_login`, `facebook`, `status`, `created_at`, `updated_at`) VALUES
(6, '12345', '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-07-06 05:41:30', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Cơ sở dữ liệu: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Đang đổ dữ liệu cho bảng `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'Leather_Another', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Cấu trúc của bảng @TABLE@\",\"latex_structure_continued_caption\":\"Cấu trúc của bảng @TABLE@ (còn nữa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Nội dung của bảng @TABLE@\",\"latex_data_continued_caption\":\"Nội dung của bảng @TABLE@ (còn nữa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'database', 'test2', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\"],\"table_structure[]\":[\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\"],\"table_data[]\":[\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Cấu trúc của bảng @TABLE@\",\"latex_structure_continued_caption\":\"Cấu trúc của bảng @TABLE@ (còn nữa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Nội dung của bảng @TABLE@\",\"latex_data_continued_caption\":\"Nội dung của bảng @TABLE@ (còn nữa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(3, 'root', 'table', 'LeatherAnother', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Cấu trúc của bảng @TABLE@\",\"latex_structure_continued_caption\":\"Cấu trúc của bảng @TABLE@ (còn nữa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Nội dung của bảng @TABLE@\",\"latex_data_continued_caption\":\"Nội dung của bảng @TABLE@ (còn nữa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(4, 'root', 'server', 'LeatherAnother', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"king_of_sneaker\",\"leather_another\",\"phpmyadmin\",\"qlbanhang\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Cấu trúc của bảng @TABLE@\",\"latex_structure_continued_caption\":\"Cấu trúc của bảng @TABLE@ (còn nữa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Nội dung của bảng @TABLE@\",\"latex_data_continued_caption\":\"Nội dung của bảng @TABLE@ (còn nữa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Đang đổ dữ liệu cho bảng `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"leather_another\",\"table\":\"products\"},{\"db\":\"leather_another\",\"table\":\"users\"},{\"db\":\"leather_another\",\"table\":\"categories\"},{\"db\":\"leather_another\",\"table\":\"news\"},{\"db\":\"leather_another\",\"table\":\"orders\"},{\"db\":\"leather_another\",\"table\":\"order_details\"},{\"db\":\"king_of_sneaker\",\"table\":\"categories\"},{\"db\":\"test2\",\"table\":\"users\"},{\"db\":\"test2\",\"table\":\"categories\"},{\"db\":\"test2\",\"table\":\"products\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Đang đổ dữ liệu cho bảng `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'king_of_sneaker', 'categories', '{\"sorted_col\":\"`categories`.`status` ASC\"}', '2021-06-19 14:19:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-07-06 17:00:57', '{\"Console\\/Mode\":\"show\",\"lang\":\"vi\",\"Console\\/Height\":-15.01362}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Chỉ mục cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Chỉ mục cho bảng `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Chỉ mục cho bảng `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Chỉ mục cho bảng `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Chỉ mục cho bảng `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Chỉ mục cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Chỉ mục cho bảng `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Chỉ mục cho bảng `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Chỉ mục cho bảng `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Chỉ mục cho bảng `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Cơ sở dữ liệu: `qlbanhang`
--
CREATE DATABASE IF NOT EXISTS `qlbanhang` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
USE `qlbanhang`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_customers`
--

CREATE TABLE `cms_customers` (
  `ID` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_code` varchar(10) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_addr` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `customer_birthday` date NOT NULL,
  `customer_gender` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cms_customers`
--

INSERT INTO `cms_customers` (`ID`, `customer_name`, `customer_code`, `customer_phone`, `customer_email`, `customer_addr`, `notes`, `customer_birthday`, `customer_gender`, `created`, `updated`, `user_init`, `user_upd`) VALUES

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_input`
--

CREATE TABLE `cms_input` (
  `ID` int(10) UNSIGNED NOT NULL,
  `input_code` varchar(9) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `input_date` datetime NOT NULL,
  `notes` varchar(255) NOT NULL,
  `payment_method` tinyint(4) NOT NULL,
  `total_price` int(13) NOT NULL,
  `total_quantity` int(9) NOT NULL,
  `discount` int(11) NOT NULL,
  `total_money` int(13) NOT NULL,
  `payed` int(11) NOT NULL,
  `lack` int(13) NOT NULL,
  `detail_input` text NOT NULL,
  `input_status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `cms_input`
--

INSERT INTO `cms_input` (`ID`, `input_code`, `supplier_id`, `store_id`, `input_date`, `notes`, `payment_method`, `total_price`, `total_quantity`, `discount`, `total_money`, `payed`, `lack`, `detail_input`, `input_status`, `created`, `updated`, `user_init`, `user_upd`, `deleted`) VALUES
(9, 'PN0000001', 12, 1, '2017-09-25 22:47:35', '', 1, 2570000, 14, 0, 2570000, 2570000, 0, '[{\"id\":\"81\",\"quantity\":\"3\",\"price\":\"250000\"},{\"id\":\"82\",\"quantity\":\"4\",\"price\":\"190000\"},{\"id\":\"83\",\"quantity\":\"5\",\"price\":\"120000\"},{\"id\":\"84\",\"quantity\":\"2\",\"price\":\"230000\"}]', 1, '2021-06-25 22:47:35', '0000-00-00 00:00:00', 16, 0, 0);


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_inventory`
--

CREATE TABLE `cms_inventory` (
  `store_id` int(5) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cms_inventory`
--

INSERT INTO `cms_inventory` (`store_id`, `product_id`, `quantity`, `user_init`, `user_upd`, `created`, `updated`) VALUES
(1, 81, 62, 16, 2, '2017-09-25 22:41:27', '2021-6-24 02:52:56'),
(1, 82, 22, 16, 2, '2017-09-25 22:42:15', '2021-7-1 07:03:02');


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_orders`
--

CREATE TABLE `cms_orders` (
  `ID` int(10) UNSIGNED NOT NULL,
  `output_code` varchar(9) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `sell_date` datetime NOT NULL,
  `notes` varchar(255) NOT NULL,
  `payment_method` tinyint(4) NOT NULL,
  `total_price` int(13) NOT NULL,
  `total_origin_price` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `customer_pay` int(11) NOT NULL,
  `total_money` int(13) NOT NULL,
  `total_quantity` int(9) NOT NULL,
  `lack` int(13) NOT NULL,
  `detail_order` text NOT NULL,
  `order_status` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL,
  `sale_id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cms_orders`
--

INSERT INTO `cms_orders` (`ID`, `output_code`, `customer_id`, `store_id`, `sell_date`, `notes`, `payment_method`, `total_price`, `total_origin_price`, `coupon`, `customer_pay`, `total_money`, `total_quantity`, `lack`, `detail_order`, `order_status`, `deleted`, `created`, `updated`, `user_init`, `user_upd`, `sale_id`) VALUES
(247, 'PX0000005', 38, 1, '2019-06-14 23:26:00', '', 2, 22300000, 20150000, 200000, 20100000, 22100000, 2, 2000000, '[{\"id\":\"118\",\"quantity\":\"1\",\"price\":\"22000000\",\"discount\":\"0\"},{\"id\":\"119\",\"quantity\":\"1\",\"price\":\"300000\",\"discount\":\"0\"}]', 1, 0, '2021-06-14 23:27:05', '0000-00-00 00:00:00', 2, 0, 23);


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_permissions`
--

CREATE TABLE `cms_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_url` varchar(255) NOT NULL,
  `permission_name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cms_permissions`
--

INSERT INTO `cms_permissions` (`id`, `permission_url`, `permission_name`) VALUES
(1, 'backend/dashboard', 'Báo cáo mỗi ngày'),
(2, 'backend/order', 'Đơn hàng'),
(3, 'backend/product', 'Hàng Hóa'),
(5, 'backend/import', 'Nhập hàng'),
(6, 'backend/inventory', 'Báo cáo tồn kho'),
(10, 'backend/config', 'Thiết lập (Thông tin cửa hàng, nhân viên, thiết lập bán hàng, phân quyền)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_products`
--

CREATE TABLE `cms_products` (
  `ID` int(10) UNSIGNED NOT NULL,
  `prd_code` varchar(15) NOT NULL,
  `prd_name` varchar(255) NOT NULL,
  `prd_sls` int(11) NOT NULL,
  `prd_origin_price` int(11) NOT NULL,
  `prd_sell_price` int(11) NOT NULL,
  `prd_vat` tinyint(4) NOT NULL,
  `prd_status` tinyint(1) NOT NULL DEFAULT 1,
  `prd_inventory` tinyint(1) NOT NULL,
  `prd_allownegative` tinyint(1) NOT NULL,
  `prd_manufacture_id` int(11) NOT NULL,
  `prd_group_id` int(11) NOT NULL,
  `prd_image_url` int(11) NOT NULL,
  `prd_descriptions` text NOT NULL,
  `prd_manuf_id` int(11) NOT NULL,
  `prd_hot` tinyint(1) NOT NULL,
  `prd_new` tinyint(1) NOT NULL,
  `prd_highlight` tinyint(1) NOT NULL,
  `display_website` tinyint(1) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cms_products`
--

INSERT INTO `cms_products` (`ID`, `prd_code`, `prd_name`, `prd_sls`, `prd_origin_price`, `prd_sell_price`, `prd_vat`, `prd_status`, `prd_inventory`, `prd_allownegative`, `prd_manufacture_id`, `prd_group_id`, `prd_image_url`, `prd_descriptions`, `prd_manuf_id`, `prd_hot`, `prd_new`, `prd_highlight`, `display_website`, `created`, `updated`, `user_init`, `user_upd`, `deleted`) VALUES
(119, 'SP000006', 'Đồng hồ thể thao nữ Sport watch samda', 1997, 150000, 300000, 0, 1, 1, 0, 45, 129, 0, '', 0, 0, 0, 0, 0, '2021-06-14 23:24:03', '2021-06-14 23:27:05', 2, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_products_group`
--

CREATE TABLE `cms_products_group` (
  `ID` int(10) UNSIGNED NOT NULL,
  `prd_group_name` varchar(255) NOT NULL,
  `parentid` int(11) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `user_init` tinyint(4) NOT NULL,
  `user_upd` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cms_products_group`
--

INSERT INTO `cms_products_group` (`ID`, `prd_group_name`, `parentid`, `level`, `lft`, `rgt`, `created`, `updated`, `user_init`, `user_upd`) VALUES
(36, 'Hàng Gia dụng & Đời sống', -1, 0, 0, 0, '2019-06-14 22:50:39', '0000-00-00 00:00:00', 2, 0),
(35, 'Siêu Thị Tạp Hóa', -1, 0, 0, 0, '2019-06-14 22:50:29', '0000-00-00 00:00:00', 2, 0),
(34, 'Hàng Mẹ, Bé & Đồ Chơi', -1, 0, 0, 0, '2019-06-14 22:50:22', '0000-00-00 00:00:00', 2, 0),
(33, 'Sức Khỏe & Làm Đẹp', -1, 0, 0, 0, '2019-06-14 22:50:13', '0000-00-00 00:00:00', 2, 0),
(32, 'TV & Thiết Bị Điện Gia Dụng', -1, 0, 0, 0, '2019-06-14 22:50:05', '0000-00-00 00:00:00', 2, 0),
(31, 'Phụ Kiện Điện Tử', -1, 0, 0, 0, '2019-06-14 22:49:44', '0000-00-00 00:00:00', 2, 0),
(30, 'Thiết Bị Điện Tử', -1, 0, 0, 0, '2019-06-14 22:49:30', '0000-00-00 00:00:00', 2, 0),
(37, 'Thời Trang Nữ', -1, 0, 0, 0, '2019-06-14 22:50:47', '0000-00-00 00:00:00', 2, 0),
(38, 'Thời Trang Nam', -1, 0, 0, 0, '2019-06-14 22:50:55', '0000-00-00 00:00:00', 2, 0),
(39, 'Phụ Kiện Thời Trang', -1, 0, 0, 0, '2019-06-14 22:51:01', '0000-00-00 00:00:00', 2, 0),
(40, 'Thể Thao & Du Lịch', -1, 0, 0, 0, '2019-06-14 22:51:13', '0000-00-00 00:00:00', 2, 0),
(41, 'Ôtô, Xe Máy & Thiết Bị Định Vị', -1, 0, 0, 0, '2019-06-14 22:51:22', '0000-00-00 00:00:00', 2, 0),
(42, 'Điện thoại di động', 30, 1, 0, 0, '2019-06-14 22:52:13', '0000-00-00 00:00:00', 2, 0),
(43, 'Máy tính bảng', 30, 1, 0, 0, '2019-06-14 22:52:21', '0000-00-00 00:00:00', 2, 0),
(44, 'Laptop', 30, 1, 0, 0, '2019-06-14 22:52:29', '0000-00-00 00:00:00', 2, 0),
(45, 'Máy tính để bàn', 30, 1, 0, 0, '2019-06-14 22:52:35', '0000-00-00 00:00:00', 2, 0),
(46, 'Âm thanh', 30, 1, 0, 0, '2019-06-14 22:52:41', '0000-00-00 00:00:00', 2, 0),
(47, 'Máy chơi game', 30, 1, 0, 0, '2019-06-14 22:52:48', '0000-00-00 00:00:00', 2, 0),
(48, 'Camera hành động/Máy quay', 30, 1, 0, 0, '2019-06-14 22:52:56', '0000-00-00 00:00:00', 2, 0),
(49, 'Camera giám sát', 30, 1, 0, 0, '2019-06-14 22:53:02', '0000-00-00 00:00:00', 2, 0),
(50, 'Camera kỹ thuật số', 30, 1, 0, 0, '2019-06-14 22:53:09', '0000-00-00 00:00:00', 2, 0),
(51, 'Thiết bị số', 30, 1, 0, 0, '2019-06-14 22:53:15', '0000-00-00 00:00:00', 2, 0),
(52, 'Phụ kiện di động', 31, 1, 0, 0, '2019-06-14 22:53:44', '0000-00-00 00:00:00', 2, 0),
(53, 'Phụ kiện Máy tính', 31, 1, 0, 0, '2019-06-14 22:53:50', '0000-00-00 00:00:00', 2, 0),
(54, 'Thiết bị mạng', 31, 1, 0, 0, '2019-06-14 22:53:55', '0000-00-00 00:00:00', 2, 0),
(55, 'Linh kiện máy tính', 31, 1, 0, 0, '2019-06-14 22:54:02', '0000-00-00 00:00:00', 2, 0),
(56, 'Phụ kiện', 31, 1, 0, 0, '2019-06-14 22:54:08', '0000-00-00 00:00:00', 2, 0),
(57, 'Thiết bị đeo', 31, 1, 0, 0, '2019-06-14 22:54:14', '0000-00-00 00:00:00', 2, 0),
(58, 'Thiết bị lưu trữ', 31, 1, 0, 0, '2019-06-14 22:54:22', '0000-00-00 00:00:00', 2, 0),
(59, 'Phụ kiện máy chơi game', 31, 1, 0, 0, '2019-06-14 22:54:30', '0000-00-00 00:00:00', 2, 0),
(60, 'Máy in & Máy Scan', 31, 1, 0, 0, '2019-06-14 22:54:37', '0000-00-00 00:00:00', 2, 0),
(61, 'Phụ kiện máy tính bảng', 31, 1, 0, 0, '2019-06-14 22:54:42', '0000-00-00 00:00:00', 2, 0),
(62, 'Thiết bị TV & Video', 32, 1, 0, 0, '2019-06-14 22:55:11', '0000-00-00 00:00:00', 2, 0),
(63, 'Phụ kiện Tivi', 32, 1, 0, 0, '2019-06-14 22:55:17', '0000-00-00 00:00:00', 2, 0),
(64, 'Dàn Âm Thanh Gia Đình', 32, 1, 0, 0, '2019-06-14 22:55:23', '0000-00-00 00:00:00', 2, 0),
(65, 'Điện Gia Dụng lớn', 32, 1, 0, 0, '2019-06-14 22:55:29', '0000-00-00 00:00:00', 2, 0),
(66, 'Điện Gia dụng nhà bếp', 32, 1, 0, 0, '2019-06-14 22:55:39', '0000-00-00 00:00:00', 2, 0),
(67, 'Điều Hòa & Lọc Không Khí', 32, 1, 0, 0, '2019-06-14 22:55:57', '0000-00-00 00:00:00', 2, 0),
(68, 'Máy hút bụi & vệ sinh sàn', 32, 1, 0, 0, '2019-06-14 22:56:05', '0000-00-00 00:00:00', 2, 0),
(69, 'Bàn ủi & Máy may', 32, 1, 0, 0, '2019-06-14 22:56:11', '0000-00-00 00:00:00', 2, 0),
(70, 'Thiết Bị Chăm Sóc Cá Nhân', 32, 1, 0, 0, '2019-06-14 22:56:17', '0000-00-00 00:00:00', 2, 0),
(71, 'Bộ phận và Thiết bị', 32, 1, 0, 0, '2019-06-14 22:56:22', '0000-00-00 00:00:00', 2, 0),
(72, 'Trang Điểm', 33, 1, 0, 0, '2019-06-14 22:56:59', '0000-00-00 00:00:00', 2, 0),
(73, 'Chăm Sóc Da', 33, 1, 0, 0, '2019-06-14 22:57:03', '0000-00-00 00:00:00', 2, 0),
(74, 'Chăm Sóc Tóc', 33, 1, 0, 0, '2019-06-14 22:57:07', '0000-00-00 00:00:00', 2, 0),
(75, 'Dụng Cụ Làm Đẹp', 33, 1, 0, 0, '2019-06-14 22:57:11', '0000-00-00 00:00:00', 2, 0),
(76, 'Nước Hoa', 33, 1, 0, 0, '2019-06-14 22:57:19', '0000-00-00 00:00:00', 2, 0),
(77, 'Chăm sóc cho Nam giới', 33, 1, 0, 0, '2019-06-14 22:57:24', '0000-00-00 00:00:00', 2, 0),
(78, 'Chăm Sóc Cơ Thể', 33, 1, 0, 0, '2019-06-14 22:57:29', '0000-00-00 00:00:00', 2, 0),
(79, 'Thực Phẩm Chức Năng', 33, 1, 0, 0, '2019-06-14 22:57:36', '0000-00-00 00:00:00', 2, 0),
(80, 'Thiết Bị Y Tế', 33, 1, 0, 0, '2019-06-14 22:57:42', '0000-00-00 00:00:00', 2, 0),
(81, 'Chăm sóc cá nhân', 33, 1, 0, 0, '2019-06-14 22:57:48', '0000-00-00 00:00:00', 2, 0),
(82, 'Chăm sóc trẻ sơ sinh, nhỏ', 34, 1, 0, 0, '2019-06-14 22:58:15', '0000-00-00 00:00:00', 2, 0),
(83, 'Đồ dùng bú sữa & ăn dặm', 34, 1, 0, 0, '2019-06-14 22:58:20', '0000-00-00 00:00:00', 2, 0),
(84, 'Quần áo & Phụ kiện', 34, 1, 0, 0, '2019-06-14 22:58:25', '0000-00-00 00:00:00', 2, 0),
(85, 'Tã & Dụng cụ vệ sinh', 34, 1, 0, 0, '2019-06-14 22:58:30', '0000-00-00 00:00:00', 2, 0),
(86, 'Tắm & Chăm sóc cơ thể', 34, 1, 0, 0, '2019-06-14 22:58:36', '0000-00-00 00:00:00', 2, 0),
(87, 'Xe, Ghế, Địu và Nôi', 34, 1, 0, 0, '2019-06-14 22:58:51', '0000-00-00 00:00:00', 2, 0),
(88, 'Đồ chơi trẻ sơ sinh, nhỏ', 34, 1, 0, 0, '2019-06-14 22:58:56', '0000-00-00 00:00:00', 2, 0),
(89, 'Nhân vật Đồ chơi', 34, 1, 0, 0, '2019-06-14 22:59:00', '0000-00-00 00:00:00', 2, 0),
(90, 'Đồ chơi ngoài trời', 34, 1, 0, 0, '2019-06-14 22:59:07', '0000-00-00 00:00:00', 2, 0),
(91, 'Xe & điều khiển từ xa', 34, 1, 0, 0, '2019-06-14 22:59:12', '0000-00-00 00:00:00', 2, 0),
(92, 'Đồ ăn sáng', 35, 1, 0, 0, '2019-06-14 22:59:29', '0000-00-00 00:00:00', 2, 0),
(93, 'Thực Phẩm Khô & Đóng Hộp', 35, 1, 0, 0, '2019-06-14 22:59:34', '0000-00-00 00:00:00', 2, 0),
(94, 'Đồ uống', 35, 1, 0, 0, '2019-06-14 22:59:40', '0000-00-00 00:00:00', 2, 0),
(95, 'Đồ uống có cồn', 35, 1, 0, 0, '2019-06-14 22:59:46', '0000-00-00 00:00:00', 2, 0),
(96, 'Giặt Ủi & Vệ Sinh Nhà Cửa', 35, 1, 0, 0, '2019-06-14 22:59:52', '0000-00-00 00:00:00', 2, 0),
(97, 'Kẹo & Socola', 35, 1, 0, 0, '2019-06-14 22:59:58', '0000-00-00 00:00:00', 2, 0),
(98, 'Phụ kiện hút thuốc', 35, 1, 0, 0, '2019-06-14 23:00:03', '0000-00-00 00:00:00', 2, 0),
(99, 'Snack - Đồ ăn vặt', 35, 1, 0, 0, '2019-06-14 23:00:08', '0000-00-00 00:00:00', 2, 0),
(100, 'Chăm sóc thú cưng', 35, 1, 0, 0, '2019-06-14 23:00:12', '0000-00-00 00:00:00', 2, 0),
(101, 'Bếp & Phòng ăn', 36, 1, 0, 0, '2019-06-14 23:00:40', '0000-00-00 00:00:00', 2, 0),
(102, 'Đèn', 36, 1, 0, 0, '2019-06-14 23:00:48', '0000-00-00 00:00:00', 2, 0),
(103, 'Đồ dùng phòng ngủ', 36, 1, 0, 0, '2019-06-14 23:00:54', '0000-00-00 00:00:00', 2, 0),
(104, 'Đồ dùng phòng tắm', 36, 1, 0, 0, '2019-06-14 23:00:59', '0000-00-00 00:00:00', 2, 0),
(105, 'Đồ nội thất', 36, 1, 0, 0, '2019-06-14 23:01:09', '0000-00-00 00:00:00', 2, 0),
(106, 'Trang trí nhà cửa', 36, 1, 0, 0, '2019-06-14 23:01:15', '0000-00-00 00:00:00', 2, 0),
(107, 'Công cụ, DIY & ngoài trời', 36, 1, 0, 0, '2019-06-14 23:01:21', '0000-00-00 00:00:00', 2, 0),
(108, 'Văn phòng phẩm & thủ công', 36, 1, 0, 0, '2019-06-14 23:01:28', '0000-00-00 00:00:00', 2, 0),
(109, 'Sách', 36, 1, 0, 0, '2019-06-14 23:01:34', '0000-00-00 00:00:00', 2, 0),
(110, 'Nhạc cụ', 36, 1, 0, 0, '2019-06-14 23:01:39', '0000-00-00 00:00:00', 2, 0),
(111, 'Trang Phục Nữ', 37, 1, 0, 0, '2019-06-14 23:02:03', '0000-00-00 00:00:00', 2, 0),
(112, 'Giày Nữ', 37, 1, 0, 0, '2019-06-14 23:02:16', '0000-00-00 00:00:00', 2, 0),
(113, 'Túi Xách Nữ', 37, 1, 0, 0, '2019-06-14 23:02:23', '0000-00-00 00:00:00', 2, 0),
(114, 'Phụ Kiện Nữ', 37, 1, 0, 0, '2019-06-14 23:02:30', '0000-00-00 00:00:00', 2, 0),
(115, 'Đồ Ngủ & Nội Y', 37, 1, 0, 0, '2019-06-14 23:02:37', '0000-00-00 00:00:00', 2, 0),
(116, 'Trang Phục Bé Gái', 37, 1, 0, 0, '2019-06-14 23:02:44', '0000-00-00 00:00:00', 2, 0),
(117, 'Giày Bé Gái', 37, 1, 0, 0, '2019-06-14 23:02:53', '0000-00-00 00:00:00', 2, 0),
(118, 'Phụ Kiện Bé Gái', 37, 1, 0, 0, '2019-06-14 23:02:59', '0000-00-00 00:00:00', 2, 0),
(119, 'Túi Trẻ Em', 37, 1, 0, 0, '2019-06-14 23:03:05', '0000-00-00 00:00:00', 2, 0),
(120, 'Trang Phục Nam', 38, 1, 0, 0, '2019-06-14 23:03:22', '0000-00-00 00:00:00', 2, 0),
(121, 'Đồ Lót Nam', 38, 1, 0, 0, '2019-06-14 23:03:30', '0000-00-00 00:00:00', 2, 0),
(122, 'Giày Nam', 38, 1, 0, 0, '2019-06-14 23:03:37', '0000-00-00 00:00:00', 2, 0),
(123, 'Túi Xách Nam', 38, 1, 0, 0, '2019-06-14 23:03:43', '0000-00-00 00:00:00', 2, 0),
(124, 'Phụ Kiện Nam', 38, 1, 0, 0, '2019-06-14 23:03:49', '0000-00-00 00:00:00', 2, 0),
(125, 'Trang Phục Bé Trai', 38, 1, 0, 0, '2019-06-14 23:03:56', '0000-00-00 00:00:00', 2, 0),
(126, 'Giày Bé Trai', 38, 1, 0, 0, '2019-06-14 23:04:05', '0000-00-00 00:00:00', 2, 0),
(127, 'Phụ Kiện Bé Trai', 38, 1, 0, 0, '2019-06-14 23:04:15', '0000-00-00 00:00:00', 2, 0),
(128, 'Túi Trẻ Em', 38, 1, 0, 0, '2019-06-14 23:04:21', '0000-00-00 00:00:00', 2, 0),
(129, 'Đồng Hồ Nữ', 39, 1, 0, 0, '2019-06-14 23:04:37', '0000-00-00 00:00:00', 2, 0),
(130, 'Đồng Hồ Nam', 39, 1, 0, 0, '2019-06-14 23:04:43', '0000-00-00 00:00:00', 2, 0),
(131, 'Đồng Hồ Trẻ Em', 39, 1, 0, 0, '2019-06-14 23:04:50', '0000-00-00 00:00:00', 2, 0),
(132, 'Kính Mát', 39, 1, 0, 0, '2019-06-14 23:04:56', '0000-00-00 00:00:00', 2, 0),
(133, 'Kính Thời Trang', 39, 1, 0, 0, '2019-06-14 23:05:02', '0000-00-00 00:00:00', 2, 0),
(134, 'Kính Áp Tròng', 39, 1, 0, 0, '2019-06-14 23:05:11', '0000-00-00 00:00:00', 2, 0),
(135, 'Trang Sức Nữ', 39, 1, 0, 0, '2019-06-14 23:05:17', '0000-00-00 00:00:00', 2, 0),
(136, 'Trang Sức Nam', 39, 1, 0, 0, '2019-06-14 23:05:24', '0000-00-00 00:00:00', 2, 0),
(137, 'Phụ Kiện', 39, 1, 0, 0, '2019-06-14 23:05:30', '0000-00-00 00:00:00', 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_products_manufacture`
--

CREATE TABLE `cms_products_manufacture` (
  `ID` int(10) UNSIGNED NOT NULL,
  `prd_manuf_name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `cms_products_manufacture`
--

INSERT INTO `cms_products_manufacture` (`ID`, `prd_manuf_name`, `created`, `updated`, `user_init`, `user_upd`) VALUES
(12, 'Samsung', '2019-06-14 23:07:16', '0000-00-00 00:00:00', 2, 0),
(13, 'LV Mobile', '2019-06-14 23:07:23', '0000-00-00 00:00:00', 2, 0),
(14, 'Apple', '2019-06-14 23:07:28', '0000-00-00 00:00:00', 2, 0),
(15, 'OPPO', '2019-06-14 23:07:33', '0000-00-00 00:00:00', 2, 0),
(16, 'ASUS', '2019-06-14 23:07:38', '0000-00-00 00:00:00', 2, 0),
(17, 'MASSTEL', '2019-06-14 23:07:47', '0000-00-00 00:00:00', 2, 0),
(18, 'Kingta', '2019-06-14 23:07:51', '0000-00-00 00:00:00', 2, 0),
(19, 'Fujitsu', '2019-06-14 23:08:03', '0000-00-00 00:00:00', 2, 0),
(20, 'Sony', '2019-06-14 23:08:26', '0000-00-00 00:00:00', 2, 0),
(21, 'Xiaomi', '2019-06-14 23:08:32', '0000-00-00 00:00:00', 2, 0),
(22, 'Remax', '2019-06-14 23:08:37', '0000-00-00 00:00:00', 2, 0),
(23, 'UGREEN', '2019-06-14 23:08:44', '0000-00-00 00:00:00', 2, 0),
(24, 'PKCB', '2019-06-14 23:08:49', '0000-00-00 00:00:00', 2, 0),
(25, 'ANCOM GL', '2019-06-14 23:08:59', '0000-00-00 00:00:00', 2, 0),
(26, 'Everest', '2019-06-14 23:09:24', '0000-00-00 00:00:00', 2, 0),
(27, 'CIRINO', '2019-06-14 23:09:32', '0000-00-00 00:00:00', 2, 0),
(28, 'DODACO', '2019-06-14 23:09:38', '0000-00-00 00:00:00', 2, 0),
(29, 'Thivi', '2019-06-14 23:09:43', '0000-00-00 00:00:00', 2, 0),
(30, 'Zenko', '2019-06-14 23:09:47', '0000-00-00 00:00:00', 2, 0),
(31, 'Trần Doanh', '2019-06-14 23:09:53', '0000-00-00 00:00:00', 2, 0),
(32, 'T&D', '2019-06-14 23:09:59', '0000-00-00 00:00:00', 2, 0),
(33, 'BT Fashion', '2019-06-14 23:10:08', '0000-00-00 00:00:00', 2, 0),
(34, 'TNG', '2019-06-14 23:10:23', '2019-06-14 23:10:33', 2, 2),
(35, 'Wallet', '2019-06-14 23:10:44', '0000-00-00 00:00:00', 2, 0),
(36, 'Bag', '2019-06-14 23:10:48', '0000-00-00 00:00:00', 2, 0),
(37, 'Kingman', '2019-06-14 23:11:11', '0000-00-00 00:00:00', 2, 0),
(38, 'Biti\'s', '2019-06-14 23:14:51', '0000-00-00 00:00:00', 2, 0),
(39, 'Sunhouse', '2019-06-14 23:18:18', '0000-00-00 00:00:00', 2, 0),
(40, 'Dell', '2019-06-14 23:20:33', '0000-00-00 00:00:00', 2, 0),
(41, 'HP', '2019-06-14 23:20:36', '0000-00-00 00:00:00', 2, 0),
(42, 'Lenovo', '2019-06-14 23:20:39', '0000-00-00 00:00:00', 2, 0),
(43, 'Casio', '2019-06-14 23:22:24', '0000-00-00 00:00:00', 2, 0),
(44, 'Bewatch', '2019-06-14 23:22:34', '0000-00-00 00:00:00', 2, 0),
(45, 'Julius', '2019-06-14 23:22:39', '0000-00-00 00:00:00', 2, 0),
(46, 'Kezzi', '2019-06-14 23:22:45', '0000-00-00 00:00:00', 2, 0),
(47, 'Sunrise', '2019-06-14 23:22:51', '0000-00-00 00:00:00', 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_report`
--

CREATE TABLE `cms_report` (
  `ID` int(10) UNSIGNED NOT NULL,
  `transaction_code` varchar(9) NOT NULL,
  `transaction_id` int(10) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `store_id` int(5) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `notes` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `discount` int(11) NOT NULL,
  `total_money` int(13) NOT NULL,
  `origin_price` int(11) NOT NULL,
  `input` int(11) NOT NULL,
  `output` int(9) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL,
  `sale_id` int(5) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cms_report`
--

INSERT INTO `cms_report` (`ID`, `transaction_code`, `transaction_id`, `customer_id`, `store_id`, `date`, `notes`, `product_id`, `discount`, `total_money`, `origin_price`, `input`, `output`, `price`, `deleted`, `created`, `updated`, `user_init`, `user_upd`, `sale_id`, `supplier_id`, `type`, `stock`) VALUES
(148, 'SP00001', 0, 0, 1, '2017-09-25 22:41:27', 'Khai báo hàng hóa', 81, 0, 0, 0, 100, 0, 0, 0, '2017-09-25 22:41:27', '0000-00-00 00:00:00', 16, 0, 0, 0, 1, 100),
(149, 'SP00002', 0, 0, 1, '2017-09-25 22:42:15', 'Khai báo hàng hóa', 82, 0, 0, 0, 50, 0, 0, 0, '2017-09-25 22:42:15', '0000-00-00 00:00:00', 16, 0, 0, 0, 1, 50),
(150, 'SP00003', 0, 0, 1, '2017-09-25 22:42:48', 'Khai báo hàng hóa', 83, 0, 0, 0, 45, 0, 0, 0, '2017-09-25 22:42:48', '0000-00-00 00:00:00', 16, 0, 0, 0, 1, 45),
(151, 'SP00004', 0, 0, 1, '2017-09-25 22:43:22', 'Khai báo hàng hóa', 84, 0, 0, 0, 30, 0, 0, 0, '2017-09-25 22:43:22', '0000-00-00 00:00:00', 16, 0, 0, 0, 1, 30),
(152, 'PN0000001', 9, 0, 1, '2017-09-25 22:47:35', '', 81, 0, 750000, 0, 3, 0, 250000, 0, '2017-09-25 22:47:35', '0000-00-00 00:00:00', 16, 0, 0, 12, 2, 103),
(153, 'PN0000001', 9, 0, 1, '2017-09-25 22:47:35', '', 82, 0, 760000, 0, 4, 0, 190000, 0, '2017-09-25 22:47:35', '0000-00-00 00:00:00', 16, 0, 0, 12, 2, 54),
(154, 'PN0000001', 9, 0, 1, '2017-09-25 22:47:35', '', 83, 0, 600000, 0, 5, 0, 120000, 0, '2017-09-25 22:47:35', '0000-00-00 00:00:00', 16, 0, 0, 12, 2, 50),
(155, 'PN0000001', 9, 0, 1, '2017-09-25 22:47:35', '', 84, 0, 460000, 0, 2, 0, 230000, 0, '2017-09-25 22:47:35', '0000-00-00 00:00:00', 16, 0, 0, 12, 2, 32),
(156, 'PX0000001', 80, 4, 1, '2017-09-25 22:49:54', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-09-25 22:49:54', '0000-00-00 00:00:00', 16, 0, 16, 0, 3, 102),
(157, 'PX0000002', 81, 5, 1, '2017-09-25 22:50:21', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-09-25 22:50:21', '0000-00-00 00:00:00', 16, 0, 16, 0, 3, 53),
(158, 'PX0000003', 82, 6, 1, '2017-09-25 22:50:47', '', 83, 0, 1170000, 360000, 0, 3, 390000, 0, '2017-09-25 22:50:47', '0000-00-00 00:00:00', 16, 0, 0, 0, 3, 47),
(159, 'PN0000002', 10, 0, 2, '2017-09-25 22:51:28', '', 81, 0, 1750000, 0, 7, 0, 250000, 0, '2017-09-25 22:51:28', '0000-00-00 00:00:00', 16, 0, 0, 12, 2, 7),
(160, 'PN0000002', 10, 0, 2, '2017-09-25 22:51:28', '', 82, 0, 1900000, 0, 10, 0, 190000, 0, '2017-09-25 22:51:28', '0000-00-00 00:00:00', 16, 0, 0, 12, 2, 10),
(161, 'PN0000002', 10, 0, 2, '2017-09-25 22:51:28', '', 83, 0, 1200000, 0, 10, 0, 120000, 0, '2017-09-25 22:51:28', '0000-00-00 00:00:00', 16, 0, 0, 12, 2, 10),
(162, 'PN0000002', 10, 0, 2, '2017-09-25 22:51:28', '', 84, 0, 1150000, 0, 5, 0, 230000, 0, '2017-09-25 22:51:28', '0000-00-00 00:00:00', 16, 0, 0, 12, 2, 5),
(163, 'PX0000004', 83, 8, 1, '2017-09-27 17:40:11', 'bán quần lót', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-09-27 17:40:11', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 101),
(164, 'PX0000005', 84, 0, 1, '2017-09-27 19:36:39', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-09-27 19:36:39', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 100),
(165, 'SP00005', 0, 0, 2, '2017-09-27 19:41:59', 'Khai báo hàng hóa', 85, 0, 0, 0, 3000, 0, 0, 0, '2017-09-27 19:41:59', '0000-00-00 00:00:00', 0, 0, 0, 0, 1, 3000),
(166, 'SP00006', 0, 0, 2, '2017-09-27 19:54:36', 'Khai báo hàng hóa', 86, 0, 0, 0, 222, 0, 0, 0, '2017-09-27 19:54:36', '0000-00-00 00:00:00', 0, 0, 0, 0, 1, 222),
(167, 'SP00007', 0, 0, 2, '2017-09-27 19:54:47', 'Khai báo hàng hóa', 87, 0, 0, 0, 121221312, 0, 0, 0, '2017-09-27 19:54:47', '0000-00-00 00:00:00', 0, 0, 0, 0, 1, 121221312),
(168, 'SP00008', 0, 0, 2, '2017-09-27 19:54:53', 'Khai báo hàng hóa', 88, 0, 0, 0, 0, 0, 0, 0, '2017-09-27 19:54:53', '0000-00-00 00:00:00', 0, 0, 0, 0, 1, 0),
(169, 'SP00009', 0, 0, 2, '2017-09-27 19:54:56', 'Khai báo hàng hóa', 89, 0, 0, 0, 0, 0, 0, 0, '2017-09-27 19:54:56', '0000-00-00 00:00:00', 0, 0, 0, 0, 1, 0),
(170, 'SP00010', 0, 0, 2, '2017-09-27 19:54:59', 'Khai báo hàng hóa', 90, 0, 0, 0, 0, 0, 0, 0, '2017-09-27 19:54:59', '0000-00-00 00:00:00', 0, 0, 0, 0, 1, 0),
(171, 'SP00011', 0, 0, 2, '2017-09-27 19:55:06', 'Khai báo hàng hóa', 91, 0, 0, 0, 0, 0, 0, 0, '2017-09-27 19:55:06', '0000-00-00 00:00:00', 0, 0, 0, 0, 1, 0),
(172, 'PX0000006', 85, 0, 2, '2017-09-27 21:42:52', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-09-27 21:42:52', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 6),
(173, 'PX0000008', 87, 4, 2, '2017-09-26 16:02:00', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-09-28 00:06:42', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 5),
(174, 'PX0000009', 88, 9, 2, '2017-09-28 04:12:33', '', 81, 839, 599161, 250000, 0, 1, 600000, 0, '2017-09-28 04:12:33', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 4),
(175, 'PX0000009', 88, 9, 2, '2017-09-28 04:12:33', '', 82, 672, 479328, 190000, 0, 1, 480000, 0, '2017-09-28 04:12:33', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 9),
(176, 'PX0000010', 89, 0, 1, '2017-09-30 04:50:46', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-09-30 04:50:46', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 99),
(177, 'PX0000010', 89, 0, 1, '2017-09-30 04:50:46', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-09-30 04:50:46', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 52),
(178, 'PX0000010', 89, 0, 1, '2017-09-30 04:50:46', '', 83, 0, 390000, 120000, 0, 1, 390000, 0, '2017-09-30 04:50:46', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 46),
(179, 'PX0000010', 89, 0, 1, '2017-09-30 04:50:46', '', 84, 0, 580000, 230000, 0, 1, 580000, 0, '2017-09-30 04:50:46', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 31),
(180, 'SP00012', 0, 0, 1, '2017-10-03 01:08:07', 'Khai báo hàng hóa', 92, 0, 0, 0, 3, 0, 0, 0, '2017-10-03 01:08:07', '0000-00-00 00:00:00', 0, 0, 0, 0, 1, 3),
(181, 'SP00013', 0, 0, 1, '2017-10-03 01:08:24', 'Khai báo hàng hóa', 93, 0, 0, 0, 3, 0, 0, 0, '2017-10-03 01:08:24', '0000-00-00 00:00:00', 0, 0, 0, 0, 1, 3),
(182, 'SP00014', 0, 0, 1, '2017-10-03 01:08:50', 'Khai báo hàng hóa', 94, 0, 0, 0, 3, 0, 0, 0, '2017-10-03 01:08:50', '0000-00-00 00:00:00', 0, 0, 0, 0, 1, 3),
(183, 'SP00015', 0, 0, 1, '2017-10-03 01:09:00', 'Khai báo hàng hóa', 95, 0, 0, 0, 2147483647, 0, 0, 0, '2017-10-03 01:09:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 1, 2147483647),
(184, 'SP00016', 0, 0, 1, '2017-10-03 01:09:11', 'Khai báo hàng hóa', 96, 0, 0, 0, 777, 0, 0, 0, '2017-10-03 01:09:11', '0000-00-00 00:00:00', 0, 0, 0, 0, 1, 777),
(185, 'SP00017', 0, 0, 1, '2017-10-03 01:09:19', 'Khai báo hàng hóa', 97, 0, 0, 0, 7, 0, 0, 0, '2017-10-03 01:09:19', '0000-00-00 00:00:00', 0, 0, 0, 0, 1, 7),
(186, 'PX0000011', 90, 0, 1, '2017-10-03 23:57:14', '', 93, 0, 5555555, 444444, 0, 1, 5555555, 0, '2017-10-03 23:57:14', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 2),
(187, 'PX0000012', 91, 0, 2, '2017-10-04 18:54:07', '', 81, 600000, 0, 250000, 0, 1, 600000, 0, '2017-10-04 18:54:07', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 3),
(188, 'PX0000012', 91, 0, 2, '2017-10-04 18:54:07', '', 84, 580000, 0, 230000, 0, 1, 580000, 0, '2017-10-04 18:54:07', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 4),
(189, 'PX0000013', 92, 0, 2, '2017-10-04 18:54:18', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-10-04 18:54:18', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 2),
(190, 'PX0000014', 93, 0, 1, '2017-10-11 21:31:22', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-10-11 21:31:22', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 51),
(191, 'PN0000003', 11, 0, 1, '2017-10-13 22:04:05', '', 83, 0, 240000, 0, 2, 0, 120000, 0, '2017-10-13 22:04:05', '0000-00-00 00:00:00', 0, 0, 0, 0, 2, 48),
(192, 'PN0000003', 11, 0, 1, '2017-10-13 22:04:05', '', 87, 0, 124, 0, 4, 0, 31, 0, '2017-10-13 22:04:05', '0000-00-00 00:00:00', 0, 0, 0, 0, 2, 4),
(193, 'PX0000015', 94, 0, 1, '2017-10-13 22:30:28', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-10-13 22:30:28', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 50),
(194, 'PX0000016', 95, 0, 1, '2017-10-13 22:30:36', '', 87, 0, 0, 31, 0, 1, 0, 0, '2017-10-13 22:30:36', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, -1),
(195, 'PN0000004', 12, 0, 1, '2017-10-13 22:30:44', '', 87, 0, 31, 0, 1, 0, 31, 0, '2017-10-13 22:30:44', '0000-00-00 00:00:00', 0, 0, 0, 0, 2, 0),
(196, 'PX0000017', 96, 0, 1, '2017-10-13 22:33:47', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-10-13 22:33:47', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 98),
(197, 'PX0000017', 96, 0, 1, '2017-10-13 22:33:47', '', 84, 0, 580000, 230000, 0, 1, 580000, 0, '2017-10-13 22:33:47', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 30),
(198, 'PX0000018', 97, 0, 1, '2017-10-13 22:33:52', '', 84, 0, 580000, 230000, 0, 1, 580000, 0, '2017-10-13 22:33:52', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 29),
(199, 'PX0000019', 98, 0, 1, '2017-10-13 22:33:59', '', 87, 0, 0, 31, 0, 1, 0, 0, '2017-10-13 22:33:59', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, -1),
(200, 'PX0000020', 99, 0, 1, '2017-10-13 22:34:06', '', 89, 0, 0, 0, 0, 1, 0, 0, '2017-10-13 22:34:06', '0000-00-00 00:00:00', 0, 0, 1, 0, 3, -1),
(201, 'PX0000021', 100, 0, 1, '2017-10-13 22:35:42', '', 83, 0, 390000, 120000, 0, 1, 390000, 0, '2017-10-13 22:35:42', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 45),
(202, 'PN0000005', 13, 0, 1, '2017-10-14 02:02:16', '', 87, 0, 31, 0, 1, 0, 31, 0, '2017-10-14 02:02:16', '0000-00-00 00:00:00', 0, 0, 0, 0, 2, 0),
(203, 'PX0000025', 104, 6, 2, '2017-10-14 02:04:33', '', 83, 0, 390000, 120000, 0, 1, 390000, 0, '2017-10-14 02:04:33', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 9),
(204, 'PX0000026', 105, 0, 2, '2017-10-15 17:43:41', '', 88, 0, 0, 0, 0, 1, 0, 1, '2017-10-15 17:43:41', '2017-10-15 17:44:26', 0, 0, 0, 0, 3, -1),
(205, 'PX0000027', 106, 0, 1, '2017-10-15 19:37:07', '', 81, 0, 6000000, 2500000, 0, 10, 600000, 0, '2017-10-15 19:37:07', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 88),
(206, 'PX0000028', 107, 12, 1, '2017-10-15 23:54:17', '', 83, 0, 390000, 120000, 0, 1, 390000, 0, '2017-10-15 23:54:17', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 44),
(207, 'PX0000030', 109, 4, 1, '2017-10-16 21:27:50', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-10-16 21:27:50', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 87),
(208, 'PX0000031', 110, 5, 1, '2017-10-16 21:27:59', '', 83, 0, 390000, 120000, 0, 1, 390000, 0, '2017-10-16 21:27:59', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 43),
(209, 'PX0000032', 111, 4, 1, '2017-10-16 21:51:19', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-10-16 21:51:19', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 86),
(210, 'PX0000032', 111, 4, 1, '2017-10-16 21:51:19', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-10-16 21:51:19', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 49),
(211, 'PX0000033', 112, 0, 1, '2017-10-16 21:52:52', '', 88, 0, 0, 0, 0, 1, 0, 0, '2017-10-16 21:52:52', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, -1),
(212, 'PX0000034', 113, 4, 2, '2017-10-16 14:14:00', 'ábc', 81, 10, 599990, 250000, 0, 1, 600000, 0, '2017-10-16 22:19:31', '0000-00-00 00:00:00', 0, 0, 1, 0, 3, 1),
(213, 'PX0000035', 114, 0, 1, '2017-10-17 17:08:49', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-10-17 17:08:49', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 85),
(214, 'PX0000036', 115, 0, 1, '2017-10-17 19:18:28', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-10-17 19:18:28', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 48),
(215, 'PX0000036', 115, 0, 1, '2017-10-17 19:18:28', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-10-17 19:18:28', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 84),
(216, 'PX0000036', 115, 0, 1, '2017-10-17 19:18:28', '', 85, 0, 0, 0, 0, 1, 0, 0, '2017-10-17 19:18:28', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, -1),
(217, 'PX0000037', 116, 10, 1, '2017-10-17 11:58:00', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-10-17 20:03:22', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 83),
(218, 'PX0000038', 117, 15, 1, '2017-10-17 12:28:00', '', 83, 0, 1950000, 600000, 0, 5, 390000, 0, '2017-10-17 20:33:02', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 38),
(219, 'PX0000038', 117, 15, 1, '2017-10-17 12:28:00', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-10-17 20:33:02', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 82),
(220, 'PX0000039', 118, 16, 1, '2017-10-17 21:34:05', '', 81, 600000, 2400000, 1250000, 0, 5, 600000, 0, '2017-10-17 21:34:05', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 77),
(221, 'PN0000006', 14, 0, 1, '2017-10-17 13:42:00', '', 83, 0, 1200000, 0, 10, 0, 120000, 0, '2017-10-17 21:47:37', '0000-00-00 00:00:00', 0, 0, 0, 16, 2, 48),
(222, 'PX0000040', 119, 17, 1, '2017-10-17 13:44:00', '', 83, 0, 19500000, 6000000, 0, 50, 390000, 0, '2017-10-17 21:48:47', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, -2),
(223, 'PN0000007', 15, 0, 1, '2017-10-17 13:46:00', '', 83, 0, 4800000, 0, 40, 0, 120000, 0, '2017-10-17 21:50:56', '0000-00-00 00:00:00', 0, 0, 0, 17, 2, 38),
(224, 'PX0000041', 120, 0, 1, '2017-10-17 21:51:17', '', 85, 0, 0, 0, 0, 1, 0, 0, '2017-10-17 21:51:17', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, -2),
(225, 'PX0000042', 121, 0, 1, '2017-10-17 21:51:31', '', 84, 0, 580000, 230000, 0, 1, 580000, 0, '2017-10-17 21:51:31', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 28),
(226, 'PX0000043', 122, 0, 1, '2017-10-17 21:52:05', '', 83, 0, 390000, 120000, 0, 1, 390000, 0, '2017-10-17 21:52:05', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 37),
(227, 'SP00018', 0, 0, 1, '2017-10-17 21:54:43', 'Khai báo hàng hóa', 98, 0, 0, 0, 0, 0, 0, 0, '2017-10-17 21:54:43', '0000-00-00 00:00:00', 0, 0, 0, 0, 1, 0),
(228, 'PN0000008', 16, 0, 1, '2017-10-17 13:51:00', '', 98, 0, 100000000, 0, 100, 0, 1000000, 0, '2017-10-17 21:55:40', '0000-00-00 00:00:00', 0, 0, 0, 18, 2, 100),
(229, 'PX0000044', 123, 14, 1, '2017-10-17 13:51:00', '', 98, 0, 7500000, 5000000, 0, 5, 1500000, 0, '2017-10-17 21:56:31', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 95),
(230, 'PX0000045', 124, 4, 1, '2017-10-17 22:01:47', '', 83, 0, 390000, 120000, 0, 1, 390000, 0, '2017-10-17 22:01:47', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 36),
(231, 'PX0000046', 125, 4, 1, '2017-10-17 22:08:12', '', 83, 0, 780000, 240000, 0, 2, 390000, 0, '2017-10-17 22:08:12', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 34),
(232, 'PX0000046', 125, 4, 1, '2017-10-17 22:08:12', '', 84, 0, 580000, 230000, 0, 1, 580000, 0, '2017-10-17 22:08:12', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 27),
(233, 'PX0000047', 126, 4, 1, '2017-10-17 22:08:16', '', 83, 0, 780000, 240000, 0, 2, 390000, 0, '2017-10-17 22:08:16', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 32),
(234, 'PX0000047', 126, 4, 1, '2017-10-17 22:08:16', '', 84, 0, 580000, 230000, 0, 1, 580000, 0, '2017-10-17 22:08:16', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 26),
(235, 'PX0000048', 127, 4, 1, '2017-10-17 14:03:00', '', 98, 0, 1500000, 1000000, 0, 1, 1500000, 0, '2017-10-17 22:08:25', '0000-00-00 00:00:00', 0, 0, 1, 0, 3, 94),
(236, 'PX0000049', 128, 4, 1, '2017-10-17 14:03:00', '', 98, 0, 1500000, 1000000, 0, 1, 1500000, 0, '2017-10-17 22:08:30', '0000-00-00 00:00:00', 0, 0, 1, 0, 3, 93),
(237, 'PX0000050', 129, 4, 1, '2017-10-17 14:03:00', '', 98, 0, 1500000, 1000000, 0, 1, 1500000, 0, '2017-10-17 22:08:36', '0000-00-00 00:00:00', 0, 0, 1, 0, 3, 92),
(238, 'PX0000051', 130, 4, 1, '2017-10-17 14:03:00', '', 98, 0, 1500000, 1000000, 0, 1, 1500000, 0, '2017-10-17 22:08:36', '0000-00-00 00:00:00', 0, 0, 1, 0, 3, 91),
(239, 'PX0000052', 131, 4, 1, '2017-10-17 14:03:00', '', 98, 0, 1500000, 1000000, 0, 1, 1500000, 0, '2017-10-17 22:08:36', '0000-00-00 00:00:00', 0, 0, 1, 0, 3, 90),
(240, 'PX0000053', 132, 4, 1, '2017-10-17 14:03:00', '', 98, 0, 1500000, 1000000, 0, 1, 1500000, 0, '2017-10-17 22:08:36', '0000-00-00 00:00:00', 0, 0, 1, 0, 3, 89),
(241, 'PX0000054', 133, 4, 1, '2017-10-17 14:03:00', '', 98, 0, 1500000, 1000000, 0, 1, 1500000, 0, '2017-10-17 22:08:41', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 88),
(242, 'PX0000055', 134, 4, 1, '2017-10-17 22:08:49', '', 84, 0, 580000, 230000, 0, 1, 580000, 0, '2017-10-17 22:08:49', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 25),
(243, 'PX0000055', 134, 4, 1, '2017-10-17 22:08:49', '', 85, 0, 0, 0, 0, 2, 0, 0, '2017-10-17 22:08:49', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, -4),
(244, 'PX0000056', 135, 4, 1, '2017-10-17 22:08:54', '', 84, 0, 580000, 230000, 0, 1, 580000, 0, '2017-10-17 22:08:54', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 24),
(245, 'PX0000056', 135, 4, 1, '2017-10-17 22:08:54', '', 85, 0, 0, 0, 0, 2, 0, 0, '2017-10-17 22:08:54', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, -6),
(246, 'PX0000057', 136, 18, 1, '2017-10-17 14:03:00', '', 98, 0, 1500000, 1000000, 0, 1, 1500000, 0, '2017-10-17 22:09:22', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 87),
(247, 'PX0000058', 137, 18, 1, '2017-10-17 14:03:00', '', 98, 0, 1500000, 1000000, 0, 1, 1500000, 0, '2017-10-17 22:09:24', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 86),
(248, 'PX0000059', 138, 18, 1, '2017-10-17 14:03:00', '', 98, 0, 1500000, 1000000, 0, 1, 1500000, 0, '2017-10-17 22:09:26', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 85),
(249, 'PX0000060', 139, 18, 1, '2017-10-17 14:03:00', '', 98, 0, 1500000, 1000000, 0, 1, 1500000, 0, '2017-10-17 22:09:26', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 84),
(250, 'PX0000061', 140, 18, 1, '2017-10-17 14:03:00', '', 98, 0, 1500000, 1000000, 0, 1, 1500000, 0, '2017-10-17 22:09:26', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 83),
(251, 'PX0000062', 141, 4, 1, '2017-10-17 22:09:46', '', 84, 0, 580000, 230000, 0, 1, 580000, 0, '2017-10-17 22:09:46', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 23),
(252, 'PX0000062', 141, 4, 1, '2017-10-17 22:09:46', '', 85, 0, 0, 0, 0, 2, 0, 0, '2017-10-17 22:09:46', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, -8),
(253, 'PX0000063', 142, 0, 1, '2017-10-17 22:10:04', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-10-17 22:10:04', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 47),
(254, 'PX0000063', 142, 0, 1, '2017-10-17 22:10:04', '', 84, 0, 580000, 230000, 0, 1, 580000, 0, '2017-10-17 22:10:04', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 22),
(255, 'PX0000064', 143, 0, 1, '2017-10-17 22:10:09', '', 85, 0, 0, 0, 0, 1, 0, 0, '2017-10-17 22:10:09', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, -9),
(256, 'PX0000065', 144, 0, 1, '2017-10-17 22:10:22', '', 84, 0, 580000, 230000, 0, 1, 580000, 0, '2017-10-17 22:10:22', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 21),
(257, 'PX0000066', 145, 0, 1, '2017-10-17 22:10:31', '', 98, 0, 1500000, 1000000, 0, 1, 1500000, 0, '2017-10-17 22:10:31', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 82),
(258, 'PX0000067', 146, 0, 1, '2017-10-17 22:10:43', '', 82, 0, 960000, 380000, 0, 2, 480000, 0, '2017-10-17 22:10:43', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 45),
(259, 'PX0000067', 146, 0, 1, '2017-10-17 22:10:43', '', 83, 0, 390000, 120000, 0, 1, 390000, 0, '2017-10-17 22:10:43', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 31),
(260, 'PX0000068', 147, 0, 1, '2017-10-17 22:10:59', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-10-17 22:10:59', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 44),
(261, 'PX0000068', 147, 0, 1, '2017-10-17 22:10:59', '', 83, 0, 390000, 120000, 0, 1, 390000, 0, '2017-10-17 22:10:59', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 30),
(262, 'PX0000069', 148, 19, 1, '2017-10-17 14:13:00', '', 98, 0, 7500000, 5000000, 0, 5, 1500000, 0, '2017-10-17 22:18:21', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 77),
(263, 'PX0000070', 149, 4, 1, '2017-10-17 22:43:20', '', 98, 0, 4500000, 3000000, 0, 3, 1500000, 0, '2017-10-17 22:43:20', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 74),
(264, 'PN0000009', 17, 0, 1, '2017-10-17 22:48:31', '', 98, 0, 1000000, 0, 1, 0, 1000000, 0, '2017-10-17 22:48:31', '0000-00-00 00:00:00', 0, 0, 0, 0, 2, 75),
(265, 'PN0000010', 18, 0, 1, '2017-10-17 22:49:11', '', 98, 0, 1000000, 0, 1, 0, 1000000, 0, '2017-10-17 22:49:11', '0000-00-00 00:00:00', 0, 0, 0, 0, 2, 76),
(266, 'PN0000011', 19, 0, 1, '2017-10-17 22:58:07', '', 82, 0, 190000, 0, 1, 0, 190000, 0, '2017-10-17 22:58:07', '0000-00-00 00:00:00', 0, 0, 0, 12, 2, 45),
(267, 'PX0000071', 150, 4, 1, '2017-10-17 23:06:00', '', 98, 0, 60000000, 40000000, 0, 40, 1500000, 0, '2017-10-17 23:06:00', '0000-00-00 00:00:00', 0, 0, 1, 0, 3, 36),
(268, 'PX0000072', 151, 4, 1, '2017-10-18 00:46:29', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-10-18 00:46:29', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 44),
(269, 'PX0000073', 152, 4, 1, '2017-10-18 00:48:22', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-10-18 00:48:22', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 43),
(270, 'PX0000074', 153, 0, 1, '2017-10-18 02:14:27', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-10-18 02:14:27', '0000-00-00 00:00:00', 0, 0, 0, 0, 3, 42),
(271, 'PX0000075', 154, 19, 1, '2017-10-17 19:26:00', '', 98, 900000, 3600000, 3000000, 0, 3, 1500000, 0, '2017-10-18 03:09:09', '0000-00-00 00:00:00', 0, 0, 1, 0, 3, 33),
(272, 'PX0000076', 155, 19, 1, '2017-10-17 19:29:00', '', 98, 0, 1500000, 1000000, 0, 1, 1500000, 0, '2017-10-18 03:11:33', '0000-00-00 00:00:00', 0, 0, 1, 0, 3, 32),
(273, 'PX0000077', 156, 0, 1, '2017-10-17 22:48:32', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-10-17 15:48:32', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 41),
(274, 'PX0000078', 157, 0, 1, '2017-10-17 22:48:42', '', 83, 0, 390000, 120000, 0, 1, 390000, 0, '2017-10-17 15:48:42', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 29),
(275, 'PX0000079', 158, 0, 1, '2017-10-17 22:52:35', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-10-17 15:52:35', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 40),
(276, 'PX0000080', 159, 5, 2, '2017-10-18 02:02:49', '', 83, 0, 390000, 120000, 0, 1, 390000, 0, '2017-10-17 19:02:49', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 8),
(277, 'PX0000081', 160, 4, 1, '2017-10-18 14:18:38', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-10-18 07:18:38', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 76),
(278, 'PX0000082', 161, 0, 2, '2017-10-18 16:23:02', '', 83, 0, 390000, 120000, 0, 1, 390000, 0, '2017-10-18 09:23:02', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 7),
(279, 'PX0000083', 162, 0, 2, '2017-10-18 16:23:18', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-10-18 09:23:18', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 0),
(280, 'PX0000084', 163, 0, 1, '2017-10-18 20:57:58', '', 81, 100000, 500000, 250000, 0, 1, 600000, 0, '2017-10-18 13:57:58', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, 75),
(281, 'PX0000085', 164, 0, 1, '2017-10-19 14:29:22', 's1', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-10-19 07:29:22', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, 74),
(282, 'PX0000086', 165, 0, 1, '2017-10-19 14:29:51', 'test', 82, 100000, 380000, 190000, 0, 1, 480000, 0, '2017-10-19 07:29:51', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, 39),
(283, '692271109', 0, 0, 1, '2017-10-19 10:04:49', 'Khai báo hàng hóa', 99, 0, 0, 0, 100, 0, 0, 0, '2017-10-19 10:04:49', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 100),
(284, 'PX0000087', 166, 0, 2, '2017-10-20 15:03:33', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-10-20 08:03:33', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, -1),
(285, 'PX0000088', 167, 20, 6, '2017-10-20 21:07:00', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-10-20 14:07:14', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, -1),
(286, 'PX0000089', 168, 0, 2, '2017-10-21 16:49:34', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-10-21 09:49:34', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, -2),
(287, 'hgwreherw', 0, 0, 1, '2017-10-23 17:22:06', 'Khai báo hàng hóa', 100, 0, 0, 0, 0, 0, 0, 0, '2017-10-23 17:22:06', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 0),
(288, 'gvbdwfhbe', 0, 0, 1, '2017-10-23 17:22:22', 'Khai báo hàng hóa', 101, 0, 0, 0, 0, 0, 0, 0, '2017-10-23 17:22:22', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 0),
(289, 'PX0000091', 170, 0, 2, '2017-10-25 12:04:29', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-10-25 05:04:29', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 8),
(290, '0123', 0, 0, 1, '2017-10-25 10:18:03', 'Khai báo hàng hóa', 102, 0, 0, 0, 1, 0, 0, 0, '2017-10-25 10:18:03', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 1),
(291, 'PX0000092', 171, 0, 1, '2017-10-25 17:19:51', '', 102, 0, 2200000, 1700000, 0, 1, 2200000, 0, '2017-10-25 10:19:51', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, 0),
(292, 'PX0000093', 172, 4, 1, '2017-10-25 18:58:17', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-10-25 11:58:17', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 73),
(293, 'PX0000094', 173, 4, 1, '2017-10-26 16:29:03', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-10-26 09:29:03', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 38),
(294, 'PX0000095', 174, 4, 1, '2017-10-27 05:13:23', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-10-26 22:13:23', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 37),
(295, 'PX0000096', 175, 4, 2, '2017-10-27 15:43:35', '', 82, 0, 48000000, 19000000, 0, 100, 480000, 0, '2017-10-27 08:43:35', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, -92),
(296, 'PX0000097', 176, 21, 2, '2017-10-27 15:46:23', '', 82, 0, 2400000, 950000, 0, 5, 480000, 0, '2017-10-27 08:46:23', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, -97),
(297, 'PX0000098', 177, 0, 1, '2017-10-27 18:17:57', '', 84, 0, 580000, 230000, 0, 1, 580000, 0, '2017-10-27 11:17:57', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 20),
(298, 'SP00019', 0, 0, 6, '2017-10-29 11:14:52', 'Khai báo hàng hóa', 103, 0, 0, 0, 10, 0, 0, 0, '2017-10-29 11:14:52', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 10),
(299, 'PX0000099', 178, 24, 6, '2017-10-29 19:36:58', '', 81, 0, 600000, 250000, 0, 1, 600000, 1, '2017-10-29 12:36:58', '2017-10-29 13:22:27', 2, 2, 0, 0, 3, -2),
(300, 'PX0000100', 179, 25, 1, '2017-10-29 20:12:46', '', 83, 0, 390000, 120000, 0, 1, 390000, 1, '2017-10-29 13:12:46', '2017-10-29 13:22:24', 2, 2, 0, 0, 3, 28),
(301, 'PX0000101', 180, 22, 1, '2017-10-29 20:22:00', 'Đã mua chưa chuyển khoản', 103, 0, 150000, 100000, 0, 5, 30000, 0, '2017-10-29 13:23:15', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, -5),
(302, 'PX0000102', 181, 0, 1, '2017-10-30 20:43:56', '', 82, 0, 1440000, 570000, 0, 3, 480000, 0, '2017-10-30 13:43:56', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 34),
(303, 'PX0000102', 181, 0, 1, '2017-10-30 20:43:56', '', 81, 0, 1800000, 750000, 0, 3, 600000, 0, '2017-10-30 13:43:56', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 70),
(304, 'PX0000102', 181, 0, 1, '2017-10-30 20:43:56', '', 93, 0, 16666665, 1333332, 0, 3, 5555555, 0, '2017-10-30 13:43:56', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, -1),
(305, 'PX0000103', 182, 0, 2, '2017-10-30 20:44:40', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-10-30 13:44:40', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, -98),
(306, 'PX0000104', 183, 4, 2, '2017-10-31 16:51:00', 'gggg', 82, 10, 959990, 380000, 0, 2, 480000, 0, '2017-10-31 09:52:05', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, -100),
(307, 'PN0000012', 20, 0, 2, '2017-10-31 16:58:00', '', 81, 0, 250000, 0, 1, 0, 250000, 0, '2017-10-31 09:59:06', '0000-00-00 00:00:00', 2, 0, 0, 12, 2, -1),
(308, 'PN0000013', 21, 0, 1, '2017-10-31 17:26:00', 'aaaa', 93, 0, 444444000, 0, 1000, 0, 444444, 0, '2017-10-31 10:26:18', '0000-00-00 00:00:00', 2, 0, 0, 12, 2, 999),
(309, 'PN0000014', 22, 0, 2, '2017-10-31 17:27:00', 'ddd', 93, 0, 88888800, 0, 200, 0, 444444, 0, '2017-10-31 10:27:40', '0000-00-00 00:00:00', 2, 0, 0, 12, 2, 200),
(310, 'SP00020', 0, 0, 2, '2017-10-31 10:32:14', 'Khai báo hàng hóa', 104, 0, 0, 0, 1000, 0, 0, 0, '2017-10-31 10:32:14', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 1000),
(311, 'PN0000015', 23, 0, 2, '2017-10-31 17:34:00', '', 104, 0, 2000000, 0, 2, 0, 1000000, 0, '2017-10-31 10:34:41', '0000-00-00 00:00:00', 2, 0, 0, 12, 2, 1002),
(312, 'PX0000105', 184, 4, 2, '2017-10-31 17:35:47', '', 104, 10, 14999990, 10000000, 0, 10, 1500000, 0, '2017-10-31 10:35:47', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, 992),
(313, 'PN0000016', 24, 0, 2, '2017-11-30 06:34:00', '', 104, 0, 2000000, 0, 2, 0, 1000000, 0, '2017-10-31 23:34:45', '0000-00-00 00:00:00', 2, 0, 0, 12, 2, 994),
(314, 'PN0000017', 25, 0, 2, '2017-11-01 06:46:00', 'asdfsadfasdf', 104, 0, 2000000, 0, 2, 0, 1000000, 0, '2017-10-31 23:47:14', '0000-00-00 00:00:00', 2, 0, 0, 18, 2, 996),
(315, 'PN0000017', 25, 0, 2, '2017-11-01 06:46:00', 'asdfsadfasdf', 82, 0, 760000, 0, 4, 0, 190000, 0, '2017-10-31 23:47:14', '0000-00-00 00:00:00', 2, 0, 0, 18, 2, -96),
(316, 'PN0000017', 25, 0, 2, '2017-11-01 06:46:00', 'asdfsadfasdf', 93, 0, 2222220, 0, 5, 0, 444444, 0, '2017-10-31 23:47:14', '0000-00-00 00:00:00', 2, 0, 0, 18, 2, 205),
(317, 'SP00021', 0, 0, 1, '2017-11-01 11:44:27', 'Khai báo hàng hóa', 105, 0, 0, 0, 5000, 0, 0, 0, '2017-11-01 11:44:27', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 5000),
(318, 'PN0000018', 26, 0, 1, '2017-11-01 18:45:00', 'aaa', 105, 0, 30000000, 0, 30, 0, 1000000, 0, '2017-11-01 11:45:47', '0000-00-00 00:00:00', 2, 0, 0, 19, 2, 5030),
(319, 'PN0000018', 26, 0, 1, '2017-11-01 18:45:00', 'aaa', 104, 0, 20000000, 0, 20, 0, 1000000, 0, '2017-11-01 11:45:47', '0000-00-00 00:00:00', 2, 0, 0, 19, 2, 20),
(320, 'PX0000106', 185, 26, 1, '2017-11-02 22:03:25', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-11-02 15:03:25', '0000-00-00 00:00:00', 2, 0, 4, 0, 3, 69),
(321, 'PX0000107', 186, 14, 1, '2017-11-02 22:09:54', '', 83, 0, 390000, 120000, 0, 1, 390000, 0, '2017-11-02 15:09:54', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, 28),
(322, 'PX0000108', 187, 27, 1, '2017-11-04 15:03:29', '', 97, 0, 88888, 8888888, 0, 1, 88888, 0, '2017-11-04 08:03:29', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, 6),
(323, 'PX0000108', 187, 27, 1, '2017-11-04 15:03:29', '', 83, 0, 390000, 120000, 0, 1, 390000, 0, '2017-11-04 08:03:29', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, 27),
(324, 'PX0000108', 187, 27, 1, '2017-11-04 15:03:29', '', 93, 0, 11111110, 888888, 0, 2, 5555555, 0, '2017-11-04 08:03:29', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, 997),
(325, 'SP00022', 0, 0, 1, '2017-11-04 09:51:06', 'Khai báo hàng hóa', 106, 0, 0, 0, 100, 0, 0, 0, '2017-11-04 09:51:06', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 100),
(326, 'PX0000109', 188, 27, 1, '2017-11-05 01:16:18', '', 97, 0, 177776, 17777776, 0, 2, 88888, 0, '2017-11-04 18:16:18', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, 4),
(327, 'PX0000110', 189, 4, 6, '2017-11-06 01:08:39', '', 104, 71429, 1428571, 1000000, 0, 1, 1500000, 0, '2017-11-05 18:08:39', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, -1),
(328, 'PX0000110', 189, 4, 6, '2017-11-06 01:08:39', '', 81, 28571, 571429, 250000, 0, 1, 600000, 0, '2017-11-05 18:08:39', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, -2),
(329, 'PX0000111', 190, 4, 2, '2017-11-06 21:38:10', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-11-06 14:38:10', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, -3),
(330, 'PX0000112', 191, 0, 2, '2017-11-06 22:01:23', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-11-06 15:01:23', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, -4),
(331, 'PX0000113', 192, 0, 2, '2017-11-08 12:23:42', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-11-08 05:23:42', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, -5),
(332, 'PX0000114', 193, 0, 1, '2017-11-20 17:59:00', '', 81, 2000, 3598000, 1500000, 0, 6, 600000, 0, '2017-11-20 11:00:22', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, 63),
(333, 'PX0000116', 195, 0, 1, '2017-11-21 08:22:30', '', 82, 0, 4800000, 1900000, 0, 10, 480000, 0, '2017-11-21 01:22:30', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 24),
(334, 'PX0000116', 195, 0, 1, '2017-11-21 08:22:30', '', 84, 0, 6380000, 2530000, 0, 11, 580000, 0, '2017-11-21 01:22:30', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 9),
(335, 'PX0000116', 195, 0, 1, '2017-11-21 08:22:30', '', 83, 0, 5460000, 1680000, 0, 14, 390000, 0, '2017-11-21 01:22:30', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 13),
(336, 'PX0000117', 196, 0, 1, '2017-11-21 08:50:20', '', 83, 0, 15600000, 4800000, 0, 40, 390000, 1, '2017-11-21 01:50:20', '2017-11-21 15:40:16', 2, 2, 0, 0, 3, -27),
(337, 'PX0000118', 197, 30, 1, '2017-11-21 09:37:00', 'Gửi cho tui', 82, 41, 5759959, 2280000, 0, 12, 480000, 1, '2017-11-21 02:37:40', '2017-11-21 03:36:07', 2, 2, 2, 0, 3, 12),
(338, 'PX0000118', 197, 30, 1, '2017-11-21 09:37:00', 'Gửi cho tui', 84, 59, 8119941, 3220000, 0, 14, 580000, 1, '2017-11-21 02:37:40', '2017-11-21 03:36:07', 2, 2, 2, 0, 3, -5),
(339, 'PX0000120', 199, 0, 1, '2017-11-21 22:48:43', '', 93, 0, 5555555, 444444, 0, 1, 5555555, 0, '2017-11-21 15:48:43', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 996),
(340, 'PX0000121', 200, 0, 1, '2017-11-24 09:52:56', '', 93, 0, 5555555, 444444, 0, 1, 5555555, 0, '2017-11-24 02:52:56', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 995),
(341, 'PX0000121', 200, 0, 1, '2017-11-24 09:52:56', '', 81, 0, 600000, 250000, 0, 1, 600000, 0, '2017-11-24 02:52:56', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 62),
(342, 'PX0000122', 201, 0, 1, '2017-11-24 14:02:05', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-11-24 07:02:05', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 23),
(343, 'PX0000123', 202, 0, 1, '2017-11-24 14:03:02', '', 82, 0, 480000, 190000, 0, 1, 480000, 0, '2017-11-24 07:03:02', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, 22),
(344, 'PX0000125', 204, 0, 2, '2017-11-28 13:12:00', 'chào', 81, 1000000, 2000000, 1250000, 0, 5, 600000, 0, '2017-11-28 06:13:27', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, -10),
(345, 'ww', 0, 0, 2, '2017-11-28 06:16:39', 'Khai báo hàng hóa', 107, 0, 0, 0, 10, 0, 0, 0, '2017-11-28 06:16:39', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 10),
(346, 'PN0000019', 27, 0, 2, '2017-11-29 07:37:14', '', 81, 0, 250000, 0, 1, 0, 250000, 0, '2017-11-29 00:37:14', '0000-00-00 00:00:00', 2, 0, 0, 0, 2, -9),
(347, 'PN0000019', 27, 0, 2, '2017-11-29 07:37:14', '', 106, 0, 30000, 0, 1, 0, 30000, 0, '2017-11-29 00:37:14', '0000-00-00 00:00:00', 2, 0, 0, 0, 2, 1),
(348, 'PN0000020', 28, 0, 2, '2017-12-01 08:02:55', '', 81, 0, 250000, 0, 1, 0, 250000, 0, '2017-12-01 01:02:55', '0000-00-00 00:00:00', 2, 0, 0, 0, 2, -8),
(349, 'PN0000020', 28, 0, 2, '2017-12-01 08:02:55', '', 93, 0, 444444, 0, 1, 0, 444444, 0, '2017-12-01 01:02:55', '0000-00-00 00:00:00', 2, 0, 0, 0, 2, 206),
(350, 'LK001', 0, 0, 2, '2017-12-01 01:08:53', 'Khai báo hàng hóa', 108, 0, 0, 0, 0, 0, 0, 0, '2017-12-01 01:08:53', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 0),
(351, 'LK002', 0, 0, 2, '2017-12-01 01:09:17', 'Khai báo hàng hóa', 109, 0, 0, 0, 0, 0, 0, 0, '2017-12-01 01:09:17', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 0),
(352, 'PN0000021', 29, 0, 2, '2017-12-01 08:09:34', '', 109, 0, 0, 0, 1, 0, 0, 0, '2017-12-01 01:09:34', '0000-00-00 00:00:00', 2, 0, 0, 0, 2, 1),
(353, 'PN0000021', 29, 0, 2, '2017-12-01 08:09:34', '', 108, 0, 0, 0, 1, 0, 0, 0, '2017-12-01 01:09:34', '0000-00-00 00:00:00', 2, 0, 0, 0, 2, 1),
(354, '893504951', 0, 0, 2, '2017-12-01 02:00:30', 'Khai báo hàng hóa', 110, 0, 0, 0, 0, 0, 0, 0, '2017-12-01 02:00:30', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 0),
(355, 'SP00023', 0, 0, 1, '2017-12-06 07:32:15', 'Khai báo hàng hóa', 111, 0, 0, 0, 0, 0, 0, 0, '2017-12-06 07:32:15', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 0),
(356, 'PN0000022', 30, 0, 1, '2017-12-06 14:33:51', '', 108, 0, 200000, 0, 10, 0, 20000, 0, '2017-12-06 07:33:51', '0000-00-00 00:00:00', 2, 0, 0, 20, 2, 10),
(357, 'PN0000023', 31, 0, 2, '2017-12-07 01:47:26', '', 110, 0, 220000, 0, 11, 0, 20000, 0, '2017-12-06 18:47:26', '0000-00-00 00:00:00', 2, 0, 0, 0, 2, 11),
(358, 'PX0000158', 237, 0, 2, '2017-12-07 01:52:55', '', 111, 2000, 28000, 20000, 0, 2, 15000, 0, '2017-12-06 18:52:55', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, -2),
(359, 'SP00024', 0, 0, 2, '2017-12-08 04:29:00', 'Khai báo hàng hóa', 112, 0, 0, 0, 10, 0, 0, 0, '2017-12-08 04:29:00', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 10),
(360, 'PX0000159', 238, 32, 2, '2017-12-08 11:35:27', '', 112, 0, 50000, 40000, 0, 2, 25000, 0, '2017-12-08 04:35:27', '0000-00-00 00:00:00', 2, 0, 5, 0, 3, 8),
(361, 'PX0000160', 239, 33, 1, '2017-12-13 23:54:16', '', 112, 0, 75000, 60000, 0, 3, 25000, 0, '2017-12-13 16:54:16', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, -3),
(362, 'PX0000161', 240, 0, 6, '2017-12-14 08:39:58', '', 112, 0, 25000, 20000, 0, 1, 25000, 0, '2017-12-14 01:39:58', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, -1),
(363, 'PX0000161', 240, 0, 6, '2017-12-14 08:39:58', '', 111, 0, 45000, 30000, 0, 3, 15000, 0, '2017-12-14 01:39:58', '0000-00-00 00:00:00', 2, 0, 0, 0, 3, -3),
(364, 'PX0000162', 241, 5, 6, '2017-12-14 08:40:58', 'dfafdf', 112, 1250, 23750, 20000, 0, 1, 25000, 0, '2017-12-14 01:40:58', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, -2),
(365, 'PX0000162', 241, 5, 6, '2017-12-14 08:40:58', 'dfafdf', 111, 750, 14250, 10000, 0, 1, 15000, 0, '2017-12-14 01:40:58', '0000-00-00 00:00:00', 2, 0, 2, 0, 3, -4),
(366, 'SP00025', 0, 0, 1, '2019-06-14 17:29:09', 'Khai báo hàng hóa', 113, 0, 0, 0, 200, 0, 0, 0, '2019-06-14 17:29:09', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 200),
(367, 'PX0000163', 242, 0, 1, '2019-06-14 17:00:00', '', 113, 0, 600000, 300000, 0, 2, 300000, 1, '2019-06-14 17:30:02', '2019-06-14 20:07:01', 2, 2, 17, 0, 3, 198),
(368, 'PX0000001', 243, 34, 1, '2019-06-14 20:08:00', 'Mua lần 1', 113, 50000, 850000, 450000, 0, 3, 300000, 0, '2019-06-14 20:09:30', '0000-00-00 00:00:00', 2, 0, 20, 0, 3, 197),
(369, 'SP000001', 0, 0, 1, '2019-06-14 23:13:05', 'Khai báo hàng hóa', 114, 0, 0, 0, 200, 0, 0, 0, '2019-06-14 23:13:05', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 200),
(370, 'SP000002', 0, 0, 1, '2019-06-14 23:15:00', 'Khai báo hàng hóa', 115, 0, 0, 0, 350, 0, 0, 0, '2019-06-14 23:15:00', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 350),
(371, 'SP000003', 0, 0, 1, '2019-06-14 23:18:33', 'Khai báo hàng hóa', 116, 0, 0, 0, 280, 0, 0, 0, '2019-06-14 23:18:33', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 280),
(372, 'SP000004', 0, 0, 1, '2019-06-14 23:20:07', 'Khai báo hàng hóa', 117, 0, 0, 0, 68, 0, 0, 0, '2019-06-14 23:20:07', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 68),
(373, 'SP000005', 0, 0, 1, '2019-06-14 23:21:55', 'Khai báo hàng hóa', 118, 0, 0, 0, 30, 0, 0, 0, '2019-06-14 23:21:55', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 30),
(374, 'SP000006', 0, 0, 1, '2019-06-14 23:24:03', 'Khai báo hàng hóa', 119, 0, 0, 0, 2000, 0, 0, 0, '2019-06-14 23:24:03', '0000-00-00 00:00:00', 2, 0, 0, 0, 1, 2000),
(375, 'PX0000002', 244, 34, 1, '2019-06-14 23:24:00', '', 119, 31579, 568421, 300000, 0, 2, 300000, 0, '2019-06-14 23:24:59', '0000-00-00 00:00:00', 2, 0, 18, 0, 3, 1998),
(376, 'PX0000002', 244, 34, 1, '2019-06-14 23:24:00', '', 115, 68421, 1231579, 850000, 0, 1, 1300000, 0, '2019-06-14 23:24:59', '0000-00-00 00:00:00', 2, 0, 18, 0, 3, 349),
(377, 'PX0000003', 245, 35, 1, '2019-06-14 23:25:00', '', 116, 0, 2950000, 2250000, 0, 5, 590000, 0, '2019-06-14 23:25:47', '0000-00-00 00:00:00', 2, 0, 22, 0, 3, 275),
(378, 'PX0000004', 246, 36, 1, '2019-06-14 23:26:00', '', 117, 0, 253500000, 210000000, 0, 15, 16900000, 0, '2019-06-14 23:26:20', '0000-00-00 00:00:00', 2, 0, 13, 0, 3, 53),
(379, 'PX0000005', 247, 38, 1, '2019-06-14 23:26:00', '', 118, 197309, 21802691, 20000000, 0, 1, 22000000, 0, '2019-06-14 23:27:05', '0000-00-00 00:00:00', 2, 0, 23, 0, 3, 29),
(380, 'PX0000005', 247, 38, 1, '2019-06-14 23:26:00', '', 119, 2691, 297309, 150000, 0, 1, 300000, 0, '2019-06-14 23:27:05', '0000-00-00 00:00:00', 2, 0, 23, 0, 3, 1997),
(381, 'PN0000024', 32, 0, 1, '2019-06-14 23:32:00', '', 114, 0, 80000000, 0, 1000, 0, 80000, 0, '2019-06-14 23:32:33', '0000-00-00 00:00:00', 2, 0, 0, 23, 2, 1200);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_stores`
--

CREATE TABLE `cms_stores` (
  `ID` int(5) UNSIGNED NOT NULL,
  `stock_name` varchar(255) NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cms_stores`
--

INSERT INTO `cms_stores` (`ID`, `stock_name`, `user_init`, `user_upd`, `created`, `updated`) VALUES
(1, 'Cửa hàng số 1', 1, 1, '2016-05-11 00:00:00', '2019-06-14 19:59:55'),
(2, 'Cửa hàng số 2', 1, 1, '2016-05-23 00:00:00', '2019-06-14 20:00:03'),
(6, 'Cửa hàng số 3', 2, 0, '2017-10-18 03:54:50', '2019-06-14 20:00:09'),
(7, 'Cửa hàng số 4', 2, 0, '2019-06-14 19:57:44', '2019-06-14 20:00:15'),
(8, 'Cửa hàng số 5', 2, 0, '2019-06-14 19:58:08', '2019-06-14 20:00:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_suppliers`
--

CREATE TABLE `cms_suppliers` (
  `ID` int(10) UNSIGNED NOT NULL,
  `supplier_code` varchar(10) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `supplier_phone` varchar(30) NOT NULL,
  `supplier_email` varchar(150) NOT NULL,
  `supplier_addr` varchar(255) NOT NULL,
  `tax_code` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cms_suppliers`
--

INSERT INTO `cms_suppliers` (`ID`, `supplier_code`, `supplier_name`, `supplier_phone`, `supplier_email`, `supplier_addr`, `tax_code`, `notes`, `created`, `updated`, `user_init`, `user_upd`) VALUES
(21, 'NCC000001', 'ASUS', '0123456777', 'NCC000001@gmail.com', 'Hoàn Kiếm, Hà Nội', '', 'Nhà phân phối link kiện điện tử USUS', '2019-06-14 09:59:45', '0000-00-00 00:00:00', 2, 0),
(22, 'NCC000002', 'Công Ty Siêu Thị Hà Nội', '02083656789', 'NCC000002@gmail.com', 'Phường Hoàng Văn Thụ, Thành phố Thái Nguyên, Thái Nguyên', '', '', '2019-06-14 10:01:56', '0000-00-00 00:00:00', 2, 0),
(23, 'NCC000003', 'Công Ty TNHH Mỹ Kim', '02081234567', 'NCC000003@gmail.com', 'Hương Sơn, Thành phố Thái Nguyên, Thái Nguyên', '', '', '2019-06-14 10:02:59', '0000-00-00 00:00:00', 2, 0),
(24, 'NCC000004', 'Công ty Cổ phần Cơ điện tử ASO', '02083645669', 'NCC000004@gmail.com', 'Thị xã Sông Công, Cải Đan, Sông Công, Thái Nguyên', '', '', '2019-06-14 10:04:05', '0000-00-00 00:00:00', 2, 0),
(25, 'NCC000005', 'Điện Tử Thái Nguyên', '0987654333', 'NCC000005@gmail.com', 'Tân Thịnh, Thành phố Thái Nguyên, Thái Nguyên', '', '', '2019-06-14 10:04:54', '0000-00-00 00:00:00', 2, 0),
(26, 'NCC000006', 'Công ty TNHH Young Jin Hi-tech Việt Nam', '0987654222', 'NCC000006@gmail.com', 'Điềm Thụy, Phú Bình, Thái Nguyên', '', '', '2019-06-14 10:05:39', '0000-00-00 00:00:00', 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_templates`
--

CREATE TABLE `cms_templates` (
  `id` int(5) NOT NULL,
  `type` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `user_upd` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cms_templates`
--

INSERT INTO `cms_templates` (`id`, `type`, `name`, `content`, `created`, `updated`, `user_upd`) VALUES
(1, 1, 'Hóa đơn bán hàng (Pos)', '<div style=\"text-align:center\"><strong>H&Oacute;A ĐƠN B&Aacute;N H&Agrave;NG</strong><br />\n<strong>{Ma_Don_Hang}</strong></div>\n\n<div style=\"text-align:center\">&nbsp;</div>\n\n<div>\n<p><strong>Ng&agrave;y b&aacute;n:</strong> {Ngay_Xuat}<br />\n<strong>Kh&aacute;ch h&agrave;ng:</strong> {Khach_Hang}<br />\n<strong>Địa Chỉ:</strong> {DC_Khach_Hang}<br />\n<strong>ĐT: </strong>{DT_Khach_Hang}</p>\n</div>\n\n<div>{Chi_Tiet_San_Pham}</div>\n\n<div>&nbsp;</div>\n\n<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"text-align:right\">Tổng tiền h&agrave;ng:</td>\n			<td style=\"text-align:right\">{Tong_Tien_Hang}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Giảm gi&aacute;:</td>\n			<td style=\"text-align:right\">{Chiec_Khau}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Đặt cọc</td>\n			<td style=\"text-align:right\">{Khach_Dua}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Tổng thanh to&aacute;n:</td>\n			<td style=\"text-align:right\"><strong>{Con_No}</strong></td>\n		</tr>\n	</tbody>\n</table>\n\n<p style=\"text-align:center\">Số tiền bằng chữ: {So_Tien_Bang_Chu}&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\n\n<p style=\"text-align:center\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>NGƯỜI B&Aacute;N H&Agrave;NG</strong></p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:right\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong></p>\n\n<p style=\"text-align:right\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {Ten_Nhan_Vien}&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\n', NULL, '2017-11-21 09:06:38', 2),
(2, 2, 'Hóa đơn bán hàng (order)', '<div style=\"text-align:center\"><strong>H&Oacute;A ĐƠN B&Aacute;N H&Agrave;NG</strong><br />\n<strong>{Ma_Don_Hang}</strong></div>\n\n<div><strong>Ng&agrave;y b&aacute;n:</strong> {Ngay_Xuat}</div>\n\n<div><strong>Kh&aacute;ch h&agrave;ng:</strong> {Khach_Hang}</div>\n\n<div><strong>Thu ng&acirc;n:</strong> {Thu_Ngan}</div>\n\n<p>&nbsp;</p>\n\n<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"width:35%\"><strong>Đơn gi&aacute;</strong></td>\n			<td style=\"text-align:center; width:30%\"><strong>SL</strong></td>\n			<td style=\"text-align:right\"><strong>TT</strong></td>\n		</tr>\n		<tr>\n			<td colspan=\"3\">{Ten_Hang_Hoa}</td>\n		</tr>\n		<tr>\n			<td>{Don_Gia}</td>\n			<td style=\"text-align:center\">{So_Luong}</td>\n			<td style=\"text-align:right\">{Thanh_Tien}</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"text-align:right\">Tổng tiền h&agrave;ng:</td>\n			<td style=\"text-align:right\">{Tong_Tien_Hang}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Giảm gi&aacute;:</td>\n			<td style=\"text-align:right\">{Chiec_Khau}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Th&agrave;nh tiền:</td>\n			<td style=\"text-align:right\">{Tong_Tien}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Kh&aacute;ch đưa</td>\n			<td style=\"text-align:right\">{Khach_Dua}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Tổng thanh to&aacute;n:</td>\n			<td style=\"text-align:right\"><strong>{Con_No}</strong></td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:left\">Ghi ch&uacute;: {Ghi_Chu}</p>\n\n<div style=\"text-align:left\">Xin cảm ơn v&agrave; hẹn gặp lại!</div>\n', NULL, '2017-10-26 23:20:44', 2),
(3, 3, 'Hóa đơn phiếu nhập', '<div style=\"text-align:center\"><strong>H&Oacute;A ĐƠN B&Aacute;N H&Agrave;NG</strong><br />\n<strong>{Ma_Don_Hang}</strong></div>\n\n<div style=\"text-align:center\">&nbsp;</div>\n\n<div>\n<p><strong>Ng&agrave;y b&aacute;n:</strong> {Ngay_Xuat}<br />\n<strong>Kh&aacute;ch h&agrave;ng:</strong> {Khach_Hang}<br />\n<strong>Địa Chỉ:</strong> {DC_Khach_Hang}<br />\n<strong>ĐT: </strong>{DT_Khach_Hang}</p>\n</div>\n\n<div>{Chi_Tiet_San_Pham}</div>\n\n<div>&nbsp;</div>\n\n<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"text-align:right\">Tổng tiền h&agrave;ng:</td>\n			<td style=\"text-align:right\">{Tong_Tien_Hang}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Giảm gi&aacute;:</td>\n			<td style=\"text-align:right\">{Chiec_Khau}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Đặt cọc</td>\n			<td style=\"text-align:right\">{Khach_Dua}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Tổng thanh to&aacute;n:</td>\n			<td style=\"text-align:right\"><strong>{Con_No}</strong></td>\n		</tr>\n	</tbody>\n</table>\n\n<p style=\"text-align:center\">Số tiền bằng chữ: {So_Tien_Bang_Chu}&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\n\n<p style=\"text-align:right\">&nbsp;<strong>NGƯỜI B&Aacute;N H&Agrave;NG</strong></p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:right\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong></p>\n\n<p style=\"text-align:right\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {Ten_Nhan_Vien}&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\n', NULL, '2017-11-05 22:07:52', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `email` varchar(120) NOT NULL,
  `display_name` varchar(120) NOT NULL,
  `user_status` tinyint(4) NOT NULL,
  `group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `logined` datetime(1) NOT NULL,
  `ip_logged` varchar(255) NOT NULL,
  `recode` varchar(255) NOT NULL,
  `code_time_out` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cms_users`
--

INSERT INTO `cms_users` (`id`, `username`, `password`, `salt`, `email`, `display_name`, `user_status`, `group_id`, `store_id`, `created`, `updated`, `logined`, `ip_logged`, `recode`, `code_time_out`) VALUES
(2, 'admin', 'acafabfb3b45089f905b5c8c0698f63c', 'GsV3TQXMytmADVjb817hblQmp6rg1ybqulyz4qE21W3y4bAsCpvdeFO1GGr4Rbdcu2HW0', 'admin@admin.com', 'admin', 1, 1, 1, '2017-09-25 23:01:53', '2019-06-14 08:38:30', '2019-06-14 23:38:05.0', '::1', '', ''),
(8, '000000', 'b7ba4f82e63748b31419f9ea47d7b72f', 'IFzV6%)ykZvjh$tb3I%33frQ)5C^*w#FxP%p1CVoH5Dh&xZEF)pQg*Qjt%@TsjZKU25cy', 'namit@admin.com', 'namit', 0, 1, 0, '2019-06-14 08:39:27', '0000-00-00 00:00:00', '2019-06-14 23:36:03.0', '::1', '', ''),
(9, '000001', '8277e745d10dd789d80c250e9e86b69d', '8)7^!mfnVO^XeYntQn)NNwf*Wh(PfF1MC^kGN9yxAWJ7PFpLOFY!v2OrNDZJFQz04LAyg', 'quanly01@gmail.com', 'Lên Anh Tài', 1, 2, 0, '2019-06-14 08:40:00', '2019-06-14 08:45:14', '0000-00-00 00:00:00.0', '', '', ''),
(10, '000002', '529553addffab250295d0595badcee11', 'wpcUvqEUrHctmNsohkup5ISxoi3K4&vbQ4Mt%fMh5i*3Y$BNU8lat6(UfJbfhdZKaOcUc', 'quanly02@gmail.com', 'Lương Tài Em', 1, 2, 0, '2019-06-14 08:40:12', '2019-06-14 08:45:36', '0000-00-00 00:00:00.0', '', '', ''),
(11, '000003', '5e4670efb7fe2ae0464f7b440a9d7923', 'W0)DdN@8JI*uB@V2O1l#$ZF6i6qN#p%ZlH3b7IAmo6uJ0ZISvqzzo^DaA!Kt#837Wx9uz', 'quanly03@gmail.com', 'Phạm Quỳnh Ánh', 1, 2, 0, '2019-06-14 08:40:23', '2019-06-14 08:45:47', '0000-00-00 00:00:00.0', '', '', ''),
(12, '000004', 'b6f311a380b5092207be17128491516d', 'LAIJj2a@Mo92wKyh6EL!os61mROJRa#hWwJRSRI6nLZTCzD9EJWWTWz)jHMBbJq@ZAJ5$', 'quanly04@gmail.com', 'Lý Thành Nam', 1, 2, 0, '2019-06-14 08:40:34', '2019-06-14 08:46:12', '0000-00-00 00:00:00.0', '', '', ''),
(13, '000005', '9c2ac0725fb24f301c21bebc7692f6c9', 'hG3#9Pp(HFLou^80O2zQW)8bC#Vn@GAbXvIx**$iQwTc!4hhCajiy3MmMwjNiixrOaJg)', 'quanly05@gmail.com', 'Lê Thành Tâm', 1, 2, 0, '2019-06-14 08:40:49', '2019-06-14 08:47:07', '0000-00-00 00:00:00.0', '', '', ''),
(14, '000006', '84fc146d13b9aed879b7967264363609', 'd$ZCUxj$rNqZ5tAkNDC7QlMkyJRyzhH*k))$%En$HZK#7(qaypHACh$lK6W8Ei4%hZ13c', '000006@gmail.com', 'Nguyễn Văn An', 1, 3, 0, '2019-06-14 08:41:41', '2019-06-14 08:47:32', '0000-00-00 00:00:00.0', '', '', ''),
(15, '000007', '02554771dc6ba1a0fa6704fd5476c45b', '8MlcCNHq$CYn*2Ab4%iR3vGblXAcFdig1g55ENE1nGgOVD*ORG48nL(#)VrTOkk%r(N$G', '000007@gmail.com', 'Nguyễn Văn Bình', 1, 3, 0, '2019-06-14 08:42:02', '2019-06-14 08:47:36', '0000-00-00 00:00:00.0', '', '', ''),
(16, '000008', 'cb838e3226df20a3631e5dbd28e3d157', 'ZpcdfcT0tSBqK2pxN*lE1aRte5uwLDj2Je@0QJ%gMwtKAuJEGaWPf%iNvtrxK%ubK#vyG', '000008@gmail.com', 'Lê Thị Yến', 1, 3, 0, '2019-06-14 08:42:14', '2019-06-14 08:47:39', '0000-00-00 00:00:00.0', '', '', ''),
(17, '000009', '8cb3b0ebc60ced476e91f2ed073f0df1', 'TCek1N13Y42f&oY4M6Ul^c$xtXChCGRHd%3Xe9h2L#B8b7Qvfn9uon#Y(Tp(HYFTj1mGc', '000009@gmail.com', 'Nguyễn Thị Linh', 1, 3, 0, '2019-06-14 08:42:30', '2019-06-14 08:47:41', '0000-00-00 00:00:00.0', '', '', ''),
(18, '000010', '24d1ac241a699c9c1b47ce571e63a935', 'n9VTGyT(Zam%U3Rn6#YUVH*&1uqvp(sszyEk(U!G!lCcgIrMmiAe2AxL@qgPsz0VtykB#', '000010@gmail.com', 'Lương Văn Tài', 1, 3, 0, '2019-06-14 08:42:46', '2019-06-14 08:47:44', '0000-00-00 00:00:00.0', '', '', ''),
(19, '000011', 'bf1b32a0c3fe64a3e04c3661e925749d', 'XVKkJcRso2xtlX^opsOAtH(X%g3WL)0aEj!thI1e4raC6caS$EUNEMCY%HBJMevgY^MhU', '000011@gmail.com', 'Nguyễn Tuấn Anh', 1, 3, 0, '2019-06-14 08:43:03', '2019-06-14 08:47:47', '0000-00-00 00:00:00.0', '', '', ''),
(20, '000012', 'e8a4f0c25ea6ded073459f7ca4c9ce36', '3Jbf!mQQe*lyU&890QcATkCcOd0)%WrFycrOxNH#0znRUPg2Fox&Xz^b!vl2VS9Jod@pY', '000012@gmail.com', 'Nguyễn Thị Lan Anh', 1, 3, 0, '2019-06-14 08:43:17', '2019-06-14 08:47:49', '0000-00-00 00:00:00.0', '', '', ''),
(21, '000013', '4589b7fd990e5515ebe236ea8217d204', 'VNWAhUG!*A6CT1FnFNjp)TBVY3L&6%1vJe@%eys$wX4!5TnzTNjAsz)l&9TDUS#9bDq)i', '000013@gmail.com', 'Nguyễn Thị Ánh', 1, 3, 0, '2019-06-14 08:43:48', '2019-06-14 08:47:51', '0000-00-00 00:00:00.0', '', '', ''),
(22, '000014', '1fc7c3237037d104fb72998e535781b5', 'suaDX5^)8eUqFdqh$NG%H20!h$pJqRMoWHu6*0aoA*8THEhys4KZpOt^u(o@j5iWOa5zK', '000014@gmail.com', 'Phạm Thị Quỳnh', 1, 3, 0, '2019-06-14 08:44:08', '2019-06-14 08:47:53', '0000-00-00 00:00:00.0', '', '', ''),
(23, '000015', '1a0239cec22d18eaca2a55d45e1b46d8', 'Xk!HNJMzXMw^cWZ8eJbvsQwK7hRQ%koT7WAjm*6glz7BfPceo!ZROW@^!B%SBlT(HMhO%', '000015@gmail.com', 'Phạm Thị Quỳnh Anh', 1, 3, 0, '2019-06-14 08:44:25', '2019-06-14 08:47:56', '0000-00-00 00:00:00.0', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_users_group`
--

CREATE TABLE `cms_users_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `group_permission` varchar(255) NOT NULL,
  `group_registered` datetime NOT NULL,
  `group_updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cms_users_group`
--

INSERT INTO `cms_users_group` (`id`, `group_name`, `group_permission`, `group_registered`, `group_updated`) VALUES
(3, 'Nhân viên', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"]', '2017-09-08 19:20:45', '0000-00-00 00:00:00'),
(1, 'Admin', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"]', '2016-01-22 02:58:58', '2016-06-15 21:42:04'),
(2, 'Quản lý', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"]', '2016-01-22 03:00:40', '2016-06-15 21:42:37');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cms_customers`
--
ALTER TABLE `cms_customers`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `cms_input`
--
ALTER TABLE `cms_input`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `cms_inventory`
--
ALTER TABLE `cms_inventory`
  ADD PRIMARY KEY (`store_id`,`product_id`);

--
-- Chỉ mục cho bảng `cms_orders`
--
ALTER TABLE `cms_orders`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `cms_permissions`
--
ALTER TABLE `cms_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cms_products`
--
ALTER TABLE `cms_products`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `cms_products_group`
--
ALTER TABLE `cms_products_group`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `cms_products_manufacture`
--
ALTER TABLE `cms_products_manufacture`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `cms_report`
--
ALTER TABLE `cms_report`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `cms_stores`
--
ALTER TABLE `cms_stores`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `cms_suppliers`
--
ALTER TABLE `cms_suppliers`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `cms_templates`
--
ALTER TABLE `cms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cms_users_group`
--
ALTER TABLE `cms_users_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cms_customers`
--
ALTER TABLE `cms_customers`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `cms_input`
--
ALTER TABLE `cms_input`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `cms_orders`
--
ALTER TABLE `cms_orders`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT cho bảng `cms_permissions`
--
ALTER TABLE `cms_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `cms_products`
--
ALTER TABLE `cms_products`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT cho bảng `cms_products_group`
--
ALTER TABLE `cms_products_group`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT cho bảng `cms_products_manufacture`
--
ALTER TABLE `cms_products_manufacture`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `cms_report`
--
ALTER TABLE `cms_report`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT cho bảng `cms_stores`
--
ALTER TABLE `cms_stores`
  MODIFY `ID` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `cms_suppliers`
--
ALTER TABLE `cms_suppliers`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `cms_templates`
--
ALTER TABLE `cms_templates`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `cms_users_group`
--
ALTER TABLE `cms_users_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Cơ sở dữ liệu: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
