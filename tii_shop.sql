-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 16, 2017 lúc 03:03 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tii_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SupperAdmin', 'admin@gmail.com', '$2y$10$jZKPIVMJ/AgF4VXMKhzzLe2S3Pi66xVaz7ZVvcL7aDhOTadv24W5K', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'ĐIỆN THOẠI', 'dien-thoai', '0', '2017-05-15 16:02:04', '2017-05-15 16:02:04'),
(2, 'iPhone', 'iphone', '1', '2017-05-15 16:02:11', '2017-05-15 16:02:11'),
(3, 'Oppo', 'oppo', '1', '2017-05-15 16:46:28', '2017-05-15 16:46:28'),
(4, 'Nokia', 'nokia', '1', '2017-05-15 16:46:34', '2017-05-15 16:46:34'),
(5, 'Samsung', 'samsung', '1', '2017-05-15 16:46:40', '2017-05-15 16:46:44'),
(6, 'Sony', 'sony', '1', '2017-05-15 16:46:56', '2017-05-15 16:46:56'),
(7, 'LAPTOP', 'laptop', '0', '2017-05-15 16:47:08', '2017-05-15 16:47:08'),
(8, 'Asus', 'asus', '7', '2017-05-15 16:47:14', '2017-05-15 16:47:14'),
(9, 'MacBook', 'macbook', '7', '2017-05-15 16:47:18', '2017-05-15 16:47:41'),
(10, 'HP', 'hp', '7', '2017-05-15 16:47:22', '2017-05-16 15:42:16'),
(11, 'Dell', 'dell', '7', '2017-05-15 16:47:29', '2017-05-15 16:47:29'),
(12, 'Lenovo', 'lenovo', '7', '2017-05-15 16:47:35', '2017-05-15 16:47:35'),
(13, 'IPAD', 'ipad', '0', '2017-05-15 16:48:15', '2017-05-15 16:48:15'),
(14, 'Apple', 'apple', '13', '2017-05-15 16:48:28', '2017-05-15 16:48:28'),
(15, 'Asus', 'asus', '13', '2017-05-15 16:48:34', '2017-05-15 16:48:34'),
(16, 'Masstel', 'masstel', '13', '2017-05-15 16:48:42', '2017-05-15 16:48:42'),
(17, 'Huawei', 'huawei', '13', '2017-05-15 16:48:50', '2017-05-15 16:48:50'),
(18, 'Lenovo1', 'lenovo1', '13', '2017-05-20 07:04:55', '2017-05-20 07:04:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `c_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(97, '2014_10_12_000000_create_users_table', 1),
(98, '2014_10_12_100000_create_password_resets_table', 1),
(99, '2017_04_17_040447_create_categories_table', 1),
(100, '2017_04_17_040650_create_admin_users_table', 1),
(101, '2017_04_17_040840_create_products_table', 1),
(102, '2017_04_17_064150_create_product_details_table', 1),
(103, '2017_04_17_065006_create_product_imgs_table', 1),
(104, '2017_04_17_065325_create_oders_table', 1),
(105, '2017_04_17_065341_create_oder_details_table', 1),
(106, '2017_04_18_074912_create_comments_table', 1),
(107, '2017_05_15_003441_create_socials_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oders`
--

CREATE TABLE `oders` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oders`
--

INSERT INTO `oders` (`id`, `qty`, `total`, `status`, `name`, `email`, `phone`, `address`, `date`, `created_at`, `updated_at`) VALUES
(4, 2, 16689000, 1, 'Lưu Quang Tiến', 'tientungs295@gmail.com', 1686232328, 'Hà Nội', '2017-05-21', '2017-05-21 03:51:22', '2017-05-21 03:52:48'),
(5, 1, 25999000, 1, 'nguyendai', 'dainv320@gmail.com', 1679178772, 'hà nội', '2017-06-11', '2017-06-11 14:01:11', '2017-08-01 04:20:11'),
(6, 1, 4290000, 1, 'Phát', 'dainv320@gmail.com', 963783963, 'hà nội', '2017-06-11', '2017-06-11 16:03:55', '2017-08-14 06:03:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oder_details`
--

CREATE TABLE `oder_details` (
  `od_id` int(10) UNSIGNED NOT NULL,
  `od_qty` int(11) NOT NULL,
  `od_status` int(11) NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `o_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oder_details`
--

INSERT INTO `oder_details` (`od_id`, `od_qty`, `od_status`, `pro_id`, `o_id`, `created_at`, `updated_at`) VALUES
(5, 1, 0, 5, 4, '2017-05-21 03:51:22', '2017-05-21 03:51:22'),
(6, 1, 0, 9, 4, '2017-05-21 03:51:22', '2017-05-21 03:51:22'),
(7, 1, 0, 1, 5, '2017-06-11 14:01:11', '2017-06-11 14:01:11'),
(8, 1, 0, 12, 6, '2017-06-11 16:03:55', '2017-06-11 16:03:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `r_intro` text COLLATE utf8_unicode_ci NOT NULL,
  `review` text COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `images`, `intro`, `promo1`, `promo2`, `promo3`, `qty`, `r_intro`, `review`, `cat_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'iPhone 7 Plus 256GB', 'iphone-7-plus-256gb', 25999000, '1494935879_636159465434419320_ip7p-jet-1.jpg', 'dep', 'Trả góp 0%, Trả trước 7 triệu', 'Tặng Voucher 500.000đ mua Apple Watch/Mac', 'Thu cũ - Đổi mới iPhone nhận cả máy lock', 300, '', '', 1, 1, '2017-05-15 16:03:46', '2017-05-21 03:23:10'),
(2, 'iPhone 6s Plus 32GB', 'iphone-6s-plus-32gb', 17990000, '1494936140_636172339622394948_apple-Iphone-6s-gold-1.jpg', 'dep', 'Trả góp 0%, trả trước 6 triệu', 'Tặng Voucher 500,000đ mua Apple Watch/Mac', 'Thu cũ - Đổi mới iPhone nhận cả máy lock', 500, '', '', 1, 1, '2017-05-15 16:03:59', '2017-05-21 03:23:49'),
(3, 'iPhone 6s Plus 16GB', 'iphone-6s-plus-16gb', 15999000, '1494936477_635871541442303950_iphone-6s-gray-1.jpg', 'dep', 'Trả góp 0%, trả trước 6 triệu', 'Tặng Voucher 500.000đ mua Apple Watch/Mac', 'Thu cũ - Đổi mới iPhone nhận cả máy lock', 600, '', '', 2, 1, '2017-05-16 12:07:57', '2017-05-16 12:07:57'),
(4, 'iPhone 6s 64GB', 'iphone-6s-64gb', 15999000, '1494936786_636131729381314142_635870816416447361_iphone-6s-silver-5.jpg', 'dep', 'Trả góp 0%, trả trước 6 triệu', 'Trả góp 0% + Voucher 500,000đ mua Màn hình LG  27\" 4K', 'Thu cũ - Đổi mới iPhone nhận cả máy lock', 1000, '', '', 2, 1, '2017-05-16 12:13:06', '2017-05-16 12:13:06'),
(5, 'iPhone 5s 16GB', 'iphone-5s-16gb', 5999000, '1494937415_635869123783238651_iphone-5s-5.jpg', 'dep', 'Trả góp 0%/0đ', 'Tặng Voucher 500.000đ mua Apple Watch/Mac', 'Thu cũ - Đổi mới iPhone nhận cả máy lock', 500, '', '', 1, 1, '2017-05-16 12:23:35', '2017-05-21 03:35:08'),
(6, 'iPhone 6s 16GB', 'iphone-6s-16gb', 12999000, '1494937629_636159465434419320_ip7p-jet-1.jpg', 'dep', 'Trả góp 0%, trả trước 6 triệu', 'Tặng Voucher 500.000đ mua Apple Watch/Mac', 'Thu cũ - Đổi mới iPhone nhận cả máy lock', 200, '', '', 2, 1, '2017-05-16 12:27:09', '2017-05-16 12:27:09'),
(7, 'iPhone 6 32GB (2017)', 'iphone-6-32gb-2017', 8999000, '1494937852_636252705107929864_iphone6-32GB-gold.jpg', 'dep', 'Trả góp 0%, trả trước 6 triệu', 'Tặng Voucher 500.000đ mua Apple Watch/Mac', 'Thu cũ - Đổi mới iPhone nhận cả máy lock', 1000, '', '', 2, 1, '2017-05-16 12:30:52', '2017-05-16 12:30:52'),
(8, 'iPhone 7 128GB', 'iphone-7-128gb', 19999000, '1494938133_636159400180234783_ip7-jet-2.jpg', 'dep', 'Trả góp 0%, Trả trước 7 triệu', 'Tặng Voucher 500,000đ mua Apple Watch/Mac', 'Thu cũ - Đổi mới iPhone nhận cả máy lock', 1000, '', '', 2, 1, '2017-05-16 12:35:33', '2017-05-16 12:35:33'),
(9, 'OPPO F3 Plus', 'oppo-f3-plus', 10690000, '1494939962_636259620677166936_f3plus-a.jpg', 'dep', 'Trả góp 0%, trả trước 6 triệu', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', 'Tặng Bộ quà (Sạc dự phòng 5.200 mAh + Thẻ nhớ 16GB)', 1000, '', '', 1, 1, '2017-05-16 13:06:02', '2017-05-21 03:32:49'),
(10, 'OPPO F3', 'oppo-f3', 7490000, '1494940133_636304456294015590_800-1.jpg', 'dep', 'Trả góp 0% Hoặc Tặng Phiếu mua hàng Phụ Kiện 300.000đ', 'Tặng Bảo hành 1 năm rơi vỡ màn hình', '', 200, '', '', 1, 1, '2017-05-16 13:08:53', '2017-05-21 03:33:15'),
(11, 'OPPO F1s 2017 (64GB)', 'oppo-f1s-2017-64gb', 6990000, '1494940321_636222502134846749_f1s-a.jpg', 'dep', 'Trả góp 0%', 'Tặng PMH 500,000đ Hoặc Tặng Bộ quà: SDP 5.200 mAh + Thẻ nhớ 16GB', '', 1000, '', '', 1, 1, '2017-05-16 13:12:01', '2017-05-21 03:37:28'),
(12, 'OPPO A39 (Neo 9s)', 'oppo-a39-neo-9s', 4290000, '1494940478_636155182260851298_a39-1.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 300, '', '', 3, 1, '2017-05-16 13:14:38', '2017-05-16 13:14:38'),
(13, 'OPPO A37 (Neo 9)', 'oppo-a37-neo-9', 3290000, '1494940580_636171478375861351_OPPO-A37-gold-2.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 1000, '', '', 3, 1, '2017-05-16 13:16:20', '2017-05-16 13:16:20'),
(14, 'OPPO Neo 7', 'oppo-neo-7', 2990000, '1494940689_635868989968069918_neo7--b1.jpg', 'dep', 'Trả góp 0%, trả trước 6 triệ', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 1000, '', '', 3, 1, '2017-05-16 13:18:09', '2017-05-16 13:18:09'),
(15, 'OPPO F1', 'oppo-f1', 3990000, '1494940867_635901068997255542_01.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 500, '', '', 3, 1, '2017-05-16 13:21:07', '2017-05-16 13:21:07'),
(16, 'Oppo Neo 5 16G', 'oppo-neo-5-16g', 9990000, '1494941591_635890746540754199_neo5-w1.jpg', 'dep', 'Tặng usb chống muỗi trị giá 100k', 'Tặng điện thoại Philips E105 hoặc E103 chính hãng', 'Tặng pin dự phòng Romos 10400mAh', 1000, '', '', 3, 1, '2017-05-16 13:30:25', '2017-05-16 13:33:11'),
(17, 'Nokia Lumia 520', 'nokia-lumia-520', 1890000, '1494941831_nokia-lumia-520-id15740.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 1000, '', '', 4, 1, '2017-05-16 13:37:11', '2017-05-16 13:37:11'),
(18, 'Nokia Lumia 930', 'nokia-lumia-930', 4999000, '1494942007_201506261707041670_lumia-930-hot.png', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 300, '', '', 4, 1, '2017-05-16 13:40:07', '2017-05-16 13:40:07'),
(19, 'Nokia Lumia 525', 'nokia-lumia-525', 799000, '1494942247_635737587689832361_525-hot.png', 'dep', 'Trả góp 0%', 'Tặng Voucher 500,000đ mua Màn hình LG 27\" 4K', '', 1000, '', '', 4, 1, '2017-05-16 13:44:07', '2017-05-16 13:44:07'),
(20, 'Nokia 5', 'nokia-5', 5990000, '1494942359_636238988755143808_nokia5-1.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 500, '', '', 4, 1, '2017-05-16 13:45:59', '2017-05-16 13:45:59'),
(21, 'Nokia 3', 'nokia-3', 6590000, '1494942480_636238958231888049_nokia3-1.jpg', 'dep', 'Trả góp 0%', 'Tặng Voucher 500,000đ mua Màn hình NK 27\" 4K', '', 1000, '', '', 4, 1, '2017-05-16 13:48:00', '2017-05-16 13:48:00'),
(22, 'Nokia 6', 'nokia-6', 7900000, '1494942606_636226054381624476_nokia6-a.jpg', 'dep', 'Trả góp 0%, trả trước 2 triệu', 'Tặng Voucher 500,000đ mua Màn hình NK 27\" 4K', '', 1000, '', '', 4, 1, '2017-05-16 13:50:06', '2017-05-16 13:50:06'),
(23, 'Nokia Lumia 730', 'nokia-lumia-730', 1999000, '1494942751_201506120908527366_nokia-lumia-730-chi-tiet.png', 'dep', 'Trả góp 0%', 'Tặng Voucher 500.000đ mua Nokia Watch/Mac', '', 300, '', '', 4, 1, '2017-05-16 13:52:31', '2017-05-16 13:52:31'),
(24, 'Nokia Lumia 830', 'nokia-lumia-830', 2990000, '1494942932_635832710793083092_830gold.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 200, '', '', 4, 1, '2017-05-16 13:55:32', '2017-05-16 13:55:32'),
(25, 'Samsung Galaxy S8', 'samsung-galaxy-s8', 18490, '1494943097_636264877785396656_800800trc.jpg', 'dep', 'Trả góp 0%, Trả trước 7 triệu', 'Tặng Gói ưu đãi Samsung Elite', 'Tặng PMH Phụ Kiện 500,000đ', 1000, '', '', 1, 1, '2017-05-16 13:58:17', '2017-05-21 03:33:56'),
(26, 'Samsung S7 Black Pearl', 'samsung-s7-black-pearl', 16990000, '1494943289_636184522417044688_samsung-galaxy-s7-edge-black-pearl-1.jpg', 'dep', 'Cơ hội trúng 8 chuyến du lịch mỗi tuần', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 500, '', '', 1, 1, '2017-05-16 14:01:29', '2017-05-21 03:35:54'),
(27, 'Samsung S7 lue Coral', 'samsung-s7-lue-coral', 15490000, '1494943510_636186286968069205_amsung-S7-Edge-Blue-Coral-1.jpg', 'dep', 'Cơ hội trúng 8 chuyến du lịch mỗi tuần', 'Thu cũ - Đổi Mới - Tiết kiệm lên đến 6,000,000đ', '', 1000, '', '', 5, 1, '2017-05-16 14:05:10', '2017-05-19 13:07:30'),
(28, 'Samsung Galaxy S7 Edge', 'samsung-galaxy-s7-edge', 15490000, '1494943831_635918163077929185_s7e-g1.jpg', 'dep', 'Trả góp 0% Hoặc Giảm ngay 2,000,000đ Hoặc Thu cũ - Đổi Mới - Tiết kiệm lên đến 6,000,000đ (Chỉ áp dụng cho màu Pink/Gold)', 'Cơ hội trúng 8 chuyến du lịch mỗi tuần', '', 1000, '', '', 1, 1, '2017-05-16 14:10:31', '2017-05-21 03:34:18'),
(29, 'Samsung Galaxy Note 5', 'samsung-galaxy-note-5', 12490000, '1494944016_635854272590343110_note5-g1.jpg', 'dep', 'Cơ hội trúng 8 chuyến du lịch mỗi tuần', 'TG 0% Hoặc Tặng PMH Phụ Kiện 500,000đ', '', 500, '', '', 1, 1, '2017-05-16 14:13:36', '2017-05-21 03:34:34'),
(30, 'Samsung Galaxy C9 Pro', 'samsung-galaxy-c9-pro', 11490000, '1494944101_636276917440588000_1.jpg', 'dep', 'Cơ hội trúng 8 chuyến du lịch mỗi tuần', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 300, '', '', 5, 1, '2017-05-16 14:15:01', '2017-05-16 14:15:01'),
(31, 'Samsung Galaxy A7 (2017)', 'samsung-galaxy-a7-2017', 10990000, '1494944295_636198272161795980_samsung-galaxy-a7-gold-2017-1.jpg', 'dep', 'PMH PK 100,000đ khi mua online', 'Tặng ngay PMH 1,000,000đ', 'Thu Cũ - Đổi Mới - Tiết kiệm lên đến 3,000,000đ', 1000, '', '', 5, 1, '2017-05-16 14:18:15', '2017-05-16 14:18:15'),
(32, 'Samsung Galaxy A5 (2016)', 'samsung-galaxy-a5-2016', 6790000, '1494944456_635851640642208217_A5-Gold-1.jpg', 'dep', 'Cơ hội trúng 8 chuyến du lịch mỗi tuần', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 300, '', '', 1, 1, '2017-05-16 14:20:56', '2017-05-21 03:38:52'),
(33, 'Sony Xperia XZs', 'sony-xperia-xzs', 14990000, '1494944698_636238763321821456_sony-szs-1.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 1000, '', '', 6, 1, '2017-05-16 14:24:58', '2017-05-16 14:24:58'),
(34, 'Sony Xperia XZ', 'sony-xperia-xz', 12990000, '1494944807_636162663529461412_xz-black-1.jpg', 'dep', 'Trả góp 0%', 'Tặng PMH 1,000,000đ', '', 300, '', '', 6, 1, '2017-05-16 14:26:47', '2017-05-16 14:26:47'),
(35, 'Sony Xperia X', 'sony-xperia-x', 7990000, '1494944960_636160167475162877_xperia-x-bl-1.jpg', 'dep', 'Trả góp 0%', 'Trả góp 0% + Voucher 500,000đ ', '', 300, '', '', 6, 1, '2017-05-16 14:29:20', '2017-05-16 14:29:20'),
(36, 'Sony Xperia XA Ultra', 'sony-xperia-xa-ultra', 7490000, '1494945066_636161892755323252_xperia-xa-ultra-1.jpg', 'dep', 'Trả góp 0%', 'Tặng Voucher 500,000đ mua Màn hình SN 27\" 4K', '', 600, '', '', 6, 1, '2017-05-16 14:31:06', '2017-05-16 14:31:06'),
(37, 'Sony Xperia C4 Dual (E5333)', 'sony-xperia-c4-dual-e5333', 6190000, '1494945447_635869008064652532_c4-b1.jpg', 'dep', 'Trả góp 0%', 'Tặng pin dự phòng Romos 10400mAh', 'Tặng pin dự phòng Romos 10400mAh', 1000, '', '', 6, 1, '2017-05-16 14:37:27', '2017-05-16 14:37:27'),
(38, 'Sony Xperia XA1 Ultra', 'sony-xperia-xa1-ultra', 12990000, '1494945694_utra.jpg', 'dep', 'Trả góp 0%', 'Tặng Voucher 500,000đ mua Màn hình SN 27\" 4K', '', 300, '', '', 6, 1, '2017-05-16 14:41:34', '2017-05-16 14:41:34'),
(39, 'Sony Xperia M5 Single', 'sony-xperia-m5-single', 5990000, '1494945811_utra2.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', 'Tặng pin dự phòng Romos 10400mAh', 300, '', '', 6, 1, '2017-05-16 14:43:31', '2017-05-16 14:43:31'),
(40, 'Sony Xperia XZ Premium', 'sony-xperia-xz-premium', 15900000, '1494946012_636259609405230936_800-2.jpg', 'dep', 'Trả góp 0%', 'Tặng Bộ quà (Sạc dự phòng 5.200 mAh + Thẻ nhớ 16GB)', '', 300, '', '', 1, 1, '2017-05-16 14:46:52', '2017-05-21 03:39:07'),
(42, 'Asus A556UR-DM083D', 'asus-a556ur-dm083d', 12990000, '1494946769_636036565081148151_2.jpg', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Balo Laptop', 'Tặng Voucher 900,000đ mua Office 365', 300, '', '', 7, 1, '2017-05-16 14:59:29', '2017-05-21 03:39:40'),
(43, 'Asus A556UR-DM094D', 'asus-a556ur-dm094d', 13290000, '1494946932_636071155800352079_00261565-g1.jpg', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Balo Laptop', 'Tặng Voucher 900,000đ mua Office 365', 300, '', '', 8, 1, '2017-05-16 15:02:12', '2017-05-16 15:02:12'),
(44, 'Asus K401UB-FR049D', 'asus-k401ub-fr049d', 13290000, '1494947059_636186946930529293_Asus-K401UB-FR049D-1.jpg', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Balo Laptop', 'Tặng Voucher 900,000đ mua Office 365', 600, '', '', 8, 1, '2017-05-16 15:04:19', '2017-05-16 15:04:19'),
(45, 'Asus A556UR-DM161T', 'asus-a556ur-dm161t', 13490000, '1494947233_636163532011008844_00281318.jpg', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Balo Laptop', 'Tặng Voucher 900,000đ mua Office 365', 300, '', '', 7, 1, '2017-05-16 15:07:13', '2017-05-21 03:46:52'),
(46, 'Asus K501UB-DM039D', 'asus-k501ub-dm039d', 13990000, '1494947477_636111041414650471_00273709-s1.jpg', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Balo Laptop', 'Tặng Voucher 900,000đ mua Office 365', 1000, '', '', 8, 1, '2017-05-16 15:11:17', '2017-05-16 15:11:17'),
(47, 'Asus A556UR-DM263D', 'asus-a556ur-dm263d', 13990000, '1494947577_636154888886554660_ASUS A556UR-DM263D-1.jpg', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Balo Laptop', 'Tặng Voucher 900,000đ mua Office 365', 300, '', '', 8, 1, '2017-05-16 15:12:57', '2017-05-16 15:12:57'),
(48, 'Asus UX410UA-GV063', 'asus-ux410ua-gv063', 15990000, '1494947650_636185989029306383_Asus-UX410UA-GV063-2.png', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Balo Laptop', 'Tặng Voucher 900,000đ mua Office 365', 500, '', '', 7, 1, '2017-05-16 15:14:10', '2017-05-21 03:40:18'),
(49, 'Asus K550VX-DM376D', 'asus-k550vx-dm376d', 16990000, '1494947757_1.jpg', 'dep', 'Trả góp 0%, Trả trước 7 triệu', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', 'Tặng Voucher 900,000đ mua Office 365', 600, '', '', 8, 1, '2017-05-16 15:15:57', '2017-05-16 15:15:57'),
(50, 'Macbook Air 13 MMGF2ZP/A', 'macbook-air-13-mmgf2zpa', 23999000, '1494948289_635984721168248766_mac-air-13-chi-tiet.png', 'dep', 'Trả góp 0%, Trả trước 7 triệu Hoặc Tặng Office 365 trị giá 1,300,000đ', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', 'Tặng Voucher 900,000đ mua Office 365', 1000, '', '', 9, 1, '2017-05-16 15:24:49', '2017-05-16 15:24:49'),
(51, 'MBP Retina 13.3\'\' - MF839ZP/A ', 'mbp-retina-133-mf839zpa', 29999000, '1494948430_635737135192283007_chitietsp-macpro-13.png', 'dep', 'Trả góp 0% Hoặc Tặng Office 365 trị giá 1,300,000đ', 'Tặng Voucher 500,000đ mua Màn hình LG 27', '', 1000, '', '', 7, 1, '2017-05-16 15:27:10', '2017-05-21 03:40:40'),
(52, 'Macbook Retina 12 Gold MLHE2SA/A', 'macbook-retina-12-gold-mlhe2saa', 31499000, '1494948584_635984733460936744_mac-12-chi-tiet.png', 'dep', 'Trả thẳng + PMH 1,000,000đ + Office 365 trị giá 1,300,000đ+ Voucher 500,000đ mua Màn hình LG  27\" 4K', 'Trả góp 0% + Voucher 500,000đ mua Màn hình LG  27\" 4K', '', 1000, '', '', 9, 1, '2017-05-16 15:29:44', '2017-05-16 15:29:44'),
(53, 'MacBook Pro 13 256GB (2017)', 'macbook-pro-13-256gb-2017', 36999000, '1494948715_636132524530684383_gray-5.png', 'dep', 'Trả góp 0% Hoặc Tặng Office 365 trị giá 1,300,000đ', 'Tặng Voucher 500,000đ mua Màn hình LG 27\" 4K', '', 1000, '', '', 9, 1, '2017-05-16 15:31:55', '2017-05-16 15:31:55'),
(54, 'MacBook Pro 13 Touch Bar 256GB (2017)', 'macbook-pro-13-touch-bar-256gb-2017', 43999000, '1494948844_636132591574652653_g1.png', 'dep', 'Trả góp 0% Hoặc Tặng Office 365 trị giá 1,300,000đ', 'Tặng Voucher 500,000đ mua Màn hình LG 27\" 4K', '', 1000, '', '', 9, 1, '2017-05-16 15:34:04', '2017-05-16 15:34:04'),
(55, 'Macbook Air 13\'\' - MJVG2ZP/A', 'macbook-air-13-mjvg2zpa', 28999000, '1494948958_635737114778871287_Chitietsp-macair-13inch.png', 'dep', 'Trả góp 0%, Trả trước 7 triệu Hoặc Tặng Office 365 trị giá 1,300,000đ', 'Tặng Voucher 500.000đ mua Apple Watch/Mac', 'Tặng Voucher 900,000đ mua Office 365', 500, '', '', 7, 1, '2017-05-16 15:35:58', '2017-05-21 03:46:23'),
(56, 'Macbook Retina 12 Rose Gold MMGL2SA/A', 'macbook-retina-12-rose-gold-mmgl2saa', 31499000, '1494949066_635984736723072095_mac-12-rose-gold-chi-tiet.png', 'dep', 'Trả thẳng + PMH 1,000,000đ + Office 365 trị giá 1,300,000đ+ Voucher 500,000đ mua Màn hình LG  27\" 4K', 'Trả góp 0% + Voucher 500,000đ mua Màn hình LG  27\" 4K', '', 1000, '', '', 9, 1, '2017-05-16 15:37:46', '2017-05-16 15:37:46'),
(57, 'Macbook Retina 12 Rose Gold MMGM2SA/A', 'macbook-retina-12-rose-gold-mmgm2saa', 37999000, '1494949264_3.png', 'dep', 'Trả thẳng + PMH 1,000,000đ + Office 365 trị giá 1,300,000đ+ Voucher 500,000đ mua Màn hình LG  27', 'Trả góp 0% + Voucher 500,000đ mua Màn hình LG  27', '', 300, '', '', 7, 1, '2017-05-16 15:41:04', '2017-05-21 03:46:04'),
(58, 'HP 14-m050TU', 'hp-14-m050tu', 10190000, '1494949528_4.jpg', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', 'Tặng Voucher 900,000đ mua Office 365', 300, '', '', 10, 1, '2017-05-16 15:45:28', '2017-05-16 15:45:28'),
(59, 'HP 15-ay074TU', 'hp-15-ay074tu', 10290000, '1494950140_5.jpg', 'dep', 'Trả góp 0%, Trả trước 7 triệu', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', 'Tặng Voucher 900,000đ mua Office 365', 500, '', '', 10, 1, '2017-05-16 15:55:40', '2017-05-16 15:55:40'),
(60, 'HP 15-ay538TU', 'hp-15-ay538tu', 9490000, '1494950873_636240593144158854_HP-15-ay538TU-2.png', 'dep', 'Trả góp 0%, trả trước 6 triệu', 'Tặng Balo Laptop', 'Tặng Voucher 900,000đ mua Office 365', 1000, '', '', 7, 1, '2017-05-16 16:07:53', '2017-05-21 03:41:09'),
(61, 'HP Pavilion 14 AL115TU', 'hp-pavilion-14-al115tu', 10990000, '1494950987_6.png', 'dep', 'Trả góp 0%, trả trước 6 triệu', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', 'Tặng Voucher 900,000đ mua Office 365', 300, '', '', 10, 1, '2017-05-16 16:09:47', '2017-05-16 16:09:47'),
(62, 'HP Pavilion 14-ab119TU', 'hp-pavilion-14-ab119tu', 12490000, '1494951120_635868932069726440_HP-Pavilion-14-ab119TU.png', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Balo Laptop', 'Tặng PMH Phụ Kiện 500,000đ', 300, '', '', 10, 1, '2017-05-16 16:12:00', '2017-05-16 16:12:00'),
(63, 'HP Pavilion X360 11-u104TU', 'hp-pavilion-x360-11-u104tu', 12690000, '1494951204_636246478279270419_HP-Pavilion-X360-11-u104TU-2.png', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', 'Tặng Voucher 900,000đ mua Office 365', 300, '', '', 7, 1, '2017-05-16 16:13:24', '2017-05-21 03:41:26'),
(64, 'HP Pavilion x360 13-u106TU', 'hp-pavilion-x360-13-u106tu', 12990000, '1494951536_66.jpg', 'dep', 'Trả góp 0% HoặcTặng Phần mềm Kaspersky Anti-Virus', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', 'Tặng Voucher 900,000đ mua Office 365', 1000, '', '', 10, 1, '2017-05-16 16:18:56', '2017-05-16 16:18:56'),
(65, 'HP 15-ay166TX/i5 7200U', 'hp-15-ay166txi5-7200u', 12990000, '1494951619_636173094642214140_HP-15-ay166TX-1.jpg', 'dep', 'Trả góp 0%, Trả trước 7 triệu', 'Tặng Balo Laptop', 'Tặng Voucher 900,000đ mua Office 365', 300, '', '', 10, 1, '2017-05-16 16:20:19', '2017-05-16 16:20:19'),
(66, 'Dell Ins N3458/i3-5005U', 'dell-ins-n3458i3-5005u', 10290000, '1494951747_q.jpg', 'dep', 'Tặng Phần mềm Kaspersky Anti-VirusTặng Phần mềm Kaspersky Anti-Virus', 'Tặng Balo Laptop', 'Tặng Voucher 900,000đ mua Office 365', 1000, '', '', 7, 1, '2017-05-16 16:22:27', '2017-05-21 03:44:54'),
(67, 'Dell Ins N3558', 'dell-ins-n3558', 10390000, '1494951853_qq.png', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Balo Laptop', 'Tặng Voucher 900,000đ mua Office 365', 1000, '', '', 7, 1, '2017-05-16 16:24:13', '2017-05-21 03:45:11'),
(68, 'Dell N3467', 'dell-n3467', 10590000, '1494951936_qw.jpg', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Balo Laptop', 'Tặng Voucher 900,000đ mua Office 365', 300, '', '', 11, 1, '2017-05-16 16:25:36', '2017-05-16 16:25:36'),
(69, 'Dell Ins N3567', 'dell-ins-n3567', 10990000, '1494952018_636245856530196538_800800.jpg', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Balo Laptop', 'Tặng Voucher 900,000đ mua Office 365', 600, '', '', 11, 1, '2017-05-16 16:26:58', '2017-05-16 16:26:58'),
(70, 'Dell Ins N3467/i5-7200U', 'dell-ins-n3467i5-7200u', 12690000, '1494952101_qww.jpg', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Balo Laptop', 'Tặng Voucher 900,000đ mua Office 365', 300, '', '', 11, 1, '2017-05-16 16:28:21', '2017-05-16 16:28:21'),
(71, 'Dell Inspiron N3567/i5-7200U', 'dell-inspiron-n3567i5-7200u', 13690000, '1494952188_wq.png', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Balo Laptop', 'Tặng Voucher 900,000đ mua Office 365', 300, '', '', 11, 1, '2017-05-16 16:29:48', '2017-05-16 16:29:48'),
(72, 'Dell Vostro V5468/i3-7100U', 'dell-vostro-v5468i3-7100u', 13990000, '1494952297_636153417507763460_dell-vostrol-v5468-a.jpg', 'dep', 'Trả góp 0%, Trả trước 7 triệu', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', 'Tặng Voucher 900,000đ mua Office 36513', 200, '', '', 11, 1, '2017-05-16 16:31:37', '2017-05-16 16:31:37'),
(73, 'Lenovo IdeaPad 100-14IBD/ i3-5005U', 'lenovo-ideapad-100-14ibd-i3-5005u', 8290000, '1495269757_635962257678322402_100-pentium-chi-tiet.png', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 1000, '', '', 12, 1, '2017-05-20 08:42:37', '2017-05-20 08:42:37'),
(74, 'Lenovo IdeaPad 110-15ISK / i3-6100U', 'lenovo-ideapad-110-15isk-i3-6100u', 9599000, '1495269859_636263845459045036_800800.jpg', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Balo Laptop', '', 1000, '', '', 12, 1, '2017-05-20 08:44:19', '2017-05-20 08:44:19'),
(75, 'Lenovo ideapad 310-14ISK Core i5', 'lenovo-ideapad-310-14isk-core-i5', 10690000, '1495269955_636066812539238144_00252477-s1.jpg', 'dep', 'Trả góp 0%, trả trước 6 triệu', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 200, '', '', 12, 1, '2017-05-20 08:45:55', '2017-05-20 08:45:55'),
(76, 'Lenovo IDP 510-15ISK', 'lenovo-idp-510-15isk', 15169000, '1495270043_636262897111143355_636066802993785096_00252483-s1.jpg', 'dep', 'Tặng Phần mềm Kaspersky Anti-Virus', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 300, '', '', 12, 1, '2017-05-20 08:47:23', '2017-05-20 08:47:23'),
(77, 'Lenovo ThinkPad E470', 'lenovo-thinkpad-e470', 15190000, '1495270105_636178200339864885_Lenovo-ThinkPad-E470-2.gif', 'dep', 'Trả góp 0%, trả trước 6 triệu', 'Tặng Balo Laptop', '', 300, '', '', 12, 1, '2017-05-20 08:48:25', '2017-05-20 08:48:25'),
(78, 'Lenovo Ideapad 710s-13ISK/i5 7200U', 'lenovo-ideapad-710s-13iski5-7200u', 16990000, '1495270213_636163523778285748_Lenovo-Ideapad-710s-13ISK.jpg', 'dep', 'Trả góp 0%, Trả trước 7 triệu', 'Tặng Balo Laptop', '', 1000, '', '', 7, 1, '2017-05-20 08:50:13', '2017-05-21 03:43:18'),
(79, 'Lenovo ThinkPad X1 Yoga', 'lenovo-thinkpad-x1-yoga', 44990000, '1495270304_636071104579242079_Lenovo-ThinkPad-X1-Yoga-b1.jpg', 'dep', 'Trả góp 0%, Trả trước 7 triệu', 'Tặng Balo Laptop', '', 500, '', '', 12, 1, '2017-05-20 08:51:44', '2017-05-20 08:51:44'),
(80, 'Lenovo Yoga 900', 'lenovo-yoga-900', 33990000, '1495270365_636163525991086488_yoga-900.jpg', 'dep', 'Trả góp 0%, Trả trước 7 triệu', 'Tặng Balo Laptop', '', 1000, '', '', 7, 1, '2017-05-20 08:52:45', '2017-05-21 03:43:00'),
(81, 'iPad Mini 2 Wi-Fi 32GB', 'ipad-mini-2-wi-fi-32gb', 6999000, '1495270522_636172350183836742_apple-ipad-mini-2-white-1.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 1000, '', '', 14, 1, '2017-05-20 08:55:22', '2017-05-20 08:55:22'),
(82, 'iPad Wi-Fi 32GB (2017)', 'ipad-wi-fi-32gb-2017', 8999000, '1495270636_636259592941458936_800wifi (1).jpg', 'dep', 'Trả góp 0%', 'Tặng Voucher 500.000đ mua Apple Watch/Mac', '', 200, '', '', 14, 1, '2017-05-20 08:57:16', '2017-05-20 08:57:16'),
(83, 'iPad Wi-Fi 128GB (2017)', 'ipad-wi-fi-128gb-2017', 10999000, '1495270754_636259507481410936_800wifi.jpg', 'dep', 'Trả góp 0%, Trả trước 7 triệu', 'Tặng Voucher 500.000đ mua Apple Watch/Mac', '', 200, '', '', 14, 1, '2017-05-20 08:59:14', '2017-05-20 08:59:14'),
(84, 'iPad Mini 4 Wi-Fi 4G 128GB', 'ipad-mini-4-wi-fi-4g-128gb', 13999000, '1495270847_636130793978307262_635875222241468552_ipad-mini-4-4G-Gold-5.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 300, '', '', 14, 1, '2017-05-20 09:00:47', '2017-05-20 09:00:47'),
(85, 'iPad Pro 9.7 Wi-Fi 32GB', 'ipad-pro-97-wi-fi-32gb', 14999000, '1495271024_636168958620829568_ipad-pro-97-wifi-gray-1.jpg', 'dep', 'Trả góp 0%, trả trước 6 triệu', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 500, '', '', 14, 1, '2017-05-20 09:03:44', '2017-05-20 09:03:44'),
(86, 'iPad Pro 9.7 Wi-Fi 4G 32GB', 'ipad-pro-97-wi-fi-4g-32gb', 1799900, '1495271094_636168958620829568_ipad-pro-97-wifi-gray-1.jpg', 'dep', 'Trả góp 0%, Trả trước 7 triệu', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 300, '', '', 14, 1, '2017-05-20 09:04:54', '2017-05-20 09:04:54'),
(87, 'iPad Pro 9.7 Wi-Fi 4G 256GB', 'ipad-pro-97-wi-fi-4g-256gb', 23999000, '1495271221_636168983990905316_ipad-pro-97-4G-gold-1.jpg', 'dep', 'Trả góp 0%, Trả trước 7 triệu', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', 'Tặng PMH Phụ Kiện 500,000đ', 300, '', '', 14, 1, '2017-05-20 09:07:01', '2017-05-20 09:07:01'),
(88, 'iPad Pro 12.9 inch Wi-Fi 32GB', 'ipad-pro-129-inch-wi-fi-32gb', 19999000, '1495271324_636172350183836742_apple-ipad-mini-2-white-1.jpg', 'dep', 'Trả góp 0%, Trả trước 7 triệu', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 500, '', '', 14, 1, '2017-05-20 09:08:44', '2017-05-20 09:08:44'),
(89, 'Asus ZenPad Z170CG 1A022A/1B014A', 'asus-zenpad-z170cg-1a022a1b014a', 2790000, '1495279283_635866551368009629_zenpad-170cg-den-1.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 500, '', '', 15, 1, '2017-05-20 11:21:23', '2017-05-20 11:21:23'),
(90, 'Asus ZenPad Z370CG', 'asus-zenpad-z370cg', 3990000, '1495279384_635755108693292581_asus-zenpad-7-z370c-z370cg-png.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 300, '', '', 15, 1, '2017-05-20 11:23:04', '2017-05-20 11:23:04'),
(91, 'Asus Zenpad 8 Z380', 'asus-zenpad-8-z380', 5990000, '1495279496_635941474749676332_z380KL-trang.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 300, '', '', 15, 1, '2017-05-20 11:24:56', '2017-05-20 11:24:56'),
(92, 'Asus Memo Pad 8 ME581CL', 'asus-memo-pad-8-me581cl', 5990000, '1495279594_635925158280879945_hong1.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 300, '', '', 15, 1, '2017-05-20 11:26:34', '2017-05-20 11:26:34'),
(93, 'Masstel Tab 710', 'masstel-tab-710', 1690000, '1495279735_636111893183631381_710den.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 1000, '', '', 16, 1, '2017-05-20 11:28:55', '2017-05-20 11:28:55'),
(94, 'Masstel Tab 825', 'masstel-tab-825', 2190000, '1495279823_636082630576870264_800x800-825s.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 300, '', '', 16, 1, '2017-05-20 11:30:23', '2017-05-20 11:30:23'),
(95, 'Masstel T705', 'masstel-t705', 1490000, '1495279889_635869822917147687_705xanh.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 300, '', '', 16, 1, '2017-05-20 11:31:29', '2017-05-20 11:31:29'),
(96, 'Masstel TAB 730', 'masstel-tab-730', 1790000, '1495279958_636066867157065296_00006812.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 200, '', '', 16, 1, '2017-05-20 11:32:38', '2017-05-20 11:32:38'),
(97, 'Masstel Tab 715', 'masstel-tab-715', 1890000, '1495280023_636083271364983039_800x800-715g.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 200, '', '', 16, 1, '2017-05-20 11:33:43', '2017-05-20 11:33:43'),
(98, 'Masstel Tab 815', 'masstel-tab-815', 2590000, '1495280110_635955487233902534_mt-815-chi-tiet.png', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 1000, '', '', 16, 1, '2017-05-20 11:35:10', '2017-05-20 11:35:10'),
(99, 'Lenovo Phab', 'lenovo-phab', 2990000, '1495280265_635875224972480398_lenovophabden-a.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 200, '', '', 18, 1, '2017-05-20 11:37:45', '2017-05-20 11:37:45'),
(100, 'Lenovo Phab 2 Plus', 'lenovo-phab-2-plus', 5990000, '1495280346_636174801220762876_Lenovo-Phab-2-Plus-849x800.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 200, '', '', 18, 1, '2017-05-20 11:39:06', '2017-05-20 11:39:06'),
(101, 'Lenovo Phab 2 Pro', 'lenovo-phab-2-pro', 11990000, '1495280489_636178262418239197_Lenovo-Phab-2-Pro-1.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 600, '', '', 18, 1, '2017-05-20 11:41:29', '2017-05-20 11:41:29'),
(102, 'Lenovo Yoga Book', 'lenovo-yoga-book', 12990000, '1495280557_636148075361411034_yogabook-1o.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 200, '', '', 18, 1, '2017-05-20 11:42:37', '2017-05-20 11:42:37'),
(103, 'Lenovo Tab 3 7 Essential', 'lenovo-tab-3-7-essential', 2099000, '1495280656_635991839594501106_lenovo-tab-3-7-1.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 200, '', '', 18, 1, '2017-05-20 11:44:16', '2017-05-20 11:44:16'),
(104, 'Lenovo Tab 2 A7-30', 'lenovo-tab-2-a7-30', 2490000, '1495280718_635866598675555272_lenovo-tablet-tab-2-a7-30-den-1.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 1000, '', '', 18, 1, '2017-05-20 11:45:18', '2017-05-20 11:45:18'),
(105, 'Lenovo Yoga Tab 3 8', 'lenovo-yoga-tab-3-8', 4990000, '1495280848_635991843326321645_yoga-1.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 500, '', '', 18, 1, '2017-05-20 11:47:28', '2017-05-20 11:47:28'),
(106, 'Lenovo Tab 3 7 inch', 'lenovo-tab-3-7-inch', 2699000, '1495280923_636150626589740976_lenovo-tab-3-7-inch.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 500, '', '', 18, 1, '2017-05-20 11:48:43', '2017-05-20 11:48:43'),
(107, 'Huawei MediaPad T1-7 Pro', 'huawei-mediapad-t1-7-pro', 2490000, '1495280993_635820586486295564_HuaweiT1-7Pro-png.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 1000, '', '', 17, 1, '2017-05-20 11:49:53', '2017-05-20 11:49:53'),
(108, 'Huawei MediaPad T1-8', 'huawei-mediapad-t1-8', 2990000, '1495281070_635869832582490921_Huawei-t18-1.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 300, '', '', 17, 1, '2017-05-20 11:51:10', '2017-05-20 11:51:10'),
(109, 'Huawei MediaPad T1 10', 'huawei-mediapad-t1-10', 3990000, '1495281128_636026467327981168_Untitled-1.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 200, '', '', 17, 1, '2017-05-20 11:52:08', '2017-05-20 11:52:08'),
(110, 'HUAWEI MediaPad M2 8.0 ', 'huawei-mediapad-m2-80', 5990000, '1495281221_636029837275216492_m2-5.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 1000, '', '', 17, 1, '2017-05-20 11:53:41', '2017-05-20 11:53:41'),
(111, 'HUAWEI MediaPad T2 7.0 Pro', 'huawei-mediapad-t2-70-pro', 3990000, '1495281313_636030523672252903_1.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 300, '', '', 17, 1, '2017-05-20 11:55:13', '2017-05-20 11:55:13'),
(112, 'Huawei MediaPad T1-A21L', 'huawei-mediapad-t1-a21l', 3990000, '1495281513_huawei-mediapad-t1-a21l-533b-400x533.png', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 300, '', '', 17, 1, '2017-05-20 11:58:33', '2017-05-20 11:58:33'),
(113, 'Huawei MediaPad T1 8.0', 'huawei-mediapad-t1-80', 2990000, '1495281609_huawei-mediapad-t1-80-2-400x460.png', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 500,000đ', '', 200, '', '', 17, 1, '2017-05-20 12:00:09', '2017-05-20 12:00:09'),
(114, 'Huawei MediaPad T1-701u', 'huawei-mediapad-t1-701u', 2090000, '1495281848_huawei-mediapad-t1-701u-400x460.png', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 200, '', '', 17, 1, '2017-05-20 12:04:08', '2017-05-20 12:04:08'),
(115, 'Asus Zenfone Go ZB690KG', 'asus-zenfone-go-zb690kg', 2590000, '1495281976_asus-zenfone-go-zb690kg-400-400x400.png', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 200, '', '', 15, 1, '2017-05-20 12:06:16', '2017-05-20 12:06:16'),
(116, 'Asus MeMo Pad 8 (Me180A) ', 'asus-memo-pad-8-me180a', 2990000, '1495285029_Asus_MeMo_Pad_HD_534123af8e2bb.jpg', 'dep', 'Trả góp 0%', 'Tặng Phiếu mua hàng Phụ Kiện 100,000đ', '', 300, '', '', 15, 1, '2017-05-20 12:51:40', '2017-05-20 12:57:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_details`
--

CREATE TABLE `product_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `cpu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `screen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vga` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exten_memmory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cam1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cam2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sim` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connect` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `os` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_details`
--

INSERT INTO `product_details` (`id`, `cpu`, `ram`, `screen`, `vga`, `storage`, `exten_memmory`, `cam1`, `cam2`, `sim`, `connect`, `pin`, `os`, `note`, `pro_id`, `created_at`, `updated_at`) VALUES
(1, 'Quad-core 2.3 GHz', '3 GB', '5.5 inch (1920 x 1080 pixels)', 'Apple A10', '256GB', 'không có', 'Dual 12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'iOS 10', 'Không có', 1, '2017-05-15 16:03:46', '2017-05-21 03:23:10'),
(2, 'Dual-core 1.8 GHz', '2 GB', '5.5 inch, 1080 x 1920 pixels', 'Apple A9', '32 GB', 'không có', '12.0 MP', '5.0MP', 'Không có', '', 'lithium-ion battery', 'iOS 10', 'Không có', 2, '2017-05-15 16:03:59', '2017-05-21 03:23:49'),
(3, 'Dual-core 1.8 GHz', '2 GB', '5.5 inch, 1080 x 1920 pixels', 'Apple ', '16 GB', 'không có', '5.0 MP', '12.0MP', 'Không có', '', 'Li-Ion', 'iOS', 'Không có', 3, '2017-05-16 12:07:58', '2017-05-16 12:07:58'),
(4, 'Apple A9 2 nhân 64-bit', '2 GB', '4.7 inch (1334 x 750 pixels)', 'Apple A9', '64 GB', 'không có', '12.0 MP', '5.0MP', 'Không có', '', 'Li-Ion', 'iOS', 'Không có', 4, '2017-05-16 12:13:06', '2017-05-16 12:13:06'),
(5, 'Dual-core 1.3Ghz', '1 GB', '4 inch (640 x 1136 pixels )', 'Apple A7', '16 GB', 'không có', '8 MP', '1.2 MP', 'Không có', '', 'Li-Ion', 'iOS', 'Không có', 5, '2017-05-16 12:23:35', '2017-05-21 03:35:08'),
(6, 'Apple A9 2 nhân 64-bit', '2 GB', '4.7 inch (1334 x 750 pixels)', 'Apple A9', '16 GB', 'không có', '12.0 MP', '5.0MP', 'Không có', '', 'Li-Ion', 'iOS 9', 'Không có', 6, '2017-05-16 12:27:09', '2017-05-16 12:27:09'),
(7, '1.4 GHz', '3 GB', '4.7 inch (1334 x 750 pixels)', 'Apple A10', '64 GB', 'không có', '8.0 MP', '1.2 MP', 'Không có', '', 'Li-Ion', 'iOS', 'Không có', 7, '2017-05-16 12:30:52', '2017-05-16 12:30:52'),
(8, 'Apple A9 2 nhân 64-bit', '8 GB', '5.5 inch (1920 x 1080 pixels)', 'Apple A10', '128 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'iOS 10', 'Không có', 8, '2017-05-16 12:35:33', '2017-05-16 12:35:33'),
(9, 'Octa-core', '4 GB', '6.0 inch (1080 x 1920 pixels)', 'Qualcomm Snapdragon 653', '64 GB', 'không có', '16.0 MP', 'Dual 16.0 MP + 8.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 9, '2017-05-16 13:06:02', '2017-05-21 03:32:49'),
(10, 'Octa-core 1.51 Ghz', '4 GB', '5.5 inch (1920 x 1080 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '13.0 MP', 'Dual 16.0 MP + 8.0 MP', 'Không có', '', 'Li-Ion', 'ColorOS 3.0, nền tảng Android 6.0', 'Không có', 10, '2017-05-16 13:08:53', '2017-05-21 03:33:15'),
(11, 'Octa-core 1.5GHz', '4 GB', '5.5 inch (1280 x 720 pixels)', 'MediaTek MT6750', '64 GB', 'không có', '13.0MP', '16.0MP', 'Không có', '', 'Li-Ion', 'ColorOS 3.0, nền tảng Android 5.1', 'Không có', 11, '2017-05-16 13:12:01', '2017-05-21 03:37:28'),
(12, 'Quad-core 2.3 GHz', '8 GB', '5.5 inch (1920 x 1080 pixels)', 'Media Tek MT6750', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 12, '2017-05-16 13:14:38', '2017-05-16 13:14:38'),
(13, 'Quad-core 2.3 GHz', '8 GB', '4.7 inch (1334 x 750 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 13, '2017-05-16 13:16:20', '2017-05-16 13:16:20'),
(14, 'Quad-core 2.3 GHz', '8 GB', '5.5 inch (1920 x 1080 pixels)', 'Qualcomm Snapdragon 653', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 14, '2017-05-16 13:18:09', '2017-05-16 13:18:09'),
(15, 'Quad-core 2.3 GHz', '4 GB', '5.5 inch (1920 x 1080 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 15, '2017-05-16 13:21:07', '2017-05-16 13:21:07'),
(16, 'Quad-core 2.3 GHz', '4 GB', '4.7 inch (1334 x 750 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 16, '2017-05-16 13:30:25', '2017-05-16 13:33:11'),
(17, 'Quad-core 2.3 GHz', '8 GB', '4.0 inch (480 x 800 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 17, '2017-05-16 13:37:11', '2017-05-16 13:37:11'),
(18, 'Quad-core 2.3 GHz', '8 GB', '4.7 inch (1334 x 750 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 18, '2017-05-16 13:40:07', '2017-05-16 13:40:07'),
(19, 'Quad-core 2.3 GHz', '8 GB', '5.5 inch, 1080 x 1920 pixels', 'MediaTek MT6750T', '8 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 19, '2017-05-16 13:44:07', '2017-05-16 13:44:07'),
(20, 'Dual-core 1.8 GHz', '8 GB', '5.5 inch, 1080 x 1920 pixels', 'MediaTek MT6750T', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 20, '2017-05-16 13:45:59', '2017-05-16 13:45:59'),
(21, 'Quad-core 2.3 GHz', '8 GB', '5.5 inch, 1080 x 1920 pixels', 'MediaTek MT6750T', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 21, '2017-05-16 13:48:00', '2017-05-16 13:48:00'),
(22, 'Quad-core 2.3 GHz', '8 GB', '4.7 inch (1334 x 750 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 22, '2017-05-16 13:50:06', '2017-05-16 13:50:06'),
(23, 'Dual-core 1.8 GHz', '8 GB', '4.7 inch (1334 x 750 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 23, '2017-05-16 13:52:31', '2017-05-16 13:52:31'),
(24, 'Dual-core 1.8 GHz', '8 GB', '5.5 inch (1920 x 1080 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 24, '2017-05-16 13:55:32', '2017-05-16 13:55:32'),
(25, 'Dual-core 1.8 GHz', '8 GB', '5.8 inch Super AMOLED (2560 x 1440 pixel)', 'MediaTek MT6750T', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 25, '2017-05-16 13:58:17', '2017-05-21 03:33:56'),
(26, 'Quad-core 2.3 GHz', '8 GB', '5.5 inch (1920 x 1080 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 26, '2017-05-16 14:01:30', '2017-05-21 03:35:54'),
(27, 'Dual-core 1.8 GHz', '8 GB', '5.5 inch (1920 x 1080 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 27, '2017-05-16 14:05:10', '2017-05-19 13:07:30'),
(28, 'Quad-core 2.3 GHz', '8 GB', '5.5 inch (1920 x 1080 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 28, '2017-05-16 14:10:31', '2017-05-21 03:34:18'),
(29, 'Quad-core 2.3 GHz', '8 GB', '4.7 inch (1334 x 750 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 29, '2017-05-16 14:13:36', '2017-05-21 03:34:35'),
(30, 'Dual-Core', '8 GB', '5.5 inch (1920 x 1080 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 30, '2017-05-16 14:15:02', '2017-05-16 14:15:02'),
(31, '1.9 GHz', '8 GB', 'Super AMOLED, 5.7\", Full HD', 'Exynos 7880', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 31, '2017-05-16 14:18:15', '2017-05-16 14:18:15'),
(32, 'Octa-core 1.6 GHz', '8 GB', '5.2 inch (1080 x 1920 pixels )', 'Exynos 7580 8 nhân 64-bit', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 32, '2017-05-16 14:20:56', '2017-05-21 03:38:52'),
(33, 'Quad-core (2x2.15 GHz Kryo & 2x1.6 GHz Kryo)', '8 GB', '5.2 inch (1080 x 1920 pixels )', 'MediaTek MT6750T', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 33, '2017-05-16 14:24:59', '2017-05-16 14:24:59'),
(34, 'Quad-core 2.3 GHz', '8 GB', '4.7 inch (1334 x 750 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '12.0 MP', '5.0MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 34, '2017-05-16 14:26:47', '2017-05-16 14:26:47'),
(35, 'Dual-Core', '4 GB', '', 'Qualcomm Snapdragon 653', '8 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 35, '2017-05-16 14:29:20', '2017-05-16 14:29:20'),
(36, 'Dual-core 1.8 GHz', '8 GB', '5.5 inch (1920 x 1080 pixels)', 'Qualcomm Snapdragon 653', '8 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 36, '2017-05-16 14:31:06', '2017-05-16 14:31:06'),
(37, 'Dual-Core', '4 GB', '5.5 inch, 1080 x 1920 pixels', 'MediaTek MT6750T', '8 GB', 'không có', '8 MP', '1.2 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 37, '2017-05-16 14:37:27', '2017-05-16 14:37:27'),
(38, 'Dual-Core', '8 GB', '6.0 inch (1080 x 1920 pixels)', 'MediaTek MT6750T', '8 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 38, '2017-05-16 14:41:35', '2017-05-16 14:41:35'),
(39, 'Dual - Core', '8 GB', '5.5 inch, 1080 x 1920 pixels', 'Qualcomm Snapdragon 653', '16 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 39, '2017-05-16 14:43:31', '2017-05-16 14:43:31'),
(40, 'Dual-core 1.8 GHz', '8 GB', '5.5 inch (1920 x 1080 pixels)', 'Qualcomm Snapdragon 653', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 40, '2017-05-16 14:46:52', '2017-05-21 03:39:07'),
(42, 'Intel', '8 GB', '15.6 inch', 'NVIDIA Geforce 930MX', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 42, '2017-05-16 14:59:29', '2017-05-21 03:39:40'),
(43, 'Intel', '4 GB', '13.3 inch', 'NVIDIA Geforce 930MX', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'Mac OS X', 'Không có', 43, '2017-05-16 15:02:12', '2017-05-16 15:02:12'),
(44, 'Intel', '4 GB', '13.3 inch', 'NVIDIA® GeForce® 940M', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', '', 'Không có', 44, '2017-05-16 15:04:19', '2017-05-16 15:04:19'),
(45, 'Intel', '4 GB', '13.3 inch', 'NVIDIA Geforce 930MX', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', '', 'Không có', 45, '2017-05-16 15:07:14', '2017-05-21 03:46:52'),
(46, 'Intel', '4 GB', '13 inch', 'NVIDIA Geforce 930MX', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', '', 'Không có', 46, '2017-05-16 15:11:17', '2017-05-16 15:11:17'),
(47, 'Intel', '3 GB', '5.5 inch, 1080 x 1920 pixels', 'MediaTek MT6750T', '32 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', '', 'Không có', 47, '2017-05-16 15:12:57', '2017-05-16 15:12:57'),
(48, 'Intel', '2 GB', '13.3 inch', 'MediaTek MT6750T', '32 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-ion battery', '', 'Không có', 48, '2017-05-16 15:14:10', '2017-05-21 03:40:18'),
(49, 'Intel', '4 GB', '13 inch', 'Qualcomm Snapdragon 653', '8 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', '', 'Không có', 49, '2017-05-16 15:15:57', '2017-05-16 15:15:57'),
(50, 'Intel', '8 GB', '5.5 inch (1920 x 1080 pixels)', 'Apple A10', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', '', 'Không có', 50, '2017-05-16 15:24:49', '2017-05-16 15:24:49'),
(51, 'Intel', '8 GB', '13.3 inch', 'MediaTek MT6750T', '256 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'OS X Yosemite', 'Không có', 51, '2017-05-16 15:27:10', '2017-05-21 03:40:40'),
(52, 'Intel', '8 GB', '13.3 inch', 'NVIDIA Geforce 930MX', '256 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-ion battery', 'Mac OS X', 'Không có', 52, '2017-05-16 15:29:44', '2017-05-16 15:29:44'),
(53, 'Intel', '8 GB', '13.3 inch', 'Apple A10', '256GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-ion battery', 'Mac OS X', 'Không có', 53, '2017-05-16 15:31:55', '2017-05-16 15:31:55'),
(54, 'Intel', '8 GB', '13.3 inch', 'Apple A10', '256GB', 'không có', 'không có', 'không có', 'Không có', '', 'Li-Ion', 'Mac OS X', 'Không có', 54, '2017-05-16 15:34:04', '2017-05-16 15:34:04'),
(55, 'Intel', '8 GB', '13.3 inch', 'Apple A10', '256GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'Mac OS X', 'Không có', 55, '2017-05-16 15:35:58', '2017-05-21 03:46:23'),
(56, 'Intel', '8 GB', '13 inch', 'Apple A10', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'Mac OS X', 'Không có', 56, '2017-05-16 15:37:46', '2017-05-16 15:37:46'),
(57, 'Intel', '8 GB', '13.3 inch', 'Apple A10', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'Mac OS X', 'Không có', 57, '2017-05-16 15:41:04', '2017-05-21 03:46:04'),
(58, 'Intel', '8 GB', '13.3 inch', 'MediaTek MT6750T', '256GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 58, '2017-05-16 15:45:28', '2017-05-16 15:45:28'),
(59, 'Intel', '8 GB', '13.3 inch', 'MediaTek MT6750T', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 59, '2017-05-16 15:55:40', '2017-05-16 15:55:40'),
(60, 'Intel', '8 GB', '13.3 inch', 'Qualcomm Snapdragon 653', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 60, '2017-05-16 16:07:54', '2017-05-21 03:41:09'),
(61, 'Intel', '8 GB', '13 inch', 'NVIDIA Geforce 930MX', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 61, '2017-05-16 16:09:47', '2017-05-16 16:09:47'),
(62, 'Intel', '8 GB', '13.3 inch', 'Qualcomm Snapdragon 653', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 62, '2017-05-16 16:12:00', '2017-05-16 16:12:00'),
(63, 'Intel', '8 GB', '13.3 inch', 'NVIDIA Geforce 930MX', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 63, '2017-05-16 16:13:24', '2017-05-21 03:41:26'),
(64, 'Intel', '8 GB', '13.3 inch', 'NVIDIA Geforce 930MX', '256GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-ion battery', 'Free DOS', 'Không có', 64, '2017-05-16 16:18:56', '2017-05-16 16:18:56'),
(65, 'Intel', '8 GB', '13 inch', 'NVIDIA Geforce 930MX', '256GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-ion battery', 'Free DOS', 'Không có', 65, '2017-05-16 16:20:19', '2017-05-16 16:20:19'),
(66, 'Intel', '8 GB', '13.3 inch', 'nVidia Geforce 820M', '256GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 66, '2017-05-16 16:22:27', '2017-05-21 03:44:54'),
(67, 'Intel', '8 GB', '13 inch', 'MediaTek MT6750T', '256GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 67, '2017-05-16 16:24:13', '2017-05-21 03:45:11'),
(68, 'Intel', '8 GB', '13 inch', 'Qualcomm Snapdragon 653', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-ion battery', 'Free DOS', 'Không có', 68, '2017-05-16 16:25:36', '2017-05-16 16:25:36'),
(69, 'Intel', '8 GB', '12 inch', 'MediaTek MT6750T', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 69, '2017-05-16 16:26:59', '2017-05-16 16:26:59'),
(70, 'Intel', '8 GB', '13.3 inch', 'MediaTek MT6750T', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 70, '2017-05-16 16:28:21', '2017-05-16 16:28:21'),
(71, 'Intel', '8 GB', '13.3 inch', 'Qualcomm Snapdragon 653', '256 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-ion battery', 'Free DOS', 'Không có', 71, '2017-05-16 16:29:48', '2017-05-16 16:29:48'),
(72, 'Intel', '8 GB', '13.3 inch', 'Qualcomm Snapdragon 653', '256GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 72, '2017-05-16 16:31:37', '2017-05-16 16:31:37'),
(73, 'Intel', '4 GB', '13.3 inch', 'NVIDIA Geforce 930MX', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'lithium-polymer', 'Android 6.0 (Marshmallow)', 'Không có', 73, '2017-05-20 08:42:37', '2017-05-20 08:42:37'),
(74, 'Intel', '4 GB', '13 inch', 'MediaTek MT6750T', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'lithium-polymer', 'Android 6.0 (Marshmallow)', 'Không có', 74, '2017-05-20 08:44:19', '2017-05-20 08:44:19'),
(75, 'Intel', '8 GB', '13 inch', 'MediaTek MT6750T', '256GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'lithium-polymer', 'Android 6.0 (Marshmallow)', 'Không có', 75, '2017-05-20 08:45:55', '2017-05-20 08:45:55'),
(76, 'Intel', '4 GB', '13.3 inch', 'Qualcomm Snapdragon 653', '32 GB', 'không có', 'không có', 'không có', 'Không có', '', 'Không có', 'Android 6.0 (Marshmallow)', 'Không có', 76, '2017-05-20 08:47:23', '2017-05-20 08:47:23'),
(77, 'Intel', '8 GB', '13.3 inch', 'Qualcomm Snapdragon 653', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-ion battery', 'Android 6.0 (Marshmallow)', 'Không có', 77, '2017-05-20 08:48:25', '2017-05-20 08:48:25'),
(78, 'Intel', '8 GB', '13 inch', 'MediaTek MT6750T', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-ion battery', 'Android 6.0 (Marshmallow)', 'Không có', 78, '2017-05-20 08:50:13', '2017-05-21 03:43:18'),
(79, 'Intel', '8 GB', '13 inch', 'Qualcomm Snapdragon 653', '256 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-ion battery', 'Android 6.0 (Marshmallow)', 'Không có', 79, '2017-05-20 08:51:44', '2017-05-20 08:51:44'),
(80, 'Intel', '8 GB', '13.3 inch', 'NVIDIA Geforce 930MX', '64 GB', 'không có', 'không có', 'không có', 'Không có', '', 'lithium-polymer', 'Android 6.0 (Marshmallow)', 'Không có', 80, '2017-05-20 08:52:45', '2017-05-21 03:43:00'),
(81, 'Dual-core 1.3 GHz', '2 GB', 'Retina công nghệ IPS, 7.9 inch', 'PowerVR G6430', '64 GB', 'không có', '5.0 MP', '1.2 MP', 'Không có', '', 'Li-Ion', 'iOS', 'Không có', 81, '2017-05-20 08:55:22', '2017-05-20 08:55:22'),
(82, 'Intel', '3 GB', '5.5 inch (1920 x 1080 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '8 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'iOS', 'Không có', 82, '2017-05-20 08:57:16', '2017-05-20 08:57:16'),
(83, 'Quad-core 2.3 GHz', '4 GB', '4.7 inch (1334 x 750 pixels)', 'Qualcomm Snapdragon 653', '64 GB', 'không có', '5.0 MP', '1.2 MP', 'Không có', '', 'lithium-ion battery', 'iOS', 'Không có', 83, '2017-05-20 08:59:14', '2017-05-20 08:59:14'),
(84, 'Quad-core 2.3 GHz', '4 GB', '4.7 inch (1334 x 750 pixels)', 'MediaTek MT6750T', '256GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'iOS 10', 'Không có', 84, '2017-05-20 09:00:47', '2017-05-20 09:00:47'),
(85, 'Dual-core 1.8 GHz', '4 GB', '4.7 inch (1334 x 750 pixels)', 'NVIDIA Geforce 930MX', '64 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'lithium-ion battery', 'iOS', 'Không có', 85, '2017-05-20 09:03:44', '2017-05-20 09:03:44'),
(86, 'Quad-core 2.3 GHz', '4 GB', '5.5 inch (1920 x 1080 pixels)', 'Apple A10', '64 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'lithium-polymer', 'iOS 10', 'Không có', 86, '2017-05-20 09:04:55', '2017-05-20 09:04:55'),
(87, 'Apple A9 2 nhân 64-bit', '8 GB', '4.7 inch (1334 x 750 pixels)', 'Qualcomm Snapdragon 653', '64 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'Li-Ion', 'iOS 10', 'Không có', 87, '2017-05-20 09:07:01', '2017-05-20 09:07:01'),
(88, 'Dual-core 1.8 GHz', '4 GB', '5.5 inch (1920 x 1080 pixels)', 'Apple A10', '64 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'lithium-polymer', 'iOS 10', 'Không có', 88, '2017-05-20 09:08:44', '2017-05-20 09:08:44'),
(89, 'Dual-Core', '4 GB', '5.5 inch, 1080 x 1920 pixels', 'MediaTek MT6750T', '8 GB', 'không có', '5.0 MP', '1.2 MP', 'Không có', '', 'Li-Ion', 'iOS', 'Không có', 89, '2017-05-20 11:21:23', '2017-05-20 11:21:23'),
(90, 'Quad-core 2.3 GHz', '4 GB', '4.7 inch (1334 x 750 pixels)', 'NVIDIA Geforce 930MX', '64 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'lithium-ion battery', 'Android 6.0 (Marshmallow)', 'Không có', 90, '2017-05-20 11:23:04', '2017-05-20 11:23:04'),
(91, 'Apple A9 2 nhân 64-bit', '4 GB', '4.7 inch (1334 x 750 pixels)', 'Qualcomm Snapdragon 653', '16 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 91, '2017-05-20 11:24:56', '2017-05-20 11:24:56'),
(92, 'Dual - Core', '3 GB', '5.5 inch (1920 x 1080 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 92, '2017-05-20 11:26:34', '2017-05-20 11:26:34'),
(93, '7.0 inch, IPS 1024 x 600 Pixels', '2 GB', '5.5 inch (1920 x 1080 pixels)', 'MediaTek MT6750T', '8 GB', 'không có', '5.0 MP', '1.2 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 93, '2017-05-20 11:28:55', '2017-05-20 11:28:55'),
(94, 'Dual-core 1.8 GHz', '2 GB', '4.7 inch (1334 x 750 pixels)', 'Qualcomm Snapdragon 653', '8 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 94, '2017-05-20 11:30:23', '2017-05-20 11:30:23'),
(95, 'Quad-core 2.3 GHz', '4 GB', '4.7 inch (1334 x 750 pixels)', 'Qualcomm Snapdragon 653', '64 GB', 'không có', '5.0 MP', '1.2 MP', 'Không có', '', 'lithium-polymer', 'Android 6.0 (Marshmallow)', 'Không có', 95, '2017-05-20 11:31:29', '2017-05-20 11:31:29'),
(96, 'Dual - Core', '3 GB', '4.7 inch (1334 x 750 pixels)', 'NVIDIA Geforce 930MX', '8 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 96, '2017-05-20 11:32:38', '2017-05-20 11:32:38'),
(97, 'Dual-Core', '3 GB', '5.5 inch, 1080 x 1920 pixels', 'NVIDIA Geforce 930MX', '8 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'lithium-ion battery', 'Android 6.0 (Marshmallow)', 'Không có', 97, '2017-05-20 11:33:43', '2017-05-20 11:33:43'),
(98, 'Quad-core 2.3 GHz', '3 GB', '5.5 inch (1920 x 1080 pixels)', 'NVIDIA Geforce 930MX', '8 GB', 'không có', '5.0 MP', '1.2 MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 98, '2017-05-20 11:35:10', '2017-05-20 11:35:10'),
(99, 'Quad-core 2.3 GHz', '3 GB', '4.7 inch (1334 x 750 pixels)', 'PowerVR G6430', '8 GB', 'không có', '5.0 MP', '1.2 MP', 'Không có', '', 'lithium-polymer', 'Android 6.0 (Marshmallow)', 'Không có', 99, '2017-05-20 11:37:45', '2017-05-20 11:37:45'),
(100, 'Dual-core 1.8 GHz', '2 GB', '4.7 inch (1334 x 750 pixels)', 'NVIDIA Geforce 930MX', '8 GB', 'không có', '5.0 MP', '1.2 MP', 'Không có', '', 'lithium-polymer', 'Android 6.0 (Marshmallow)', 'Không có', 100, '2017-05-20 11:39:06', '2017-05-20 11:39:06'),
(101, 'Dual-core 1.8 GHz', '4 GB', '5.5 inch (1920 x 1080 pixels)', 'Qualcomm Snapdragon 653', '8 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'Li-Ion', 'Free DOS', 'Không có', 101, '2017-05-20 11:41:29', '2017-05-20 11:41:29'),
(102, 'Dual-core 1.8 GHz', '4 GB', '4.7 inch (1334 x 750 pixels)', 'Qualcomm Snapdragon 653', '8 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'lithium-polymer', 'Android 6.0 (Marshmallow)', 'Không có', 102, '2017-05-20 11:42:37', '2017-05-20 11:42:37'),
(103, 'Quad-core 2.3 GHz', '4 GB', '4.7 inch (1334 x 750 pixels)', 'NVIDIA Geforce 930MX', '8 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'Li-Ion', 'Free DOS', 'Không có', 103, '2017-05-20 11:44:16', '2017-05-20 11:44:16'),
(104, 'Quad-core 2.3 GHz', '4 GB', '4.7 inch (1334 x 750 pixels)', 'MediaTek MT6750T', '8 GB', 'không có', '5.0 MP', '1.2 MP', 'Không có', '', 'lithium-polymer', 'Android 6.0 (Marshmallow)', 'Không có', 104, '2017-05-20 11:45:18', '2017-05-20 11:45:18'),
(105, 'Dual - Core', '4 GB', '4.7 inch (1334 x 750 pixels)', 'Qualcomm Snapdragon 653', '32 GB', 'không có', '12.0 MP', '7.0 MP', 'Không có', '', 'Li-Ion', 'Free DOS', 'Không có', 105, '2017-05-20 11:47:28', '2017-05-20 11:47:28'),
(106, 'Dual-core 1.8 GHz', '4 GB', '4.7 inch (1334 x 750 pixels)', 'Qualcomm Snapdragon 653', '64 GB', 'không có', '12.0 MP', '5.0MP', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 106, '2017-05-20 11:48:43', '2017-05-20 11:48:43'),
(107, 'Dual-core 1.8 GHz', '8 GB', '5.5 inch (1920 x 1080 pixels)', 'MediaTek MT6750T', '64 GB', 'không có', '8 MP', '1.2 MP', 'Không có', '', 'Li-Ion', 'Free DOS', 'Không có', 107, '2017-05-20 11:49:53', '2017-05-20 11:49:53'),
(108, 'Quad-core 2.3 GHz', '4 GB', '4.7 inch (1334 x 750 pixels)', 'Qualcomm Snapdragon 653', '8 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'lithium-ion battery', 'Free DOS', 'Không có', 108, '2017-05-20 11:51:10', '2017-05-20 11:51:10'),
(109, 'Dual-core 1.8 GHz', '8 GB', '4.7 inch (1334 x 750 pixels)', 'MediaTek MT6750T', '8 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'Li-Ion', 'Android 6.0 (Marshmallow)', 'Không có', 109, '2017-05-20 11:52:08', '2017-05-20 11:52:08'),
(110, 'Dual-Core', '4 GB', '5.5 inch (1920 x 1080 pixels)', 'NVIDIA Geforce 930MX', '8 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 110, '2017-05-20 11:53:41', '2017-05-20 11:53:41'),
(111, 'Quad-core 2.3 GHz', '4 GB', '5.5 inch, 1080 x 1920 pixels', 'Qualcomm Snapdragon 653', '256GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 111, '2017-05-20 11:55:13', '2017-05-20 11:55:13'),
(112, 'Dual-core 1.8 GHz', '4 GB', '4.7 inch (1334 x 750 pixels)', 'Qualcomm Snapdragon 653', '8 GB', 'không có', '12.0 MP', '5.0MP', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 112, '2017-05-20 11:58:33', '2017-05-20 11:58:33'),
(113, 'Quad-core 2.3 GHz', '4 GB', '5.5 inch (1920 x 1080 pixels)', 'MediaTek MT6750T', '8 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'Li-Ion', 'Free DOS', 'Không có', 113, '2017-05-20 12:00:09', '2017-05-20 12:00:09'),
(114, 'Quad-core 2.3 GHz', '4 GB', '4.7 inch (1334 x 750 pixels)', 'NVIDIA Geforce 930MX', '8 GB', 'không có', '8 MP', '1.2 MP', 'Không có', '', 'lithium-polymer', 'Android 6.0 (Marshmallow)', 'Không có', 114, '2017-05-20 12:04:08', '2017-05-20 12:04:08'),
(115, 'Dual-core 1.8 GHz', '4 GB', '4.7 inch (1334 x 750 pixels)', 'Qualcomm Snapdragon 653', '8 GB', 'không có', '8 MP', '5.0MP', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 115, '2017-05-20 12:06:16', '2017-05-20 12:06:16'),
(116, 'Quad-core 2.3 GHz', '4 GB', '4.7 inch (1334 x 750 pixels)', 'MediaTek MT6750T', '8 GB', 'không có', '8 MP', '7.0 MP', 'Không có', '', 'lithium-polymer', 'Free DOS', 'Không có', 116, '2017-05-20 12:51:41', '2017-05-20 12:57:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_imgs`
--

CREATE TABLE `product_imgs` (
  `id` int(10) UNSIGNED NOT NULL,
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_imgs`
--

INSERT INTO `product_imgs` (`id`, `images`, `pro_id`, `created_at`, `updated_at`) VALUES
(1, '1494935879_636159465562964968_ip7p-jet-3.jpg', 1, '2017-05-16 11:57:59', '2017-05-16 11:57:59'),
(2, '1494935879_636159465566553014_ip7p-jet-2.jpg', 1, '2017-05-16 11:57:59', '2017-05-16 11:57:59'),
(3, '1494936141_636172339809600948_apple-Iphone-6s-gold-2.jpg', 2, '2017-05-16 12:02:21', '2017-05-16 12:02:21'),
(4, '1494936141_636172339809912958_apple-Iphone-6s-gold-3.jpg', 2, '2017-05-16 12:02:21', '2017-05-16 12:02:21'),
(5, '1494936478_635871541444489616_iphone-6s-gray-2.jpg', 3, '2017-05-16 12:07:58', '2017-05-16 12:07:58'),
(6, '1494936478_635871541445956783_iphone-6s-gray-3.jpg', 3, '2017-05-16 12:07:58', '2017-05-16 12:07:58'),
(7, '1494936478_635871541448000347_iphone-6s-gray-4.jpg', 3, '2017-05-16 12:07:58', '2017-05-16 12:07:58'),
(8, '1494936786_636131729511263808_635870816414268233_iphone-6s-silver-3.jpg', 4, '2017-05-16 12:13:06', '2017-05-16 12:13:06'),
(9, '1494936786_636131729512511824_635870816415267000_iphone-6s-silver-4.jpg', 4, '2017-05-16 12:13:06', '2017-05-16 12:13:06'),
(10, '1494937415_636168024426680011_635869123778242011_iphone-5s-3.jpg', 5, '2017-05-16 12:23:35', '2017-05-16 12:23:35'),
(11, '1494937415_636168024426680011_635869123780271896_iphone-5s-4.jpg', 5, '2017-05-16 12:23:35', '2017-05-16 12:23:35'),
(12, '1494937415_636168024427147996_635869123776212126_iphone-5s-2.jpg', 5, '2017-05-16 12:23:35', '2017-05-16 12:23:35'),
(13, '1494937629_636130139041165540_635870812690769115_iphone-6s-gray-1.jpg', 6, '2017-05-16 12:27:09', '2017-05-16 12:27:09'),
(14, '1494937629_636130139044095833_635870812697019075_iphone-6s-gray-4.jpg', 6, '2017-05-16 12:27:09', '2017-05-16 12:27:09'),
(15, '1494937629_636130139044095833_635870812697019075_iphone-6s-gray-4.jpg', 6, '2017-05-16 12:27:09', '2017-05-16 12:27:09'),
(16, '1494937852_636252705859182520_iphone6-32GB-1.jpg', 7, '2017-05-16 12:30:52', '2017-05-16 12:30:52'),
(17, '1494937852_636172339809912958_apple-Iphone-6s-gold-3.jpg', 7, '2017-05-16 12:30:52', '2017-05-16 12:30:52'),
(18, '1494937852_636252839055010664_iphone6-32GB-gold-sau.jpg', 7, '2017-05-16 12:30:52', '2017-05-16 12:30:52'),
(19, '1494938133_636159465566553014_ip7p-jet-2.jpg', 8, '2017-05-16 12:35:33', '2017-05-16 12:35:33'),
(20, '1494938133_636159465562964968_ip7p-jet-3.jpg', 8, '2017-05-16 12:35:33', '2017-05-16 12:35:33'),
(21, '1494939962_636259638278802936_f3-plus-vang-1.jpg', 9, '2017-05-16 13:06:02', '2017-05-16 13:06:02'),
(22, '1494939962_636259640723478936_f3-plus-vang-2.jpg', 9, '2017-05-16 13:06:02', '2017-05-16 13:06:02'),
(23, '1494939962_636259640883534936_f3-plus-vang-3.jpg', 9, '2017-05-16 13:06:02', '2017-05-16 13:06:02'),
(24, '1494939962_636259641071046936_f3-plus-vang-5.jpg', 9, '2017-05-16 13:06:02', '2017-05-16 13:06:02'),
(25, '1494940133_636304456502116922_800-2.jpg', 10, '2017-05-16 13:08:53', '2017-05-16 13:08:53'),
(26, '1494940133_636304456642359124_800-3.jpg', 10, '2017-05-16 13:08:53', '2017-05-16 13:08:53'),
(27, '1494940134_636304456822068820_800-4.jpg', 10, '2017-05-16 13:08:54', '2017-05-16 13:08:54'),
(28, '1494940322_636222505897590869_f1s-b.jpg', 11, '2017-05-16 13:12:02', '2017-05-16 13:12:02'),
(29, '1494940322_636222506137676408_f1s-c.jpg', 11, '2017-05-16 13:12:02', '2017-05-16 13:12:02'),
(30, '1494940322_636172339809912958_apple-Iphone-6s-gold-3.jpg', 11, '2017-05-16 13:12:02', '2017-05-16 13:12:02'),
(31, '1494940478_636155182411859298_a39-4.jpg', 12, '2017-05-16 13:14:38', '2017-05-16 13:14:38'),
(32, '1494940479_636155182613723298_a39-3.jpg', 12, '2017-05-16 13:14:39', '2017-05-16 13:14:39'),
(33, '1494940479_636155182838519298_a39-5.jpg', 12, '2017-05-16 13:14:39', '2017-05-16 13:14:39'),
(34, '1494940580_636171478489745001_OPPO-A37-gold-1.jpg', 13, '2017-05-16 13:16:20', '2017-05-16 13:16:20'),
(35, '1494940580_636171478491773066_OPPO-A37-gold.jpg', 13, '2017-05-16 13:16:20', '2017-05-16 13:16:20'),
(36, '1494940580_636171478492709096_OPPO-A37-gold-4.jpg', 13, '2017-05-16 13:16:20', '2017-05-16 13:16:20'),
(37, '1494940690_635868989969944342_neo7-b2.jpg', 14, '2017-05-16 13:18:10', '2017-05-16 13:18:10'),
(38, '1494940690_635868989971818766_neo7-b3.jpg', 14, '2017-05-16 13:18:10', '2017-05-16 13:18:10'),
(39, '1494940690_635868989975723816_neo7-b5.jpg', 14, '2017-05-16 13:18:10', '2017-05-16 13:18:10'),
(40, '1494940867_635901070388100974_02.jpg', 15, '2017-05-16 13:21:07', '2017-05-16 13:21:07'),
(41, '1494940867_635901070390860779_03.jpg', 15, '2017-05-16 13:21:07', '2017-05-16 13:21:07'),
(42, '1494940867_635901070392516701_04.jpg', 15, '2017-05-16 13:21:07', '2017-05-16 13:21:07'),
(43, '1494940867_635901084640019071_05.jpg', 15, '2017-05-16 13:21:07', '2017-05-16 13:21:07'),
(46, '1494941592_635890746545903486_neo5-w2.jpg', 16, '2017-05-16 13:33:12', '2017-05-16 13:33:12'),
(47, '1494941592_635890746549804461_neo5-w3.jpg', 16, '2017-05-16 13:33:12', '2017-05-16 13:33:12'),
(48, '1494941831_nokia-lumia-520-id15741.jpg', 17, '2017-05-16 13:37:11', '2017-05-16 13:37:11'),
(49, '1494941831_nokia-lumia-520-id15742.jpg', 17, '2017-05-16 13:37:11', '2017-05-16 13:37:11'),
(50, '1494941831_nokia-lumia-520-id15743.jpg', 17, '2017-05-16 13:37:11', '2017-05-16 13:37:11'),
(51, '1494941831_nokia-lumia-520-id15744.jpg', 17, '2017-05-16 13:37:11', '2017-05-16 13:37:11'),
(52, '1494943097_636264877891010687_800.jpg', 25, '2017-05-16 13:58:17', '2017-05-16 13:58:17'),
(53, '1494943097_636264877975408310_800phai.jpg', 25, '2017-05-16 13:58:17', '2017-05-16 13:58:17'),
(54, '1494943097_636264877975408310_800trai.jpg', 25, '2017-05-16 13:58:17', '2017-05-16 13:58:17'),
(55, '1494943290_636184522417200689_samsung-galaxy-s7-edge-black-pearl-2.jpg', 26, '2017-05-16 14:01:30', '2017-05-16 14:01:30'),
(56, '1494943290_636185456421654641_Samsung-S7-Edge-Black-Pearl-2.jpg', 26, '2017-05-16 14:01:30', '2017-05-16 14:01:30'),
(57, '1494943290_636185456421810655_Samsung-S7-Edge-Black-Pearl-4.jpg', 26, '2017-05-16 14:01:30', '2017-05-16 14:01:30'),
(58, '1494943510_636186286968225178_amsung-S7-Edge-Blue-Coral-3.jpg', 27, '2017-05-16 14:05:11', '2017-05-16 14:05:11'),
(59, '1494943511_636198104751087597_636186286968225178_amsung-S7-Edge-Blue-Coral-2.jpg', 27, '2017-05-16 14:05:11', '2017-05-16 14:05:11'),
(60, '1494943511_636198104751087597_636186286968225178_amsung-S7-Edge-Blue-Coral-4.jpg', 27, '2017-05-16 14:05:11', '2017-05-16 14:05:11'),
(61, '1494943831_635918163289949185_s7e-g2.jpg', 28, '2017-05-16 14:10:31', '2017-05-16 14:10:31'),
(62, '1494943831_635918163462689185_s7e-g3.jpg', 28, '2017-05-16 14:10:31', '2017-05-16 14:10:31'),
(63, '1494943831_635918163463679185_s7e-g4.jpg', 28, '2017-05-16 14:10:31', '2017-05-16 14:10:31'),
(64, '1494943831_635918163660339185_s7e-g5.jpg', 28, '2017-05-16 14:10:31', '2017-05-16 14:10:31'),
(65, '1494944016_635854272592059495_note5-g2.jpg', 29, '2017-05-16 14:13:36', '2017-05-16 14:13:36'),
(66, '1494944016_635854272595180195_note5-g4.jpg', 29, '2017-05-16 14:13:36', '2017-05-16 14:13:36'),
(67, '1494944016_635854272597364685_note5-g5.jpg', 29, '2017-05-16 14:13:36', '2017-05-16 14:13:36'),
(68, '1494944102_636276917508916000_2.jpg', 30, '2017-05-16 14:15:02', '2017-05-16 14:15:02'),
(69, '1494944102_636276917577400000_3.jpg', 30, '2017-05-16 14:15:02', '2017-05-16 14:15:02'),
(70, '1494944295_636198272239947471_samsung-galaxy-a7-gold-2017-2.jpg', 31, '2017-05-16 14:18:15', '2017-05-16 14:18:15'),
(71, '1494944296_636198272240571435_samsung-galaxy-a7-gold-2017-6.jpg', 31, '2017-05-16 14:18:16', '2017-05-16 14:18:16'),
(72, '1494944296_636198272240727426_samsung-galaxy-a7-gold-2017-3.jpg', 31, '2017-05-16 14:18:16', '2017-05-16 14:18:16'),
(73, '1494944296_636198272240883417_samsung-galaxy-a7-gold-2017-5.jpg', 31, '2017-05-16 14:18:16', '2017-05-16 14:18:16'),
(74, '1494944456_635851640637838005_A5-Gold-4.jpg', 32, '2017-05-16 14:20:56', '2017-05-16 14:20:56'),
(75, '1494944456_635851640640179190_A5-Gold-5.jpg', 32, '2017-05-16 14:20:56', '2017-05-16 14:20:56'),
(76, '1494944456_635851640643769007_A5-Gold-2.jpg', 32, '2017-05-16 14:20:56', '2017-05-16 14:20:56'),
(77, '1494944699_636238764902257456_sony-szs-2.jpg', 33, '2017-05-16 14:24:59', '2017-05-16 14:24:59'),
(78, '1494944699_636238765006777456_sony-szs-3.jpg', 33, '2017-05-16 14:24:59', '2017-05-16 14:24:59'),
(79, '1494944807_636162663627171412_xz-black-2.jpg', 34, '2017-05-16 14:26:47', '2017-05-16 14:26:47'),
(80, '1494944807_636177556273957518_Sony-xperia-xz-black-2.jpg', 34, '2017-05-16 14:26:47', '2017-05-16 14:26:47'),
(81, '1494944807_636177556273957518_Sony-xperia-xz-black-2.jpg', 34, '2017-05-16 14:26:47', '2017-05-16 14:26:47'),
(82, '1494944960_636160167593121147_xperia-x-bl-2.jpg', 35, '2017-05-16 14:29:20', '2017-05-16 14:29:20'),
(83, '1494944960_636177553414385868_sony-xperia-x-black.jpg', 35, '2017-05-16 14:29:20', '2017-05-16 14:29:20'),
(84, '1494945066_636161892755479255_xperia-xa-ultra-2.jpg', 36, '2017-05-16 14:31:06', '2017-05-16 14:31:06'),
(85, '1494945066_636177562926470795_xperia-xa-ultra-3.jpg', 36, '2017-05-16 14:31:06', '2017-05-16 14:31:06'),
(86, '1494945447_635869008066526236_c4-b2.jpg', 37, '2017-05-16 14:37:27', '2017-05-16 14:37:27'),
(87, '1494945447_635869008068556082_c4-b3.jpg', 37, '2017-05-16 14:37:27', '2017-05-16 14:37:27'),
(88, '1494945447_635869008070429786_c4-b4.jpg', 37, '2017-05-16 14:37:27', '2017-05-16 14:37:27'),
(89, '1494945447_635869008072615774_c4-b5.jpg', 37, '2017-05-16 14:37:27', '2017-05-16 14:37:27'),
(90, '1494945695_636162663627171412_xz-black-2.jpg', 38, '2017-05-16 14:41:35', '2017-05-16 14:41:35'),
(91, '1494945695_635869008070429786_c4-b4.jpg', 38, '2017-05-16 14:41:35', '2017-05-16 14:41:35'),
(92, '1494945811_636177556273957518_Sony-xperia-xz-black-2.jpg', 39, '2017-05-16 14:43:31', '2017-05-16 14:43:31'),
(93, '1494945811_635869008070429786_c4-b4.jpg', 39, '2017-05-16 14:43:31', '2017-05-16 14:43:31'),
(94, '1494945811_635869008068556082_c4-b3.jpg', 39, '2017-05-16 14:43:31', '2017-05-16 14:43:31'),
(95, '1494946012_636259609500546936_800-3.jpg', 40, '2017-05-16 14:46:52', '2017-05-16 14:46:52'),
(96, '1494946012_636259610100054936_800-1.jpg', 40, '2017-05-16 14:46:52', '2017-05-16 14:46:52'),
(97, '1494946012_635869008068556082_c4-b3.jpg', 40, '2017-05-16 14:46:52', '2017-05-16 14:46:52'),
(102, '1494947477_636111041712480471_00273709-s4.jpg', 46, '2017-05-16 15:11:17', '2017-05-16 15:11:17'),
(103, '1494947477_636111041713560471_00273709-s5.jpg', 46, '2017-05-16 15:11:17', '2017-05-16 15:11:17'),
(104, '1494947477_636111041714200471_00273709-s2.jpg', 46, '2017-05-16 15:11:17', '2017-05-16 15:11:17'),
(105, '1494947477_636111042882150471_00273709-s3.jpg', 46, '2017-05-16 15:11:17', '2017-05-16 15:11:17'),
(106, '1494948715_636132524916947811_gray-1.png', 53, '2017-05-16 15:31:55', '2017-05-16 15:31:55'),
(107, '1494948715_636132524917571823_gray-4.png', 53, '2017-05-16 15:31:55', '2017-05-16 15:31:55'),
(108, '1494948715_636132524918039832_gray-3.png', 53, '2017-05-16 15:31:55', '2017-05-16 15:31:55'),
(109, '1494948844_636132524918039832_gray-3.png', 54, '2017-05-16 15:34:04', '2017-05-16 15:34:04'),
(110, '1494948844_636132524917571823_gray-4.png', 54, '2017-05-16 15:34:04', '2017-05-16 15:34:04'),
(111, '1494948844_636132524916947811_gray-1.png', 54, '2017-05-16 15:34:04', '2017-05-16 15:34:04'),
(112, '1494948958_636132524916947811_gray-1.png', 55, '2017-05-16 15:35:58', '2017-05-16 15:35:58'),
(113, '1494948958_636132524917571823_gray-4.png', 55, '2017-05-16 15:35:58', '2017-05-16 15:35:58'),
(114, '1494948958_636132524918039832_gray-3.png', 55, '2017-05-16 15:35:58', '2017-05-16 15:35:58'),
(115, '1494951536_7.jpg', 64, '2017-05-16 16:18:56', '2017-05-16 16:18:56'),
(116, '1494951536_8.jpg', 64, '2017-05-16 16:18:56', '2017-05-16 16:18:56'),
(117, '1494951536_9.jpg', 64, '2017-05-16 16:18:56', '2017-05-16 16:18:56'),
(118, '1495270304_636071104737392079_Lenovo-ThinkPad-X1-Yoga-b2.jpg', 79, '2017-05-20 08:51:44', '2017-05-20 08:51:44'),
(119, '1495270304_636071104737872079_Lenovo-ThinkPad-X1-Yoga-b3.jpg', 79, '2017-05-20 08:51:44', '2017-05-20 08:51:44'),
(120, '1495270304_636071104738162079_Lenovo-ThinkPad-X1-Yoga-b4.jpg', 79, '2017-05-20 08:51:44', '2017-05-20 08:51:44'),
(121, '1495270522_636172350499787186_apple-ipad-mini-2-white-2.jpg', 81, '2017-05-20 08:55:22', '2017-05-20 08:55:22'),
(122, '1495270522_636172350499797187_apple-ipad-mini-2-white-3.jpg', 81, '2017-05-20 08:55:22', '2017-05-20 08:55:22'),
(123, '1495270636_636259595075694936_800wifilung.jpg', 82, '2017-05-20 08:57:16', '2017-05-20 08:57:16'),
(124, '1495270636_636259595223582936_800ngang.jpg', 82, '2017-05-20 08:57:16', '2017-05-20 08:57:16'),
(125, '1495270847_636130794133529252_635875222236942899_ipad-mini-4-4G-Gold-3.jpg', 84, '2017-05-20 09:00:47', '2017-05-20 09:00:47'),
(126, '1495270847_636130794134933270_635875222238971640_ipad-mini-4-4G-Gold-4.jpg', 84, '2017-05-20 09:00:47', '2017-05-20 09:00:47'),
(127, '1495271024_636168958724414232_ipad-pro-97-wifi-gray-2.jpg', 85, '2017-05-20 09:03:44', '2017-05-20 09:03:44'),
(128, '1495271024_636168958725194237_ipad-pro-97-wifi-gray-3.jpg', 85, '2017-05-20 09:03:44', '2017-05-20 09:03:44'),
(129, '1495271095_636168958724414232_ipad-pro-97-wifi-gray-2.jpg', 86, '2017-05-20 09:04:55', '2017-05-20 09:04:55'),
(130, '1495271095_636168958725194237_ipad-pro-97-wifi-gray-3.jpg', 86, '2017-05-20 09:04:55', '2017-05-20 09:04:55'),
(131, '1495271221_636172350499787186_apple-ipad-mini-2-white-2.jpg', 87, '2017-05-20 09:07:01', '2017-05-20 09:07:01'),
(132, '1495271221_636172350499797187_apple-ipad-mini-2-white-3.jpg', 87, '2017-05-20 09:07:01', '2017-05-20 09:07:01'),
(133, '1495271324_636172350499787186_apple-ipad-mini-2-white-2.jpg', 88, '2017-05-20 09:08:44', '2017-05-20 09:08:44'),
(134, '1495271324_636172350499797187_apple-ipad-mini-2-white-3.jpg', 88, '2017-05-20 09:08:44', '2017-05-20 09:08:44'),
(135, '1495279283_635866551553304940_zenpad-170cg-den-2.jpg', 89, '2017-05-20 11:21:23', '2017-05-20 11:21:23'),
(136, '1495279283_635866551742021251_zenpad-170cg-den-3.jpg', 89, '2017-05-20 11:21:23', '2017-05-20 11:21:23'),
(137, '1495279594_635925158390221925_hong2.jpg', 92, '2017-05-20 11:26:34', '2017-05-20 11:26:34'),
(138, '1495279594_635925158390689865_hong3.jpg', 92, '2017-05-20 11:26:34', '2017-05-20 11:26:34'),
(139, '1495280489_636178262550070601_Lenovo-phab-2-pro-gold-3.jpg', 101, '2017-05-20 11:41:29', '2017-05-20 11:41:29'),
(140, '1495280489_636178262659595410_Lenovo-phab-2-pro-gold-1.jpg', 101, '2017-05-20 11:41:29', '2017-05-20 11:41:29'),
(141, '1495280489_636178262660063422_Lenovo-phab-2-pro-gold-2.jpg', 101, '2017-05-20 11:41:29', '2017-05-20 11:41:29'),
(142, '1495280656_635991839594657099_lenovo-tab-3-7-3.jpg', 103, '2017-05-20 11:44:16', '2017-05-20 11:44:16'),
(143, '1495280656_635991839594657099_lenovo-tab-3-7-4.jpg', 103, '2017-05-20 11:44:16', '2017-05-20 11:44:16'),
(144, '1495280656_635991839594813092_lenovo-tab-3-7-2.jpg', 103, '2017-05-20 11:44:16', '2017-05-20 11:44:16'),
(145, '1495280848_635995879298431448_635991843325853666_yoga-3.jpg', 105, '2017-05-20 11:47:28', '2017-05-20 11:47:28'),
(146, '1495280848_635995879299055396_635991843326165652_yoga-2.jpg', 105, '2017-05-20 11:47:28', '2017-05-20 11:47:28'),
(147, '1495280848_635995879299679344_635991843326165652_yoga-4.jpg', 105, '2017-05-20 11:47:28', '2017-05-20 11:47:28'),
(148, '1495281070_635869832728257963_Huawei-t18-2.jpg', 108, '2017-05-20 11:51:10', '2017-05-20 11:51:10'),
(149, '1495281070_635869832895052639_Huawei-t18-3.jpg', 108, '2017-05-20 11:51:10', '2017-05-20 11:51:10'),
(150, '1495281070_635869833060764005_Huawei-t18-4.jpg', 108, '2017-05-20 11:51:10', '2017-05-20 11:51:10'),
(151, '1495281221_636029839514971784_m2-1.jpg', 110, '2017-05-20 11:53:41', '2017-05-20 11:53:41'),
(152, '1495281221_636029839515127782_m2-4.jpg', 110, '2017-05-20 11:53:41', '2017-05-20 11:53:41'),
(153, '1495281221_636029839515283780_m2-2.jpg', 110, '2017-05-20 11:53:41', '2017-05-20 11:53:41'),
(154, '1495281313_636030523672408902_4.jpg', 111, '2017-05-20 11:55:13', '2017-05-20 11:55:13'),
(155, '1495281313_636030524628838771_2.jpg', 111, '2017-05-20 11:55:13', '2017-05-20 11:55:13'),
(156, '1495281313_636030523672096904_3.jpg', 111, '2017-05-20 11:55:13', '2017-05-20 11:55:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `socials`
--

CREATE TABLE `socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `socials`
--

INSERT INTO `socials` (`id`, `user_id`, `provider_id`, `provider`, `created_at`, `updated_at`) VALUES
(2, 3, '655475551313849', 'facebook', '2017-05-22 04:18:58', '2017-05-22 04:18:58'),
(3, 4, '103845932449337601516', 'google', '2017-05-22 04:37:47', '2017-05-22 04:37:47'),
(4, 5, '116954311765657205136', 'google', '2017-06-11 16:05:46', '2017-06-11 16:05:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `images`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Tiến Tùng', 'tientungs295@gmail.com', '', '', '', 'https://graph.facebook.com/v2.8/655475551313849/picture?type=normal', 'dHwZHUZ4Wv2Cgke64hdtyqnCPJ7OFHnYtyN1roIj85UFmf40umBuOHkIxh7J', '2017-05-22 04:18:58', '2017-05-22 04:39:04'),
(4, 'Lưu Quang Tien', 'quangtien.513.cnpm@gmail.com', '', '', '', 'https://lh3.googleusercontent.com/-Q2JvLfWlBfo/AAAAAAAAAAI/AAAAAAAAACo/knMCVyMRxXE/photo.jpg?sz=50', '5sGWTD1MHhJRGjk9VZL3OoFroPdOogAN2t64DAKW4K3BVu1YnImOZNBDmvBp', '2017-05-22 04:37:47', '2017-05-22 04:39:51'),
(5, 'dai nguyen', 'dainv320@gmail.com', '', '', '', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50', NULL, '2017-06-11 16:05:46', '2017-06-11 16:05:46'),
(6, 'nguyendai', 'dainv9@gmail.com', '$2y$10$pWf3oCAh5RM580Mud70vWewtvdqdDbu9s6iMN0LXWy/SWxRSn0b86', '0179178772', 'ha noi', '', '96964MAQYVt2Lth1IeL2R6oW60rz0w8Adu17bqZw', '2017-07-08 08:17:03', '2017-07-08 08:17:03');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_pro_id_foreign` (`pro_id`),
  ADD KEY `comments_c_id_foreign` (`c_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oders`
--
ALTER TABLE `oders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oder_details`
--
ALTER TABLE `oder_details`
  ADD PRIMARY KEY (`od_id`),
  ADD KEY `oder_details_pro_id_foreign` (`pro_id`),
  ADD KEY `oder_details_o_id_foreign` (`o_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_details_pro_id_foreign` (`pro_id`);

--
-- Chỉ mục cho bảng `product_imgs`
--
ALTER TABLE `product_imgs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_imgs_pro_id_foreign` (`pro_id`);

--
-- Chỉ mục cho bảng `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT cho bảng `oders`
--
ALTER TABLE `oders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `oder_details`
--
ALTER TABLE `oder_details`
  MODIFY `od_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT cho bảng `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT cho bảng `product_imgs`
--
ALTER TABLE `product_imgs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT cho bảng `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_c_id_foreign` FOREIGN KEY (`c_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `oder_details`
--
ALTER TABLE `oder_details`
  ADD CONSTRAINT `oder_details_o_id_foreign` FOREIGN KEY (`o_id`) REFERENCES `oders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oder_details_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_imgs`
--
ALTER TABLE `product_imgs`
  ADD CONSTRAINT `product_imgs_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
