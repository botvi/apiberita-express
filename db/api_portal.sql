-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 17 Jun 2024 pada 05.30
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_portal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_category`
--

INSERT INTO `tbl_category` (`id_category`, `name`) VALUES
(32, 'Politik'),
(33, 'Olahraga'),
(34, 'Nasional'),
(35, 'Internasional');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_comment` int(11) NOT NULL,
  `id_news` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_comment`
--

INSERT INTO `tbl_comment` (`id_comment`, `id_news`, `id_user`, `comment`, `created_at`) VALUES
(1, 1, 20, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2024-06-15 21:35:49'),
(2, 1, 20, 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2024-06-15 21:35:49'),
(3, 1, 20, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2024-06-15 21:35:49'),
(4, 2, 20, 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', '2024-06-15 21:35:49'),
(5, 2, 20, 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2024-06-15 21:35:49'),
(6, 2, 20, 'Curabitur pretium tincidunt lacus. Nulla gravida orci a odio.', '2024-06-15 21:35:49'),
(7, 3, 20, 'Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris.', '2024-06-15 21:35:49'),
(8, 3, 20, 'Integer in mauris eu nibh euismod gravida.', '2024-06-15 21:35:49'),
(9, 3, 20, 'Duis ac tellus et risus vulputate vehicula.', '2024-06-15 21:35:49'),
(10, 4, 20, 'Donec lobortis risus a elit.', '2024-06-15 21:35:49'),
(11, 4, 20, 'Etiam tempor. Ut ullamcorper, ligula eu tempor congue, eros est euismod turpis, id tincidunt sapien risus a quam.', '2024-06-15 21:35:49'),
(12, 4, 20, 'Maecenas fermentum consequat mi.', '2024-06-15 21:35:49'),
(13, 5, 20, 'Donec fermentum.', '2024-06-15 21:35:49'),
(14, 5, 20, 'Pellentesque malesuada nulla a mi.', '2024-06-15 21:35:49'),
(15, 5, 20, 'Duis sapien sem, aliquet nec, commodo eget, consequat quis, neque.', '2024-06-15 21:35:49'),
(16, 6, 20, 'Aliquam faucibus, elit ut dictum aliquet, felis nisl adipiscing sapien, sed malesuada diam lacus eget erat.', '2024-06-15 21:35:49'),
(17, 6, 20, 'Cras mollis scelerisque nunc.', '2024-06-15 21:35:49'),
(18, 6, 20, 'Nulla convallis, dolor quis facilisis viverra, lectus justo aliquam urna, eget cursus urna mauris in augue.', '2024-06-15 21:35:49'),
(19, 7, 20, 'Nulla varius consequat magna, id molestie ipsum volutpat quis.', '2024-06-15 21:35:49'),
(20, 7, 20, 'Duis sit amet felis.', '2024-06-15 21:35:49'),
(21, 7, 20, 'Mauris semper, felis vitae facilisis facilisis, sem nisi dapibus risus, at fringilla felis purus ac velit.', '2024-06-15 21:35:49'),
(22, 8, 20, 'Vivamus fermentum semper porta.', '2024-06-15 21:35:49'),
(23, 8, 20, 'Nunc diam velit, adipiscing ut tristique vitae, sagittis vel odio.', '2024-06-15 21:35:49'),
(24, 8, 20, 'Maecenas convallis ullamcorper ultricies.', '2024-06-15 21:35:49'),
(25, 9, 20, 'Curabitur ornare, ligula semper consectetur sagittis, nisi diam iaculis velit, id fringilla sem nunc vel mi.', '2024-06-15 21:35:49'),
(26, 9, 20, 'Morbi ac felis.', '2024-06-15 21:35:49'),
(27, 9, 20, 'Nulla facilisi.', '2024-06-15 21:35:49'),
(28, 10, 20, 'Vivamus facilisis diam at odio.', '2024-06-15 21:35:49'),
(29, 10, 20, 'Donec quis dui at dolor tempor interdum.', '2024-06-15 21:35:49'),
(30, 10, 20, 'Vivamus malesuada libero sit amet tortor.', '2024-06-15 21:35:49'),
(31, 11, 20, 'Curabitur sit amet mauris.', '2024-06-15 21:35:49'),
(32, 11, 20, 'Morbi in dui quis est pulvinar ullamcorper.', '2024-06-15 21:35:49'),
(33, 11, 20, 'Nulla facilisi. Integer lacinia sollicitudin massa.', '2024-06-15 21:35:49'),
(34, 12, 20, 'Cras metus.', '2024-06-15 21:35:49'),
(35, 12, 20, 'Sed aliquet risus a tortor.', '2024-06-15 21:35:49'),
(36, 12, 20, 'Integer id quam.', '2024-06-15 21:35:49'),
(37, 13, 20, 'Morbi mi.', '2024-06-15 21:35:49'),
(38, 13, 20, 'Phasellus dapibus quam quis diam.', '2024-06-15 21:35:49'),
(39, 13, 20, 'Integer feugiat scelerisque mauris.', '2024-06-15 21:35:49'),
(40, 14, 20, 'Curabitur varius.', '2024-06-15 21:35:49'),
(41, 14, 20, 'Ut sem nulla pharetra diam.', '2024-06-15 21:35:49'),
(42, 14, 20, 'Pellentesque malesuada nulla a mi.', '2024-06-15 21:35:49'),
(43, 15, 20, 'Integer at lacus.', '2024-06-15 21:35:49'),
(44, 15, 20, 'Sed interdum, lacus et vulputate pellentesque, velit nulla commodo sem, at egestas nulla metus vel sapien.', '2024-06-15 21:35:49'),
(45, 15, 20, 'In hac habitasse platea dictumst.', '2024-06-15 21:35:49'),
(46, 16, 20, 'Fusce convallis, mauris imperdiet gravida bibendum, nisl turpis suscipit mauris, sed placerat ipsum urna sed risus.', '2024-06-15 21:35:49'),
(47, 16, 20, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', '2024-06-15 21:35:49'),
(48, 16, 20, 'Sed molestie augue sit amet leo.', '2024-06-15 21:35:49'),
(49, 17, 20, 'Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit.', '2024-06-15 21:35:49'),
(50, 17, 20, 'Aenean auctor wisi et urna.', '2024-06-15 21:35:49'),
(51, 17, 20, 'Aliquam erat volutpat.', '2024-06-15 21:35:49'),
(52, 18, 20, 'Duis ac turpis.', '2024-06-15 21:35:49'),
(53, 18, 20, 'Integer rutrum ante eu lacus.', '2024-06-15 21:35:49'),
(54, 18, 20, 'Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque.', '2024-06-15 21:35:49'),
(55, 19, 20, 'Vivamus eget nibh.', '2024-06-15 21:35:49'),
(56, 19, 20, 'Etiam cursus leo vel metus.', '2024-06-15 21:35:49'),
(57, 19, 20, 'Nulla facilisi. Integer lacinia sollicitudin massa.', '2024-06-15 21:35:49'),
(58, 20, 20, 'Cras metus.', '2024-06-15 21:35:49'),
(59, 20, 20, 'Sed aliquet risus a tortor.', '2024-06-15 21:35:49'),
(60, 20, 20, 'Integer id quam.', '2024-06-15 21:35:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_favorite`
--

