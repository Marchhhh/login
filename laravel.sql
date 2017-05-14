-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-01-01 13:24:44
-- 服务器版本： 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_12_28_100733_create_tasks_table', 2);

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('111@qq.com', '8a4dffd3be71200f768a47f3d485734376fc5570e0e7202a971d5026d2101148', '2016-12-29 18:36:53');

-- --------------------------------------------------------

--
-- 表的结构 `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, '333', '2017-01-01 03:22:54', '2017-01-01 03:22:54');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'march', '123456@qq.com', '123456', NULL, NULL, NULL),
(2, '11', '111@qq.com', '$2y$10$A63blhnavqyR5MUonbWB1O/YUoFlGP1/Ni0bvDKk7uc0crIPIMui2', 'yii9L7lqsdDLaG49JCEhQvrt00ugei627j5sjiSggOYvn5SsYTygerT7S3rC', '2016-12-27 19:44:16', '2017-01-01 02:43:31'),
(3, 'admin', '222@qq.com', '123456', '1', NULL, NULL),
(4, 'mar', '5@qq.com', '$2y$10$63.n.SJDb8YHtFqWugMRbOFMYx5dn6vrvWb2LIW8ZGaSey4HzghHi', 'B4StKy9CFo0uy15qAYBJDnDiho6zFhUKDKL7lbprDol73FKEEM2ztTXbuVSs', '2016-12-27 22:27:00', '2016-12-27 22:27:26'),
(5, '1', '6@qq.com', '$2y$10$cG9VLhQXcgE8nTpWDVgawO/jiIfE9rudtmK6scFOkjquIZC2hxDWe', 'astlkRbyksZ4MCnrJK1bHH71KMcTffsCqMvAS3l7qOOs03awj3s0oqvAghjC', '2016-12-28 05:43:56', '2016-12-28 06:10:25'),
(6, '11', '7@qq.com', '$2y$10$w/6GtNej7NWnotttf.3HiOw4HBo5tiQjPYw/lE896O1lxLSpXytbO', '4ParnKTXcwD6iGg6IYqG9Ij5a37ahHt3Laj9q0ZsSnnfZmZrJ5TvsmYx7KJc', '2016-12-28 06:11:21', '2016-12-28 06:19:29'),
(7, 'q', 'e@qq.com', '$2y$10$bnUDYBEfSaTlLnSsGr5Xse4PbOijBFVqrZTyZtRgMlYs/bOAxxpDG', 'qr6IKMVQX2K0KhSb0eTTxfbc7At8K75x4fjTigtl1dpWldB1YLwUibpt0Kjq', '2016-12-28 06:32:25', '2016-12-29 17:11:05'),
(8, '1111', 'q@qq.com', '$2y$10$0XomduQDltUf1L1PEEUuZehSn35LfoqW55rC9tEhokEFJUYqnsWji', '3OEkJmqnoK1TJuk3dlKJdNAhtYrUlM5OCS1PaiKcCyg8jvEV3RVXIfgS7r20', '2016-12-29 17:12:32', '2016-12-29 17:16:08'),
(9, 'qq', '0@qq.com', '$2y$10$LoXnKbW6ckJEumUjPlp3M.RCkHW2qh4IIJsKQLKQU5KyW4Gy14jMW', 'qv3BIhMtfu9eSSBOiWHa68bequcxXeBgSXyQRsaN0J5NvXw8SrJd0uckwtCB', '2016-12-29 17:16:27', '2016-12-29 17:16:47'),
(10, 'ss', '66@qq.com', '$2y$10$L3K.Zq3U4zmZD4uJ8JeWZOv0PeiiVTzX1ncal8OE7pHPZblOBtXdy', '7J1qJhQvA70o5TVc5YpOmKq8OGxc32iq9lB3IOfzSeiGrXVK1d0WyaCIXKdq', '2016-12-29 19:17:28', '2016-12-29 19:17:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
