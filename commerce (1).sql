-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8111
-- Generation Time: May 07, 2024 at 10:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone_number`, `address`, `product_title`, `price`, `quantity`, `image`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 'shirin', 'mirshirin8353@gmail.com', '09127196483', 'bimeh', 'Dr. Nico Monahan I', 30.00, 3, '1713719850.jpg', 16, 1, '2024-05-02 09:51:56', '2024-05-02 09:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'category1', '2024-04-21 17:14:02', '2024-04-26 13:23:40'),
(2, 'category2', '2024-04-21 17:14:51', '2024-04-21 17:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2024_04_02_132703_create_categories_table', 1),
(6, '2024_04_06_200023_create_permissions_and_roles_tables', 1),
(7, '2024_04_16_212850_create_products_table', 1),
(8, '2024_04_19_095506_create_carts_table', 1),
(9, '2024_04_20_061022_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone_number`, `address`, `product_title`, `price`, `quantity`, `image`, `product_id`, `user_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(1, 'omid', 'arvand11@yahoo.com', '09121351972', 'bimeh', 'product2', 4000.00, 2, '1713719850.jpg', 2, 2, 'paid', 'delivered', '2024-04-21 17:31:12', '2024-04-21 18:27:43'),
(6, 'shirin', 'mirshirin8353@gmail.com', '09127196483', 'bimeh', 'Ms. Ella Pollich', 8.00, 1, '1713719850.jpg', 14, 1, 'cash on delivery', 'processing', '2024-05-02 09:51:02', '2024-05-02 09:51:02');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'edit-user', 'edit user', NULL, NULL),
(2, 'delete-user', 'delete user', NULL, NULL),
(3, 'create-user', 'create user', NULL, NULL),
(4, 'show-users', 'Show Users', NULL, NULL),
(5, 'staff-user-permission', 'staff user permission', NULL, NULL),
(6, 'edit-permission', 'edit permission', NULL, NULL),
(7, 'delete-permission', 'delete permission', NULL, NULL),
(8, 'create-permission', 'create permission', NULL, NULL),
(9, 'show-permissions', 'show permissions', NULL, NULL),
(10, 'edit-category', 'edit-category', NULL, NULL),
(11, 'delete-category', 'delete category', NULL, NULL),
(12, 'create-category', 'create category', NULL, NULL),
(13, 'show-categories', 'show categories', NULL, NULL),
(14, 'edit-role', 'edit role', NULL, NULL),
(15, 'delete-role', 'delete role', NULL, NULL),
(16, 'create-role', 'create role', NULL, NULL),
(17, 'show-roles', 'show roles', NULL, NULL),
(18, 'edit-product', 'edit product', NULL, NULL),
(19, 'delete-product', 'delete product', NULL, NULL),
(20, 'create-product', 'create product', NULL, NULL),
(21, 'show-products', 'show products', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 9, 1),
(9, 10, 1),
(10, 11, 1),
(11, 12, 1),
(12, 13, 1),
(13, 14, 1),
(14, 15, 1),
(15, 16, 1),
(16, 17, 1),
(17, 18, 1),
(18, 19, 1),
(19, 20, 1),
(20, 21, 1),
(21, 1, 2),
(22, 2, 2),
(23, 3, 2),
(24, 4, 2),
(25, 5, 2),
(26, 6, 2),
(27, 7, 2),
(28, 8, 2),
(29, 9, 2),
(30, 10, 2),
(31, 11, 2),
(32, 12, 2),
(33, 13, 2),
(34, 14, 2),
(37, 1, 6),
(38, 2, 6),
(39, 3, 6),
(40, 4, 6),
(41, 5, 6),
(42, 6, 6),
(43, 7, 6),
(44, 8, 6),
(45, 9, 6),
(46, 10, 6),
(47, 11, 6),
(48, 12, 6),
(49, 13, 6),
(50, 14, 6),
(51, 15, 6),
(52, 16, 6),
(53, 17, 6),
(54, 18, 6),
(55, 19, 6),
(56, 20, 6),
(57, 21, 6);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`id`, `permission_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 2, 2),
(24, 18, 2),
(25, 19, 2),
(26, 20, 2),
(27, 6, 75),
(28, 1, 75),
(29, 2, 75),
(30, 3, 75),
(31, 4, 75),
(32, 5, 75),
(33, 7, 75),
(34, 8, 75),
(35, 9, 75),
(36, 10, 75),
(37, 11, 75),
(38, 12, 75),
(39, 13, 75),
(40, 14, 75),
(41, 15, 75),
(42, 16, 75),
(43, 17, 75),
(44, 18, 75),
(45, 19, 75),
(46, 20, 75),
(47, 21, 75);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `discount_price` double(8,2) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `quantity`, `price`, `discount_price`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'product2', 'product2', '1713719850.jpg', 3, 2020.00, 14.00, 2, '2024-04-21 17:17:30', '2024-05-03 13:09:17'),
(14, 'Ms. Ella Pollich', 'product2', '1713719850.jpg', 3, 1933.00, 8.00, 2, '2024-04-24 20:49:44', '2024-04-24 20:49:44'),
(15, 'Dr. Nigel Deckow', 'Et.', '1713719850.jpg', 10, 1626.00, 7.00, 2, '2024-04-24 20:49:44', '2024-04-24 20:49:44'),
(16, 'Dr. Nico Monahan I', 'Alias.', '1713719850.jpg', 5, 1140.00, 10.00, 1, '2024-04-24 20:51:06', '2024-04-24 20:51:06'),
(18, 'Dave Stokes', 'Harum.', '1713719850.jpg', 9, 1880.00, 6.00, 1, '2024-04-24 20:51:06', '2024-04-24 20:51:06'),
(19, 'Niko Schmitt', 'Deserunt.', '1713719850.jpg', 7, 1509.00, 2.00, 1, '2024-04-24 20:51:06', '2024-04-24 20:51:06'),
(21, 'Verla Beier MD', 'Delectus.', '1713719850.jpg', 6, 1651.00, 10.00, 1, '2024-04-24 20:51:06', '2024-04-24 20:51:06'),
(22, 'Caleigh Sporer Jr.', 'Sunt.', '1713719850.jpg', 6, 1029.00, 5.00, 2, '2024-04-24 20:51:06', '2024-04-24 20:51:06'),
(23, 'General Kozey DVM', 'Sed id.', '1713719850.jpg', 2, 1241.00, 2.00, 2, '2024-04-24 20:51:06', '2024-04-24 20:51:06'),
(24, 'Samir Bernier I', 'Ut rerum.', '1713719850.jpg', 9, 1103.00, 9.00, 1, '2024-04-24 20:51:06', '2024-04-24 20:51:06'),
(25, 'Ellsworth Toy', 'Aliquam.', '1713719850.jpg', 8, 1718.00, 4.00, 2, '2024-04-24 20:51:06', '2024-04-24 20:51:06'),
(26, 'Margarete Wiza PhD', 'Veniam.', '1713719850.jpg', 8, 1721.00, 5.00, 2, '2024-04-24 20:51:06', '2024-04-24 20:51:06'),
(27, 'Meredith Legros DDS', 'Nobis.', '1713719850.jpg', 4, 1768.00, 7.00, 2, '2024-04-24 20:51:06', '2024-04-24 20:51:06'),
(28, 'Alysson Beer MD', 'Officiis.', '1713719850.jpg', 4, 1244.00, 5.00, 2, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(29, 'Ashtyn Rempel', 'Enim ea.', '1713719850.jpg', 4, 1981.00, 9.00, 2, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(30, 'Fanny Lemke', 'Earum qui.', '1713719850.jpg', 3, 1480.00, 2.00, 2, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(31, 'Mr. Herman Kuphal', 'Et quia.', '1713719850.jpg', 4, 1258.00, 8.00, 2, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(32, 'Dr. Kendra Sporer', 'Voluptas.', '1713719850.jpg', 10, 1611.00, 7.00, 1, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(33, 'Shyanne Barrows', 'Pariatur.', '1713719850.jpg', 5, 1431.00, 3.00, 1, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(34, 'Mr. Johann Simonis DVM', 'Veniam ut.', '1713719850.jpg', 9, 1797.00, 8.00, 1, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(35, 'Abelardo Nienow DDS', 'Velit.', '1713719850.jpg', 4, 1873.00, 8.00, 1, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(36, 'Theodore Crist', 'Omnis.', '1713719850.jpg', 1, 1174.00, 8.00, 1, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(37, 'Curt Becker Sr.', 'Esse.', '1713719850.jpg', 2, 1488.00, 9.00, 2, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(38, 'Lillian Harber', 'Aut.', '1713719850.jpg', 1, 1627.00, 1.00, 1, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(39, 'Cassandre Koch', 'Deleniti.', '1713719850.jpg', 9, 1632.00, 7.00, 2, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(40, 'Katrine Jacobs', 'Aut.', '1713719850.jpg', 2, 1226.00, 3.00, 2, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(41, 'Cleveland Mohr', 'Nemo.', '1713719850.jpg', 6, 1753.00, 1.00, 1, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(42, 'Shyanne Nikolaus', 'Et.', '1713719850.jpg', 7, 1743.00, 5.00, 2, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(43, 'Braeden Conroy', 'Sunt.', '1713719850.jpg', 7, 1941.00, 8.00, 1, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(44, 'Claire Balistreri', 'Qui et.', '1713719850.jpg', 1, 1715.00, 4.00, 2, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(45, 'Gus Blanda Jr.', 'Iure.', '1713719850.jpg', 7, 1877.00, 10.00, 2, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(46, 'Dr. Kendrick Schumm II', 'Sint.', '1713719850.jpg', 10, 1304.00, 10.00, 2, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(47, 'Dr. Alba Prosacco', 'Ut porro.', '1713719850.jpg', 7, 1593.00, 3.00, 1, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(48, 'Prof. Myah Spencer II', 'Et sunt.', '1713719850.jpg', 7, 1637.00, 10.00, 1, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(49, 'Chaim Bernhard V', 'Culpa.', '1713719850.jpg', 7, 1489.00, 1.00, 2, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(50, 'Jewel Balistreri', 'Aut odio.', '1713719850.jpg', 7, 1240.00, 2.00, 1, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(51, 'Annette Rath', 'Quidem.', '1713719850.jpg', 7, 1473.00, 1.00, 1, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(52, 'Robert Greenfelder', 'Ut.', '1713719850.jpg', 7, 1932.00, 8.00, 1, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(53, 'Florence Braun', 'Aut.', '1713719850.jpg', 3, 1728.00, 9.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(54, 'Electa Renner', 'Minima.', '1713719850.jpg', 8, 1506.00, 1.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(55, 'Freeman Wunsch', 'Commodi.', '1713719850.jpg', 5, 1347.00, 9.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(56, 'Madisen Gulgowski DDS', 'Vitae.', '1713719850.jpg', 6, 1321.00, 7.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(57, 'Erick Von', 'Delectus.', '1713719850.jpg', 5, 1454.00, 3.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(58, 'Mr. Chris Kautzer', 'Commodi.', '1713719850.jpg', 2, 1077.00, 4.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(59, 'Gwen Marvin', 'Ducimus.', '1713719850.jpg', 3, 1661.00, 1.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(60, 'Ellis Adams', 'Eveniet.', '1713719850.jpg', 1, 1003.00, 10.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(61, 'Floy Berge', 'Qui aut.', '1713719850.jpg', 10, 1041.00, 7.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(62, 'Prof. Emerald Rice III', 'Nihil.', '1713719850.jpg', 8, 1846.00, 10.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(63, 'Kevon Hoeger II', 'Minima.', '1713719850.jpg', 10, 1701.00, 7.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(64, 'Marianna Hoppe', 'Molestias.', '1713719850.jpg', 5, 1032.00, 4.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(65, 'Clementine Johnston', 'Similique.', '1713719850.jpg', 2, 1567.00, 2.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(66, 'Ms. Melissa Kozey Sr.', 'Eveniet.', '1713719850.jpg', 7, 1722.00, 9.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(67, 'Nestor Schroeder', 'Veniam.', '1713719850.jpg', 6, 1480.00, 8.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(68, 'Dr. Shawna Christiansen PhD', 'Iusto ex.', '1713719850.jpg', 5, 1656.00, 9.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(69, 'Mrs. Earline Veum', 'In eaque.', '1713719850.jpg', 1, 1455.00, 1.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(70, 'Mandy Reilly', 'Ex ad est.', '1713719850.jpg', 8, 1214.00, 2.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(71, 'Alivia Bergnaum Sr.', 'Illum.', '1713719850.jpg', 6, 1526.00, 9.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(72, 'Deon Metz', 'Quia.', '1713719850.jpg', 2, 1965.00, 4.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(73, 'Clovis Predovic', 'Qui.', '1713719850.jpg', 6, 1604.00, 10.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(74, 'Lisette Spinka', 'Ad cumque.', '1713719850.jpg', 9, 1733.00, 7.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(75, 'Ellis Miller', 'Sequi in.', '1713719850.jpg', 1, 1396.00, 10.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(76, 'Anya Hermiston', 'Possimus.', '1713719850.jpg', 8, 1022.00, 9.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(77, 'Reagan Considine III', 'Quod.', '1713719850.jpg', 8, 1001.00, 3.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(78, 'Catherine Block Sr.', 'Non qui.', '1713719850.jpg', 9, 1934.00, 8.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(79, 'Mara Wisoky', 'Est eaque.', '1713719850.jpg', 6, 1668.00, 8.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(80, 'Miss Cristal Williamson', 'Amet vero.', '1713719850.jpg', 6, 1239.00, 3.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(81, 'Armand Green Jr.', 'Voluptate.', '1713719850.jpg', 1, 1496.00, 8.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(82, 'Orval Dickinson', 'Et et ea.', '1713719850.jpg', 5, 1023.00, 3.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(83, 'Rhoda Hand', 'Et esse.', '1713719850.jpg', 3, 1564.00, 4.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(84, 'Shanny Fay DDS', 'Sit ad ex.', '1713719850.jpg', 5, 1919.00, 10.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(85, 'Ms. Malinda Hirthe III', 'Ex.', '1713719850.jpg', 4, 1127.00, 7.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(86, 'Lizeth Lubowitz', 'Vel quis.', '1713719850.jpg', 3, 1246.00, 2.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(87, 'Jefferey Runolfsdottir', 'Fugiat.', '1713719850.jpg', 8, 1768.00, 4.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(88, 'Alfonso King', 'Tenetur.', '1713719850.jpg', 3, 1071.00, 6.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(89, 'Allison Walter', 'Ut optio.', '1713719850.jpg', 1, 1730.00, 1.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(90, 'Giovanna Reinger', 'Ipsum.', '1713719850.jpg', 1, 1808.00, 6.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(91, 'Miracle Mayert', 'Aliquam.', '1713719850.jpg', 10, 1095.00, 7.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(92, 'Ms. Dakota Hodkiewicz', 'Iusto hic.', '1713719850.jpg', 2, 1392.00, 2.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(93, 'Miss Antonietta Mueller II', 'Autem.', '1713719850.jpg', 4, 1863.00, 9.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(94, 'Prof. Araceli Erdman III', 'Esse et.', '1713719850.jpg', 6, 1353.00, 5.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(95, 'Dr. Cristobal Boehm I', 'Vel magni.', '1713719850.jpg', 8, 1218.00, 1.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(96, 'Prof. Rodger King Jr.', 'Ipsum.', '1713719850.jpg', 2, 1337.00, 4.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(97, 'Jaren Murphy', 'Expedita.', '1713719850.jpg', 4, 1667.00, 6.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(98, 'Ressie Hudson V', 'Odio.', '1713719850.jpg', 7, 1787.00, 4.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(99, 'Sincere Volkman', 'Enim nam.', '1713719850.jpg', 2, 1349.00, 6.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(100, 'Christiana Legros', 'Minima.', '1713719850.jpg', 10, 1213.00, 5.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(101, 'Cleo Aufderhar', 'Nemo.', '1713719850.jpg', 3, 1645.00, 3.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(102, 'Cecilia Anderson', 'Molestiae.', '1713719850.jpg', 6, 1671.00, 10.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(103, 'Mason Crona', 'Amet illo.', '1713719850.jpg', 7, 1249.00, 7.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(104, 'Lesley Ledner', 'Sint sed.', '1713719850.jpg', 8, 1644.00, 4.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(105, 'Rex Barrows PhD', 'Quia.', '1713719850.jpg', 9, 1575.00, 3.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(106, 'Mr. Darwin Koss I', 'At magni.', '1713719850.jpg', 10, 1824.00, 7.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(107, 'Mrs. Kirsten Kassulke', 'Qui.', '1713719850.jpg', 8, 1816.00, 8.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(108, 'Dr. Modesta Erdman II', 'Sit.', '1713719850.jpg', 9, 1955.00, 8.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(109, 'Weston Tremblay', 'Incidunt.', '1713719850.jpg', 4, 1807.00, 10.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(110, 'Caterina Trantow', 'Natus.', '1713719850.jpg', 5, 1834.00, 1.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(111, 'Daniella Spencer I', 'Ut est.', '1713719850.jpg', 10, 1932.00, 10.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(112, 'Sydnee Barton', 'Molestiae.', '1713719850.jpg', 4, 1389.00, 6.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(113, 'Conrad Kohler', 'Soluta.', '1713719850.jpg', 7, 1547.00, 3.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(114, 'Jessyca Keeling', 'Molestiae.', '1713719850.jpg', 10, 1754.00, 6.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(115, 'Prof. Stephanie Kuvalis', 'Veniam.', '1713719850.jpg', 6, 1862.00, 3.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(116, 'Chanel Hoeger', 'In.', '1713719850.jpg', 2, 1664.00, 8.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(117, 'Dr. Olin Fadel DVM', 'Velit.', '1713719850.jpg', 4, 1046.00, 6.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(118, 'Mr. Dustin Muller V', 'Culpa.', '1713719850.jpg', 4, 1865.00, 4.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(119, 'Dr. Edgar Hodkiewicz', 'Harum.', '1713719850.jpg', 8, 1177.00, 3.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(120, 'Bridget Dickinson', 'Sapiente.', '1713719850.jpg', 6, 1842.00, 9.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(121, 'Lue Mueller', 'Nobis ut.', '1713719850.jpg', 4, 1860.00, 5.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(122, 'Kaylah Sawayn', 'Nihil.', '1713719850.jpg', 5, 1373.00, 10.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(123, 'Karley Kautzer', 'Voluptas.', '1713719850.jpg', 2, 1129.00, 5.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(124, 'Christy McDermott', 'Aliquam.', '1713719850.jpg', 4, 1326.00, 9.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(125, 'Dorcas Doyle', 'Dolorem.', '1713719850.jpg', 9, 1685.00, 2.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(126, 'Virginia Auer V', 'Et.', '1713719850.jpg', 8, 1105.00, 6.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(127, 'Mr. Edison Muller II', 'Non ut.', '1713719850.jpg', 6, 1575.00, 9.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(128, 'Gilda Mitchell III', 'Vel sit.', '1713719850.jpg', 10, 1252.00, 6.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(129, 'Joana Smitham', 'Earum a.', '1713719850.jpg', 6, 1553.00, 7.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(130, 'Robyn Simonis', 'Assumenda.', '1713719850.jpg', 6, 1101.00, 5.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(131, 'Mr. Augustus Goyette DDS', 'Tenetur.', '1713719850.jpg', 1, 1581.00, 8.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(132, 'Derrick Volkman', 'Tempore.', '1713719850.jpg', 6, 1391.00, 5.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(133, 'Earnest Rath', 'Maiores.', '1713719850.jpg', 7, 1703.00, 3.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(134, 'Arturo Daniel', 'Enim et.', '1713719850.jpg', 9, 1818.00, 2.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(135, 'Reyes Hudson', 'Vel neque.', '1713719850.jpg', 4, 1744.00, 1.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(136, 'Bud Brown', 'Omnis.', '1713719850.jpg', 3, 1551.00, 3.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(137, 'Mrs. Breanne Little DVM', 'Aperiam.', '1713719850.jpg', 8, 1406.00, 5.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(138, 'Kenyatta Sawayn', 'Veniam.', '1713719850.jpg', 9, 1138.00, 10.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(139, 'Kenyon Schmidt IV', 'Ut ad.', '1713719850.jpg', 6, 1550.00, 9.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(140, 'Francesco Johnston', 'Totam.', '1713719850.jpg', 6, 1598.00, 7.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(141, 'Prof. Jeramy Spinka', 'Ab facere.', '1713719850.jpg', 1, 1946.00, 3.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(142, 'Alisa Cormier', 'Rerum.', '1713719850.jpg', 6, 1650.00, 4.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(143, 'Ms. Lori Wuckert II', 'Debitis.', '1713719850.jpg', 5, 1684.00, 2.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(144, 'Antonia Terry', 'Rerum.', '1713719850.jpg', 9, 1652.00, 3.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(145, 'Dr. Alysha Satterfield Jr.', 'Aut.', '1713719850.jpg', 4, 1749.00, 3.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(146, 'Mr. Brant Lueilwitz', 'Expedita.', '1713719850.jpg', 3, 1137.00, 3.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(147, 'Shaylee Goodwin', 'Rerum.', '1713719850.jpg', 6, 1951.00, 4.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(148, 'Clara O\'Hara', 'Aut quo.', '1713719850.jpg', 8, 1742.00, 9.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(149, 'Emie Walsh', 'Vel ad.', '1713719850.jpg', 1, 1826.00, 8.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(150, 'Cyrus Cormier', 'Eius ut.', '1713719850.jpg', 6, 1478.00, 9.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(151, 'Miss Thora Jaskolski', 'Rerum.', '1713719850.jpg', 8, 1010.00, 1.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(152, 'Fern Gleichner', 'Autem.', '1713719850.jpg', 5, 1644.00, 9.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(153, 'Dr. Kraig Hoppe V', 'Quo neque.', '1713719850.jpg', 4, 1913.00, 5.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(154, 'Prof. Russel Schmeler', 'Minima.', '1713719850.jpg', 10, 1021.00, 9.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(155, 'Markus Homenick', 'Tenetur.', '1713719850.jpg', 1, 1935.00, 7.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(156, 'Rebecca Rippin V', 'Tempora.', '1713719850.jpg', 10, 1760.00, 4.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(157, 'Gerda Moen', 'Autem.', '1713719850.jpg', 7, 1153.00, 2.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(158, 'Matilda Bechtelar IV', 'Fugit.', '1713719850.jpg', 4, 1735.00, 2.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(159, 'Rhoda Nicolas', 'Eligendi.', '1713719850.jpg', 10, 1186.00, 1.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(160, 'Ms. Simone Lakin', 'Ipsum.', '1713719850.jpg', 6, 1284.00, 5.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(161, 'Eden Mante', 'Provident.', '1713719850.jpg', 6, 1011.00, 9.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(162, 'Hannah Hauck II', 'Aperiam.', '1713719850.jpg', 4, 1255.00, 10.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(163, 'Vladimir Prohaska', 'Eos ea.', '1713719850.jpg', 5, 1911.00, 1.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(164, 'Miss Helene Howe', 'Assumenda.', '1713719850.jpg', 9, 1053.00, 9.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(165, 'Mr. Gene Johnson I', 'Omnis.', '1713719850.jpg', 2, 1658.00, 8.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(166, 'Dr. Aniyah Orn DVM', 'Omnis.', '1713719850.jpg', 1, 1639.00, 3.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(167, 'Trinity Maggio', 'Eveniet.', '1713719850.jpg', 1, 1953.00, 2.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(168, 'Kody Murazik', 'Et.', '1713719850.jpg', 7, 1050.00, 10.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(169, 'Bridie Stiedemann', 'Ut modi.', '1713719850.jpg', 9, 1881.00, 4.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(170, 'Deonte Von', 'Nobis.', '1713719850.jpg', 3, 1204.00, 1.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(171, 'Waldo Hessel', 'Soluta.', '1713719850.jpg', 1, 1581.00, 3.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(172, 'Maia King', 'Quis.', '1713719850.jpg', 5, 1684.00, 10.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(173, 'Amya Wuckert', 'Aut qui.', '1713719850.jpg', 6, 1468.00, 4.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(174, 'Prof. Moriah Leuschke II', 'Minus qui.', '1713719850.jpg', 2, 1229.00, 9.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(175, 'Romaine Sanford', 'Ipsa.', '1713719850.jpg', 5, 1852.00, 4.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(176, 'Dr. Freddie King MD', 'Non.', '1713719850.jpg', 1, 1891.00, 5.00, 1, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(177, 'Regan McGlynn', 'Molestias.', '1713719850.jpg', 4, 1801.00, 2.00, 2, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(184, 'newproduct', 'new', '1714760147.png', 1, 1111.00, 1.00, 2, '2024-05-03 18:14:37', '2024-05-03 18:15:47');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'manager1', 'manager1', '2024-04-21 17:09:48', '2024-04-21 17:09:48'),
(2, 'manager2', 'manager2', '2024-04-21 17:11:03', '2024-04-21 17:11:03'),
(6, 'manager3', 'manager3', '2024-05-07 08:47:54', '2024-05-07 08:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT 0,
  `is_staff` tinyint(1) NOT NULL DEFAULT 0,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `is_superuser`, `is_staff`, `phone`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'shirin', 'mirshirin8353@gmail.com', 1, 1, '09127196483', 'bimeh', NULL, '$2y$10$sEVQw4EaG29wfNGB8lXxDuQse/LIQsv3GbQZZfSa9cAjJb7zPCBem', 'cl9qz5TeESsL92JAoXFOOx50TiqHyfZfhka9i3sMlpFtZzvzQmoKMS3ICugH', '2024-04-21 16:48:58', '2024-04-29 18:57:24'),
(2, 'omid', 'arvand11@yahoo.com', 0, 1, '09121351972', 'bimeh', NULL, '$2y$10$e.J0Cavz2Oa7AdXId1Dkvevb9cdyD4jdRlkAkuENjDRTri2G2IPKW', NULL, '2024-04-21 16:50:18', '2024-05-02 21:52:49'),
(4, 'Carrie Bednar I', 'davis.ralph@example.org', 0, 1, '+1 (910) 889-1189', '804 Herman Place\nWest Metafurt, MO 72352-5155', NULL, '$2y$10$vfloihKpDnjdtwr3JSJOh.LankIwxhz/Y5Re6jSbiCKEajMnuj9He', NULL, '2024-04-24 18:42:20', '2024-04-24 18:42:20'),
(6, 'Miss Marielle McGlynn MD', 'charlene.mcclure@example.com', 0, 1, '+1-630-809-9512', '39607 Nellie Estates Suite 611\nPort Tomas, WA 72846-7669', NULL, '$2y$10$lbkljCqGGCXDgSw4/pkAku0BdZpZhg2iAoGA0UNiQ9SAq2HU21JdW', NULL, '2024-04-24 18:42:20', '2024-04-24 18:42:20'),
(7, 'Anastacio Huels', 'natalia96@example.net', 0, 1, '+12543407724', '34447 Predovic Green\nWest Kelvin, LA 73477', NULL, '$2y$10$1FdaN0BmKeFbs5WXcj/QHeoACGPlIeRfFjI0iUN5cep.DUwQ3tTXK', NULL, '2024-04-24 18:42:20', '2024-04-24 18:42:20'),
(9, 'Miss Maegan Greenfelder II', 'muhammad69@example.org', 0, 1, '+1-425-400-7225', '972 Merritt Greens\nHahnbury, MO 97737-3179', NULL, '$2y$10$wk/lGmu.rGjjc1Pi/BFdqeYUMWtaM3D/WsAS70NCKafYML7CwM1Ge', NULL, '2024-04-24 18:46:25', '2024-04-24 18:46:25'),
(10, 'Phyllis Hirthe', 'jannie90@example.com', 0, 1, '+1.812.892.4061', '38559 Virginia Spur\nNew Demondstad, NC 93796-3810', NULL, '$2y$10$/vsSTFgo3toVCrzQvkjJK.IaFjURmr6SOIyzMrYOJ14iMnlYUfPCy', NULL, '2024-04-24 18:46:25', '2024-04-24 18:46:25'),
(11, 'Kayli Swaniawski DVM', 'lemuel28@example.net', 0, 1, '(458) 776-0192', '331 Thad Shoals\nToyhaven, MT 03011-1157', NULL, '$2y$10$M1o0fQ7fJXCcwrNAiqRmzO9BWEgwm9RUoxFRxGKqCMpOa/BoDto86', NULL, '2024-04-24 18:46:25', '2024-04-24 18:46:25'),
(12, 'Miss Bettye Walsh', 'rwilliamson@example.net', 0, 1, '1-757-219-0230', '154 Gisselle Dale\nHeatherville, NJ 30882', NULL, '$2y$10$SoGtZ1VG7bqHDvaJHkyXwes8NlTCgK8cCdZgwvkrv/BEDSHLmuyFy', NULL, '2024-04-24 18:46:25', '2024-04-24 18:46:25'),
(13, 'Mr. Adrain Cruickshank', 'welch.larue@example.com', 0, 1, '707-348-4140', '198 Sigmund Trail\nLake Kacie, MD 54698', NULL, '$2y$10$9AuR9dDEXAUnHSoj3lm4UecEw2Bt4nK7yRUl4bj2Hfbq1BxgE4QM.', NULL, '2024-04-24 18:48:59', '2024-04-24 18:48:59'),
(14, 'Prof. Maxine Douglas', 'sgusikowski@example.com', 0, 1, '+15024617917', '7862 Albert Dale Apt. 032\nWest Dennis, HI 91916', NULL, '$2y$10$x0.FzPEppdBXCW4Nuqy6T.hlG59uufLRQQd6ku3CRibWD8.YkMlgW', NULL, '2024-04-24 18:48:59', '2024-04-24 18:48:59'),
(15, 'Thad Marquardt', 'emmett.harber@example.org', 0, 1, '+19596628343', '5016 Cleora Lakes Apt. 713\nJarrodshire, VT 63780-8914', NULL, '$2y$10$VbNxAFFOgwlhN0ApDTtp/eIsrMXNTq5KtoitXeIqUu0zg.EYzu94a', NULL, '2024-04-24 18:48:59', '2024-04-24 18:48:59'),
(16, 'Patricia Rodriguez', 'russel.heidi@example.org', 0, 1, '+1-785-367-3137', '2513 Kuphal Lane\nPricemouth, OH 20615', NULL, '$2y$10$L9TM9Fj1suEMjD15l50A6O0ZMoAgPuKD9gYXpYNvqbvLwYhv8/yuK', NULL, '2024-04-24 18:48:59', '2024-04-24 18:48:59'),
(17, 'Quinten Torp', 'cronin.trey@example.net', 0, 1, '1-520-636-9253', '76654 Gutkowski Road\nRunteshire, ME 68720-1922', NULL, '$2y$10$JJbZJ8ckQUQG3DkE5UE.DuyBLB22pI9Fd11zNHiXo5J7BIC7xTdMK', NULL, '2024-04-24 18:48:59', '2024-04-24 18:48:59'),
(18, 'Terrance Hessel', 'dickens.kayden@example.net', 0, 1, '+1 (703) 476-3379', '70385 Mills Spring Apt. 533\nIdellaberg, AL 05007-7534', NULL, '$2y$10$AORygQp7Gu2vwwqGO9aVouYipcz/KPGrmvUPjaEkRJeuOO5m0JaHK', NULL, '2024-04-24 18:54:51', '2024-04-24 18:54:51'),
(19, 'Kasandra Hamill', 'xgusikowski@example.net', 0, 1, '(618) 669-5493', '505 Jerrod Rest\nKohlerchester, MA 82047', NULL, '$2y$10$zKoKpbr7QsWt59cDLL3nLemZ5rVrz9H9EV8.OqqHpEQHJi0KLkQjq', NULL, '2024-04-24 18:54:51', '2024-04-24 18:54:51'),
(20, 'Oliver Kuphal', 'nella.koelpin@example.org', 0, 1, '+1-580-499-2204', '693 Gislason Unions\nNew Timmyside, VA 48554', NULL, '$2y$10$5GXW3UU6H.D2rfBUJiiqVOC.G/jm//L7vOt/jQQ/Y6TZxFWru2Y8K', NULL, '2024-04-24 18:54:51', '2024-04-24 18:54:51'),
(21, 'Lindsay Fahey', 'kevin67@example.com', 0, 1, '+14017281164', '7637 Nicolas River\nBreannetown, ID 33383', NULL, '$2y$10$jtSFbG8xtyoS4Ureqq/59.v25jTYtaORRi1stGvR9uoZuKidRoFE6', NULL, '2024-04-24 18:54:51', '2024-04-24 18:54:51'),
(22, 'Hulda Stark', 'sid42@example.org', 0, 1, '(681) 447-5911', '136 Bennie Islands Apt. 447\nJeromeland, MT 81180-4191', NULL, '$2y$10$OpG6GyWHae7DPUNXu7Y2VuOGztw09Q4ztoglFUnfw1vwrgMlA38K6', NULL, '2024-04-24 18:54:51', '2024-04-24 18:54:51'),
(23, 'Prof. Christian Schowalter', 'rosamond03@example.com', 0, 1, '+1-330-476-0120', '8457 Hegmann Motorway\nNorth Sadie, KY 20995', NULL, '$2y$10$BXmLlByIw89.Ni6ZKRXVOObncBV4b1bj4dJH6O9Cg9nPc9gQfryTC', NULL, '2024-04-24 20:10:46', '2024-04-24 20:10:46'),
(24, 'Adrien Mohr II', 'kristin16@example.org', 0, 1, '+1-915-230-3223', '486 Sauer Via Apt. 936\nErdmanville, OR 38468-0040', NULL, '$2y$10$k6lLMxrBh1Hq8frPUqs5VOnFSjpZdEyO4tWNbURBbzTorRntyVR8a', NULL, '2024-04-24 20:10:46', '2024-04-24 20:10:46'),
(25, 'Lyla Schroeder', 'vincent.monahan@example.org', 0, 1, '272-704-1080', '42706 Franecki Orchard Suite 926\nPort Kipland, IA 71760', NULL, '$2y$10$P7qFFJIrxIyD62yvqtmMVOBn5M1ohYjTvlj8A/f5IGBu.OBQi2wai', NULL, '2024-04-24 20:10:46', '2024-04-24 20:10:46'),
(26, 'Dr. Sophie Gleason', 'melvina.orn@example.com', 0, 1, '+1.540.552.3852', '615 Mary Spring Suite 380\nBayerside, IL 98168-7406', NULL, '$2y$10$zMnxxz4xGeLB1BSiO2EdcuWJuk/8mmymZy6iUncErYVTYb4FZI8xK', NULL, '2024-04-24 20:10:46', '2024-04-24 20:10:46'),
(27, 'Tad Quigley', 'neva.walter@example.net', 0, 1, '267-463-6767', '9151 Lawrence Station\nAldashire, MS 49949', NULL, '$2y$10$7pAd//563FkOr9MSLOA6JOcCSR.FhBf9H50FzmlykgqnEUz/m1aG.', NULL, '2024-04-24 20:10:46', '2024-04-24 20:10:46'),
(28, 'Kallie Haley', 'gaylord.hardy@example.org', 0, 1, '425.644.8094', '14688 Wiza Brook\nEast Wallacefurt, VA 70387', NULL, '$2y$10$/OhVmG7ctW1IginU/V1Ra.EqR/Sjl6mTmiiABy0AKmlyPKXv2dOE2', NULL, '2024-04-24 20:17:02', '2024-04-24 20:17:02'),
(29, 'Tom Wolff', 'fkovacek@example.net', 0, 1, '+1-469-846-3762', '9411 Justine Squares\nPort Nevaville, MD 60160', NULL, '$2y$10$fQRZugWpqiQ4XcVP6V7wuewpC1dM8YDJyHv4JgkM8KTZILAKdHWea', NULL, '2024-04-24 20:17:02', '2024-04-24 20:17:02'),
(30, 'Mr. Alf Keebler', 'mitchell.maegan@example.com', 0, 1, '419-375-8033', '13876 Lindsay Key Suite 999\nZoeyton, HI 89733-6277', NULL, '$2y$10$fBrHF9.ARhD6CZimiKWsIu2K/8fFkqfz2jwG2WGyiuWccnXmvYgiu', NULL, '2024-04-24 20:17:02', '2024-04-24 20:17:02'),
(31, 'Eduardo Wehner', 'alexandria71@example.org', 0, 1, '+13326886300', '8921 Josephine Burg Suite 582\nNorth Clay, NM 66013-5665', NULL, '$2y$10$s1NKMRCgZyFy8AsQCGR.QuzW6xLcVpW9G2u3CrixqXUHrStgV0EV6', NULL, '2024-04-24 20:17:02', '2024-04-24 20:17:02'),
(32, 'Sharon Gulgowski', 'zack01@example.org', 0, 1, '458.377.8448', '94340 Kuhlman Street\nHaleyhaven, VT 19229-4386', NULL, '$2y$10$EVXcMhycGYMZFKDpW3cEFOPk9PzktkZoN9tflNeqixiiw.9X4CL/W', NULL, '2024-04-24 20:17:02', '2024-04-24 20:17:02'),
(33, 'Leila Romaguera', 'pjast@example.com', 0, 1, '904.548.6026', '52765 Farrell Orchard Apt. 413\nCesarfurt, MA 49911-5249', NULL, '$2y$10$tLhAZeKm4l/P6U5DNY5PZ.3QgCFeiujgJAIy7hf7UCokmzpwUjjRi', NULL, '2024-04-24 20:20:27', '2024-04-24 20:20:27'),
(34, 'Tanya Hahn', 'gussie49@example.com', 0, 1, '+1.520.916.1727', '2428 Jacobi Light\nLake Ruthton, ND 16355', NULL, '$2y$10$Nnx0bVoZyu9BbxAY9pr3WO9n6tTDGkneSL3x6WqdsUplI0/YeUuQ.', NULL, '2024-04-24 20:20:27', '2024-04-24 20:20:27'),
(35, 'Prof. Gordon Schinner Jr.', 'alyce86@example.com', 0, 1, '1-858-706-5569', '31175 Gusikowski Branch\nMosciskiton, MS 63711-2783', NULL, '$2y$10$Z.Tj1gCW8/5L5Oiiq4808eRsqkEmc4ZBUo0b1ZlKJN93AF/s.SRRG', NULL, '2024-04-24 20:20:27', '2024-04-24 20:20:27'),
(36, 'Malcolm Parisian Sr.', 'johns.loraine@example.com', 0, 1, '+1 (270) 657-5035', '1499 Carol Fork\nAdalineside, WI 66870-4688', NULL, '$2y$10$nbpNeP2iwNA4ptRERTpXje.n3jEDK0WQocXGJtw3zdlZ45QXM1l.u', NULL, '2024-04-24 20:20:27', '2024-04-24 20:20:27'),
(37, 'Brendon Torp', 'glover.jamarcus@example.net', 0, 1, '+1.341.892.8944', '42037 Kilback Lodge Apt. 400\nSigmundshire, DE 24229-9556', NULL, '$2y$10$jNJKw/97tZ6pSZyvsuZKEO4JfcMXILXKQZmwmh68JjnBNZBRNK3Cq', NULL, '2024-04-24 20:20:27', '2024-04-24 20:20:27'),
(38, 'Anais Hammes I', 'travis.weissnat@example.org', 0, 1, '+13515450232', '3426 Earnestine Causeway\nMarianshire, RI 21375', NULL, '$2y$10$YmoifsDVqsmvjRe4OW4q1eAXT3o623gyQFZgNy5C5QJFCZJx63f9C', NULL, '2024-04-24 20:23:20', '2024-04-24 20:23:20'),
(39, 'Mohamed Rowe', 'haley45@example.org', 0, 1, '(872) 584-1432', '40105 Hills Curve\nNew Annette, OH 13924', NULL, '$2y$10$FTmXCyahqmoqpRm4MY0ywOySbHMYh6EsEHN6GIi4aV1MOiq3e4OS.', NULL, '2024-04-24 20:23:20', '2024-04-24 20:23:20'),
(40, 'Rodrick Lind', 'matteo49@example.net', 0, 1, '223-260-9645', '4481 Felicity Junction\nMurphychester, CO 33881', NULL, '$2y$10$4NEY3L3V6cM91O4GmGJhRO2xfADTKcPi6xp4Yqjhqay7hnt4yEgcO', NULL, '2024-04-24 20:23:20', '2024-04-24 20:23:20'),
(41, 'Gunnar Emard', 'hudson69@example.org', 0, 1, '1-678-903-5434', '1724 Annabelle Hollow\nBreannachester, CO 70202', NULL, '$2y$10$2nh57XFBGzmjS1Y0qkGCcu5M4DQZ26h6C5DKnAAzFvR6u3YynQzHi', NULL, '2024-04-24 20:23:20', '2024-04-24 20:23:20'),
(42, 'Prof. Gideon Kirlin V', 'marquis.marvin@example.org', 0, 1, '903-574-5474', '7817 Brown Springs\nDevenbury, NC 01853', NULL, '$2y$10$wn.OjH.q0a.WJzsZ3OYKLuKFwVCZNCMA2Wz1PP3UC/ZdH1Qt6Erl6', NULL, '2024-04-24 20:23:20', '2024-04-24 20:23:20'),
(43, 'Lorna Braun', 'hank39@example.net', 0, 1, '1-828-412-4250', '794 Mueller Locks Suite 841\nKunzeton, VA 14732', NULL, '$2y$10$x2Qnrfc9n9hS5FNspjsnL.XXWSGetBCdBzg3pJTIn2jmhZHePoEiC', NULL, '2024-04-24 20:27:25', '2024-04-24 20:27:25'),
(44, 'Ms. Zita Weissnat', 'elias.beahan@example.net', 0, 1, '(470) 813-0031', '337 Silas Club\nEast Violetside, ND 20548', NULL, '$2y$10$p88QYXpbTr8hT04ZqSbjIeddImxkit9LiZVAm4XWRtoJqdhkVIlJy', NULL, '2024-04-24 20:27:25', '2024-04-24 20:27:25'),
(45, 'Lennie McGlynn', 'qgutkowski@example.net', 0, 1, '409.789.2127', '91575 Nienow Circle\nOrloview, WA 25495', NULL, '$2y$10$Y3E6RHVYaUGBv1vNXumEXeFh1Vexw5o/0Vb.HWw0XsLkWrk1fXB5K', NULL, '2024-04-24 20:27:25', '2024-04-24 20:27:25'),
(46, 'Dandre Nader V', 'soledad25@example.com', 0, 1, '1-682-241-6999', '3222 Carmine Oval\nBednarberg, CT 77380', NULL, '$2y$10$bPyOIBqhUzqqueYs34gGlOs6QLwGiedehW1pMVaCBOIOP1VPb16Qu', NULL, '2024-04-24 20:27:25', '2024-04-24 20:27:25'),
(47, 'Maggie O\'Connell', 'mertz.hannah@example.com', 0, 1, '(415) 593-0648', '9951 Ozella Drive Suite 190\nCronaview, CT 89968', NULL, '$2y$10$aaf1NlHQKFE0dv/XIWxxwOKctbaqbCREguMmPYBWpD82ucJtS65xO', NULL, '2024-04-24 20:27:25', '2024-04-24 20:27:25'),
(48, 'aria', 'aria@yahoo.com', 0, 0, '09127196483', 'bimeh', '2024-04-24 20:39:00', '$2y$10$7KUPF47ayGoxcoEHk9hhQuYAcFlAWhHcHm1YxpbjNTDh9mdyeXK4C', NULL, '2024-04-24 20:39:00', '2024-04-24 20:39:00'),
(49, 'Braeden Lind Sr.', 'wilkinson.casey@example.org', 0, 1, '+15858094614', '75081 Dominic Isle Suite 196\nIsmaelton, MT 06246', NULL, '$2y$10$.GS2XTAD8tO0JT4NS2gL4ejmM4Qv9jlbzhH95JHAnQsIP.HpGrMU2', NULL, '2024-04-24 20:41:47', '2024-04-24 20:41:47'),
(50, 'Matilda Turner', 'milan.wiegand@example.com', 0, 1, '1-713-219-4154', '2660 Amir Radial Suite 611\nEast Kianaview, WI 81941-9469', NULL, '$2y$10$wprLvN1s5PCtmMu80gSCUu2SPeUKuc355Vcm.4ssuwIhEyTw36FAm', NULL, '2024-04-24 20:41:47', '2024-04-24 20:41:47'),
(51, 'Rashawn Swaniawski', 'lheathcote@example.org', 0, 1, '+1 (463) 910-1669', '353 Felipa Falls\nPort Alexandra, DE 58814', NULL, '$2y$10$hybIQP0aKnFZZID4zg5JVOp6btIjQKJujBwixztfanjhkW.rqJJ/e', NULL, '2024-04-24 20:41:47', '2024-04-24 20:41:47'),
(52, 'Vincenzo Rau Jr.', 'iconroy@example.net', 0, 1, '+1 (812) 713-0763', '2850 Crystal Union Suite 559\nWest Rebeccaborough, ME 57715', NULL, '$2y$10$8WGZeE59phE9LWRuJKEdyeAnG1MvlUAniDDX6UFmEQg9Ybr0buTOy', NULL, '2024-04-24 20:41:47', '2024-04-24 20:41:47'),
(53, 'Amparo Dach', 'ullrich.lucious@example.com', 0, 1, '+1 (458) 396-8745', '508 Hill Crossroad Apt. 282\nSouth Emeliafurt, ND 53671-3590', NULL, '$2y$10$mGJSaAhF3hD1jRV71vkys./ZV1XwyK3IXnR/41e4xwK5B5kCXF4Ke', NULL, '2024-04-24 20:41:47', '2024-04-24 20:41:47'),
(54, 'Stanford Strosin', 'wiley.roob@example.org', 0, 1, '1-323-371-0370', '5212 O\'Hara Track Suite 168\nNorth Kendallbury, OR 42614', NULL, '$2y$10$kSC4xuGIG3iN/Y/RRNpkB.m9ig2qXa2jJXkNVcfDBocFz7zwHwA1u', NULL, '2024-04-24 20:49:44', '2024-04-24 20:49:44'),
(55, 'Milford Kihn', 'botsford.mervin@example.com', 0, 1, '475.982.1255', '140 Kshlerin Camp Apt. 736\nAnkundingland, SC 36045-1453', NULL, '$2y$10$xKcDnKS1BEIlQjICtFT8ZumJSjoQVDZbOBsmFraxPDTId2Pf2wrhu', NULL, '2024-04-24 20:49:44', '2024-04-24 20:49:44'),
(56, 'Lowell Altenwerth', 'cremin.katlyn@example.com', 0, 1, '+1-830-849-8971', '8984 Weimann Row Suite 489\nEast Lilliana, MN 53925', NULL, '$2y$10$8J.zASOrDglXF1E1tGUCz.WBu.AHRzwGROxI6pIxh.6zJNFfrNQnq', NULL, '2024-04-24 20:49:44', '2024-04-24 20:49:44'),
(57, 'Horace Cummerata', 'claudie.erdman@example.net', 0, 1, '1-725-301-0266', '238 Dale Lodge Suite 231\nSouth Emileshire, MD 19415-1799', NULL, '$2y$10$Tz49Dvo4ljTLtXtrHuVHB.79sJ7Yk3ZUBRtj9k8CjGsyaD07gTPEu', NULL, '2024-04-24 20:49:44', '2024-04-24 20:49:44'),
(58, 'Marcelo Rogahn', 'roxanne60@example.net', 0, 1, '+1-805-406-5534', '15810 Simonis Street Apt. 535\nNathenmouth, MI 42494', NULL, '$2y$10$eIQcfYZ6jtggp7gLKlVpcONrCNleq6vvn6ZhaLwrh8.PRSYffeDZe', NULL, '2024-04-24 20:49:44', '2024-04-24 20:49:44'),
(59, 'Elisa Sipes', 'helena.bernier@example.net', 0, 1, '820.917.5328', '42914 Carroll Points\nFelicityfurt, AL 69865-5455', NULL, '$2y$10$jMGXarLG0rL9ttQ7IV56oeRw8fBFgk70ZtT9LpLswonru1nkX61hK', NULL, '2024-04-24 20:51:06', '2024-04-24 20:51:06'),
(60, 'Hermann Renner', 'mclaughlin.burley@example.net', 0, 1, '(425) 604-9876', '18430 Kilback River Suite 567\nSchmittport, NV 00981', NULL, '$2y$10$RsqrvrU9OwsbH7T3pOt3iOgu3nczH4KygizDn/8Ad73J.LFyl/Zl6', NULL, '2024-04-24 20:51:06', '2024-04-24 20:51:06'),
(61, 'Mathew Gulgowski III', 'mckenna61@example.com', 0, 1, '772.232.3924', '6756 Irwin Fall\nKaceyside, FL 13962-3498', NULL, '$2y$10$MGI3cvEIUYw0MdA9ni/F3OBX.K1yXdpBdkBruacsXNhot8Np201Qq', NULL, '2024-04-24 20:51:06', '2024-04-24 20:51:06'),
(62, 'Myah Simonis', 'alize.goodwin@example.net', 0, 1, '+1 (440) 703-5289', '37196 Emmerich Highway Suite 400\nSouth Harmon, ND 81522-0788', NULL, '$2y$10$YX.D.iRwI0d3ZJKbvk7zZuolwlA6E1WqjpWJwuAXEzweMeURJdBHW', NULL, '2024-04-24 20:51:06', '2024-04-24 20:51:06'),
(63, 'Faye Stehr', 'cristopher40@example.org', 0, 1, '+1 (726) 873-7800', '5155 White Circle\nNorth Maxwell, WA 55249-6885', NULL, '$2y$10$nl1V2F0CXiar6Qv81ewMx.Bn8jCGko2nqXZoUs5X66ferNXQ13eVW', NULL, '2024-04-24 20:51:06', '2024-04-24 20:51:06'),
(64, 'Myron Parker', 'norbert.parker@example.com', 0, 1, '+1 (872) 374-2732', '4866 Connelly Brook\nRueckerville, OH 41627-8660', NULL, '$2y$10$MK8twPD4Cq/bUh1Gvbcyp.kaK1JX/zlKc9FGBRGYLTBi8dIEi.f0m', NULL, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(65, 'Prof. Darian Watsica MD', 'trantow.camden@example.com', 0, 1, '+1-320-492-4454', '40815 Hintz Mount Apt. 704\nAnahiburgh, IL 25716-5973', NULL, '$2y$10$8g67lh1VxbtXwQkCd4SMnOGq.piAPlNXkU9WK/BeFIEuknaGx9GSS', NULL, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(66, 'Dr. Jada Koch', 'ondricka.virginia@example.com', 0, 1, '347.813.6010', '217 Darius Fork Suite 612\nNorth Fridastad, CO 31874', NULL, '$2y$10$583zg3s.rDUA9wN02MNVyuYwl1L4GTL089rcvpiG9KOaJYtwjHWzm', NULL, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(67, 'Prof. Ceasar Hirthe', 'tevin.bahringer@example.com', 0, 1, '1-947-700-4181', '1657 Legros Common\nPort Tressa, CA 24870', NULL, '$2y$10$K0PQ0etTle.6I66/C73NyO8Vi./5Q3o8kZPqnJpSkz4Z8UvrbRIum', NULL, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(68, 'Blaze Ferry', 'rice.lacey@example.org', 0, 1, '828-594-3855', '921 Legros Loaf Apt. 027\nRosellaberg, VA 40307', NULL, '$2y$10$xEc.tgFlUecBwcavVd.0Xu1lVBCtiKdZeWm1eQ74dFQBkoa1QxKse', NULL, '2024-05-01 02:23:13', '2024-05-01 02:23:13'),
(69, 'Betty Larkin', 'wbashirian@example.com', 0, 1, '+1-681-667-6049', '1592 Brakus Corner\nSouth Barry, MN 71358', NULL, '$2y$10$AitWsXH0x7d04GcGdGJ3L.0efiJr5Myi77AdJkebwkdXWN7ovPuBu', NULL, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(70, 'Louie Hyatt', 'botsford.ludwig@example.com', 0, 1, '+1-313-829-5132', '147 Langosh Isle Suite 354\nTerrymouth, IL 09907', NULL, '$2y$10$49xbLg9/SNgNvjaxE6Ac4.viTH.jo7uxdIty6uj2IJrjP67KaFY7G', NULL, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(71, 'Tiffany Prosacco', 'gkuhn@example.com', 0, 1, '+13167583348', '8053 Teagan Inlet Apt. 393\nNew Devenstad, AZ 68367', NULL, '$2y$10$VI2aYBs8Zc37AOuBPpiT2eHgy5dPZvlOTo1nqBkVnIZ7YO/GR6bAW', NULL, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(72, 'Ms. Eleonore Stoltenberg', 'brannon.vandervort@example.net', 0, 1, '(973) 212-9976', '10966 O\'Conner Extensions\nNew Cecile, AK 37820', NULL, '$2y$10$/vpeFSKUXNpKqJS6uZEqd.pcROYtBKdQnJ7crliBgopII3.XFSkPi', NULL, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(73, 'Mr. Philip Bayer', 'irma.robel@example.com', 0, 1, '(757) 683-5021', '308 Prudence Centers\nRauview, AL 83223', NULL, '$2y$10$c43SLxSQGROeJG5vGIlcGuNjlcNGRALsMwfGoB9wRnX25F74d3Uye', NULL, '2024-05-01 02:23:47', '2024-05-01 02:23:47'),
(74, 'asad', 'asdadi@gmail.com', 0, 0, '09127196483', 'bimeh', '2024-05-03 17:59:50', '$2y$10$Xc/CHkTmDw37DzvLzvsu1usuYRrSkunJoFmV/FefFTc0njVP7RRRm', NULL, '2024-05-03 17:59:50', '2024-05-03 17:59:50'),
(75, 'root', 'root@localhost', 1, 1, '1', '1', '2024-05-07 08:45:09', '$2y$10$EtxZoimYtmxqDsVUnAHQku39YWK3yIsxU9CtSOUUXNNz5v6NMj7U.', NULL, '2024-05-07 08:40:37', '2024-05-07 08:45:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_product_id_foreign` (`product_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_user_user_id_foreign` (`user_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_label_unique` (`label`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