CREATE TABLE `tbl_favorite` (
  `id_favorite` int(11) NOT NULL,
  `id_news` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_favorite`
--

INSERT INTO `tbl_favorite` (`id_favorite`, `id_news`, `id_user`, `created_at`) VALUES
(64, 1, 20, '2024-06-16 01:20:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id_news` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_category` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_news`
--

INSERT INTO `tbl_news` (`id_news`, `title`, `description`, `content`, `image`, `id_category`, `id_user`, `published_at`) VALUES
(1, 'ante in nibh mauris cursus mattis', 'ante in nibh mauris cursus mattis molestie a iaculis at erat pellentesque adipiscing commodo elit at imperdiet dui accumsan sit amet nulla facilisi morbi tempus iaculis urna id volutpat lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis aenean et tortor at risus viverra adipiscing at in tellus integer feugiat scelerisque varius morbi enim nunc faucibus a pellentesque sit amet porttitor eget dolor morbi non arcu risus quis varius quam quisque id diam vel quam elementum pulvinar', 'ante in nibh mauris cursus mattis molestie a iaculis at erat pellentesque adipiscing commodo elit at imperdiet dui accumsan sit amet nulla facilisi morbi tempus iaculis urna id volutpat lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis aenean et tortor at risus viverra adipiscing at in tellus integer feugiat scelerisque varius morbi enim nunc faucibus a pellentesque sit amet porttitor eget dolor morbi non arcu risus quis varius quam quisque id diam vel quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit amet', 'https://img.inews.co.id/media/600/files/inews_new/2024/05/23/iptu_tamar_bekti.jpg', 35, 17, '2024-06-16 10:18:08'),
(2, 'Lorem Ipsum Dolor Sit Amet 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2018/04/03/21/19/people-3288119_1280.jpg', 33, 17, '2024-06-16 10:18:08'),
(3, 'Lorem Ipsum Dolor Sit Amet 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2018/05/10/11/34/concert-3387324_640.jpg', 34, 17, '2024-06-17 00:07:37'),
(4, 'Lorem Ipsum Dolor Sit Amet 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2018/05/10/11/34/concert-3387324_640.jpg', 35, 17, '2024-06-16 20:13:21'),
(5, 'Lorem Ipsum Dolor Sit Amet 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2017/06/05/08/50/train-2373323_640.jpg', 32, 17, '2024-06-14 07:13:29'),
(6, 'Lorem Ipsum Dolor Sit Amet 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2020/10/14/22/32/buildings-5655593_640.jpg', 33, 17, '2024-06-11 01:57:04'),
(7, 'Lorem Ipsum Dolor Sit Amet 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2020/08/12/13/56/people-5482729_640.jpg', 34, 17, '2024-06-11 14:34:30'),
(8, 'Lorem Ipsum Dolor Sit Amet 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2019/06/08/11/30/people-4259948_640.jpg', 35, 17, '2024-06-14 21:30:56'),
(9, 'Lorem Ipsum Dolor Sit Amet 9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2019/11/18/09/07/woman-4634314_640.jpg', 32, 17, '2024-06-11 18:20:50'),
(10, 'Lorem Ipsum Dolor Sit Amet 10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2021/01/30/14/22/women-5963960_640.jpg', 33, 17, '2024-06-13 05:41:01'),
(11, 'Lorem Ipsum Dolor Sit Amet 11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2017/08/02/13/09/confetti-2571539_640.jpg', 34, 17, '2024-06-11 23:52:11'),
(12, 'Lorem Ipsum Dolor Sit Amet 12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2019/08/26/08/12/street-4431082_640.jpg', 35, 17, '2024-06-10 08:47:34'),
(13, 'Lorem Ipsum Dolor Sit Amet 13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2020/10/19/02/16/street-5666538_640.jpg', 32, 17, '2024-06-14 22:50:53'),
(14, 'Lorem Ipsum Dolor Sit Amet 14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2020/03/06/11/14/black-4906807_640.jpg', 33, 17, '2024-06-15 18:21:22'),
(15, 'Lorem Ipsum Dolor Sit Amet 15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2020/09/22/22/32/people-5594462_640.jpg', 34, 17, '2024-06-15 01:43:50'),
(16, 'Lorem Ipsum Dolor Sit Amet 16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2021/01/04/23/12/world-trade-center-5889199_640.jpg', 35, 17, '2024-06-18 04:04:41'),
(17, 'Lorem Ipsum Dolor Sit Amet 17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2019/05/18/21/15/hands-4212584_640.jpg', 32, 17, '2024-06-17 17:41:33'),
(18, 'Lorem Ipsum Dolor Sit Amet 18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2023/01/01/16/35/street-7690347_640.jpg', 33, 17, '2024-06-15 06:43:20'),
(19, 'Lorem Ipsum Dolor Sit Amet 19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2017/08/21/19/00/woman-2666433_640.jpg', 34, 17, '2024-06-13 07:01:39'),
(20, 'Lorem Ipsum Dolor Sit Amet 20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.', 'https://cdn.pixabay.com/photo/2018/04/13/14/03/people-3316590_640.jpg', 35, 17, '2024-06-10 17:27:54'),
(36, 'mi sit amet mauris commodo quis imperdiet', 'mi sit amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit amet mattis vulputate enim nulla aliquet porttitor lacus luctus accumsan tortor posuere ac ut consequat semper viverra nam libero justo laoreet sit amet cursus sit amet dictum sit amet justo donec enim diam vulputate ut pharetra sit amet aliquam id diam maecenas ultricies mi eget mauris pharetra et ultrices neque ornare aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis', 'mi sit amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit amet mattis vulputate enim nulla aliquet porttitor lacus luctus accumsan tortor posuere ac ut consequat semper viverra nam libero justo laoreet sit amet cursus sit amet dictum sit amet justo donec enim diam vulputate ut pharetra sit amet aliquam id diam maecenas ultricies mi eget mauris pharetra et ultrices neque ornare aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices dui sapien eget mi proin', 'https://berita.depok.go.id/storage/posts//g2PT9rlkLrxomcR7Iteb8UONP7rhIbwmkuqezbax.webp', 32, 17, '2024-06-12 20:44:11'),
(37, 'venenatis lectus magna fringilla', 'venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non enim praesent elementum facilisis leo vel fringilla est ullamcorper eget nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet massa vitae tortor condimentum lacinia quis vel eros donec ac odio tempor orci dapibus ultrices in iaculis nunc sed augue lacus viverra vitae congue eu consequa', 'venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non enim praesent elementum facilisis leo vel fringilla est ullamcorper eget nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet massa vitae tortor condimentum lacinia quis vel eros donec ac odio tempor orci dapibus ultrices in iaculis nunc sed augue lacus viverra vitae congue eu consequat ac felis donec et odio pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu vitae elementum', 'https://berita.depok.go.id/storage/posts//GFBuHmKzgeezsSmLdl1yfTVS027oOOPXXGax7vwM.webp', 33, 17, '2024-06-13 05:46:53'),
(38, 'ante in nibh mauris cursus matti', 'ante in nibh mauris cursus mattis molestie a iaculis at erat pellentesque adipiscing commodo elit at imperdiet dui accumsan sit amet nulla facilisi morbi tempus iaculis urna id volutpat lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis aenean et tortor at risus viverra adipiscing at in tellus integer feugiat scelerisque varius morbi enim nunc faucibus a pellentesque sit amet porttitor eget dolor morbi non arcu risus quis varius quam quisque id diam vel quam elementum pulvinar', 'ante in nibh mauris cursus mattis molestie a iaculis at erat pellentesque adipiscing commodo elit at imperdiet dui accumsan sit amet nulla facilisi morbi tempus iaculis urna id volutpat lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis aenean et tortor at risus viverra adipiscing at in tellus integer feugiat scelerisque varius morbi enim nunc faucibus a pellentesque sit amet porttitor eget dolor morbi non arcu risus quis varius quam quisque id diam vel quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit amet', 'https://img.inews.co.id/media/600/files/inews_new/2024/05/23/iptu_tamar_bekti.jpg', 35, 17, '2024-06-13 05:46:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','superadmin','admin') NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `name`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(17, 'Yovi Ardiansyah', 'yoviard', 'younoob07mei@superadmin.com', '$2b$10$xl2KxP97U21q2UU/R1977uQ431SYffCt1Vh1564bMbwpynLw9X0xi', 'superadmin', '2024-06-14 20:19:43'),
(20, 'user', 'user', 'user@gmail.com', '$2b$10$i7cgQv0qq8OKhcLhMfW5gu6PYVN/GM.NeU/Jb4dTbHpODHwXYMsqG', 'user', '2024-06-15 00:14:37');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indeks untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_news` (`id_news`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tbl_favorite`
--
ALTER TABLE `tbl_favorite`
  ADD PRIMARY KEY (`id_favorite`),
  ADD KEY `id_news` (`id_news`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id_news`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `tbl_favorite`
--
ALTER TABLE `tbl_favorite`
  MODIFY `id_favorite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD CONSTRAINT `tbl_comment_ibfk_1` FOREIGN KEY (`id_news`) REFERENCES `tbl_news` (`id_news`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_comment_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tbl_users` (`id_user`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_favorite`
--
ALTER TABLE `tbl_favorite`
  ADD CONSTRAINT `tbl_favorite_ibfk_1` FOREIGN KEY (`id_news`) REFERENCES `tbl_news` (`id_news`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_favorite_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tbl_users` (`id_user`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD CONSTRAINT `tbl_news_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `tbl_category` (`id_category`) ON DELETE SET NULL,
  ADD CONSTRAINT `tbl_news_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tbl_users` (`id_user`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
