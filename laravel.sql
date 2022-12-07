-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 04:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<div>Manage By:<br>Janine Francisco<br>Justine Galapon<br>Jean Tolentino</div>', '2022-12-07 12:36:51', '2022-12-07 12:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(191) NOT NULL,
  `price` varchar(191) NOT NULL,
  `date` varchar(191) NOT NULL,
  `day` varchar(191) NOT NULL,
  `package_id` int(11) NOT NULL,
  `guide_id` int(11) NOT NULL,
  `tourist_id` int(11) NOT NULL,
  `is_completed` varchar(191) NOT NULL DEFAULT 'no',
  `approved_status` varchar(191) NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'District 1', '2022-12-07 12:32:59', '2022-12-07 12:32:59'),
(2, 'District 2', '2022-12-07 12:33:05', '2022-12-07 12:33:05'),
(3, 'District 4', '2022-12-07 12:33:12', '2022-12-07 12:33:12'),
(4, 'District 3', '2022-12-07 12:33:19', '2022-12-07 12:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guides`
--

CREATE TABLE `guides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nid` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `contact` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL DEFAULT 'default.png',
  `status` varchar(191) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_29_171435_create_roles_table', 1),
(5, '2020_08_31_172541_create_districts_table', 1),
(6, '2020_08_31_204233_create_placetypes_table', 1),
(7, '2020_09_03_194543_create_abouts_table', 1),
(8, '2020_09_06_222951_create_guides_table', 1),
(9, '2020_09_13_202927_create_places_table', 1),
(10, '2020_09_23_031311_create_packages_table', 1),
(11, '2020_09_23_034558_create_package_place_table', 1),
(12, '2020_10_09_015653_create_bookings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `added_by` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `price` varchar(191) NOT NULL,
  `day` varchar(191) NOT NULL,
  `people` varchar(191) NOT NULL,
  `package_image` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `added_by`, `name`, `price`, `day`, `people`, `package_image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Janine francisco', 'Cabanatuan Package', '200', '2', '10', '2022-12-07-6390a6ad67353.jpg', '<div>Give Respect to Fallen soldiers&nbsp;</div>', '2022-12-07 12:43:57', '2022-12-07 12:43:57'),
(2, 'Janine francisco', 'Gapan City Escapade', '300', '4', '15', '2022-12-07-6390a6e8ca328.jpg', '<div>Pray and Heal your soul at Gapan City</div>', '2022-12-07 12:44:56', '2022-12-07 12:44:56'),
(3, 'Janine francisco', 'Minalungao', '200', '2', '20', '2022-12-07-6390a75b6ca9d.jpg', '<div>Explore Minalungao for value price</div>', '2022-12-07 12:46:51', '2022-12-07 12:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `package_place`
--

CREATE TABLE `package_place` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_place`
--

INSERT INTO `package_place` (`id`, `place_id`, `package_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 3, 2, NULL, NULL),
(3, 4, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `placetype_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `image` varchar(191) NOT NULL,
  `addedBy` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `district_id`, `placetype_id`, `description`, `image`, `addedBy`, `created_at`, `updated_at`) VALUES
(1, 'Camp Pangatian', 1, 2, '<div>&nbsp;a historical landmark in Cabanatuan City, commemorates the Filipino guerillas who rescued the 516 prisoners of war on January 30, 1945. Apparent from entry in the compound are the two National Historical Institute markers, written in English and Filipino. Going beyond the platform is a structure with its roof-deck known to be a large sundial. The Gnomon of the sundial has a mural that portrays the American and Filipino soldiers during the battle while the names of the 516 prisoners of war were also inscribed on the other side.</div>', '2022-12-07-6390a5fa7b801.jpg', 'Janine francisco', '2022-12-07 12:40:59', '2022-12-07 12:40:59'),
(2, 'Carron Dream Park', 2, 2, '<div>Hold your breath for something exciting visit Carron Dreampark Today</div>', '2022-12-07-6390a649dacca.jpg', 'Janine francisco', '2022-12-07 12:42:18', '2022-12-07 12:42:18'),
(3, 'Gapan Church', 4, 2, '<div>Exprience Holiness at Gapan Nueva Ecija</div>', '2022-12-07-6390a66e397bf.jpg', 'Janine francisco', '2022-12-07 12:42:54', '2022-12-07 12:42:54'),
(4, 'Minalungao', 4, 3, '<div>Freshen Up and enjoy the breeze.</div>', '2022-12-07-6390a72f1bcfa.jpg', 'Janine francisco', '2022-12-07 12:46:07', '2022-12-07 12:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `placetypes`
--

CREATE TABLE `placetypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `placetypes`
--

INSERT INTO `placetypes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Historical sites', '2022-12-07 12:33:33', '2022-12-07 12:33:33'),
(2, 'Park', '2022-12-07 12:33:47', '2022-12-07 12:33:47'),
(3, 'River', '2022-12-07 12:33:53', '2022-12-07 12:33:53'),
(4, 'Mountain', '2022-12-07 12:34:00', '2022-12-07 12:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'User', 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `contact` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL DEFAULT 'default.png',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `contact`, `email_verified_at`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Janine francisco', 'janine@gmail.com', '01670605075', '2022-12-06 19:51:07', '$2y$10$FN5ZfBNakpjETmEsMyyQhO92Fkxf/dxYRu71KE0SP.xdLsMd0zKPC', 'default.png', 'pXhHInlSiCRds68bjFqJ212h2XE8Zv0xLxvty7NzF2Lj1Mk903yLDznA4THk', '2020-09-01 13:18:10', '2022-12-07 12:29:39'),
(2, 2, 'Brain Stocks', 'user@gmail.com', '01712121212', NULL, '$2y$10$wNQIkz9yFUEh.bFLX.H3KuQdH4LBCXo44GRPiWAk5muYiSgH59S/u', 'default.png', NULL, '2020-09-01 13:18:10', '2020-09-01 13:18:10'),
(3, 2, 'Agsmarter MatangLawin', 'landayanjohncarlo5@gmail.com', '12345678', '2022-12-06 19:21:19', '$2y$10$9mRJiUlQTxS.mLmFxGg6ne3lYM.IZuEjqmgj6V3tmwPcgRn0lfSq6', 'default.png', NULL, '2022-12-06 18:35:04', '2022-12-06 19:21:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `districts_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guides`
--
ALTER TABLE `guides`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guides_nid_unique` (`nid`),
  ADD UNIQUE KEY `guides_email_unique` (`email`),
  ADD UNIQUE KEY `guides_contact_unique` (`contact`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_place`
--
ALTER TABLE `package_place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placetypes`
--
ALTER TABLE `placetypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guides`
--
ALTER TABLE `guides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `package_place`
--
ALTER TABLE `package_place`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `placetypes`
--
ALTER TABLE `placetypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
