-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Bulan Mei 2022 pada 18.54
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `services`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `certificates`
--

CREATE TABLE `certificates` (
  `id_certificate` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `certificates`
--

INSERT INTO `certificates` (`id_certificate`, `user_id`, `name`, `description`, `file`, `created_at`, `updated_at`) VALUES
(1, 123123, 'Nama 1', 'Description', 'File', '2022-04-27 04:00:18', '2022-04-27 04:00:18'),
(2, 123123, 'Nama 2', 'Description', 'File', '2022-04-27 04:09:30', '2022-04-27 04:09:30'),
(3, 123123, 'Nama 3', 'Description', 'File', '2022-04-27 04:09:41', '2022-04-27 04:09:41'),
(4, 123123, 'Nama 4', 'Description', 'File', '2022-04-27 04:09:44', '2022-04-27 04:09:44'),
(5, 123123, 'Nama 5', 'Description', 'File', '2022-04-27 04:09:48', '2022-04-27 04:09:48'),
(6, 123123, 'Nama 6', 'Description', 'File', '2022-04-27 04:09:55', '2022-04-27 04:09:55'),
(7, 123123, 'Nama 7', 'Description', 'File', '2022-04-27 04:09:58', '2022-04-27 04:09:58'),
(8, 123123, 'Nama 8', 'Description', 'File', '2022-04-27 04:10:02', '2022-04-27 04:10:02'),
(9, 123123, 'Nama 9', 'Description', 'File', '2022-04-27 04:10:06', '2022-04-27 04:10:06'),
(10, 123123, 'Nama 10', 'Description', 'File', '2022-04-27 04:10:09', '2022-04-27 04:10:09'),
(11, 123123, 'Nama 11', 'Description', 'File', '2022-04-27 04:10:13', '2022-04-27 04:10:13'),
(12, 123123, 'Nama 12', 'Description', 'File', '2022-04-27 04:10:16', '2022-04-27 04:10:16'),
(13, 123123, 'Nama 13', 'Description', 'File', '2022-04-27 04:10:19', '2022-04-27 04:10:19'),
(14, 123123, 'Nama 14', 'Description', 'File', '2022-04-27 04:10:22', '2022-04-27 04:10:22'),
(15, 123123, 'Nama 15', 'Description', 'File', '2022-04-27 04:10:24', '2022-04-27 04:10:24'),
(16, 123123, 'Nama 16', 'Description', 'File', '2022-04-27 04:10:26', '2022-04-27 04:10:26'),
(17, 123123, 'Nama 17', 'Description', 'File', '2022-04-27 04:10:28', '2022-04-27 04:10:28'),
(18, 123123, 'Nama 18', 'Description', 'File', '2022-04-27 04:10:31', '2022-04-27 04:10:31'),
(19, 123123, 'Nama 19', 'Description', 'File', '2022-04-27 04:10:34', '2022-04-27 04:10:34'),
(20, 123123, 'Nama 20', 'Description', 'File', '2022-04-27 04:10:37', '2022-04-27 04:10:37'),
(21, 123123, 'Nama 21', 'Description', 'File', '2022-04-27 04:10:41', '2022-04-27 04:10:41'),
(22, 123123, 'Nama 22', 'Description', 'File', '2022-04-27 04:10:43', '2022-04-27 04:10:43'),
(23, 123123, 'Nama 23', 'Description', 'File', '2022-04-27 04:10:45', '2022-04-27 04:10:45'),
(24, 123123, 'Nama 24', 'Description', 'File', '2022-04-27 04:10:48', '2022-04-27 04:10:48'),
(25, 123123, 'Nama 25', 'Description', 'File', '2022-04-27 04:10:50', '2022-04-27 04:10:50'),
(26, 123123, 'Nama 26', 'Description', 'File', '2022-04-27 04:10:58', '2022-04-27 04:10:58'),
(27, 123123, 'Nama 27', 'Description', 'File', '2022-04-27 04:11:00', '2022-04-27 04:11:00'),
(28, 123123, 'Nama 28', 'Description', 'File', '2022-04-27 04:11:03', '2022-04-27 04:11:03'),
(29, 123123, 'Nama 29', 'Description', 'File', '2022-04-27 04:11:07', '2022-04-27 04:11:07'),
(30, 123123, 'Nama 30', 'Description', 'File', '2022-04-27 04:11:11', '2022-04-27 04:11:11'),
(31, 123123, 'Nama 31', 'Description', 'File', '2022-04-27 04:11:14', '2022-04-27 04:11:14'),
(32, 123123, 'Nama 32', 'Description', 'File', '2022-04-27 04:11:20', '2022-04-27 04:11:20'),
(33, 123123, 'Nama 33', 'Description', 'File', '2022-04-27 04:11:23', '2022-04-27 04:11:23'),
(34, 123123, 'Nama 34', 'Description', 'File', '2022-04-27 04:11:26', '2022-04-27 04:11:26'),
(35, 123123, 'Nama 35', 'Description', 'File', '2022-04-27 04:11:29', '2022-04-27 04:11:29'),
(36, 123123, 'Nama 36', 'Description', 'File', '2022-04-27 04:11:32', '2022-04-27 04:11:32'),
(37, 123123, 'Nama 37', 'Description', 'File', '2022-04-27 04:11:35', '2022-04-27 04:11:35'),
(38, 123123, 'Nama 38', 'Description', 'File', '2022-04-27 04:11:37', '2022-04-27 04:11:37'),
(39, 123123, 'Nama 39', 'Description', 'File', '2022-04-27 04:11:40', '2022-04-27 04:11:40'),
(40, 123123, 'Nama 40', 'Description', 'File', '2022-04-27 04:11:44', '2022-04-27 04:11:44'),
(41, 1, 'Percobaan 1', 'Ini hanya percobaan', '1651796323.png', '2022-05-06 00:18:44', '2022-05-06 00:18:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `certificate_fields`
--

CREATE TABLE `certificate_fields` (
  `certificate_field_id` int(11) NOT NULL,
  `certificate_id` int(11) NOT NULL,
  `certificate_field` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `certificate_fields`
--

INSERT INTO `certificate_fields` (`certificate_field_id`, `certificate_id`, `certificate_field`) VALUES
(13, 41, 'Apa sih bosku'),
(14, 41, 'Apa sih bosku yang kedua'),
(15, 41, 'Apa sih bosku yang ketiga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `certificate_users`
--

CREATE TABLE `certificate_users` (
  `certificate_user_id` int(11) NOT NULL,
  `certificate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Maureen Ankunding', 'lbednar@example.net', '2022-04-21 19:41:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7SZCDav34a', '2022-04-21 19:41:05', '2022-04-21 19:41:05'),
(2, 'Ms. Jane Altenwerth', 'rogahn.christy@example.com', '2022-04-21 19:41:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jKzHUXWHqH', '2022-04-21 19:41:05', '2022-04-21 19:41:05'),
(3, 'Rita Koch Sr.', 'stanton.lamont@example.com', '2022-04-21 19:41:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YgtHzlrApi', '2022-04-21 19:41:05', '2022-04-21 19:41:05'),
(4, 'Janessa Wolf', 'cummings.nikko@example.net', '2022-04-21 19:41:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RjC8dobBQc', '2022-04-21 19:41:05', '2022-04-21 19:41:05'),
(5, 'Michele O\'Conner', 'qokon@example.net', '2022-04-21 19:41:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VpXgfFLFcM', '2022-04-21 19:41:05', '2022-04-21 19:41:05'),
(6, 'Jamir Stanton', 'allan.casper@example.com', '2022-04-21 19:41:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ukbm1fbSNi', '2022-04-21 19:41:05', '2022-04-21 19:41:05'),
(7, 'Arely Kub MD', 'rowland.conn@example.net', '2022-04-21 19:41:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FwGW99pD8h', '2022-04-21 19:41:05', '2022-04-21 19:41:05'),
(8, 'Fredrick Herman', 'maymie.douglas@example.com', '2022-04-21 19:41:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h1bZEUZ4B0', '2022-04-21 19:41:05', '2022-04-21 19:41:05'),
(9, 'Jerrod Ratke', 'jeff.reilly@example.net', '2022-04-21 19:41:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5l8VXSDvqB', '2022-04-21 19:41:05', '2022-04-21 19:41:05'),
(10, 'Jolie Bergnaum', 'rey63@example.org', '2022-04-21 19:41:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DUoQ2j2sdk', '2022-04-21 19:41:05', '2022-04-21 19:41:05'),
(11, 'Burnice Renner', 'oconner.kyra@example.net', '2022-04-21 19:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mjRMlfxspR', '2022-04-21 19:41:18', '2022-04-21 19:41:18'),
(12, 'Evie Effertz', 'eichmann.delmer@example.com', '2022-04-21 19:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yU5KR4m2hO', '2022-04-21 19:41:18', '2022-04-21 19:41:18'),
(13, 'Mr. Gregory Kling PhD', 'mohammad60@example.org', '2022-04-21 19:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm7OeW9orZz', '2022-04-21 19:41:18', '2022-04-21 19:41:18'),
(14, 'Mozell Leannon', 'lakin.cheyanne@example.org', '2022-04-21 19:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MsPxjB5dnq', '2022-04-21 19:41:18', '2022-04-21 19:41:18'),
(15, 'Mr. Tony Carter', 'nella.johns@example.org', '2022-04-21 19:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'O62dGKo8cw', '2022-04-21 19:41:18', '2022-04-21 19:41:18'),
(16, 'Miss Dana Lynch Jr.', 'schumm.jose@example.com', '2022-04-21 19:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iuU5lqWgPd', '2022-04-21 19:41:18', '2022-04-21 19:41:18'),
(17, 'Stephany Reynolds', 'qernser@example.org', '2022-04-21 19:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'msxrONZxux', '2022-04-21 19:41:18', '2022-04-21 19:41:18'),
(18, 'Darrin Runolfsson', 'terrell.senger@example.com', '2022-04-21 19:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A80oI0tj5w', '2022-04-21 19:41:18', '2022-04-21 19:41:18'),
(19, 'Rowland Schowalter', 'gregg10@example.net', '2022-04-21 19:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ANr4U0TsJf', '2022-04-21 19:41:18', '2022-04-21 19:41:18'),
(20, 'Reed Rau', 'freida32@example.com', '2022-04-21 19:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gTzeXgOjl5', '2022-04-21 19:41:18', '2022-04-21 19:41:18'),
(21, 'Silas McKenzie', 'dwolff@example.net', '2022-04-21 21:16:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4bujXeoNjO', '2022-04-21 21:16:41', '2022-04-21 21:16:41'),
(22, 'Carter Gottlieb V', 'padberg.isidro@example.org', '2022-04-21 21:16:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1hLYv0M8up', '2022-04-21 21:16:41', '2022-04-21 21:16:41'),
(23, 'Dr. Quentin Purdy I', 'kayli.kuvalis@example.net', '2022-04-21 21:16:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ffvtLtf0S5', '2022-04-21 21:16:41', '2022-04-21 21:16:41'),
(24, 'Prof. Rowland Buckridge IV', 'domenico.bergnaum@example.org', '2022-04-21 21:16:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm1uYkvWGYA', '2022-04-21 21:16:41', '2022-04-21 21:16:41'),
(25, 'David Kuhlman', 'tod.corwin@example.com', '2022-04-21 21:16:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tfNNeYp6rk', '2022-04-21 21:16:41', '2022-04-21 21:16:41'),
(26, 'Madyson Schulist', 'joel.wiza@example.com', '2022-04-21 21:16:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ni1xGcqQ1X', '2022-04-21 21:16:41', '2022-04-21 21:16:41'),
(27, 'Idella Bayer DVM', 'schneider.tanner@example.net', '2022-04-21 21:16:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0Bh4QudXRR', '2022-04-21 21:16:41', '2022-04-21 21:16:41'),
(28, 'Rubye Ryan', 'stacy.murazik@example.org', '2022-04-21 21:16:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ShUO0E9igp', '2022-04-21 21:16:41', '2022-04-21 21:16:41'),
(29, 'Nola Padberg', 'keeley31@example.org', '2022-04-21 21:16:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IlgakXZJsZ', '2022-04-21 21:16:41', '2022-04-21 21:16:41'),
(30, 'Mrs. Aisha Stehr DVM', 'volkman.hunter@example.com', '2022-04-21 21:16:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5zOY1pAAnu', '2022-04-21 21:16:41', '2022-04-21 21:16:41'),
(31, 'Prof. Dee Abernathy', 'swiza@example.org', '2022-04-21 21:16:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VTU9qZlE58', '2022-04-21 21:16:43', '2022-04-21 21:16:43'),
(32, 'Velma Walker', 'hfeeney@example.net', '2022-04-21 21:16:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0aEo4EMMmQ', '2022-04-21 21:16:43', '2022-04-21 21:16:43'),
(33, 'Sonny Spinka', 'johnathan87@example.com', '2022-04-21 21:16:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tw3TTXiNLr', '2022-04-21 21:16:43', '2022-04-21 21:16:43'),
(34, 'Mario Von', 'kgoldner@example.org', '2022-04-21 21:16:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V7tjFWHqOG', '2022-04-21 21:16:43', '2022-04-21 21:16:43'),
(35, 'Chet Von', 'michaela43@example.com', '2022-04-21 21:16:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1vZ34nQwOp', '2022-04-21 21:16:43', '2022-04-21 21:16:43'),
(36, 'Rocky Schumm', 'cstroman@example.com', '2022-04-21 21:16:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '74SqMBIhV4', '2022-04-21 21:16:43', '2022-04-21 21:16:43'),
(37, 'Maddison Hill Sr.', 'zelma88@example.net', '2022-04-21 21:16:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hYoxNOAInT', '2022-04-21 21:16:43', '2022-04-21 21:16:43'),
(38, 'Ashlynn Langworth II', 'rubie26@example.net', '2022-04-21 21:16:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v0mYcpwMhF', '2022-04-21 21:16:43', '2022-04-21 21:16:43'),
(39, 'Kelton Kiehn Jr.', 'rubie81@example.com', '2022-04-21 21:16:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RQGQ6ztU3l', '2022-04-21 21:16:43', '2022-04-21 21:16:43'),
(40, 'Dr. Jasen Erdman IV', 'weimann.genoveva@example.com', '2022-04-21 21:16:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z1tzSe3tpw', '2022-04-21 21:16:43', '2022-04-21 21:16:43'),
(41, 'Martin Rau', 'otto91@example.com', '2022-04-21 21:16:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VlUDq7UsCa', '2022-04-21 21:16:45', '2022-04-21 21:16:45'),
(42, 'Mr. Norris Bradtke', 'urunolfsson@example.net', '2022-04-21 21:16:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A9gVdbDJTc', '2022-04-21 21:16:45', '2022-04-21 21:16:45'),
(43, 'Miss Janiya Pouros I', 'palma.fisher@example.com', '2022-04-21 21:16:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4zmKnVRZIo', '2022-04-21 21:16:45', '2022-04-21 21:16:45'),
(44, 'Polly Kihn', 'vernice92@example.net', '2022-04-21 21:16:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bFpqvum7ta', '2022-04-21 21:16:45', '2022-04-21 21:16:45'),
(45, 'Ben Ryan', 'dion.pfeffer@example.com', '2022-04-21 21:16:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NwuFxtxGlJ', '2022-04-21 21:16:45', '2022-04-21 21:16:45'),
(46, 'Elise Flatley', 'ehettinger@example.com', '2022-04-21 21:16:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2SwsngmiGM', '2022-04-21 21:16:45', '2022-04-21 21:16:45'),
(47, 'Amanda Schinner', 'armstrong.josh@example.org', '2022-04-21 21:16:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hdkeKotEYE', '2022-04-21 21:16:45', '2022-04-21 21:16:45'),
(48, 'Dr. Ivy Denesik Sr.', 'deon.collins@example.com', '2022-04-21 21:16:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rrv970wpFd', '2022-04-21 21:16:45', '2022-04-21 21:16:45'),
(49, 'Mrs. Lera Lubowitz V', 'jalen.koepp@example.org', '2022-04-21 21:16:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GH1cAptWf6', '2022-04-21 21:16:45', '2022-04-21 21:16:45'),
(50, 'Ebony Bartell', 'ara54@example.com', '2022-04-21 21:16:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KVolYuKUZ0', '2022-04-21 21:16:45', '2022-04-21 21:16:45'),
(51, 'Mrs. Maud Simonis III', 'alvena.ondricka@example.net', '2022-04-21 21:16:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V5uJbVDoeI', '2022-04-21 21:16:46', '2022-04-21 21:16:46'),
(52, 'Prof. Jeff Schroeder', 'ewald.baumbach@example.net', '2022-04-21 21:16:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0LaxiQiTsy', '2022-04-21 21:16:46', '2022-04-21 21:16:46'),
(53, 'Dr. Marcelo Flatley', 'turcotte.alexandre@example.net', '2022-04-21 21:16:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M5nFtgFG3T', '2022-04-21 21:16:46', '2022-04-21 21:16:46'),
(54, 'Adan Reilly', 'marks.lura@example.org', '2022-04-21 21:16:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P2m7XfKSSw', '2022-04-21 21:16:46', '2022-04-21 21:16:46'),
(55, 'Lilian Robel', 'ryan.sanford@example.com', '2022-04-21 21:16:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dc927oxdgy', '2022-04-21 21:16:46', '2022-04-21 21:16:46'),
(56, 'Dr. Buddy Kassulke', 'keyon.hodkiewicz@example.net', '2022-04-21 21:16:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '94hbhWKXbb', '2022-04-21 21:16:46', '2022-04-21 21:16:46'),
(57, 'Alexandria McGlynn V', 'darby.ohara@example.com', '2022-04-21 21:16:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o932vgTKXb', '2022-04-21 21:16:46', '2022-04-21 21:16:46'),
(58, 'Meghan Fay', 'dickinson.grayce@example.org', '2022-04-21 21:16:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rL6HpwWhxf', '2022-04-21 21:16:46', '2022-04-21 21:16:46'),
(59, 'Dr. Shawn Schaden', 'harvey.meaghan@example.net', '2022-04-21 21:16:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cjUYPuEuot', '2022-04-21 21:16:46', '2022-04-21 21:16:46'),
(60, 'Prof. Vita Watsica', 'carmela38@example.org', '2022-04-21 21:16:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zPDSUNbyQE', '2022-04-21 21:16:46', '2022-04-21 21:16:46'),
(61, 'Wava Aufderhar', 'wunsch.cullen@example.com', '2022-04-21 21:16:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3Hmk7zXIb2', '2022-04-21 21:16:47', '2022-04-21 21:16:47'),
(62, 'Marie Kling', 'cathryn.marvin@example.com', '2022-04-21 21:16:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wOgpYyQDM8', '2022-04-21 21:16:47', '2022-04-21 21:16:47'),
(63, 'Hyman Kovacek', 'marion.pfannerstill@example.com', '2022-04-21 21:16:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lh5PYohdp6', '2022-04-21 21:16:48', '2022-04-21 21:16:48'),
(64, 'Mrs. Kelly Jaskolski', 'macejkovic.francisco@example.com', '2022-04-21 21:16:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wNQdQETIap', '2022-04-21 21:16:48', '2022-04-21 21:16:48'),
(65, 'Prof. Johnson Pollich V', 'emerald.koch@example.org', '2022-04-21 21:16:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CzFo2SsoKm', '2022-04-21 21:16:48', '2022-04-21 21:16:48'),
(66, 'Jade Anderson', 'noemi31@example.org', '2022-04-21 21:16:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'smaUhR1lsB', '2022-04-21 21:16:48', '2022-04-21 21:16:48'),
(67, 'Orland Cummerata', 'rmueller@example.com', '2022-04-21 21:16:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RFELMbcrYt', '2022-04-21 21:16:48', '2022-04-21 21:16:48'),
(68, 'Dr. Leonora Kub', 'rosenbaum.donnell@example.com', '2022-04-21 21:16:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EIn3XiglOA', '2022-04-21 21:16:48', '2022-04-21 21:16:48'),
(69, 'Dr. Al Goyette DDS', 'marquardt.vicky@example.org', '2022-04-21 21:16:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nSARPBcCmV', '2022-04-21 21:16:48', '2022-04-21 21:16:48'),
(70, 'Gus Brekke', 'armani.hackett@example.com', '2022-04-21 21:16:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7V9G80HiU6', '2022-04-21 21:16:48', '2022-04-21 21:16:48');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id_certificate`);

--
-- Indeks untuk tabel `certificate_fields`
--
ALTER TABLE `certificate_fields`
  ADD PRIMARY KEY (`certificate_field_id`),
  ADD KEY `certificate_id` (`certificate_id`);

--
-- Indeks untuk tabel `certificate_users`
--
ALTER TABLE `certificate_users`
  ADD PRIMARY KEY (`certificate_user_id`),
  ADD KEY `certificate_id` (`certificate_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id_certificate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `certificate_fields`
--
ALTER TABLE `certificate_fields`
  MODIFY `certificate_field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `certificate_users`
--
ALTER TABLE `certificate_users`
  MODIFY `certificate_user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `certificate_fields`
--
ALTER TABLE `certificate_fields`
  ADD CONSTRAINT `certificatesfields` FOREIGN KEY (`certificate_id`) REFERENCES `certificates` (`id_certificate`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `certificate_users`
--
ALTER TABLE `certificate_users`
  ADD CONSTRAINT `certificatesusers` FOREIGN KEY (`certificate_id`) REFERENCES `certificates` (`id_certificate`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
