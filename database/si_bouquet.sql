-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jul 2023 pada 14.57
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si_bouquet`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `cover`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Bouquet Bunga Asli', 'bouquet-bunga-asli', 'bouquet-bunga-asli.png', NULL, '2023-07-21 13:05:07', '2023-07-21 13:42:35'),
(2, 'Bouquet Uang', 'bouquet-uang', 'bouquet-uang.jpg', NULL, '2023-07-21 13:09:44', '2023-07-21 13:32:37'),
(3, 'Bouquet Bunga Plastik', 'bouquet-bunga-plastik', 'bouquet-bunga-plastik.png', NULL, '2023-07-21 13:34:41', '2023-07-21 13:36:12'),
(4, 'Bouquet Snack', 'bouquet-snack', 'bouquet-snack.png', NULL, '2023-07-21 13:45:20', '2023-07-21 13:45:20'),
(5, 'Bouquet Custom', 'bouquet-custom', 'bouquet-custom.png', NULL, '2023-07-21 13:48:20', '2023-07-21 13:48:20');

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
-- Struktur dari tabel `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_status` tinyint(1) NOT NULL DEFAULT 0,
  `file_sort` int(11) NOT NULL DEFAULT 0,
  `mediable_id` int(10) UNSIGNED NOT NULL,
  `mediable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`, `file_size`, `file_status`, `file_sort`, `mediable_id`, `mediable_type`, `created_at`, `updated_at`) VALUES
(4, 'money-bouquet-at-100rb1689972929-1.jpg', 'image/jpeg', '272384', 1, 1, 2, 'App\\Models\\Product', '2023-07-21 13:55:29', '2023-07-21 13:55:29'),
(5, 'rose-bouquet1689972954-1.jpg', 'image/jpeg', '290488', 1, 1, 1, 'App\\Models\\Product', '2023-07-21 13:55:54', '2023-07-21 13:55:54'),
(6, 'clara1689973068-1.jpg', 'image/jpeg', '184187', 1, 1, 4, 'App\\Models\\Product', '2023-07-21 13:57:48', '2023-07-21 13:57:48'),
(7, 'meysa1689973207-1.jpg', 'image/jpeg', '173759', 1, 1, 5, 'App\\Models\\Product', '2023-07-21 14:00:07', '2023-07-21 14:00:07'),
(8, 'asteria1689973304-1.jpg', 'image/jpeg', '178261', 1, 1, 6, 'App\\Models\\Product', '2023-07-21 14:01:44', '2023-07-21 14:01:44'),
(9, 'catherina1689973516-1.jpg', 'image/jpeg', '257865', 1, 1, 7, 'App\\Models\\Product', '2023-07-21 14:05:16', '2023-07-21 14:05:16'),
(10, 'shabrina1689973633-1.jpg', 'image/jpeg', '157135', 1, 1, 8, 'App\\Models\\Product', '2023-07-21 14:07:14', '2023-07-21 14:07:14'),
(11, 'money-puple-at-10rb1689973755-1.jpg', 'image/jpeg', '151371', 1, 1, 9, 'App\\Models\\Product', '2023-07-21 14:09:15', '2023-07-21 14:09:15'),
(12, 'mix-money1689973933-1.jpg', 'image/jpeg', '167728', 1, 1, 10, 'App\\Models\\Product', '2023-07-21 14:12:14', '2023-07-21 14:12:14'),
(13, 'money-blue-at-50rb1689974091-1.jpg', 'image/jpeg', '209758', 1, 1, 11, 'App\\Models\\Product', '2023-07-21 14:14:51', '2023-07-21 14:14:51'),
(14, 'money-doll1689996837-1.jpg', 'image/jpeg', '167389', 1, 1, 12, 'App\\Models\\Product', '2023-07-21 20:33:58', '2023-07-21 20:33:58'),
(15, 'money-green-at-20rb1689997316-1.jpg', 'image/jpeg', '178555', 1, 1, 13, 'App\\Models\\Product', '2023-07-21 20:41:56', '2023-07-21 20:41:56'),
(16, 'pramesti1689998744-1.jpg', 'image/jpeg', '54019', 1, 1, 14, 'App\\Models\\Product', '2023-07-21 21:05:44', '2023-07-21 21:05:44'),
(17, 'calista1689999611-1.jpg', 'image/jpeg', '88284', 1, 1, 15, 'App\\Models\\Product', '2023-07-21 21:20:11', '2023-07-21 21:20:11'),
(18, 'tasya1690000087-1.jpg', 'image/jpeg', '44912', 1, 1, 16, 'App\\Models\\Product', '2023-07-21 21:28:07', '2023-07-21 21:28:07'),
(19, 'helena1690000268-1.jpg', 'image/jpeg', '46982', 1, 1, 17, 'App\\Models\\Product', '2023-07-21 21:31:08', '2023-07-21 21:31:08'),
(20, 'lucia1690000740-1.jpg', 'image/jpeg', '43796', 1, 1, 18, 'App\\Models\\Product', '2023-07-21 21:39:00', '2023-07-21 21:39:00'),
(21, 'danisa1690002407-1.jpg', 'image/jpeg', '79988', 1, 1, 19, 'App\\Models\\Product', '2023-07-21 22:06:47', '2023-07-21 22:06:47'),
(22, 'random-snack1690003512-1.jpg', 'image/jpeg', '233231', 1, 1, 20, 'App\\Models\\Product', '2023-07-21 22:25:13', '2023-07-21 22:25:13'),
(23, 'random-snack-tipe-a1690003851-1.jpg', 'image/jpeg', '80298', 1, 1, 21, 'App\\Models\\Product', '2023-07-21 22:30:52', '2023-07-21 22:30:52'),
(24, 'timebreak-snack1690003910-1.jpg', 'image/jpeg', '78887', 1, 1, 22, 'App\\Models\\Product', '2023-07-21 22:31:51', '2023-07-21 22:31:51'),
(25, 'random-snack-coffee1690004053-1.jpg', 'image/jpeg', '73765', 1, 1, 23, 'App\\Models\\Product', '2023-07-21 22:34:13', '2023-07-21 22:34:13'),
(26, 'nextar-snack1690004122-1.jpg', 'image/jpeg', '206836', 1, 1, 24, 'App\\Models\\Product', '2023-07-21 22:35:22', '2023-07-21 22:35:22'),
(28, 'chocholatos-snack1690004223-1.jpg', 'image/jpeg', '127310', 1, 1, 25, 'App\\Models\\Product', '2023-07-21 22:37:03', '2023-07-21 22:37:03'),
(29, 'silverqueen-doll1690004636-1.jpg', 'image/jpeg', '45431', 1, 1, 26, 'App\\Models\\Product', '2023-07-21 22:43:56', '2023-07-21 22:43:56'),
(30, 'rose-doll1690004690-1.jpg', 'image/jpeg', '43206', 1, 1, 27, 'App\\Models\\Product', '2023-07-21 22:44:51', '2023-07-21 22:44:51'),
(31, 'bengbeng-silverqueen1690004763-1.jpg', 'image/jpeg', '45552', 1, 1, 28, 'App\\Models\\Product', '2023-07-21 22:46:03', '2023-07-21 22:46:03'),
(32, 'grow-ribbon1690004827-1.jpg', 'image/jpeg', '199126', 1, 1, 29, 'App\\Models\\Product', '2023-07-21 22:47:07', '2023-07-21 22:47:07'),
(33, 'silverqueen-rose-dairymilk1690004902-1.jpg', 'image/jpeg', '53637', 1, 1, 30, 'App\\Models\\Product', '2023-07-21 22:48:22', '2023-07-21 22:48:22'),
(34, 'money-doll1690004971-1.jpg', 'image/jpeg', '68321', 1, 1, 31, 'App\\Models\\Product', '2023-07-21 22:49:31', '2023-07-21 22:49:31');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_02_04_020715_create_permissions_table', 1),
(11, '2022_02_04_020803_create_roles_table', 1),
(12, '2022_02_04_020910_create_role_user_table', 1),
(13, '2022_02_04_021018_create_permission_role_table', 1),
(14, '2022_02_15_033304_create_categories_table', 1),
(15, '2022_02_16_023113_create_tags_table', 1),
(16, '2022_02_16_030128_create_products_table', 1),
(17, '2022_02_16_031210_create_media_table', 1),
(18, '2022_02_16_055609_create_product_tags_table', 1),
(19, '2022_02_16_232808_create_slides_table', 1),
(20, '2022_02_21_114000_create_orders_table', 1),
(21, '2022_02_22_010334_create_order_items_table', 1),
(22, '2022_02_22_012915_create_shipments_table', 1),
(23, '2022_02_25_024109_create_reviews_table', 1),
(24, '2022_02_27_111909_create_payments_table', 1),
(25, '2022_03_04_210745_rename_column_and_add_columns_in_users_table', 1),
(26, '2022_03_19_002626_create_favorites_table', 1),
(27, '2022_03_20_002609_update_column_in_categories_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` datetime NOT NULL,
  `payment_due` datetime NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_total_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(16,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_province_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_postcode` int(11) DEFAULT NULL,
  `shipping_courier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `cancelled_by` bigint(20) UNSIGNED DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancellation_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `base_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `base_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payloads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payloads`)),
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `va_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biller_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user_management_access', NULL, NULL),
(2, 'user_management_create', NULL, NULL),
(3, 'user_management_edit', NULL, NULL),
(4, 'user_management_view', NULL, NULL),
(5, 'user_management_delete', NULL, NULL),
(6, 'permission_access', NULL, NULL),
(7, 'permission_create', NULL, NULL),
(8, 'permission_edit', NULL, NULL),
(9, 'permission_view', NULL, NULL),
(10, 'permission_delete', NULL, NULL),
(11, 'role_access', NULL, NULL),
(12, 'role_create', NULL, NULL),
(13, 'role_edit', NULL, NULL),
(14, 'role_view', NULL, NULL),
(15, 'role_delete', NULL, NULL),
(16, 'user_access', NULL, NULL),
(17, 'user_create', NULL, NULL),
(18, 'user_edit', NULL, NULL),
(19, 'user_view', NULL, NULL),
(20, 'user_delete', NULL, NULL),
(21, 'category_access', NULL, NULL),
(22, 'category_create', NULL, NULL),
(23, 'category_edit', NULL, NULL),
(24, 'category_view', NULL, NULL),
(25, 'category_delete', NULL, NULL),
(26, 'tag_access', NULL, NULL),
(27, 'tag_create', NULL, NULL),
(28, 'tag_edit', NULL, NULL),
(29, 'tag_view', NULL, NULL),
(30, 'tag_delete', NULL, NULL),
(31, 'product_access', NULL, NULL),
(32, 'product_create', NULL, NULL),
(33, 'product_edit', NULL, NULL),
(34, 'product_view', NULL, NULL),
(35, 'product_delete', NULL, NULL),
(36, 'slide_access', NULL, NULL),
(37, 'slide_create', NULL, NULL),
(38, 'slide_edit', NULL, NULL),
(39, 'slide_view', NULL, NULL),
(40, 'slide_delete', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 21, 1, NULL, NULL),
(22, 22, 1, NULL, NULL),
(23, 23, 1, NULL, NULL),
(24, 24, 1, NULL, NULL),
(25, 25, 1, NULL, NULL),
(26, 26, 1, NULL, NULL),
(27, 27, 1, NULL, NULL),
(28, 28, 1, NULL, NULL),
(29, 29, 1, NULL, NULL),
(30, 30, 1, NULL, NULL),
(31, 31, 1, NULL, NULL),
(32, 32, 1, NULL, NULL),
(33, 33, 1, NULL, NULL),
(34, 34, 1, NULL, NULL),
(35, 35, 1, NULL, NULL),
(36, 36, 1, NULL, NULL),
(37, 37, 1, NULL, NULL),
(38, 38, 1, NULL, NULL),
(39, 39, 1, NULL, NULL),
(40, 40, 1, NULL, NULL),
(41, 1, 2, NULL, NULL);

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
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `review_able` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `description`, `details`, `weight`, `quantity`, `status`, `review_able`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Rose Bouquet', 'rose-bouquet', 60000, '<p>Bouquet bunga mawar</p>', '<p>Beli dua gratis satu</p>', 200, 50, 1, 1, 1, '2023-07-21 13:12:25', '2023-07-21 23:48:26'),
(2, 'Money Bouquet @100Rb', 'money-bouquet-at100rb', 1050000, '<p>Buket uang</p>', '<p>By one get one</p>', 300, 10, 1, 1, 2, '2023-07-21 13:18:33', '2023-07-21 13:55:29'),
(4, 'Clara', 'clara', 49000, '<p>Buket Clara</p>', '<p>By 1 Get 1</p>', 150, 25, 1, 1, 1, '2023-07-21 13:57:48', '2023-07-21 13:57:48'),
(5, 'Meysa', 'meysa', 57000, '<p>Buket Meysa</p>', '<p>By 1 Get 1</p>', 200, 15, 1, 1, 1, '2023-07-21 14:00:07', '2023-07-21 14:00:07'),
(6, 'Asteria', 'asteria', 54000, '<p>Buket Asteria</p>', '<p>By 1 Get 1</p>', 200, 10, 1, 1, 1, '2023-07-21 14:01:44', '2023-07-21 14:01:44'),
(7, 'Catherina', 'catherina', 88000, '<p>Buket Catherina</p>', '<p>By 1 Get 1</p>', 200, 5, 1, 1, 1, '2023-07-21 14:05:16', '2023-07-21 14:05:16'),
(8, 'Shabrina', 'shabrina', 128000, '<p>Buket Shabrina</p>', '<p>By 1 Get 1</p>', 200, 4, 1, 1, 1, '2023-07-21 14:07:13', '2023-07-21 14:07:13'),
(9, 'Money Purple @10Rb', 'money-purple-at10rb', 100000, '<p>Buket Money Purple @10Rb</p>', '<p>By 1 Get 1</p>', 300, 2, 1, 1, 2, '2023-07-21 14:09:15', '2023-07-21 14:09:25'),
(10, 'Mix Money', 'mix-money', 70000, '<p>Buket Mix Money</p>', '<p>By 1 Get 1</p>', 200, 3, 1, 1, 2, '2023-07-21 14:12:13', '2023-07-21 14:12:13'),
(11, 'Money Blue @50Rb', 'money-blue-at50rb', 500000, '<p>Buket Money Blue @50Rb</p>', '<p>By 1 Get 1</p>', 300, 1, 1, 1, 2, '2023-07-21 14:14:51', '2023-07-21 14:14:51'),
(12, 'Money Doll', 'money-doll', 150000, 'Buket Money Doll', '<p>Buy 1 Get 1</p>', 400, 4, 1, 1, 2, '2023-07-21 20:33:57', '2023-07-21 20:33:57'),
(13, 'Money Green @20Rb', 'money-green-at20rb', 450000, '<p>Buket Money Green @20Rb</p>', '<p>Buy 1 Get 1</p>', 400, 2, 1, 1, 2, '2023-07-21 20:41:56', '2023-07-21 20:41:56'),
(14, 'Pramesti', 'pramesti', 120000, '<p>Buket Pramesti</p>', '<p>Buy 1 Get 1</p>', 300, 6, 1, 1, 3, '2023-07-21 21:05:44', '2023-07-21 21:05:44'),
(15, 'Calista', 'calista', 140000, '<p>Buket Calista</p>', '<p>Buy 1 Get 1</p>', 300, 4, 1, 1, 3, '2023-07-21 21:20:11', '2023-07-21 21:20:11'),
(16, 'Tasya', 'tasya', 130000, '<p>Buket Tasya</p>', '<p>Buy 1 Get 1</p>', 300, 6, 1, 1, 3, '2023-07-21 21:28:07', '2023-07-21 21:28:07'),
(17, 'Helena', 'helena', 253000, '<p>Buket Helena</p>', '<p>Buy 1 Get 1</p>', 300, 4, 1, 1, 3, '2023-07-21 21:31:08', '2023-07-21 21:31:08'),
(18, 'Lucia', 'lucia', 340000, 'Buket Lucia', '<p>Buy 1 Get 1</p>', 300, 3, 1, 1, 3, '2023-07-21 21:39:00', '2023-07-21 21:39:00'),
(19, 'Danisa', 'danisa', 330000, '<p>Buket Danisa</p>', 'Buy 1 Get 1', 300, 4, 1, 1, 3, '2023-07-21 22:06:47', '2023-07-21 22:06:47'),
(20, 'Random Snack', 'random-snack', 30000, '<p>Buket Random Snack</p>', '<p>Buy 1 Get 1</p>', 300, 40, 1, 1, 4, '2023-07-21 22:25:12', '2023-07-21 22:25:12'),
(21, 'Random Snack Tipe A', 'random-snack-tipe-a', 55000, '<p>Buket Random Snack</p>', '<p>Buy 1 Get 1</p>', 400, 20, 1, 1, 4, '2023-07-21 22:30:51', '2023-07-21 22:30:51'),
(22, 'TimeBreak Snack', 'timebreak-snack', 60000, '<p>Buket TimeBreak Snack</p>', '<p>Buy 1 Get 1</p>', 400, 10, 1, 1, 4, '2023-07-21 22:31:50', '2023-07-21 22:31:50'),
(23, 'Random Snack & Coffee', 'random-snack-coffee', 100000, '<p>Buket Random Snack & Coffee</p>', '<p>Buy 1 Get 1</p>', 300, 4, 1, 1, 4, '2023-07-21 22:34:13', '2023-07-21 22:34:13'),
(24, 'Nextar Snack', 'nextar-snack', 45000, '<p>Buket Nextar Snack</p>', '<p>Buy 1 Get 1</p>', 200, 20, 1, 1, 4, '2023-07-21 22:35:22', '2023-07-21 22:35:22'),
(25, 'Chocholatos Snack', 'chocholatos-snack', 60000, '<p>Buket Chocholatos Snack</p>', '<p>Buy 1 Get 1</p>', 250, 10, 1, 1, 4, '2023-07-21 22:36:52', '2023-07-21 22:36:52'),
(26, 'SilverQueen & Doll', 'silverqueen-doll', 150000, '<p><b>Buket&nbsp;SilverQueen &amp; Doll</b></p>', '<p>Buy 1 Get 1</p>', 300, 5, 1, 1, 5, '2023-07-21 22:43:56', '2023-07-21 22:43:56'),
(27, 'Rose & Doll', 'rose-doll', 70000, '<p>Buket&nbsp;Rose &amp; Doll</p>', 'Buy 1 Get 1', 300, 9, 1, 1, 5, '2023-07-21 22:44:50', '2023-07-21 22:44:50'),
(28, 'BengBeng & SilverQueen', 'bengbeng-silverqueen', 145000, '<p>Buket BengBeng & SilverQueen</p>', '<p>Buy 1 Get 1</p>', 400, 8, 1, 1, 5, '2023-07-21 22:46:03', '2023-07-21 22:46:03'),
(29, 'Grow Ribbon', 'grow-ribbon', 165000, '<p><font color=\"#000000\">Buket&nbsp;Grow Ribbon</font></p>', '<p>Buy 1 Get 1</p>', 350, 5, 1, 1, 5, '2023-07-21 22:47:07', '2023-07-21 22:47:07'),
(30, 'SilverQueen, Rose, & DairyMilk', 'silverqueen-rose-dairymilk', 180000, '<p>Buket&nbsp;SilverQueen, Rose, &amp; DairyMilk</p>', '<p>Buy 1 Get 1</p>', 400, 9, 1, 1, 5, '2023-07-21 22:48:22', '2023-07-21 22:48:22'),
(31, 'Money & Doll', 'money-doll-2', 149000, '<p>Buket Money &amp; Doll</p>', '<p>Buy 1 Get 1</p>', 400, 6, 1, 1, 5, '2023-07-21 22:49:31', '2023-07-21 22:49:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(4, 4, 3, NULL, NULL),
(5, 5, 4, NULL, NULL),
(6, 5, 3, NULL, NULL),
(7, 5, 1, NULL, NULL),
(8, 6, 4, NULL, NULL),
(9, 6, 3, NULL, NULL),
(10, 7, 3, NULL, NULL),
(11, 8, 3, NULL, NULL),
(12, 9, 2, NULL, NULL),
(13, 10, 2, NULL, NULL),
(14, 11, 2, NULL, NULL),
(15, 12, 10, NULL, NULL),
(16, 12, 2, NULL, NULL),
(17, 13, 2, NULL, NULL),
(18, 14, 6, NULL, NULL),
(19, 15, 8, NULL, NULL),
(20, 15, 6, NULL, NULL),
(21, 16, 6, NULL, NULL),
(22, 16, 4, NULL, NULL),
(23, 17, 8, NULL, NULL),
(24, 17, 6, NULL, NULL),
(25, 17, 1, NULL, NULL),
(26, 18, 6, NULL, NULL),
(27, 18, 1, NULL, NULL),
(28, 19, 8, NULL, NULL),
(29, 19, 6, NULL, NULL),
(30, 20, 7, NULL, NULL),
(31, 21, 7, NULL, NULL),
(32, 22, 7, NULL, NULL),
(33, 23, 11, NULL, NULL),
(34, 23, 7, NULL, NULL),
(35, 24, 7, NULL, NULL),
(36, 25, 7, NULL, NULL),
(37, 26, 9, NULL, NULL),
(38, 26, 3, NULL, NULL),
(39, 26, 1, NULL, NULL),
(40, 27, 10, NULL, NULL),
(41, 27, 6, NULL, NULL),
(42, 28, 8, NULL, NULL),
(43, 28, 7, NULL, NULL),
(44, 28, 2, NULL, NULL),
(45, 29, 8, NULL, NULL),
(46, 30, 8, NULL, NULL),
(47, 30, 6, NULL, NULL),
(48, 30, 5, NULL, NULL),
(49, 30, 1, NULL, NULL),
(50, 31, 10, NULL, NULL),
(51, 31, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `rating` tinyint(3) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shipments`
--

CREATE TABLE `shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `track_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_qty` int(11) NOT NULL,
  `total_weight` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `shipped_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Rose', 'rose', '2023-07-21 13:11:28', '2023-07-21 13:11:28'),
(2, 'Money', 'money', '2023-07-21 13:17:20', '2023-07-21 13:17:20'),
(3, 'Fresh Flower', 'fresh-flower', '2023-07-21 13:50:19', '2023-07-21 13:50:19'),
(4, 'Affordable', 'affordable', '2023-07-21 13:50:31', '2023-07-21 13:50:31'),
(5, 'Chocolate', 'chocolate', '2023-07-21 13:50:43', '2023-07-21 13:50:43'),
(6, 'Artificial', 'artificial', '2023-07-21 13:50:53', '2023-07-21 13:50:53'),
(7, 'Snack', 'snack', '2023-07-21 13:51:00', '2023-07-21 13:51:00'),
(8, 'Customized', 'customized', '2023-07-21 13:51:11', '2023-07-21 13:51:11'),
(9, 'Doll Flower', 'doll-flower', '2023-07-21 13:51:24', '2023-07-21 13:51:24'),
(10, 'Money Doll', 'money-doll', '2023-07-21 20:17:27', '2023-07-21 20:17:27'),
(11, 'Coffee', 'coffee', '2023-07-21 22:25:45', '2023-07-21 22:25:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `phone`, `address1`, `address2`, `province_id`, `city_id`, `postcode`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'owner', NULL, NULL, 'owner@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jywg6syiYEROPO3ouQGUpeYfQLvRGYU2rkwcUww/mirR9pvUtypim', NULL, NULL, NULL),
(2, 'ululazmie', NULL, NULL, 'ulul.azmi2003@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$OvJlPoKSloN6XvXGEr1qleCI9KKKghi0qimrwH1DXU77GrXD2yHEW', NULL, '2023-07-21 13:07:35', '2023-07-21 13:07:35'),
(3, 'daffaabp', NULL, NULL, 'daffa.budi2003@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zI9djMIusdJqBkTG/m44hO77q.MAkg.Pi8KeaVgMhFaJUWQGrScZW', NULL, '2023-07-21 23:47:13', '2023-07-21 23:47:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_product_id_foreign` (`product_id`),
  ADD KEY `favorites_user_id_product_id_index` (`user_id`,`product_id`);

--
-- Indeks untuk tabel `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_code_unique` (`code`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_approved_by_foreign` (`approved_by`),
  ADD KEY `orders_cancelled_by_foreign` (`cancelled_by`),
  ADD KEY `orders_payment_token_index` (`payment_token`),
  ADD KEY `orders_code_index` (`code`),
  ADD KEY `orders_code_order_date_index` (`code`,`order_date`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_name_index` (`name`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_number_unique` (`number`),
  ADD KEY `payments_order_id_foreign` (`order_id`),
  ADD KEY `payments_number_index` (`number`),
  ADD KEY `payments_method_index` (`method`),
  ADD KEY `payments_token_index` (`token`),
  ADD KEY `payments_payment_type_index` (`payment_type`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_name_index` (`name`);

--
-- Indeks untuk tabel `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tags_product_id_foreign` (`product_id`),
  ADD KEY `product_tags_tag_id_foreign` (`tag_id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipments_user_id_foreign` (`user_id`),
  ADD KEY `shipments_order_id_foreign` (`order_id`),
  ADD KEY `shipments_shipped_by_foreign` (`shipped_by`),
  ADD KEY `shipments_track_number_index` (`track_number`);

--
-- Indeks untuk tabel `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

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
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Ketidakleluasaan untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Ketidakleluasaan untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `shipments_shipped_by_foreign` FOREIGN KEY (`shipped_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shipments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
