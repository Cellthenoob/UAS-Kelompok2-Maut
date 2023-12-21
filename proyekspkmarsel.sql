-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 09:07 AM
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
-- Database: `proyekspkmarsel`
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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_04_224636_peringkat', 1),
(6, '2023_12_09_234533_laptop', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peringkats`
--

CREATE TABLE `peringkats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `laptop_peringkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peringkats`
--

INSERT INTO `peringkats` (`id`, `laptop_peringkat`, `alternative`, `score`) VALUES
(1, '123123', 'a31', '1.00'),
(2, 'Acer Aspire TC', 'a6', '0.47'),
(3, 'Lenovo Legion 5', 'a24', '0.47'),
(4, 'Asus Vivo AiO V241', 'a5', '0.34'),
(5, 'MSI Trident X', 'a8', '0.34'),
(6, 'Dell Inspiron 27 7000', 'a23', '0.34'),
(7, 'Asus Chromebox 4', 'a26', '0.34'),
(8, 'Dell OptiPlex 7080', 'a1', '0.24'),
(9, 'Microsoft Surface Studio 2', 'a7', '0.24'),
(10, 'Apple Mac Mini', 'a25', '0.24'),
(11, 'HP EliteDesk 800 G7', 'a2', '0.21'),
(12, 'Dell Latitude 7420 Laptop', 'a9', '0.21'),
(13, 'Asus ZenBook Pro Duo', 'a19', '0.21'),
(14, 'Acer Swift 5', 'a27', '0.21'),
(15, 'Apple iMac 27-inch', 'a4', '0.19'),
(16, 'HP Omen 30L', 'a22', '0.19'),
(17, 'Lenovo ThinkPas X1 Carbon', 'a11', '0.10'),
(18, 'HP Pavilion Gaming Dekstop', 'a29', '0.10'),
(19, 'Lenovo ThinkCentre M920', 'a3', '0.09'),
(20, 'Microsoft Surface Pro 8', 'a21', '0.09'),
(21, 'Acer Aspire Z24', 'a20', '0.08'),
(22, 'Microsoft Surface Laptop 4', 'a15', '0.08'),
(23, 'HP Spectre x360', 'a10', '0.07'),
(24, 'Acer Predator Orion 9000', 'a14', '0.07'),
(25, 'Microsoft Surface Go 3', 'a28', '0.07'),
(26, 'Apple MacBook Pro 13-inch', 'a12', '0.03'),
(27, 'Dell XPS 15', 'a30', '0.03'),
(28, 'Asus ROG Zephyrus G15', 'a13', '0.03'),
(29, 'Lenovo Yoga A940', 'a18', '0.03'),
(30, 'Dell Precision 3640 Tower', 'a17', '0.02'),
(31, 'HP Envy 32 All-in-One', 'a16', '0.02');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spk_tubes_datas`
--

CREATE TABLE `spk_tubes_datas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alternatif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spesifikasi` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `daya_tahan` int(11) NOT NULL,
  `desain` int(11) NOT NULL,
  `konsumen_energi` int(11) NOT NULL,
  `keamanan` int(11) NOT NULL,
  `fitur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spk_tubes_datas`
--

INSERT INTO `spk_tubes_datas` (`id`, `alternatif`, `spesifikasi`, `harga`, `daya_tahan`, `desain`, `konsumen_energi`, `keamanan`, `fitur`) VALUES
(1, 'Dell OptiPlex 7080', 80, 90, 90, 40, 30, 70, 80),
(2, 'HP EliteDesk 800 G7', 70, 90, 90, 40, 50, 80, 70),
(3, 'Lenovo ThinkCentre M920', 90, 80, 70, 50, 60, 70, 80),
(4, 'Apple iMac 27-inch', 90, 70, 90, 90, 40, 50, 80),
(5, 'Asus Vivo AiO V241', 90, 40, 30, 70, 80, 70, 90),
(6, 'Acer Aspire TC', 50, 60, 70, 80, 90, 90, 40),
(7, 'Microsoft Surface Studio 2', 80, 90, 90, 40, 30, 70, 80),
(8, 'MSI Trident X', 90, 40, 30, 70, 80, 70, 90),
(9, 'Dell Latitude 7420 Laptop', 70, 90, 90, 40, 50, 80, 70),
(10, 'HP Spectre x360', 80, 90, 70, 70, 60, 70, 70),
(11, 'Lenovo ThinkPas X1 Carbon', 90, 90, 70, 50, 60, 70, 80),
(12, 'Apple MacBook Pro 13-inch', 90, 70, 80, 90, 80, 80, 90),
(13, 'Asus ROG Zephyrus G15', 90, 80, 80, 90, 80, 70, 80),
(14, 'Acer Predator Orion 9000', 80, 90, 70, 70, 60, 70, 70),
(15, 'Microsoft Surface Laptop 4', 70, 70, 70, 80, 80, 80, 70),
(16, 'HP Envy 32 All-in-One', 90, 90, 80, 90, 80, 80, 80),
(17, 'Dell Precision 3640 Tower', 80, 80, 70, 70, 70, 80, 80),
(18, 'Lenovo Yoga A940', 90, 90, 80, 90, 80, 80, 90),
(19, 'Asus ZenBook Pro Duo', 70, 90, 90, 40, 50, 80, 70),
(20, 'Acer Aspire Z24', 70, 80, 80, 70, 90, 70, 80),
(21, 'Microsoft Surface Pro 8', 90, 80, 70, 50, 60, 70, 80),
(22, 'HP Omen 30L', 90, 70, 90, 90, 40, 50, 80),
(23, 'Dell Inspiron 27 7000', 90, 40, 30, 70, 80, 70, 90),
(24, 'Lenovo Legion 5', 50, 60, 70, 80, 90, 90, 40),
(25, 'Apple Mac Mini', 80, 90, 90, 40, 30, 70, 80),
(26, 'Asus Chromebox 4', 90, 40, 30, 70, 80, 70, 90),
(27, 'Acer Swift 5', 70, 90, 90, 40, 50, 80, 70),
(28, 'Microsoft Surface Go 3', 80, 90, 70, 70, 60, 70, 70),
(29, 'HP Pavilion Gaming Dekstop', 90, 90, 70, 50, 60, 70, 80),
(30, 'Dell XPS 15', 90, 70, 80, 90, 80, 80, 90),
(31, '123123', 123, 123, 123, 123, 123, 123, 123);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `peringkats`
--
ALTER TABLE `peringkats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `spk_tubes_datas`
--
ALTER TABLE `spk_tubes_datas`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `peringkats`
--
ALTER TABLE `peringkats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spk_tubes_datas`
--
ALTER TABLE `spk_tubes_datas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
