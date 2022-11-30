-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20221103.3a7b77d22e
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2022 lúc 07:24 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `pty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `pty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 35000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Trương xuân kiên', '0867891733', 'fggg', 'hello2k3.2k3@gmail.com', 'Sasa', '2022-11-21 11:03:48', '2022-11-21 11:03:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`, `created_at`, `updated_at`) VALUES
(1, 'MÓN CHÍNH', 0, 'AD', '<p>AD</p>', 1, '2022-11-11 09:28:19', '2022-11-11 09:28:19'),
(2, 'MÓN GỎI', 0, 'AD', '<p>AD</p>', 1, '2022-11-11 09:28:45', '2022-11-11 09:28:45'),
(3, 'MÓN ĂN SÁNG', 0, 'AD', '<p>AD</p>', 1, '2022-11-11 09:28:56', '2022-11-11 09:28:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_11_05_100441_create_menus_table', 1),
(5, '2022_11_05_100707_create_products_table', 1),
(6, '2022_11_05_101026_create_sliders_table', 1),
(7, '2022_11_05_101102_create_customers_table', 1),
(8, '2022_11_05_101126_create_carts_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `thumb`, `created_at`, `updated_at`) VALUES
(1, 'BÚN MĂNG GÀ/VỊT', '[Vegan Bamboo Chicken Noodle Soup] Rice noodles with bamboo vegan chicken soup and vegetable', '<p>[Vegan Bamboo Chicken Noodle Soup] Rice noodles with bamboo vegan chicken soup and vegetable</p>', 3, 40000, 35000, 1, '/storage/uploads/2022/11/24/Bun-mang-ga-ans-vegetarian-247x296.jpg', '2022-11-11 09:30:59', '2022-11-24 00:04:42'),
(2, 'BÚN BÒ HUẾ', '[Hue Noodle Soup] Rice noodle with mushroom tofu soup', '<p>[Hue Noodle Soup] Rice noodle with mushroom tofu soup</p>', 3, 30000, 25000, 1, '/storage/uploads/2022/11/24/Bun-bo-hue-ans-vegetarian-247x296.jpg', '2022-11-24 00:07:43', '2022-11-24 00:07:43'),
(3, 'HỦ TIÊU', '[Hu Tieu Noodles] Rice noodles with slow cook tofu, mushroom and vegetable.', '<p>[Hu Tieu Noodles] Rice noodles with slow cook tofu, mushroom and vegetable.</p>', 3, 30000, NULL, 1, '/storage/uploads/2022/11/24/Hu-tieu-ans-vegetarian-247x296.jpg', '2022-11-24 00:08:58', '2022-11-24 00:08:58'),
(4, 'MẸT BÁNH ƯỚT THỊT NƯỚNG', '[Vegan Tofu BBQ Set] Vegetables, slide rice cake, grill tofu, rice paper. serve with special tofu sauce', '<p>[Vegan Tofu BBQ Set] Vegetables, slide rice cake, grill tofu, rice paper. serve with special tofu sauce</p>', 3, 59000, NULL, 1, '/storage/uploads/2022/11/24/BIN07286-247x296.jpg', '2022-11-24 00:09:38', '2022-11-24 00:09:38'),
(5, 'BÁNH HỎI THỊT NƯỚNG', '[Hoi Stye Cake with Vegan BBQ Tofu] Hoi style slide rice cake, BBQ tofu meat, serve with vegetables and vegan sauce', '<p>[Hoi Stye Cake with Vegan BBQ Tofu] Hoi style slide rice cake, BBQ tofu meat, serve with vegetables and vegan sauce</p>', 3, 59000, NULL, 1, '/storage/uploads/2022/11/24/Banh-hoi-thit-nuong-247x296.jpg', '2022-11-24 00:10:06', '2022-11-24 00:10:06'),
(6, 'MỲ UDON ÁP CHẢO', '[Japanese Mushroom Udon] Fried Japanese udon with mushroom', '<p>[Japanese Mushroom Udon] Fried Japanese udon with mushroom</p>', 3, 99000, NULL, 1, '/storage/uploads/2022/11/24/My-udon-ap-chao-ans-vegetarian-247x296.jpg', '2022-11-24 00:10:34', '2022-11-24 00:10:34'),
(7, 'XÁO NẤM BÒ CHAY', '[Ans Chief Soup] Vegan beef meat balls cook with special soup. serve with noodles or bread', '<p>[Ans Chief Soup] Vegan beef meat balls cook with special soup. serve with noodles or bread</p>', 3, 85000, NULL, 1, '/storage/uploads/2022/11/24/Xao-bo-ans-vegetarian-247x296.jpg', '2022-11-24 00:11:00', '2022-11-24 00:11:00'),
(8, 'PHỞ XÀO KIỂU THÁI', '[Pad Thai] Rice noodles fry with vegetables, mushroom, tamarind hot sauce', '<p>[Pad Thai] Rice noodles fry with vegetables, mushroom, tamarind hot sauce</p>', 3, 89000, NULL, 1, '/storage/uploads/2022/11/24/Pad-Thai-247x296.jpg', '2022-11-24 00:11:47', '2022-11-24 00:11:47'),
(9, 'GỎI CUỐN ĐOÀN VIÊN', '[Fresh Spring Roll] Fresh spring roll wraped with kimchi, bbq tofu, vegetables, tofu ham', '<p>[Fresh Spring Roll] Fresh spring roll wraped with kimchi, bbq tofu, vegetables, tofu ham</p>', 2, 65000, NULL, 1, '/storage/uploads/2022/11/24/Goi-cuon-doan-vien-ans-vegetarian-247x296.jpg', '2022-11-24 00:13:10', '2022-11-24 00:13:10'),
(10, 'GỎI ĐU ĐỦ MỰC KHÔ', '[Thailand Somtam Salad] Green papaya with chili, peanut, vegan ocpotus', '<p>[Thailand Somtam Salad] Green papaya with chili, peanut, vegan ocpotus</p>', 2, 75000, NULL, 1, '/storage/uploads/2022/11/24/Goi-du-du-muc-kho-ans-vegetarian-247x296.jpg', '2022-11-24 00:13:37', '2022-11-24 00:13:37'),
(11, 'NỘM MÍT BÁNH TRÁNG', '[Young Jackfruit Salad] Steam Young jackfruit mixed with tofu ham, mushroom', '<p>[Young Jackfruit Salad] Steam Young jackfruit mixed with tofu ham, mushroom</p>', 2, 69000, NULL, 1, '/storage/uploads/2022/11/24/Nom-mit-banh-trang-ans-vegetarian-247x296.jpg', '2022-11-24 00:15:50', '2022-11-24 00:15:50'),
(12, 'SALAD SỐT MÈ NHẬT', '[Japanese Salad] Lettuce mixed with seasame sauce, deepfried bread and tofu ham', '<p>[Japanese Salad] Lettuce mixed with seasame sauce, deepfried bread and tofu ham</p>', 2, 75000, NULL, 1, '/storage/uploads/2022/11/24/Salad-me-nhat-ans-vegetarian-247x296.jpg', '2022-11-24 00:16:25', '2022-11-24 00:16:25'),
(13, 'GỎI KHOAI TÍM', '[Deep Fried Taro Salad] Deep fried taro, sliced mango, carrot, young papaya, bean and vegan ocpotus', '<p>[Deep Fried Taro Salad] Deep fried taro, sliced mango, carrot, young papaya, bean and vegan ocpotus</p>', 2, 85000, NULL, 1, '/storage/uploads/2022/11/24/Goi-khoai-tim-ans-vegetarian-247x296.jpg', '2022-11-24 00:16:49', '2022-11-24 00:16:49'),
(14, 'CƠM HOA ĐĂNG', '[Fried Rice] Fried rice with various type of vegetables, mushroom', '<p>[Fried Rice] Fried rice with various type of vegetables, mushroom</p>', 1, 49000, NULL, 1, '/storage/uploads/2022/11/24/Com-hoa-dang-ans-vegetarian-247x296.jpg', '2022-11-24 00:17:30', '2022-11-24 00:17:30'),
(15, 'MÌ XÀO MỀM', '[Vegan Pasta] Pasta with various type of vegetables, mushroom, broccoli, carrot', '<p>[Vegan Pasta] Pasta with various type of vegetables, mushroom, broccoli, carrot</p>', 1, 85000, NULL, 1, '/storage/uploads/2022/11/24/Mi-xao-mem-247x296.jpg', '2022-11-24 00:17:50', '2022-11-24 00:17:50'),
(16, 'BÁNH HỎI THỊT NƯỚNG', '[Hoi Stye Cake with Vegan BBQ Tofu] Hoi style slide rice cake, BBQ tofu meat, serve with vegetables and vegan sauce', '<p>[Hoi Stye Cake with Vegan BBQ Tofu] Hoi style slide rice cake, BBQ tofu meat, serve with vegetables and vegan sauce</p>', 1, 85000, NULL, 1, '/storage/uploads/2022/11/24/Banh-hoi-thit-nuong-247x296.jpg', '2022-11-24 00:18:15', '2022-11-24 00:18:15'),
(17, 'BÁNH XÈO', '[Banh Xeo Cake] Pan fried banh xeo serve with vegetable and vegan tofu sauce', '<p>[Banh Xeo Cake] Pan fried banh xeo serve with vegetable and vegan tofu sauce</p>', 1, 49000, NULL, 1, '/storage/uploads/2022/11/24/Banh-xeo-ans-vegetarian-247x296.jpg', '2022-11-24 00:18:29', '2022-11-24 00:18:29'),
(18, 'HÁ CẢO QUẢNG ĐÔNG', '[Cantonese Style Dumpling] Dumpling with grean bean, mushroom serve with soya sauce', '<p>[Cantonese Style Dumpling] Dumpling with grean bean, mushroom serve with soya sauce</p>', 1, 45000, NULL, 1, '/storage/uploads/2022/11/24/Ha-cao-quang-dong-ans-vegetarian-247x296.jpg', '2022-11-24 00:18:53', '2022-11-24 00:18:53'),
(19, 'XÍU MẠI CÁT TƯỜNG', '[Vegan Vienamese Meat Balls] Slow cook veggie with soybean balls serve with fried mas potato', '<p>[Vegan Vienamese Meat Balls] Slow cook veggie with soybean balls serve with fried mas potato</p>', 1, 199000, NULL, 1, '/storage/uploads/2022/11/24/Bo-nau-dau-sot-ruou-vang-ans-vegetarian-247x296.jpg', '2022-11-24 00:20:28', '2022-11-24 00:20:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(3, 'AN TOÀN', '#', '/storage/uploads/2022/11/23/sl1.jpg', 1, 1, '2022-11-23 09:44:30', '2022-11-23 09:44:30'),
(4, 'ĐẢM BẢO', '#', '/storage/uploads/2022/11/23/sl2.jpg', 1, 1, '2022-11-23 09:46:48', '2022-11-23 09:46:48'),
(5, 'SẠCH SẼ', '#', '/storage/uploads/2022/11/23/sl3.jpg', 1, 1, '2022-11-23 09:47:14', '2022-11-23 09:48:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@ad.com', NULL, '$2y$10$.unbtJ8RRIMzMDf0ZFy97uI7wvbo95STLX8BDVPYHJM49LVZNACAW', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
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
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
