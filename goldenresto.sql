-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 03 Apr 2022 pada 01.37
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goldenresto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `About`
--

CREATE TABLE `About` (
  `id` int(10) UNSIGNED NOT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tittle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `About`
--

INSERT INTO `About` (`id`, `banner`, `tittle`, `deskription`, `created_at`, `updated_at`) VALUES
(1, 'about/April2022/zStff2jR9ayQrJjkB27r.jpg', 'Pelayanan Tepat Waktu', 'Pelayanan Kamu Adalah Yang utama', '2022-04-01 01:58:07', '2022-04-01 01:58:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-03-31 23:48:48', '2022-03-31 23:48:48'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-03-31 23:48:48', '2022-03-31 23:48:48'),
(3, NULL, 1, 'MBA', 'mba', '2022-04-01 21:13:01', '2022-04-01 21:13:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'small_text', 'text', 'Small Text', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'the_tittle', 'text', 'The Tittle', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'small_desription', 'text', 'Small Desription', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'banner', 'image', 'Banner', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(63, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 8, 'banner', 'image', 'Banner', 0, 1, 1, 1, 1, 1, '{}', 2),
(65, 8, 'tittle', 'text', 'Tittle', 0, 1, 1, 1, 1, 1, '{}', 3),
(66, 8, 'deskription', 'text', 'Deskription', 0, 1, 1, 1, 1, 1, '{}', 4),
(67, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(68, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(69, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 9, 'big_banner', 'image', 'Big Banner', 0, 1, 1, 1, 1, 1, '{}', 2),
(71, 9, 'small_icon', 'image', 'Small Icon', 0, 1, 1, 1, 1, 1, '{}', 3),
(72, 9, 'tiitle', 'text', 'Tiitle', 0, 1, 1, 1, 1, 1, '{}', 4),
(73, 9, 'service_descriton', 'text', 'Service Descriton', 0, 1, 1, 1, 1, 1, '{}', 5),
(74, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(75, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(76, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 10, 'tittle', 'text', 'Tittle', 0, 1, 1, 1, 1, 1, '{}', 2),
(78, 10, 'small_description', 'text', 'Small Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(79, 10, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(80, 10, 'banner', 'image', 'Banner', 0, 1, 1, 1, 1, 1, '{}', 5),
(81, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(82, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(83, 10, 'category', 'text', 'Category', 0, 1, 1, 1, 1, 1, '{}', 8),
(84, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(85, 11, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(86, 11, 'massage', 'text', 'Massage', 0, 1, 1, 1, 1, 1, '{}', 3),
(87, 11, 'profile', 'image', 'Profile', 0, 1, 1, 1, 1, 1, '{}', 4),
(88, 11, 'tipe', 'text', 'Tipe', 0, 1, 1, 1, 1, 1, '{}', 5),
(89, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(90, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(97, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(98, 15, 'banner', 'image', 'Banner', 0, 1, 1, 1, 1, 1, '{}', 2),
(99, 15, 'massage', 'text', 'Massage', 0, 1, 1, 1, 1, 1, '{}', 3),
(100, 15, 'tiitle', 'text', 'Tiitle', 0, 1, 1, 1, 1, 1, '{}', 4),
(101, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(102, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(103, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(104, 16, 'banner', 'image', 'Banner', 0, 1, 1, 1, 1, 1, '{}', 2),
(105, 16, 'massage', 'text', 'Massage', 0, 1, 1, 1, 1, 1, '{}', 3),
(106, 16, 'tiitle', 'text', 'Tiitle', 0, 1, 1, 1, 1, 1, '{}', 4),
(107, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(108, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-03-31 23:48:10', '2022-03-31 23:48:10'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-03-31 23:48:10', '2022-03-31 23:48:10'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-03-31 23:48:11', '2022-03-31 23:48:11'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-03-31 23:48:44', '2022-03-31 23:48:44'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-03-31 23:48:49', '2022-03-31 23:48:49'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2022-03-31 23:48:55', '2022-03-31 23:48:55'),
(7, 'slider', 'slider', 'Slider', 'Sliders', 'voyager-polaroid', 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-01 07:33:49', '2022-04-01 07:47:44'),
(8, 'About', 'about', 'About', 'Abouts', NULL, 'App\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-01 08:51:36', '2022-04-01 08:54:56'),
(9, 'service', 'service', 'Service', 'Services', NULL, 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-04-01 09:47:01', '2022-04-01 09:47:01'),
(10, 'portofolio', 'portofolio', 'Portofolio', 'Portofolios', NULL, 'App\\Portofolio', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-01 10:02:34', '2022-04-01 10:36:26'),
(11, 'testimony', 'testimony', 'Testimony', 'Testimonies', NULL, 'App\\Testimony', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-01 22:04:36', '2022-04-01 22:06:01'),
(15, 'giveforyou', 'giveforyou', 'Giveforyou', 'Giveforyous', NULL, 'App\\Giveforyou', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-04-02 07:52:02', '2022-04-02 07:52:02'),
(16, 'giveforyou', 'giveforyou', 'Giveforyou', 'Giveforyous', NULL, 'App\\Giveforyou', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-04-02 07:53:02', '2022-04-02 07:53:02');

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
-- Struktur dari tabel `giveforyou`
--

CREATE TABLE `giveforyou` (
  `id` int(10) UNSIGNED NOT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `massage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `giveforyou`
--

INSERT INTO `giveforyou` (`id`, `banner`, `massage`, `tiitle`, `created_at`, `updated_at`) VALUES
(1, 'giveforyou/April2022/3ydtoOjKNXEwbGjRSKgu.png', 'this what we give for you', 'this, you wontit?', '2022-04-02 07:56:46', '2022-04-02 07:56:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-03-31 23:48:15', '2022-03-31 23:48:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-03-31 23:48:15', '2022-03-31 23:48:15', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 4, 2, '2022-03-31 23:48:16', '2022-04-01 10:05:21', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 4, 1, '2022-03-31 23:48:16', '2022-04-01 10:05:19', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 8, '2022-03-31 23:48:16', '2022-04-01 10:06:07', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2022-03-31 23:48:16', '2022-04-01 10:05:42', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-03-31 23:48:16', '2022-04-01 10:04:51', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-03-31 23:48:17', '2022-04-01 10:04:51', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-03-31 23:48:17', '2022-04-01 10:04:51', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-03-31 23:48:17', '2022-04-01 10:04:51', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 3, '2022-03-31 23:48:17', '2022-04-01 10:05:47', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 2, '2022-03-31 23:48:46', '2022-04-01 10:05:47', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 4, 3, '2022-03-31 23:48:53', '2022-04-01 10:05:23', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, 4, 4, '2022-03-31 23:48:58', '2022-04-01 10:05:41', 'voyager.pages.index', NULL),
(14, 1, 'Sliders', '', '_self', 'voyager-polaroid', NULL, NULL, 4, '2022-04-01 07:33:50', '2022-04-01 10:05:55', 'voyager.slider.index', NULL),
(15, 1, 'Abouts', '', '_self', NULL, NULL, NULL, 5, '2022-04-01 08:51:37', '2022-04-01 10:05:55', 'voyager.about.index', NULL),
(16, 1, 'Services', '', '_self', NULL, NULL, NULL, 7, '2022-04-01 09:47:01', '2022-04-01 10:06:07', 'voyager.service.index', NULL),
(17, 1, 'Portofolios', '', '_self', NULL, NULL, NULL, 6, '2022-04-01 10:02:34', '2022-04-01 10:06:06', 'voyager.portofolio.index', NULL),
(18, 1, 'Testimonies', '', '_self', NULL, NULL, NULL, 10, '2022-04-01 22:04:36', '2022-04-01 22:04:36', 'voyager.testimony.index', NULL),
(19, 1, 'Giveforyous', '', '_self', NULL, NULL, NULL, 11, '2022-04-02 07:53:02', '2022-04-02 07:53:02', 'voyager.giveforyou.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2022-03-31 23:48:59', '2022-03-31 23:48:59');

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
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-03-31 23:48:19', '2022-03-31 23:48:19'),
(2, 'browse_bread', NULL, '2022-03-31 23:48:20', '2022-03-31 23:48:20'),
(3, 'browse_database', NULL, '2022-03-31 23:48:20', '2022-03-31 23:48:20'),
(4, 'browse_media', NULL, '2022-03-31 23:48:20', '2022-03-31 23:48:20'),
(5, 'browse_compass', NULL, '2022-03-31 23:48:20', '2022-03-31 23:48:20'),
(6, 'browse_menus', 'menus', '2022-03-31 23:48:20', '2022-03-31 23:48:20'),
(7, 'read_menus', 'menus', '2022-03-31 23:48:20', '2022-03-31 23:48:20'),
(8, 'edit_menus', 'menus', '2022-03-31 23:48:21', '2022-03-31 23:48:21'),
(9, 'add_menus', 'menus', '2022-03-31 23:48:21', '2022-03-31 23:48:21'),
(10, 'delete_menus', 'menus', '2022-03-31 23:48:21', '2022-03-31 23:48:21'),
(11, 'browse_roles', 'roles', '2022-03-31 23:48:21', '2022-03-31 23:48:21'),
(12, 'read_roles', 'roles', '2022-03-31 23:48:21', '2022-03-31 23:48:21'),
(13, 'edit_roles', 'roles', '2022-03-31 23:48:21', '2022-03-31 23:48:21'),
(14, 'add_roles', 'roles', '2022-03-31 23:48:22', '2022-03-31 23:48:22'),
(15, 'delete_roles', 'roles', '2022-03-31 23:48:22', '2022-03-31 23:48:22'),
(16, 'browse_users', 'users', '2022-03-31 23:48:22', '2022-03-31 23:48:22'),
(17, 'read_users', 'users', '2022-03-31 23:48:22', '2022-03-31 23:48:22'),
(18, 'edit_users', 'users', '2022-03-31 23:48:23', '2022-03-31 23:48:23'),
(19, 'add_users', 'users', '2022-03-31 23:48:23', '2022-03-31 23:48:23'),
(20, 'delete_users', 'users', '2022-03-31 23:48:23', '2022-03-31 23:48:23'),
(21, 'browse_settings', 'settings', '2022-03-31 23:48:23', '2022-03-31 23:48:23'),
(22, 'read_settings', 'settings', '2022-03-31 23:48:24', '2022-03-31 23:48:24'),
(23, 'edit_settings', 'settings', '2022-03-31 23:48:24', '2022-03-31 23:48:24'),
(24, 'add_settings', 'settings', '2022-03-31 23:48:24', '2022-03-31 23:48:24'),
(25, 'delete_settings', 'settings', '2022-03-31 23:48:24', '2022-03-31 23:48:24'),
(26, 'browse_categories', 'categories', '2022-03-31 23:48:47', '2022-03-31 23:48:47'),
(27, 'read_categories', 'categories', '2022-03-31 23:48:47', '2022-03-31 23:48:47'),
(28, 'edit_categories', 'categories', '2022-03-31 23:48:47', '2022-03-31 23:48:47'),
(29, 'add_categories', 'categories', '2022-03-31 23:48:47', '2022-03-31 23:48:47'),
(30, 'delete_categories', 'categories', '2022-03-31 23:48:48', '2022-03-31 23:48:48'),
(31, 'browse_posts', 'posts', '2022-03-31 23:48:53', '2022-03-31 23:48:53'),
(32, 'read_posts', 'posts', '2022-03-31 23:48:53', '2022-03-31 23:48:53'),
(33, 'edit_posts', 'posts', '2022-03-31 23:48:53', '2022-03-31 23:48:53'),
(34, 'add_posts', 'posts', '2022-03-31 23:48:53', '2022-03-31 23:48:53'),
(35, 'delete_posts', 'posts', '2022-03-31 23:48:53', '2022-03-31 23:48:53'),
(36, 'browse_pages', 'pages', '2022-03-31 23:48:58', '2022-03-31 23:48:58'),
(37, 'read_pages', 'pages', '2022-03-31 23:48:58', '2022-03-31 23:48:58'),
(38, 'edit_pages', 'pages', '2022-03-31 23:48:58', '2022-03-31 23:48:58'),
(39, 'add_pages', 'pages', '2022-03-31 23:48:59', '2022-03-31 23:48:59'),
(40, 'delete_pages', 'pages', '2022-03-31 23:48:59', '2022-03-31 23:48:59'),
(41, 'browse_slider', 'slider', '2022-04-01 07:37:34', '2022-04-01 07:37:34'),
(42, 'read_slider', 'slider', '2022-04-01 07:37:34', '2022-04-01 07:37:34'),
(43, 'edit_slider', 'slider', '2022-04-01 07:37:34', '2022-04-01 07:37:34'),
(44, 'add_slider', 'slider', '2022-04-01 07:37:34', '2022-04-01 07:37:34'),
(45, 'delete_slider', 'slider', '2022-04-01 07:37:34', '2022-04-01 07:37:34'),
(46, 'browse_About', 'About', '2022-04-01 08:51:36', '2022-04-01 08:51:36'),
(47, 'read_About', 'About', '2022-04-01 08:51:37', '2022-04-01 08:51:37'),
(48, 'edit_About', 'About', '2022-04-01 08:51:37', '2022-04-01 08:51:37'),
(49, 'add_About', 'About', '2022-04-01 08:51:37', '2022-04-01 08:51:37'),
(50, 'delete_About', 'About', '2022-04-01 08:51:37', '2022-04-01 08:51:37'),
(51, 'browse_service', 'service', '2022-04-01 09:47:01', '2022-04-01 09:47:01'),
(52, 'read_service', 'service', '2022-04-01 09:47:01', '2022-04-01 09:47:01'),
(53, 'edit_service', 'service', '2022-04-01 09:47:01', '2022-04-01 09:47:01'),
(54, 'add_service', 'service', '2022-04-01 09:47:01', '2022-04-01 09:47:01'),
(55, 'delete_service', 'service', '2022-04-01 09:47:01', '2022-04-01 09:47:01'),
(56, 'browse_portofolio', 'portofolio', '2022-04-01 10:02:34', '2022-04-01 10:02:34'),
(57, 'read_portofolio', 'portofolio', '2022-04-01 10:02:34', '2022-04-01 10:02:34'),
(58, 'edit_portofolio', 'portofolio', '2022-04-01 10:02:34', '2022-04-01 10:02:34'),
(59, 'add_portofolio', 'portofolio', '2022-04-01 10:02:34', '2022-04-01 10:02:34'),
(60, 'delete_portofolio', 'portofolio', '2022-04-01 10:02:34', '2022-04-01 10:02:34'),
(61, 'browse_testimony', 'testimony', '2022-04-01 22:04:36', '2022-04-01 22:04:36'),
(62, 'read_testimony', 'testimony', '2022-04-01 22:04:36', '2022-04-01 22:04:36'),
(63, 'edit_testimony', 'testimony', '2022-04-01 22:04:36', '2022-04-01 22:04:36'),
(64, 'add_testimony', 'testimony', '2022-04-01 22:04:36', '2022-04-01 22:04:36'),
(65, 'delete_testimony', 'testimony', '2022-04-01 22:04:36', '2022-04-01 22:04:36'),
(66, 'browse_giveforyou', 'giveforyou', '2022-04-02 07:52:02', '2022-04-02 07:52:02'),
(67, 'read_giveforyou', 'giveforyou', '2022-04-02 07:52:02', '2022-04-02 07:52:02'),
(68, 'edit_giveforyou', 'giveforyou', '2022-04-02 07:52:02', '2022-04-02 07:52:02'),
(69, 'add_giveforyou', 'giveforyou', '2022-04-02 07:52:02', '2022-04-02 07:52:02'),
(70, 'delete_giveforyou', 'giveforyou', '2022-04-02 07:52:02', '2022-04-02 07:52:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1);

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
-- Struktur dari tabel `portofolio`
--

CREATE TABLE `portofolio` (
  `id` int(10) UNSIGNED NOT NULL,
  `tittle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `portofolio`
--

INSERT INTO `portofolio` (`id`, `tittle`, `small_description`, `description`, `banner`, `created_at`, `updated_at`, `category`) VALUES
(1, 'Project 1 Ocuner House', 'This we Fist project and you will see what he do', '<p>This we Fist project and you will see what he do but with to much text</p>', 'portofolio/April2022/GazrW8C9y80DuXfpqHCR.png', '2022-04-01 10:08:23', '2022-04-01 10:08:23', NULL),
(2, 'ini judul dari part ke 2', 'try to show something can you care about it?', '<p><img src=\"http://localhost/goldenkichen/lgarin211.github.io/portofolio/April2022/azka-corbuzier-pamer-momen-makan-daging-hingga-cotton-candy-7_43.jpeg\" alt=\"\" /></p>', 'portofolio\\April2022\\SGYsZokY8pcStqQ41K1i.jpeg', '2022-04-01 21:11:00', '2022-04-01 22:00:06', 'mba');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-03-31 23:48:54', '2022-03-31 23:48:54'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-03-31 23:48:54', '2022-03-31 23:48:54'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-03-31 23:48:54', '2022-03-31 23:48:54'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-03-31 23:48:54', '2022-03-31 23:48:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-03-31 23:48:18', '2022-03-31 23:48:18'),
(2, 'user', 'Normal User', '2022-03-31 23:48:18', '2022-03-31 23:48:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service`
--

CREATE TABLE `service` (
  `id` int(10) UNSIGNED NOT NULL,
  `big_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_descriton` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `service`
--

INSERT INTO `service` (`id`, `big_banner`, `small_icon`, `tiitle`, `service_descriton`, `created_at`, `updated_at`) VALUES
(1, 'service/April2022/qnu48J5gIeJMgrEoM02K.png', 'service/April2022/rxhp4bwPtg2PNEk2qu9d.png', 'Serive 01', 'this is what service i will give for you and just add alone', '2022-04-01 09:48:59', '2022-04-01 09:48:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'GKR', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Ini adalah Golden Kitchen Renovation', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/April2022/n533K5AtGzXwqqeEbQfa.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.FI', 'Founder Images', 'settings/April2022/nbtbuNT3tgN8i61VNais.JPG', NULL, 'image', 6, 'Site'),
(12, 'about.AWY', 'About What You Will Give', '<p>You wanna be where you can see our troubles are all the same. You wanna be where everybody knows Your name. Today still wanted by the govern ment they survive as soldiers of fortune. They were four men living all together yet they were all alone believe walking on air.</p>', NULL, 'rich_text_box', 7, 'About'),
(13, 'about.WYCY', 'Why They Choise You', '<h3 style=\"box-sizing: border-box; font-family: RalewayHeavy; font-weight: 500; line-height: 1.1; color: #222222; margin-top: 0px; margin-bottom: 20px; font-size: 48px; background-image: none; padding-top: 0px; text-transform: uppercase; word-wrap: break-word; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">WHY CHOOSE US</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px; color: #a6a6a6; font-style: italic; letter-spacing: 0.8px; font-family: Lato, sans-serif; font-size: 16.01708984375px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Here\'s the story of a lovely lady who was bringing up three very lovely girls. That this group would somehow form a family that\'s the way we all brady bunch.</p>', NULL, 'rich_text_box', 8, 'About'),
(14, 'about.BTYC', 'Banner The Your Comppany', '[{\"download_link\":\"settings\\/April2022\\/6qC4n3bsLSJRgu4cmSHg.jpg\",\"original_name\":\"273333178_344119884246036_8054506001183843983_n.jpg\"}]', NULL, 'file', 9, 'About'),
(15, 'about.bbabout', 'About Banner', 'settings/April2022/c9uE6BsL1rwtgigwTyyM.jpg', NULL, 'image', 10, 'About');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `small_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `the_tittle` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_desription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id`, `small_text`, `the_tittle`, `small_desription`, `banner`, `created_at`, `updated_at`) VALUES
(1, 'Who We Are', '@GoldenKitchenRenovation', 'We are Specialists in old kitchen, benchtop resurfacing and Splash back.', 'slider/April2022/9vtaHcjTXYviBgu4C1fs.jpg', '2022-04-01 07:49:14', '2022-04-01 07:49:14'),
(2, 'this the another', 'tiitle', 'sedikit', 'slider\\April2022\\yLFye3voBK87zDWrNrNw.jpg', '2022-04-01 21:54:05', '2022-04-01 21:54:05'),
(3, 'this the another 2', 'tiitle2', 'sedikit2', 'slider\\April2022\\5A9PoIh8qmoqIdMfm0qn.jpg', '2022-04-01 21:54:00', '2022-04-01 21:58:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimony`
--

CREATE TABLE `testimony` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `massage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `testimony`
--

INSERT INTO `testimony` (`id`, `name`, `massage`, `profile`, `tipe`, `created_at`, `updated_at`) VALUES
(1, 'Guru Mata Pelajaran', 'Keren ini testimony coba coba', 'testimony\\April2022\\7PDCnROoIKE3fq5JBVvE.jpeg', 'developer', '2022-04-01 22:07:40', '2022-04-01 22:07:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-03-31 23:48:59', '2022-03-31 23:48:59'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-03-31 23:48:59', '2022-03-31 23:48:59'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-03-31 23:48:59', '2022-03-31 23:48:59'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-03-31 23:49:00', '2022-03-31 23:49:00'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-03-31 23:49:00', '2022-03-31 23:49:00'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-03-31 23:49:00', '2022-03-31 23:49:00'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-03-31 23:49:00', '2022-03-31 23:49:00'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-03-31 23:49:00', '2022-03-31 23:49:00'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-03-31 23:49:01', '2022-03-31 23:49:01'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-03-31 23:49:01', '2022-03-31 23:49:01'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-03-31 23:49:01', '2022-03-31 23:49:01'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-03-31 23:49:01', '2022-03-31 23:49:01'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-03-31 23:49:02', '2022-03-31 23:49:02'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-03-31 23:49:02', '2022-03-31 23:49:02'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-03-31 23:49:02', '2022-03-31 23:49:02'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-03-31 23:49:02', '2022-03-31 23:49:02'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-03-31 23:49:02', '2022-03-31 23:49:02'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-03-31 23:49:02', '2022-03-31 23:49:02'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-03-31 23:49:03', '2022-03-31 23:49:03'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-03-31 23:49:03', '2022-03-31 23:49:03'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-03-31 23:49:03', '2022-03-31 23:49:03'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-03-31 23:49:03', '2022-03-31 23:49:03'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-03-31 23:49:03', '2022-03-31 23:49:03'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-03-31 23:49:04', '2022-03-31 23:49:04'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-03-31 23:49:04', '2022-03-31 23:49:04'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-03-31 23:49:04', '2022-03-31 23:49:04'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-03-31 23:49:04', '2022-03-31 23:49:04'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-03-31 23:49:04', '2022-03-31 23:49:04'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-03-31 23:49:05', '2022-03-31 23:49:05'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-03-31 23:49:05', '2022-03-31 23:49:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_p` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `type_p`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$wOfJsSrPReb9yfl5ncrNz.4cZlpLzT7xcjiyVI1b9JK22dE5IeNxu', 'HMbdTXWxSypLocGVOEIUlx33Tnwhl4fGuUqY0zrqd2VurshckmjF1Je6w77n', NULL, '2022-03-31 23:48:49', '2022-03-31 23:48:49', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indeks untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `giveforyou`
--
ALTER TABLE `giveforyou`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT untuk tabel `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `giveforyou`
--
ALTER TABLE `giveforyou`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
