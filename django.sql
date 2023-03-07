-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 08:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add catagory', 7, 'add_catagory'),
(26, 'Can change catagory', 7, 'change_catagory'),
(27, 'Can delete catagory', 7, 'delete_catagory'),
(28, 'Can view catagory', 7, 'view_catagory'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add cart', 9, 'add_cart'),
(34, 'Can change cart', 9, 'change_cart'),
(35, 'Can delete cart', 9, 'delete_cart'),
(36, 'Can view cart', 9, 'view_cart'),
(37, 'Can add favourite', 10, 'add_favourite'),
(38, 'Can change favourite', 10, 'change_favourite'),
(39, 'Can delete favourite', 10, 'delete_favourite'),
(40, 'Can view favourite', 10, 'view_favourite');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$sDW31l0UCuCyTV8r4Q82Te$D1p18+rUBpv9d1sseVQQ8iXtPXerxgKnweUI9wwc8FM=', '2022-12-12 13:33:59.047082', 1, 'lsky', '', '', 'lsky@gmail.com', 1, 1, '2022-12-07 08:12:56.323495'),
(2, 'pbkdf2_sha256$390000$EivuJoew1DrLnTjeXfrWRs$XJfYCR+WtuGqFvfxPUQZ7BcDWYe7gtfYxlnlb58Cp18=', NULL, 0, 'ram', '', '', 'lsky@gmail.com', 0, 1, '2022-12-09 11:47:27.268870'),
(3, 'pbkdf2_sha256$390000$wgbU6wEvgVvBi5Xmhb67lL$PO7+WalAIDG/yv9xv2U02741X5C+DPcOU8uxyZ2Brto=', '2022-12-09 17:15:11.603054', 0, 'sam', '', '', 'lsky@gmail.com', 0, 1, '2022-12-09 11:49:26.224926'),
(4, 'pbkdf2_sha256$390000$WMWABhQRuoir6ecs3qYVfN$vt3WWfHfMg4i6ktexYtKx38VwVxKkQyYEx9A1+ayx0I=', NULL, 0, 'Tom', '', '', 'lsky@gmail.com', 0, 1, '2022-12-09 11:54:22.697136'),
(5, 'pbkdf2_sha256$390000$uuIVb8bXkTWs5x7aH73Ak8$SVuNEIkYpm6DWqEg0Nrqps9fTgc8Ey22FdPW8+YBOhw=', NULL, 0, 'tam', '', '', 'tam@gmail.com', 0, 1, '2022-12-09 12:42:28.601786'),
(6, 'pbkdf2_sha256$390000$57aZGp0aRqX37BbFK0d0CB$qxpLV9M4nJtXMIP/dOI7SYWOmIbn9jJCxXHvY9l6aHM=', NULL, 0, 'effve', '', '', 'fbvefv@mail.com', 0, 1, '2022-12-09 12:55:15.403424'),
(7, 'pbkdf2_sha256$390000$lcoq4jsSBwY1kwCEgoVoQN$BRDWx7SfF0963+bk7yGTZSaANNGL4BEuo8lS1RyaZXw=', NULL, 0, 'lsyy', '', '', 'kkk@gmail.com', 0, 1, '2022-12-09 13:14:53.859539'),
(8, 'pbkdf2_sha256$390000$pbl5c4Uvr4E6t0TELiWeeU$8ZAWuWTRwjn1ZX53hbHVbtheOXASIsKLKsROT5Imlag=', NULL, 0, 'rake', '', '', 'rake@gmail.com', 0, 1, '2022-12-09 13:57:03.343700'),
(9, 'pbkdf2_sha256$390000$uBoTdU9xskVXhtNff6lWg6$v26hs0rjF8HzZBx3KQ4JtWkjUNSKIniRnkKcDX/lWds=', NULL, 0, 'check', '', '', 'chec@gmail.com', 0, 1, '2022-12-09 17:05:32.780508'),
(10, 'pbkdf2_sha256$390000$KepvR2zxYAnUpenDqObj1i$N1Yaf7jHSnFgCEJZUecNAZqKaHWjpWZlkE1ZIt5tXqo=', '2022-12-10 09:39:26.038672', 0, 'test', '', '', 'tam@gmail.com', 0, 1, '2022-12-09 17:14:12.730525'),
(11, 'pbkdf2_sha256$390000$abzoAKwUTUCrSFU7bnAy4o$N+dnOQYumbD0ibMM8b2fTk9exXyw0bYcp2Sj/cW+2XA=', '2022-12-10 10:46:30.801139', 0, 'mob', '', '', 'lsky@gmail.com', 0, 1, '2022-12-10 09:53:47.717100'),
(12, 'pbkdf2_sha256$390000$fbbJciWIlBHBepiuHrn4TR$ku2yTzoYbmiaG7+96XJJ7DeIkMC7I/NsPxBgRWFbpnY=', '2022-12-12 13:33:11.045419', 0, 'rock', '', '', 'rock@gmail.com', 0, 1, '2022-12-12 13:32:57.863966'),
(13, 'pbkdf2_sha256$390000$fu49Z84LOo5yQWdSSgXpYF$QrhwlXtAOuWI9ILYhOx5gOtJtxmpQVQOWx7NP8HNfpk=', '2023-03-07 04:48:16.856020', 1, 'prem', '', '', '', 1, 1, '2023-03-07 04:40:41.628654'),
(14, 'pbkdf2_sha256$390000$0ax9yUn7a2bDfV29SU92Fs$FlLImO96Pg+w4Lsd8xI62dpd7Q29n//pFyV4Hk/LuDo=', '2023-03-07 04:46:48.103386', 0, 'premkumar', '', '', 'jazzrio@gmail.com', 0, 1, '2023-03-07 04:46:36.982559');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-12-07 08:19:01.594525', '1', 'Mobiles', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-12-07 08:21:01.787213', '1', 'Mobiles', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(3, '2022-12-07 08:27:45.765084', '1', 'Redmi Note 9 pro', 1, '[{\"added\": {}}]', 8, 1),
(4, '2022-12-07 09:58:26.742164', '2', 'Laptops', 1, '[{\"added\": {}}]', 7, 1),
(5, '2022-12-07 09:59:34.363204', '2', 'Lenovo', 1, '[{\"added\": {}}]', 8, 1),
(6, '2022-12-07 10:00:18.521303', '3', 'Clothes', 1, '[{\"added\": {}}]', 7, 1),
(7, '2022-12-07 10:01:12.747242', '3', 'Clothes', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(8, '2022-12-07 10:01:57.744134', '3', 'Shirt', 1, '[{\"added\": {}}]', 8, 1),
(9, '2022-12-07 10:05:51.523650', '4', 'pendrive', 1, '[{\"added\": {}}]', 7, 1),
(10, '2022-12-07 10:06:22.811432', '5', 'Furniture', 1, '[{\"added\": {}}]', 7, 1),
(11, '2022-12-07 10:06:51.154078', '6', 'Helmet', 1, '[{\"added\": {}}]', 7, 1),
(12, '2022-12-07 10:07:56.828515', '4', 'sandisk', 1, '[{\"added\": {}}]', 8, 1),
(13, '2022-12-07 10:08:41.282217', '5', 'Helmet', 1, '[{\"added\": {}}]', 8, 1),
(14, '2022-12-07 10:09:25.050441', '6', 'Bed', 1, '[{\"added\": {}}]', 8, 1),
(15, '2022-12-08 10:15:40.031558', '7', 'Books', 1, '[{\"added\": {}}]', 7, 1),
(16, '2022-12-08 10:16:24.465047', '7', 'Books', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(17, '2022-12-08 10:16:41.041120', '7', 'Books', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(18, '2022-12-08 17:54:37.110091', '7', 'Ponniyan Selvan', 1, '[{\"added\": {}}]', 8, 1),
(19, '2022-12-09 08:13:44.647941', '8', 'pants', 1, '[{\"added\": {}}]', 8, 1),
(20, '2022-12-09 10:29:03.975036', '1', 'Redmi Note 9 pro', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(21, '2022-12-09 10:29:30.477681', '1', 'Redmi Note 9 pro', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(22, '2022-12-09 10:47:54.601140', '6', 'Bed', 2, '[{\"changed\": {\"fields\": [\"Trending\"]}}]', 8, 1),
(23, '2022-12-09 10:53:15.828154', '7', 'Ponniyan Selvan', 2, '[{\"changed\": {\"fields\": [\"Trending\"]}}]', 8, 1),
(24, '2022-12-09 10:58:19.610553', '7', 'Ponniyan Selvan', 2, '[{\"changed\": {\"fields\": [\"Trending\"]}}]', 8, 1),
(25, '2022-12-10 07:45:50.649684', '3', 'Shirt', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(26, '2022-12-12 13:34:39.819614', '8', 'bike', 1, '[{\"added\": {}}]', 7, 1),
(27, '2022-12-12 13:35:13.020344', '9', 'Redmi Note 9 pro', 1, '[{\"added\": {}}]', 8, 1),
(28, '2022-12-12 13:35:58.906842', '9', 'Redmi Note 9 pro', 2, '[]', 8, 1),
(29, '2022-12-12 13:36:03.295614', '9', 'Redmi Note 9 pro', 2, '[]', 8, 1),
(30, '2022-12-12 13:40:29.933419', '3', 'Shirt', 2, '[{\"changed\": {\"fields\": [\"Original price\"]}}]', 8, 1),
(31, '2023-03-07 04:42:23.056908', '9', 'car', 1, '[{\"added\": {}}]', 7, 13),
(32, '2023-03-07 04:44:25.437321', '10', 'BMW', 1, '[{\"added\": {}}]', 8, 13),
(33, '2023-03-07 04:48:36.976599', '10', 'BMW', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 13);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'shopapp', 'cart'),
(7, 'shopapp', 'catagory'),
(10, 'shopapp', 'favourite'),
(8, 'shopapp', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-12-07 08:10:01.588253'),
(2, 'auth', '0001_initial', '2022-12-07 08:10:01.789311'),
(3, 'admin', '0001_initial', '2022-12-07 08:10:01.842466'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-07 08:10:01.849590'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-07 08:10:01.849590'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-07 08:10:01.879600'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-07 08:10:01.899720'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-12-07 08:10:01.909706'),
(9, 'auth', '0004_alter_user_username_opts', '2022-12-07 08:10:01.919707'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-12-07 08:10:01.939811'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-12-07 08:10:01.939811'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-07 08:10:01.942436'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-12-07 08:10:01.950044'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-07 08:10:01.960151'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-12-07 08:10:01.970163'),
(16, 'auth', '0011_update_proxy_permissions', '2022-12-07 08:10:01.980157'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-07 08:10:01.990157'),
(18, 'sessions', '0001_initial', '2022-12-07 08:10:02.000161'),
(19, 'shopapp', '0001_initial', '2022-12-07 08:10:02.030164'),
(20, 'shopapp', '0002_cart', '2022-12-10 04:43:49.130070'),
(21, 'shopapp', '0003_favourite', '2022-12-10 10:35:32.860804');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('chmtwrf50uwj38gp4hukwuvo3cpnmlml', '.eJxVjDsOAiEUAO9CbQjI39LeMxB47yGrBpJltzLe3ZBsoe3MZN4spn2rcR-0xgXZhUnFTr8wJ3hSmwYfqd07h962dcl8Jvywg9860ut6tH-DmkadXwjaWPBn4a3I4AQZDCiokElFy6yUsRJ1CV6CpOCcE14VBJOTC9IK9vkC-0s3sQ:1pZP8M:gFqDNOlyfKxiEdE0zLy3dNz_6yq3t_FDpvOOT7Bidv4', '2023-03-21 04:41:06.508873'),
('yvn032fthinolyhdgchtcsqhilu7fopa', '.eJxVjDsOAiEUAO9CbQjI39LeMxB47yGrBpJltzLe3ZBsoe3MZN4spn2rcR-0xgXZhUnFTr8wJ3hSmwYfqd07h962dcl8Jvywg9860ut6tH-DmkadXwjaWPBn4a3I4AQZDCiokElFy6yUsRJ1CV6CpOCcE14VBJOTC9IK9vkC-0s3sQ:1pZPFI:_p0ubRYsPYsKzKPs3niOjZCkjw9kXS8YgAkN1cmR6uM', '2023-03-21 04:48:16.917873');

-- --------------------------------------------------------

--
-- Table structure for table `shopapp_cart`
--

CREATE TABLE `shopapp_cart` (
  `id` bigint(20) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shopapp_cart`
--

INSERT INTO `shopapp_cart` (`id`, `product_qty`, `created_at`, `product_id`, `user_id`) VALUES
(2, 1, '2022-12-10 09:39:41.750053', 3, 10),
(5, 1, '2022-12-10 10:52:50.012588', 3, 11),
(6, 4, '2022-12-12 13:33:26.848118', 3, 12),
(7, 2, '2023-03-07 04:48:52.816371', 10, 13);

-- --------------------------------------------------------

--
-- Table structure for table `shopapp_catagory`
--

CREATE TABLE `shopapp_catagory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shopapp_catagory`
--

INSERT INTO `shopapp_catagory` (`id`, `name`, `image`, `description`, `status`, `created_at`) VALUES
(1, 'Mobiles', 'uploads/20221207135101mobi.jpg', 'All mobile available', 0, '2022-12-07 08:21:01.787213'),
(2, 'Laptops', 'uploads/20221207152826lap.jpg', 'All Laptop available', 0, '2022-12-07 09:58:26.738135'),
(3, 'Clothes', 'uploads/20221207153112clothes.jpeg', 'All kind of Clothes', 0, '2022-12-07 10:01:12.738944'),
(4, 'pendrive', 'uploads/20221207153551pendrive.jpg', 'A USB flash drive -- also known as a USB stick, USB thumb drive or pen drive -- is a plug-and-play portable storage device that uses flash memory and is lightweight enough to attach to a keychain. A USB flash drive can be used in place of a compact disc.', 0, '2022-12-07 10:05:51.512000'),
(5, 'Furniture', 'uploads/20221207153622furniture.jpg', 'the things that can be moved, for example tables, chairs, beds, etc. in a room, house or office', 0, '2022-12-07 10:06:22.808911'),
(6, 'Helmet', 'uploads/20221207153651helmet.jpg', 'A type of hard hat that you wear to protect your head.', 0, '2022-12-07 10:06:51.154078'),
(7, 'Books', 'uploads/20221208154640book.jpg', 'Ponniyin Selvan is a historical fiction novel by Indian author Kalki Krishnamurthy, written in Tamil language. It was first serialized in the weekly', 0, '2022-12-08 10:16:41.035098'),
(8, 'bike', 'uploads/20221212190439book.jpg', 'bike', 0, '2022-12-12 13:34:39.817421'),
(9, 'car', 'uploads/20230307101223download.jfif', 'New Cars in India', 0, '2023-03-07 04:42:23.055910');

-- --------------------------------------------------------

--
-- Table structure for table `shopapp_favourite`
--

CREATE TABLE `shopapp_favourite` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopapp_product`
--

CREATE TABLE `shopapp_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `vendor` varchar(150) NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `original_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shopapp_product`
--

INSERT INTO `shopapp_product` (`id`, `name`, `vendor`, `product_image`, `quantity`, `original_price`, `selling_price`, `description`, `status`, `trending`, `created_at`, `category_id`) VALUES
(1, 'Redmi Note 9 pro', 'Kavin', 'uploads/20221207135745redmi.jpg', 1, 9999, 7999, '6GB RAM + 128GB Storage\r\n\r\nStyle name: 8nm Snapdragon 720G & Alexa Hands-Free\r\nPattern name: Redmi Note 9 Pro\r\nBrand	Redmi\r\nModel Name	Redmi Note 9 Pro\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOS	Android 10.0\r\nCellular Technology	4G', 0, 0, '2022-12-09 10:29:30.438046', 1),
(2, 'Lenovo', 'Yugesh', 'uploads/20221207152934lap.jpg', 5, 70999, 59999, 'Latest Laptops Price List in India ; HP Ryzen 3 Dual Core 3250U, Rs 34990 ; ASUS VivoBook 15 (2022) Core i3 10th Gen, Rs 35990 ; Lenovo Core i3 10th Gen, Rs 36990.\r\nDell i7 Laptops: Lenovo i3 Laptops\r\nLenovo i5 Laptops: Lenovo i7 Laptops\r\nDell i3 Laptops: Dell i5 Laptops\r\nHP i7 Laptops: Asus i3 Laptops', 0, 1, '2022-12-07 09:59:34.353906', 2),
(3, 'Shirt', 'Erode', 'uploads/20221207153157clothes.jpeg', 5, 500, 99, 'Clothing - Shop Online from trendy apparels for women, men & kids at best prices. Select your favourite clothing from the fashionable collection on Myntra.', 0, 0, '2022-12-12 13:40:29.929415', 3),
(4, 'sandisk', 'coimbatore', 'uploads/20221207153756pendrive.jpg', 4, 999, 700, 'A pen drive is a convenient mode of digital storage, where backing up your data has become a crucial task. Since these gadgets are physically ...\r\n‎Se.13 64gb flash pendrive usb... · ‎SanDisk Cruzer Blade 32 GB...', 0, 0, '2022-12-07 10:07:56.826331', 4),
(5, 'Helmet', 'Bangalore', 'uploads/20221207153841helmet.jpg', 14, 3000, 2500, 'A helmet is a form of protective gear worn to protect the head. More specifically, a helmet complements the skull in protecting the human brain.', 0, 0, '2022-12-07 10:08:41.273810', 6),
(6, 'Bed', 'Chennai', 'uploads/20221207153925furniture.jpg', 2, 45000, 30000, 'furniture, household equipment, usually made of wood, metal, plastics, marble, glass, fabrics, or related materials and having a variety of different .', 0, 1, '2022-12-09 10:47:54.560232', 5),
(7, 'Ponniyan Selvan', 'Erode', 'uploads/20221208232437book.jpg', 2, 1000, 800, 'His character is loosely based on Vallavaraiyan Vandiyadevan, a famous General of Raja Raja Chola, and the husband of Princess Kundavai, who played an important role in the Sri Lankan campaigns of the Cholas', 0, 0, '2022-12-09 10:58:19.610553', 7),
(8, 'pants', 'coimbatore', 'uploads/20221209134344pant.jpg', 2, 799, 599, 'The perfect pants pictures. Find over 100+ of the best free pants images. Free for commercial use ✓ No attribution required', 0, 0, '2022-12-09 08:13:44.644925', 3),
(9, 'Redmi Note 9 pro', 'coimbatore', 'uploads/20221212190513clothes.jpeg', 4, 70000, 500000, 'ike', 0, 1, '2022-12-12 13:36:03.255743', 8),
(10, 'BMW', 'supreme mobiles', 'uploads/20230307101425bmw.jfif', 50, 12000, 10000, 'Bayerische Motoren Werke AG, abbreviated as BMW, is a German multinational manufacturer of luxury vehicles and motorcycles headquartered in Munich, Bavaria.', 0, 1, '2023-03-07 04:48:36.973606', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `shopapp_cart`
--
ALTER TABLE `shopapp_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shopapp_cart_product_id_bf5e9c2f_fk_shopapp_product_id` (`product_id`),
  ADD KEY `shopapp_cart_user_id_457ee5db_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `shopapp_catagory`
--
ALTER TABLE `shopapp_catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopapp_favourite`
--
ALTER TABLE `shopapp_favourite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shopapp_favourite_product_id_33f3a5b7_fk_shopapp_product_id` (`product_id`),
  ADD KEY `shopapp_favourite_user_id_e57e512a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `shopapp_product`
--
ALTER TABLE `shopapp_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shopapp_product_category_id_63e6662b_fk_shopapp_catagory_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `shopapp_cart`
--
ALTER TABLE `shopapp_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shopapp_catagory`
--
ALTER TABLE `shopapp_catagory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shopapp_favourite`
--
ALTER TABLE `shopapp_favourite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopapp_product`
--
ALTER TABLE `shopapp_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shopapp_cart`
--
ALTER TABLE `shopapp_cart`
  ADD CONSTRAINT `shopapp_cart_product_id_bf5e9c2f_fk_shopapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `shopapp_product` (`id`),
  ADD CONSTRAINT `shopapp_cart_user_id_457ee5db_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shopapp_favourite`
--
ALTER TABLE `shopapp_favourite`
  ADD CONSTRAINT `shopapp_favourite_product_id_33f3a5b7_fk_shopapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `shopapp_product` (`id`),
  ADD CONSTRAINT `shopapp_favourite_user_id_e57e512a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shopapp_product`
--
ALTER TABLE `shopapp_product`
  ADD CONSTRAINT `shopapp_product_category_id_63e6662b_fk_shopapp_catagory_id` FOREIGN KEY (`category_id`) REFERENCES `shopapp_catagory` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
