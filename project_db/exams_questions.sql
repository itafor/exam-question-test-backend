-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2021 at 05:44 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exams_questions`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Aptitude', NULL, NULL),
(2, 'Logical', NULL, NULL),
(3, 'Technical', NULL, NULL);

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
(5, '2021_11_17_040219_create_questions_table', 1),
(6, '2021_11_17_040610_create_options_table', 1),
(7, '2021_11_17_040635_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `option` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_correct` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option`, `option_type`, `is_correct`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Behavior of human beings', 'A', 0, NULL, '2021-11-17 13:55:48', '2021-11-17 13:55:48'),
(2, 1, 'Insects', 'B', 1, NULL, '2021-11-17 13:55:48', '2021-11-17 13:55:48'),
(3, 1, 'The origin and history of technical and scientific terms', 'C', 0, NULL, '2021-11-17 13:55:48', '2021-11-17 13:55:48'),
(4, 1, 'The formation of rocks', 'D', 0, NULL, '2021-11-17 13:55:48', '2021-11-17 13:55:48'),
(5, 2, 'Labour Party', 'A', 0, NULL, '2021-11-17 13:59:32', '2021-11-17 13:59:32'),
(6, 2, 'Nazi Party', 'B', 1, NULL, '2021-11-17 13:59:32', '2021-11-17 13:59:32'),
(7, 2, 'Ku-Klux-Klan', 'C', 0, NULL, '2021-11-17 13:59:32', '2021-11-17 13:59:32'),
(8, 2, 'Democratic Party', 'D', 0, NULL, '2021-11-17 13:59:32', '2021-11-17 13:59:32'),
(9, 3, 'sliding to rolling', 'A', 1, NULL, '2021-11-17 14:01:50', '2021-11-17 14:01:50'),
(10, 3, 'rolling to sliding', 'B', 0, NULL, '2021-11-17 14:01:50', '2021-11-17 14:01:50'),
(11, 3, 'potential energy to kinetic energy', 'C', 0, NULL, '2021-11-17 14:01:50', '2021-11-17 14:01:50'),
(12, 3, 'dynamic to static', 'D', 0, NULL, '2021-11-17 14:01:50', '2021-11-17 14:01:50'),
(13, 4, 'Birds', 'A', 0, NULL, '2021-11-17 17:12:01', '2021-11-17 17:18:35'),
(14, 4, 'Cell formation', 'B', 0, NULL, '2021-11-17 17:12:01', '2021-11-17 17:18:35'),
(15, 4, 'Relation between organisms and their environment', 'C', 1, NULL, '2021-11-17 17:12:01', '2021-11-17 17:19:12'),
(16, 4, 'Tissues', 'D', 0, NULL, '2021-11-17 17:12:01', '2021-11-17 17:19:12'),
(17, 5, 'modifier', 'A', 1, NULL, '2021-11-17 18:36:33', '2021-11-17 18:36:33'),
(18, 5, 'function B', 'A', 0, NULL, '2021-11-17 18:36:33', '2021-11-18 11:58:11'),
(19, 5, 'alphanumeric C', 'C', 0, NULL, '2021-11-17 18:36:33', '2021-11-18 11:58:11'),
(20, 5, 'adjustment D', 'D', 0, NULL, '2021-11-17 18:36:33', '2021-11-18 11:58:11'),
(21, 6, 'modifier', 'A', 1, NULL, '2021-11-17 18:37:44', '2021-11-17 18:37:44'),
(22, 6, 'function', 'A', 0, NULL, '2021-11-17 18:37:44', '2021-11-17 18:37:44'),
(23, 6, 'alphanumeric', 'C', 0, NULL, '2021-11-17 18:37:44', '2021-11-17 18:37:44'),
(24, 6, 'adjustment', 'D', 0, NULL, '2021-11-17 18:37:44', '2021-11-17 18:37:44'),
(25, 7, 'modifier', 'A', 1, NULL, '2021-11-18 08:38:51', '2021-11-18 08:38:51'),
(26, 7, 'function', 'A', 0, NULL, '2021-11-18 08:38:51', '2021-11-18 08:38:51'),
(27, 7, 'alphanumeric', 'C', 0, NULL, '2021-11-18 08:38:51', '2021-11-18 08:38:51'),
(28, 7, 'adjustment', 'D', 0, NULL, '2021-11-18 08:38:51', '2021-11-18 08:38:51'),
(29, 8, '3', 'A', 0, NULL, '2021-11-18 08:40:06', '2021-11-18 08:40:06'),
(30, 8, '45', 'B', 0, NULL, '2021-11-18 08:40:06', '2021-11-18 08:40:06'),
(31, 8, '5', 'C', 0, NULL, '2021-11-18 08:40:06', '2021-11-18 08:40:06'),
(32, 8, '2', 'D', 0, NULL, '2021-11-18 08:40:06', '2021-11-18 08:40:06'),
(33, 9, 'Asia', 'A', 0, NULL, '2021-11-18 10:00:52', '2021-11-18 10:00:52'),
(34, 9, 'Africa', 'B', 0, NULL, '2021-11-18 10:00:52', '2021-11-18 10:00:52'),
(35, 9, 'Europe', 'C', 0, NULL, '2021-11-18 10:00:52', '2021-11-18 10:00:52'),
(36, 9, 'Australia', 'D', 0, NULL, '2021-11-18 10:00:52', '2021-11-18 10:00:52'),
(37, 10, 'Junagarh, Gujarat', 'A', 0, NULL, '2021-11-18 10:05:20', '2021-11-18 11:42:11'),
(38, 10, 'Diphu, Assam', 'B', 0, NULL, '2021-11-18 10:05:20', '2021-11-18 11:42:11'),
(39, 10, 'Kohima, Nagaland', 'C', 0, NULL, '2021-11-18 10:05:20', '2021-11-18 11:42:11'),
(40, 10, 'Gangtok, Sikkim', 'D', 0, NULL, '2021-11-18 10:05:20', '2021-11-18 11:42:11');

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
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `category_id`, `question`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Entomology is the science that studies', '2021-11-18 11:49:26', '2021-11-17 13:55:48', '2021-11-18 11:49:26'),
(2, 1, 'Hitler party which came into power in 1933 is known as', NULL, '2021-11-17 13:59:32', '2021-11-17 13:59:32'),
(3, 1, 'Friction can be reduced by changing from', NULL, '2021-11-17 14:01:50', '2021-11-17 14:01:50'),
(4, 2, 'Ecology deals with', '2021-11-18 11:52:59', '2021-11-17 17:12:01', '2021-11-18 11:52:59'),
(5, 3, 'Ctrl, Shift and Alt are called .......... keys. A', NULL, '2021-11-17 18:36:33', '2021-11-18 11:58:11'),
(6, 2, 'Ctrl, Shift and Alt are called .......... keys.', '2021-11-18 11:57:03', '2021-11-17 18:37:44', '2021-11-18 11:57:03'),
(7, 2, 'Ctrl, Shift and Alt are called .......... keys.', '2021-11-18 11:54:16', '2021-11-18 08:38:50', '2021-11-18 11:54:16'),
(8, 2, '3+2 = ?', '2021-11-18 11:53:52', '2021-11-18 08:40:06', '2021-11-18 11:53:52'),
(9, 3, 'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of', '2021-11-18 11:53:20', '2021-11-18 10:00:52', '2021-11-18 11:53:20'),
(10, 3, 'Garampani sanctuary is locate', '2021-11-18 11:52:31', '2021-11-18 10:05:20', '2021-11-18 11:52:31');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `options`
--
ALTER TABLE `options`
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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
