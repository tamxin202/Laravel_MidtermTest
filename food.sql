-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 06:53 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_01_013554_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` int(11) NOT NULL,
  `promotion_price` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `unit_price`, `promotion_price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Eleanore Kilback', 'https://at10.mediawz.com/san-pham/nho-xanh/', 46617, 126706, 'Officia placeat eos libero consequuntur neque.', NULL, NULL),
(2, 'Dr. Pauline Schaden II', 'https://via.placeholder.com/200x200.png/00aaaa?text=eos', 198807, 88194, 'Est perspiciatis voluptatem laudantium rem.', NULL, NULL),
(3, 'Destany Fisher', 'https://via.placeholder.com/200x200.png/0088bb?text=ut', 52959, 130872, 'Autem veniam culpa facilis debitis rerum totam.', NULL, NULL),
(4, 'Ashlynn Cartwright', 'https://via.placeholder.com/200x200.png/00bbee?text=deleniti', 80635, 28741, 'Facilis voluptatem ut dignissimos velit voluptatem exercitationem.', NULL, NULL),
(5, 'Maximo Tromp MD', 'https://via.placeholder.com/200x200.png/00ee00?text=natus', 132961, 13182, 'Nulla id ipsa eaque quisquam repellat.', NULL, NULL),
(6, 'Tania Wisozk II', 'https://via.placeholder.com/200x200.png/00ff77?text=omnis', 105651, 87902, 'Vel eum et vitae.', NULL, NULL),
(7, 'Kelly Stokes', 'https://via.placeholder.com/200x200.png/005566?text=temporibus', 150818, 34474, 'Incidunt quaerat tempore aut ipsum.', NULL, NULL),
(8, 'Adah Schmitt', 'https://via.placeholder.com/200x200.png/0066bb?text=odit', 91511, 69256, 'Quo fugiat neque numquam veniam aut hic.', NULL, NULL),
(9, 'Aubrey Kuphal', 'https://via.placeholder.com/200x200.png/0044ee?text=eos', 47308, 39411, 'Quia et ut iusto atque.', NULL, NULL),
(10, 'Fred Carter', 'https://via.placeholder.com/200x200.png/00bb00?text=autem', 140247, 102918, 'Officiis odio magni occaecati et voluptates consequuntur voluptas.', NULL, NULL),
(11, 'Vivien Dach PhD', 'https://via.placeholder.com/200x200.png/009933?text=voluptatem', 104883, 60861, 'In est culpa amet omnis.', NULL, NULL),
(12, 'Mr. Abdullah Ebert IV', 'https://via.placeholder.com/200x200.png/006699?text=consequatur', 15019, 86991, 'Voluptate dignissimos ut vero quo est sed minus.', NULL, NULL),
(13, 'Johnnie Rippin Jr.', 'https://via.placeholder.com/200x200.png/002244?text=velit', 108402, 53339, 'Et fuga in illo libero qui.', NULL, NULL),
(14, 'Catharine Ryan', 'https://via.placeholder.com/200x200.png/00eeff?text=sint', 115764, 64814, 'Aut et labore consequatur harum perspiciatis.', NULL, NULL),
(15, 'Pietro Durgan', 'https://via.placeholder.com/200x200.png/004499?text=labore', 169841, 39749, 'Sunt placeat nihil impedit animi voluptas sit.', NULL, NULL),
(18, 'Rau Mồng Tơi', 'mungtoi_large (1).jpg', 20000, 10000, 'Rau Mồng tơi hữu cơ xanh sạch 100% ', '2022-06-30 20:27:38', '2022-06-30 20:27:38'),
(19, 'Rau Cải', 'mungtoi_large (1).jpg', 20000, 10000, 'Rau mồng tơi hữu cơ tươi xanh', '2022-06-30 20:30:57', '2022-06-30 20:30:57'),
(20, 'Cam vàng', '10_large.jpg', 20000, 2000, 'Cam sành bổ sung vitaminb C những ngày nắng nóng.', '2022-06-30 21:48:02', '2022-06-30 21:48:02'),
(21, 'Dứa', 'Dứa.jpg', 30000, 1000, 'Dứa vàng thơm ngon nhập khẩu', '2022-06-30 21:52:05', '2022-06-30 21:52:05'),
(22, 'Nho', 'Nho.jpg', 400000, 10000, 'Nho Nhập khẩu', '2022-06-30 21:52:38', '2022-06-30 21:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
