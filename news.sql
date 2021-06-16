-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 16, 2021 at 08:18 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `status` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E6612469DE2` (`category_id`),
  KEY `IDX_23A0E66A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `category_id`, `user_id`, `title`, `alias`, `content`, `image`, `created_date`, `status`) VALUES
(6, 6, 6, 'PC Caddie Golf', 'pc-caddie-golf', '<p>We like golf and more importantly we want to automatise it</p>', 'golf-swing-60ba3879478c3.png', '2021-06-04 14:28:09', 'a:1:{s:9:\"published\";i:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `alias`) VALUES
(1, 'Politics', 'politic'),
(2, 'Economy', 'economy'),
(3, 'Culture', 'culture'),
(4, 'Health', 'health'),
(5, 'Science', 'science'),
(6, 'Golf', 'golf');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(80) NOT NULL,
  `lastname` varchar(80) NOT NULL,
  `description` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200507095347', '2020-05-07 09:58:16'),
('20200507100149', '2020-05-07 10:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `registration_date` datetime NOT NULL,
  `last_login_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `password`, `roles`, `registration_date`, `last_login_date`) VALUES
(1, 'Zakaria', 'Hamidi', 'hamidi@pccaddie-online.de', '1234', 'a:1:{i:0;s:11:\"ROLE_AUTHOR\";}', '2020-05-07 12:12:59', NULL),
(2, 'Houda', 'JAADAR', 'houda@actunews.com', '1234', 'a:1:{i:0;s:11:\"ROLE_AUTHOR\";}', '2020-05-07 12:27:19', NULL),
(3, 'Yaya', 'DIALLO', 'yaya@actunews.com', '1234', 'a:1:{i:0;s:11:\"ROLE_AUTHOR\";}', '2020-05-07 12:29:01', NULL),
(4, 'Hicham', 'AMARA', 'hicham@actunews.com', '1234', 'a:1:{i:0;s:11:\"ROLE_AUTHOR\";}', '2020-05-07 12:31:14', NULL),
(5, 'Anthony', 'DRAPIER', 'anthony@actunews.com', '1234', 'a:1:{i:0;s:11:\"ROLE_AUTHOR\";}', '2020-05-07 12:33:56', NULL),
(6, 'Zakaria', 'Hamidi', 'hamidi@pccaddie.de', '$argon2id$v=19$m=65536,t=4,p=1$YUxMcnVVenp0bUI3MDdoTw$SIMlLGjPtMWZ0YTXakOTpGSGBNGLtAjobvrLSxpW1QM', 'a:1:{i:0;s:11:\"ROLE_AUTHOR\";}', '2021-06-04 14:08:43', NULL),
(7, 'Axel', 'Heck', 'axel@pccaddie.de', '$argon2id$v=19$m=65536,t=4,p=1$YUxMcnVVenp0bUI3MDdoTw$SIMlLGjPtMWZ0YTXakOTpGSGBNGLtAjobvrLSxpW1QM', 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', '2021-06-04 14:08:43', NULL),
(8, 'Rachid', 'Ayoubi', 'Ayoubi@pccaddie.de', '$argon2id$v=19$m=65536,t=4,p=1$N0daSi5vRDgwOFVaTHFmMw$9vD+h5BmKYHpnKkDusu1686hB5N73qwPkfSGTHjwt6k', 'a:1:{i:0;s:9:\"ROLE_USER\";}', '2021-06-04 14:41:16', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_23A0E66A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
