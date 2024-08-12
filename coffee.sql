-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 24, 2024 lúc 07:41 PM
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
-- Cơ sở dữ liệu: `coffehouse`
--
CREATE DATABASE IF NOT EXISTS `coffehouse` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `coffehouse`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `account_id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role_id` int(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`account_id`, `username`, `image`, `email`, `password`, `phone`, `role_id`, `status`) VALUES
(18, 'Sơn Trần', '52635f91-4479-4f64-9a53-1883d9c63688.jpg', 'son@gmail.com', '$2a$10$REP.Ux.0JLyL5aozT0Deh.mJlvQQK4JNhKRk1uilAOlNSKTwDL54O', '0938583183', 2, 1),
(19, 'Mạnh Đặng', 'c82f5b4a-12ea-40e9-bb98-ac290898249d.jpg', 'manh@gmail.com', '$2a$10$z6xTIRizmD4dldB60jU44.05VhMGTndaLCWZta2Q7XuhivmsPTb76', '0901234567', 3, 1),
(20, 'Đức Huy', 'ef903a26-c2fd-4530-a659-f7aef47229fd.jpg', 'dhuy@gmail.com', '$2a$10$EGx0LDqibNYwsMVC5Cq2KOtMHb.9A2VUGz/POojRedmmo2KweJyHG', '0967897899', 3, 1),
(21, 'Huy', '3f7a7ee6-79b6-4463-81f2-c97968719006.jpg', 'huy@gmail.com', '$2a$10$xf0Gk1BBtG4UO6NvmIddzOooNTTD5jWDk6UcwTvH8QAOoaEI35uQe', '09091234567', 2, 1),
(22, 'Thanh Tài', '866c270d-39f0-410c-ba3a-15e8edae2dc1.jpg', 'tai@gmail.com', '$2a$10$By3oO87Q624AkBwKi7aNbeKZ2woxlirS6qG/3329HrPZVYdank7Ia', '0909345345', 3, 1),
(23, 'Linh Linh', 'caac986a-af6d-4576-a381-c13dca587d7b.jpg', 'linh@gmail.com', '$2a$10$wrXV4h966ODrD4X3CXl6.OWukUzS7eWmehx06hWisIRaIxtRqY80m', '0909123456', 3, 1),
(24, 'Nam Long', 'a4c8c044-94d7-40d5-8e86-ecafa4c817e0.jpg', 'long@gmail.com', '$2a$10$Odkf4BvYKITfda2hpe23geHlGSuUTPsQLmrecviIazG.w4WbYRlJG', '0913344556', 3, 1),
(25, 'Minh Phong', '5bb3a1df-41e8-4f7e-a02c-fcf80f6869b6.jpg', 'phong@gmail.com', '$2a$10$Bv/vRMD0UM1oT.mmoR95r.rH42RqK3TjM0BizqdXxJ82E1XkPQNYG', '093456789', 3, 1),
(26, 'Minh Kiều', '56de38d1-fad7-4e08-9f7c-729d8971b825.jpg', 'kieu@gmail.com', '$2a$10$cUDtx13CuKr37XWfGoHLnubwsoVwoI4CQKl/eVz5WK9UlvECCPp3u', '0967898989', 3, 1),
(27, 'Tiểu Thúy', '24e6fe33-646a-400d-84f0-60d82109083f.jpg', 'thuy@gmail.com', '$2a$10$ZiINg1n4o27l22hSCqrTaeiEho26AGDMmq70wiIXktD/Bdf3II9i2', '0992345678', 3, 1),
(29, 'Admin', NULL, 'anhsontran.q7@gmail.com', '$2a$10$ZkBMn7ZIVGzrDi90Rd7yU.su4oTK3hurAAVVA1AfVFRYGWvdLWXYm', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `description`, `status`) VALUES
(10, 'Coffee', 'Robusta, Arabica, Moka,...', 1),
(11, 'Tea', ' Flower tea, Fruit tea, Ginger tea, Cooling tea, Refreshing tea\n Milk tea,....', 1),
(12, 'Fruit juice', 'Tropical fruits.', 1),
(13, 'Smoothie', 'Combination of milk and various fruits', 1),
(14, 'Soda', '\nSparkling mineral water with fruit flavors', 1),
(15, 'khac', 'q', 2),
(16, 'as', 'asssss', 2),
(17, 'som', 'aaaaaaầvfbgbgbgbg', 2),
(18, 'dfvfdvfvfvfvfv', 'vfdvdfvfhnnvfvfvf', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `control`
--

CREATE TABLE `control` (
  `control_id` int(10) NOT NULL,
  `working_time_id` int(10) NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `check_in_pay` float DEFAULT NULL,
  `check_out_pay` float DEFAULT NULL,
  `account_id` int(10) NOT NULL,
  `staff_list` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `control`
--

INSERT INTO `control` (`control_id`, `working_time_id`, `check_in`, `check_out`, `check_in_pay`, `check_out_pay`, `account_id`, `staff_list`, `created_at`, `updated_at`) VALUES
(222, 2, '2024-07-25 00:35:08', '2024-07-25 00:39:58', 200, 249, 18, 'Linh Linh, Nam Long', '2024-07-24 17:35:08', '2024-07-24 17:40:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL,
  `account_id` int(10) NOT NULL,
  `total` float NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `day` datetime DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `account_id`, `total`, `description`, `day`, `created_at`, `updated_at`) VALUES
(51, 18, 9.7, '\nRobusta L 50% đường', '2024-07-25 00:35:57', '2024-07-24 17:35:57', '2024-07-24 17:35:57'),
(52, 18, 7, '', '2024-07-25 00:36:46', '2024-07-24 17:36:46', '2024-07-24 17:36:46'),
(53, 18, 12.3, '\nGinger cinnamon  S 50% đường', '2024-07-25 00:37:32', '2024-07-24 17:37:32', '2024-07-24 17:37:32'),
(54, 18, 7.8, '', '2024-07-25 00:37:49', '2024-07-24 17:37:49', '2024-07-24 17:37:49'),
(55, 18, 12.2, '\nPomegranate juice S 50% đường', '2024-07-25 00:39:13', '2024-07-24 17:39:13', '2024-07-24 17:39:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `product_detail_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `table_number` int(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `order_id`, `product_detail_id`, `quantity`, `table_number`, `status`, `created_at`, `updated_at`) VALUES
(104, 51, 29, 1, 3, 1, '2024-07-24 17:35:57', '2024-07-24 17:35:57'),
(105, 51, 32, 1, 3, 1, '2024-07-24 17:35:57', '2024-07-24 17:35:57'),
(106, 51, 33, 1, 3, 1, '2024-07-24 17:35:57', '2024-07-24 17:35:57'),
(107, 52, 37, 1, 0, 1, '2024-07-24 17:36:46', '2024-07-24 17:36:46'),
(108, 52, 35, 1, 0, 1, '2024-07-24 17:36:46', '2024-07-24 17:36:46'),
(109, 53, 51, 1, 0, 1, '2024-07-24 17:37:32', '2024-07-24 17:37:32'),
(110, 53, 49, 1, 0, 1, '2024-07-24 17:37:32', '2024-07-24 17:37:32'),
(111, 53, 47, 1, 0, 1, '2024-07-24 17:37:32', '2024-07-24 17:37:32'),
(112, 54, 51, 1, 5, 1, '2024-07-24 17:37:49', '2024-07-24 17:37:49'),
(113, 54, 49, 1, 5, 1, '2024-07-24 17:37:49', '2024-07-24 17:37:49'),
(114, 55, 65, 1, 6, 1, '2024-07-24 17:39:13', '2024-07-24 17:39:13'),
(115, 55, 69, 1, 6, 1, '2024-07-24 17:39:13', '2024-07-24 17:39:13'),
(116, 55, 71, 1, 6, 1, '2024-07-24 17:39:13', '2024-07-24 17:39:13'),
(117, 55, 73, 1, 6, 1, '2024-07-24 17:39:13', '2024-07-24 17:39:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(17, 10, 'Americano', 'americano.jpg', 'Hot coffee', 1, '2024-07-24 15:53:36', '2024-07-24 15:53:36'),
(18, 10, 'Robusta', 'cf_robusta.jpg', 'Hot coffee', 1, '2024-07-24 16:06:29', '2024-07-24 16:50:21'),
(19, 10, 'Moka', 'Untitled (2).jpg', 'Hot coffee', 1, '2024-07-24 16:11:47', '2024-07-24 16:50:37'),
(20, 10, 'Egg coffee', 'cf_trung.jpg', 'Hot Coffee', 1, '2024-07-24 16:13:53', '2024-07-24 16:51:08'),
(21, 10, 'Milk coffee', 'cf_suanong.jpg', 'Hot Coffee\n', 1, '2024-07-24 16:15:58', '2024-07-24 16:15:58'),
(22, 10, 'Latte', 'bacxiu.jpg', 'Iced milk coffee\n', 1, '2024-07-24 16:20:22', '2024-07-24 16:20:22'),
(23, 10, 'Salt coffee', 'cafe_muoi.jpg', 'Iced milk Salt coffee ', 1, '2024-07-24 16:22:18', '2024-07-24 16:50:01'),
(24, 10, 'Cocoa cream', 'cacao_kem.jpg', 'Iced milk cocoa', 1, '2024-07-24 16:24:47', '2024-07-24 16:51:19'),
(26, 11, 'Orange honey tea', 'tra_cam_mat.jpg', 'Hot tea', 1, '2024-07-24 16:40:27', '2024-07-24 16:45:17'),
(27, 11, 'Ginger cinnamon ', 'tra_gung_que.jpg', 'Hot ginger tea', 1, '2024-07-24 16:42:41', '2024-07-24 16:46:47'),
(28, 11, 'Strawberry tea', 'tra_dau.jpg', 'Iced tea', 1, '2024-07-24 16:44:10', '2024-07-24 16:46:59'),
(29, 11, 'Rose fruit tea', 'tra_trai_cay2.jpg', 'Iced tea', 1, '2024-07-24 16:52:42', '2024-07-24 16:52:42'),
(30, 11, 'Tropical fruit ', 'tra_nhiet_doi.jpg', 'Iced tea', 1, '2024-07-24 16:54:04', '2024-07-24 16:54:04'),
(31, 11, 'Milk tea', 'tra_sua.jpg', 'Iced tea', 1, '2024-07-24 16:55:55', '2024-07-24 16:55:55'),
(32, 11, 'Matcha', 'matcha.jpg', 'Hot tea', 1, '2024-07-24 16:57:12', '2024-07-24 16:57:12'),
(33, 11, 'Pink guava     ', 'tra_oi.jpg', 'Iced Pink guava tea', 1, '2024-07-24 16:59:06', '2024-07-24 16:59:06'),
(34, 12, 'watermelon juice', 'ep_hua.jpg', 'iced juice', 1, '2024-07-24 17:01:43', '2024-07-24 17:01:43'),
(35, 12, 'Apple juice', 'ep_tao.jpg', 'iced apple juice', 1, '2024-07-24 17:02:47', '2024-07-24 17:02:47'),
(36, 12, 'Grape juice', 'ep_nho.jpg', 'iced grape juice', 1, '2024-07-24 17:03:43', '2024-07-24 17:03:43'),
(37, 12, 'Pineapple juice', 'ep_thom.jpg', 'Iced Pineapple juice', 1, '2024-07-24 17:04:37', '2024-07-24 17:04:37'),
(38, 12, 'Pomegranate juice', 'ep_luu.jpg', 'iced Pomegranate juice', 1, '2024-07-24 17:07:17', '2024-07-24 17:07:57'),
(39, 12, 'Mulberry juice', 'ep_dautam.jpg', 'Iced mulberry juice', 1, '2024-07-24 17:11:06', '2024-07-24 17:12:01'),
(40, 12, 'Orange lemongrass juice', 'cam.jpg', 'Iced Orange lemongrass juice', 1, '2024-07-24 17:15:29', '2024-07-24 17:15:29'),
(41, 13, 'Avocado smoothie', 'bo.jpg', 'Iced Avocado smoothie', 1, '2024-07-24 17:17:10', '2024-07-24 17:17:10'),
(42, 13, 'Strawberry smoothie', 'dau.jpg', 'Iced strawberry smoothie', 1, '2024-07-24 17:18:03', '2024-07-24 17:18:03'),
(43, 13, 'Kiwi smoothie', 'kiwi.jpg', 'Iced kiwi smoothie', 1, '2024-07-24 17:19:01', '2024-07-24 17:19:01'),
(44, 13, ' Mango smoothie.', 'xoai.jpg', 'Iced  mango smoothie.', 1, '2024-07-24 17:19:51', '2024-07-24 17:19:51'),
(45, 13, 'Sapodilla smoothie', 'sapo.jpg', 'Iced Sapodilla smoothie', 1, '2024-07-24 17:21:18', '2024-07-24 17:21:18'),
(46, 13, 'Cantaloupe smoothie.', 'duagang.jpg', 'Iced cantaloupe smoothie.', 1, '2024-07-24 17:22:01', '2024-07-24 17:22:01'),
(47, 13, 'Soursop smoothie', 'tải xuống.jpg', 'Iced Soursop smoothie', 1, '2024-07-24 17:24:56', '2024-07-24 17:24:56'),
(48, 14, 'Mint soda', 'soda_bacha2.jpg', 'Iced Mint soda', 1, '2024-07-24 17:27:27', '2024-07-24 17:27:27'),
(49, 14, 'Lemon soda', 'soda_kiwwi.jpg', 'Iced lemon soda', 1, '2024-07-24 17:28:34', '2024-07-24 17:30:45'),
(50, 14, 'Fruit soda', 'soda_sunset.jpg', 'Iced fruit soda', 1, '2024-07-24 17:30:17', '2024-07-24 17:30:17'),
(51, 14, 'Hawaiian soda', 'soda_traicay.jpg', 'Iced Hawaiian soda', 1, '2024-07-24 17:32:25', '2024-07-24 17:32:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_detail`
--

CREATE TABLE `product_detail` (
  `product_detail_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `size` varchar(10) NOT NULL,
  `price` float NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_detail`
--

INSERT INTO `product_detail` (`product_detail_id`, `product_id`, `size`, `price`, `status`, `created_at`, `updated_at`) VALUES
(29, 17, 'S', 3, 1, '2024-07-24 15:53:41', '2024-07-24 15:53:41'),
(30, 17, 'L', 4, 1, '2024-07-24 15:53:41', '2024-07-24 15:53:41'),
(31, 18, 'S', 3.5, 1, '2024-07-24 16:08:27', '2024-07-24 16:50:21'),
(32, 18, 'L', 4.2, 1, '2024-07-24 16:08:27', '2024-07-24 16:50:21'),
(33, 19, 'S', 2.5, 1, '2024-07-24 16:11:53', '2024-07-24 16:50:37'),
(34, 19, 'L', 3.5, 1, '2024-07-24 16:11:53', '2024-07-24 16:50:37'),
(35, 20, 'S', 4, 1, '2024-07-24 16:13:59', '2024-07-24 16:51:08'),
(36, 20, 'L', 5.3, 1, '2024-07-24 16:13:59', '2024-07-24 16:51:08'),
(37, 21, 'S', 3, 1, '2024-07-24 16:16:02', '2024-07-24 16:16:02'),
(38, 21, 'L', 4, 1, '2024-07-24 16:16:02', '2024-07-24 16:16:02'),
(39, 22, 'S', 4, 1, '2024-07-24 16:20:27', '2024-07-24 16:20:27'),
(40, 22, 'L', 5, 1, '2024-07-24 16:20:27', '2024-07-24 16:20:27'),
(41, 23, 'S', 4.5, 1, '2024-07-24 16:22:27', '2024-07-24 16:50:01'),
(42, 23, 'L', 5.5, 1, '2024-07-24 16:22:27', '2024-07-24 16:50:01'),
(43, 24, 'S', 4.5, 1, '2024-07-24 16:24:52', '2024-07-24 16:51:19'),
(44, 24, 'L', 6, 1, '2024-07-24 16:24:52', '2024-07-24 16:51:19'),
(47, 26, 'S', 4.5, 1, '2024-07-24 16:40:39', '2024-07-24 16:40:39'),
(48, 26, 'L', 5.5, 1, '2024-07-24 16:40:39', '2024-07-24 16:40:39'),
(49, 27, 'S', 3.5, 1, '2024-07-24 16:42:55', '2024-07-24 16:42:55'),
(50, 27, 'L', 4, 1, '2024-07-24 16:42:55', '2024-07-24 16:42:55'),
(51, 28, 'S', 4.3, 1, '2024-07-24 16:44:20', '2024-07-24 16:44:20'),
(52, 28, 'L', 5.5, 1, '2024-07-24 16:44:20', '2024-07-24 16:44:20'),
(53, 29, 'S', 3.7, 1, '2024-07-24 16:52:51', '2024-07-24 16:52:51'),
(54, 29, 'L', 4.5, 1, '2024-07-24 16:52:51', '2024-07-24 16:52:51'),
(55, 30, 'S', 4.2, 1, '2024-07-24 16:54:16', '2024-07-24 16:54:16'),
(56, 30, 'L', 5.5, 1, '2024-07-24 16:54:16', '2024-07-24 16:54:16'),
(57, 31, 'S', 3, 1, '2024-07-24 16:56:11', '2024-07-24 16:56:11'),
(58, 31, 'L', 4.2, 1, '2024-07-24 16:56:12', '2024-07-24 16:56:12'),
(59, 32, 'S', 2.7, 1, '2024-07-24 16:57:35', '2024-07-24 16:57:35'),
(60, 32, 'L', 3.5, 1, '2024-07-24 16:57:36', '2024-07-24 16:57:36'),
(61, 33, 'S', 3.5, 1, '2024-07-24 16:59:15', '2024-07-24 16:59:15'),
(62, 33, 'L', 4.5, 1, '2024-07-24 16:59:15', '2024-07-24 16:59:15'),
(63, 34, 'S', 3, 1, '2024-07-24 17:01:52', '2024-07-24 17:01:52'),
(64, 34, 'L', 4.2, 1, '2024-07-24 17:01:52', '2024-07-24 17:01:52'),
(65, 35, 'S', 2.7, 1, '2024-07-24 17:02:58', '2024-07-24 17:02:58'),
(66, 35, 'L', 4, 1, '2024-07-24 17:02:58', '2024-07-24 17:02:58'),
(67, 36, 'S', 4, 1, '2024-07-24 17:03:54', '2024-07-24 17:03:54'),
(68, 36, 'L', 5.3, 1, '2024-07-24 17:03:54', '2024-07-24 17:03:54'),
(69, 37, 'S', 3, 1, '2024-07-24 17:04:44', '2024-07-24 17:04:44'),
(70, 37, 'L', 4, 1, '2024-07-24 17:04:44', '2024-07-24 17:04:44'),
(71, 38, 'S', 3.5, 1, '2024-07-24 17:07:25', '2024-07-24 17:07:25'),
(72, 38, 'L', 4.3, 1, '2024-07-24 17:07:25', '2024-07-24 17:07:25'),
(73, 39, 'S', 3, 1, '2024-07-24 17:11:13', '2024-07-24 17:11:13'),
(74, 39, 'L', 4.3, 1, '2024-07-24 17:11:13', '2024-07-24 17:11:13'),
(75, 40, 'S', 3, 1, '2024-07-24 17:15:34', '2024-07-24 17:15:34'),
(76, 40, 'L', 4, 1, '2024-07-24 17:15:34', '2024-07-24 17:15:34'),
(77, 41, 'S', 4, 1, '2024-07-24 17:17:16', '2024-07-24 17:17:16'),
(78, 41, 'L', 5.6, 1, '2024-07-24 17:17:16', '2024-07-24 17:17:16'),
(79, 42, 'S', 3.5, 1, '2024-07-24 17:18:09', '2024-07-24 17:18:09'),
(80, 42, 'L', 4.5, 1, '2024-07-24 17:18:09', '2024-07-24 17:18:09'),
(81, 43, 'S', 3.5, 1, '2024-07-24 17:19:06', '2024-07-24 17:19:06'),
(82, 43, 'L', 4.5, 1, '2024-07-24 17:19:06', '2024-07-24 17:19:06'),
(83, 44, 'S', 3, 1, '2024-07-24 17:19:55', '2024-07-24 17:19:55'),
(84, 44, 'L', 4, 1, '2024-07-24 17:19:55', '2024-07-24 17:19:55'),
(85, 45, 'S', 3, 1, '2024-07-24 17:21:25', '2024-07-24 17:21:25'),
(86, 45, 'L', 4.2, 1, '2024-07-24 17:21:25', '2024-07-24 17:21:25'),
(87, 46, 'S', 3.3, 1, '2024-07-24 17:22:09', '2024-07-24 17:22:09'),
(88, 46, 'L', 4.5, 1, '2024-07-24 17:22:09', '2024-07-24 17:22:09'),
(89, 47, 'S', 3.5, 1, '2024-07-24 17:25:06', '2024-07-24 17:25:06'),
(90, 47, 'L', 4.5, 1, '2024-07-24 17:25:06', '2024-07-24 17:25:06'),
(91, 48, 'S', 3, 1, '2024-07-24 17:27:42', '2024-07-24 17:27:42'),
(92, 48, 'L', 4, 1, '2024-07-24 17:27:42', '2024-07-24 17:27:42'),
(93, 49, 'S', 2.7, 1, '2024-07-24 17:28:43', '2024-07-24 17:30:45'),
(94, 49, 'L', 4, 1, '2024-07-24 17:28:43', '2024-07-24 17:30:45'),
(95, 50, 'S', 3, 1, '2024-07-24 17:30:21', '2024-07-24 17:30:21'),
(96, 50, 'L', 4, 1, '2024-07-24 17:30:21', '2024-07-24 17:30:21'),
(97, 51, 'S', 3.5, 1, '2024-07-24 17:32:32', '2024-07-24 17:32:32'),
(98, 51, 'L', 4.5, 1, '2024-07-24 17:32:32', '2024-07-24 17:32:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `role_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`role_id`, `name`) VALUES
(1, 'Admin'),
(2, 'Manager'),
(3, 'Staff');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `working_time`
--

CREATE TABLE `working_time` (
  `working_time_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `durant` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `working_time`
--

INSERT INTO `working_time` (`working_time_id`, `name`, `durant`) VALUES
(1, 'Morning Shift', '7:00 AM'),
(2, 'Afternoon Shift', '3:00 PM');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `control`
--
ALTER TABLE `control`
  ADD PRIMARY KEY (`control_id`),
  ADD KEY `working_time_id` (`working_time_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_detail_id` (`product_detail_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`product_detail_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `working_time`
--
ALTER TABLE `working_time`
  ADD PRIMARY KEY (`working_time_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `control`
--
ALTER TABLE `control`
  MODIFY `control_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `product_detail_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `working_time`
--
ALTER TABLE `working_time`
  MODIFY `working_time_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);

--
-- Các ràng buộc cho bảng `control`
--
ALTER TABLE `control`
  ADD CONSTRAINT `control_ibfk_1` FOREIGN KEY (`working_time_id`) REFERENCES `working_time` (`working_time_id`),
  ADD CONSTRAINT `control_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_detail_id`) REFERENCES `product_detail` (`product_detail_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Các ràng buộc cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `product_detail_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
