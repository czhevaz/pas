-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2016 at 11:17 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deltasindo`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_time`
--

CREATE TABLE `activity_time` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `latitude` float(10,7) DEFAULT NULL,
  `longitude` float(10,7) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `ref_id` bigint(20) NOT NULL,
  `timestamp` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `notes` longtext,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_time`
--

INSERT INTO `activity_time` (`id`, `version`, `activity`, `date_created`, `last_updated`, `latitude`, `longitude`, `ref`, `ref_id`, `timestamp`, `user_id`, `notes`, `address`) VALUES
(110851, 0, 'Login', '2016-02-12 17:35:19', '2016-02-12 17:35:19', 0.0000000, 0.0000000, 'User', 1, '2016-02-12 17:35:19', 1, '', NULL),
(110852, 0, 'Login', '2016-02-12 17:49:21', '2016-02-12 17:49:21', 0.0000000, 0.0000000, 'User', 120, '2016-02-12 17:49:21', 120, '', NULL),
(110853, 0, 'Login', '2016-02-12 17:50:27', '2016-02-12 17:50:27', 0.0000000, 0.0000000, 'User', 249, '2016-02-12 17:50:27', 249, '', NULL),
(110854, 0, 'Accept', '2016-02-12 17:50:47', '2016-02-12 17:50:47', 0.0000000, 0.0000000, 'Assignment', 15202, '2016-02-12 17:50:47', 249, '', NULL),
(110855, 0, 'Checkin', '2016-02-12 17:50:50', '2016-02-12 17:50:50', 0.0000000, 0.0000000, 'Assignment', 15202, '2016-02-12 17:50:50', 249, '', NULL),
(110856, 0, 'DoneAndCheckout', '2016-02-12 17:50:56', '2016-02-12 17:50:56', 0.0000000, 0.0000000, 'Assignment', 15202, '2016-02-12 17:50:56', 249, '', NULL),
(110857, 0, 'Login', '2016-02-12 22:37:47', '2016-02-12 22:37:47', 0.0000000, 0.0000000, 'User', 1, '2016-02-12 22:37:47', 1, '', NULL),
(110858, 0, 'Login', '2016-02-12 22:48:46', '2016-02-12 22:48:46', 0.0000000, 0.0000000, 'User', 1, '2016-02-12 22:48:46', 1, '', NULL),
(110859, 0, 'Login', '2016-02-12 23:23:29', '2016-02-12 23:23:29', 0.0000000, 0.0000000, 'User', 251, '2016-02-12 23:23:29', 251, '', NULL),
(110860, 0, 'Logout', '2016-02-12 23:23:37', '2016-02-12 23:23:37', 0.0000000, 0.0000000, 'User', 251, '2016-02-12 23:23:37', 251, '', NULL),
(110861, 0, 'Login', '2016-02-12 23:23:38', '2016-02-12 23:23:38', -6.1679859, 106.7211227, 'User', 251, '2016-02-12 23:23:38', 251, '', NULL),
(110862, 0, 'Login', '2016-02-12 23:24:01', '2016-02-12 23:24:01', 0.0000000, 0.0000000, 'User', 120, '2016-02-12 23:24:01', 120, '', NULL),
(110863, 0, 'Accept', '2016-02-12 23:25:48', '2016-02-12 23:25:48', -6.1680870, 106.7205734, 'Assignment', 15203, '2016-02-12 23:25:48', 251, '', 'Jl. Raya Swadana No.54, Cengkareng, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11750, Indonesia'),
(110864, 0, 'StartCounter', '2016-02-12 23:25:55', '2016-02-12 23:25:55', -6.1680622, 106.7208481, 'Assignment', 15203, '2016-02-12 23:25:54', 251, '', 'Jl. Raya Swadana No.65, Cengkareng, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11750, Indonesia'),
(110865, 0, 'Checkin', '2016-02-12 23:26:45', '2016-02-12 23:26:45', -6.1682973, 106.7207489, 'Assignment', 15203, '2016-02-12 23:26:44', 251, '', 'Jl. Raya Swadana No.29, Cengkareng, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11750, Indonesia'),
(110866, 0, 'Checkout', '2016-02-12 23:26:58', '2016-02-12 23:26:58', -6.1682973, 106.7207489, 'Assignment', 15203, '2016-02-12 23:26:58', 251, 'sudah selesai', 'Jl. Raya Swadana No.29, Cengkareng, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11750, Indonesia'),
(110867, 0, 'Login', '2016-02-15 09:28:08', '2016-02-15 09:28:08', 0.0000000, 0.0000000, 'User', 1, '2016-02-15 09:28:08', 1, '', NULL),
(110868, 0, 'Login', '2016-02-15 14:21:21', '2016-02-15 14:21:21', 0.0000000, 0.0000000, 'User', 1, '2016-02-15 14:21:21', 1, '', NULL),
(110869, 0, 'Login', '2016-02-15 14:23:12', '2016-02-15 14:23:12', 0.0000000, 0.0000000, 'User', 1, '2016-02-15 14:23:12', 1, '', NULL),
(110870, 0, 'Login', '2016-02-15 14:23:36', '2016-02-15 14:23:36', 0.0000000, 0.0000000, 'User', 120, '2016-02-15 14:23:36', 120, '', NULL),
(110871, 0, 'Login', '2016-02-15 14:26:35', '2016-02-15 14:26:35', 0.0000000, 0.0000000, 'User', 249, '2016-02-15 14:26:35', 249, '', NULL),
(110872, 0, 'Logout', '2016-02-15 14:30:07', '2016-02-15 14:30:07', 0.0000000, 0.0000000, 'User', 249, '2016-02-15 14:30:07', 249, '', NULL),
(110873, 0, 'Login', '2016-02-15 14:30:08', '2016-02-15 14:30:08', -6.1399832, 106.8625641, 'User', 249, '2016-02-15 14:30:08', 249, '', NULL),
(110874, 0, 'Accept', '2016-02-15 14:30:55', '2016-02-15 14:30:55', -6.1399832, 106.8625641, 'Assignment', 15204, '2016-02-15 14:30:52', 249, '', 'Jl. Agung Permai 34 No.45, Tj. Priok, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14350, Indonesia'),
(110875, 0, 'Login', '2016-02-15 14:31:13', '2016-02-15 14:31:13', 0.0000000, 0.0000000, 'User', 250, '2016-02-15 14:31:13', 250, '', NULL),
(110876, 0, 'Checkin', '2016-02-15 14:33:00', '2016-02-15 14:33:00', -6.1399832, 106.8625641, 'Assignment', 15204, '2016-02-15 14:32:54', 249, 'sudah sampai dilokasi', 'Jl. Agung Permai 34 No.45, Tj. Priok, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14350, Indonesia'),
(110877, 0, 'Checkout', '2016-02-15 14:34:25', '2016-02-15 14:34:25', -6.1399832, 106.8625641, 'Assignment', 15204, '2016-02-15 14:34:00', 249, 'sudah selesai', 'Jl. Agung Permai 34 No.45, Tj. Priok, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14350, Indonesia'),
(110878, 0, 'Checkin', '2016-02-15 14:35:15', '2016-02-15 14:35:15', -6.1399832, 106.8625641, 'Assignment', 15204, '2016-02-15 14:35:10', 249, 'sampai kantor', 'Jl. Agung Permai 34 No.45, Tj. Priok, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14350, Indonesia'),
(110879, 0, 'Login', '2016-02-15 15:52:03', '2016-02-15 15:52:03', 0.0000000, 0.0000000, 'User', 249, '2016-02-15 15:52:03', 249, '', NULL),
(110880, 0, 'Login', '2016-02-15 15:52:58', '2016-02-15 15:52:58', 0.0000000, 0.0000000, 'User', 1, '2016-02-15 15:52:58', 1, '', NULL),
(110881, 0, 'Login', '2016-02-15 15:55:21', '2016-02-15 15:55:21', 0.0000000, 0.0000000, 'User', 250, '2016-02-15 15:55:21', 250, '', NULL),
(110882, 0, 'Login', '2016-02-15 15:55:51', '2016-02-15 15:55:51', 0.0000000, 0.0000000, 'User', 253, '2016-02-15 15:55:51', 253, '', NULL),
(110883, 0, 'Login', '2016-02-15 15:59:13', '2016-02-15 15:59:13', 0.0000000, 0.0000000, 'User', 249, '2016-02-15 15:59:13', 249, '', NULL),
(110884, 0, 'Login', '2016-02-15 16:07:22', '2016-02-15 16:07:22', 0.0000000, 0.0000000, 'User', 1, '2016-02-15 16:07:22', 1, '', NULL),
(110885, 0, 'Login', '2016-02-15 16:08:18', '2016-02-15 16:08:18', 0.0000000, 0.0000000, 'User', 249, '2016-02-15 16:08:18', 249, '', NULL),
(110886, 0, 'Login', '2016-02-15 16:18:54', '2016-02-15 16:18:54', 0.0000000, 0.0000000, 'User', 249, '2016-02-15 16:18:54', 249, '', NULL),
(110887, 0, 'Login', '2016-02-15 16:26:09', '2016-02-15 16:26:09', 0.0000000, 0.0000000, 'User', 249, '2016-02-15 16:26:09', 249, '', NULL),
(110888, 0, 'Login', '2016-02-15 16:27:37', '2016-02-15 16:27:37', 0.0000000, 0.0000000, 'User', 1, '2016-02-15 16:27:37', 1, '', NULL),
(110889, 0, 'Login', '2016-02-15 16:31:23', '2016-02-15 16:31:23', 0.0000000, 0.0000000, 'User', 249, '2016-02-15 16:31:23', 249, '', NULL),
(110890, 0, 'Login', '2016-02-15 16:37:18', '2016-02-15 16:37:18', 0.0000000, 0.0000000, 'User', 249, '2016-02-15 16:37:18', 249, '', NULL),
(110891, 0, 'Login', '2016-02-15 16:49:05', '2016-02-15 16:49:05', 0.0000000, 0.0000000, 'User', 249, '2016-02-15 16:49:05', 249, '', NULL),
(110892, 0, 'Login', '2016-02-15 16:54:59', '2016-02-15 16:54:59', 0.0000000, 0.0000000, 'User', 250, '2016-02-15 16:54:59', 250, '', NULL),
(110893, 0, 'Login', '2016-02-15 17:00:22', '2016-02-15 17:00:22', 0.0000000, 0.0000000, 'User', 1, '2016-02-15 17:00:22', 1, '', NULL),
(110894, 0, 'Login', '2016-02-15 18:27:50', '2016-02-15 18:27:50', 0.0000000, 0.0000000, 'User', 1, '2016-02-15 18:27:49', 1, '', NULL),
(110895, 0, 'Login', '2016-02-15 18:45:08', '2016-02-15 18:45:08', 0.0000000, 0.0000000, 'User', 1, '2016-02-15 18:45:08', 1, '', NULL),
(110896, 0, 'Login', '2016-02-16 07:42:37', '2016-02-16 07:42:37', 0.0000000, 0.0000000, 'User', 1, '2016-02-16 07:42:37', 1, '', NULL),
(110897, 0, 'Login', '2016-02-16 07:46:31', '2016-02-16 07:46:31', 0.0000000, 0.0000000, 'User', 251, '2016-02-16 07:46:31', 251, '', NULL),
(110898, 0, 'Login', '2016-02-16 07:46:59', '2016-02-16 07:46:59', 0.0000000, 0.0000000, 'User', 120, '2016-02-16 07:46:59', 120, '', NULL),
(110899, 0, 'Login', '2016-02-16 07:52:19', '2016-02-16 07:52:19', 0.0000000, 0.0000000, 'User', 1, '2016-02-16 07:52:19', 1, '', NULL),
(110900, 0, 'Login', '2016-02-16 07:54:00', '2016-02-16 07:54:00', 0.0000000, 0.0000000, 'User', 120, '2016-02-16 07:54:00', 120, '', NULL),
(110901, 0, 'Accept', '2016-02-16 08:01:45', '2016-02-16 08:01:45', -6.1856604, 106.7912674, 'Assignment', 15205, '2016-02-16 08:01:45', 251, '', 'Jl. Arjuna 1A No.6, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110902, 0, 'Login', '2016-02-16 08:02:18', '2016-02-16 08:02:18', 0.0000000, 0.0000000, 'User', 250, '2016-02-16 08:02:18', 250, '', NULL),
(110903, 0, 'Checkin', '2016-02-16 08:04:06', '2016-02-16 08:04:06', -6.1856604, 106.7912674, 'Assignment', 15205, '2016-02-16 08:04:06', 251, 'sampai dilokasi', 'Jl. Arjuna 1A No.6, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110904, 0, 'Login', '2016-02-16 08:06:38', '2016-02-16 08:06:38', 0.0000000, 0.0000000, 'User', 253, '2016-02-16 08:06:38', 253, '', NULL),
(110905, 0, 'Login', '2016-02-16 08:06:59', '2016-02-16 08:06:59', 0.0000000, 0.0000000, 'User', 253, '2016-02-16 08:06:59', 253, '', NULL),
(110906, 0, 'Login', '2016-02-16 08:17:15', '2016-02-16 08:17:15', 0.0000000, 0.0000000, 'User', 250, '2016-02-16 08:17:15', 250, '', NULL),
(110907, 0, 'Support Request', '2016-02-16 08:18:11', '2016-02-16 08:18:11', -6.1856599, 106.7910004, 'Assignment', 15206, '2016-02-16 08:18:11', 251, 'help', 'Jl. Arjuna 1A No.6, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110908, 0, 'Assign Engineer', '2016-02-16 08:20:06', '2016-02-16 08:20:06', 0.0000000, 0.0000000, 'Assignment', 15206, '2016-02-16 08:20:06', 250, 'Adam\nnull', NULL),
(110909, 0, 'Login', '2016-02-16 08:21:42', '2016-02-16 08:21:42', 0.0000000, 0.0000000, 'User', 250, '2016-02-16 08:21:42', 250, '', NULL),
(110910, 0, 'Login', '2016-02-16 08:22:38', '2016-02-16 08:22:38', 0.0000000, 0.0000000, 'User', 1, '2016-02-16 08:22:38', 1, '', NULL),
(110911, 0, 'Login', '2016-02-16 08:25:19', '2016-02-16 08:25:19', 0.0000000, 0.0000000, 'User', 120, '2016-02-16 08:25:19', 120, '', NULL),
(110912, 0, 'Login', '2016-02-16 08:27:53', '2016-02-16 08:27:53', 0.0000000, 0.0000000, 'User', 1, '2016-02-16 08:27:53', 1, '', NULL),
(110913, 0, 'Login', '2016-02-16 08:29:27', '2016-02-16 08:29:27', 0.0000000, 0.0000000, 'User', 120, '2016-02-16 08:29:27', 120, '', NULL),
(110914, 0, 'Login', '2016-02-16 08:31:22', '2016-02-16 08:31:22', 0.0000000, 0.0000000, 'User', 250, '2016-02-16 08:31:22', 250, '', NULL),
(110915, 0, 'Login', '2016-02-16 08:46:10', '2016-02-16 08:46:10', 0.0000000, 0.0000000, 'User', 1, '2016-02-16 08:46:10', 1, '', NULL),
(110916, 0, 'Login', '2016-02-16 11:45:58', '2016-02-16 11:45:58', 0.0000000, 0.0000000, 'User', 1, '2016-02-16 11:45:58', 1, '', NULL),
(110917, 0, 'Login', '2016-02-16 11:54:04', '2016-02-16 11:54:04', 0.0000000, 0.0000000, 'User', 251, '2016-02-16 11:54:04', 251, '', NULL),
(110918, 0, 'Login', '2016-02-16 11:54:29', '2016-02-16 11:54:29', 0.0000000, 0.0000000, 'User', 250, '2016-02-16 11:54:29', 250, '', NULL),
(110919, 0, 'DoneAndCheckout', '2016-02-16 11:55:29', '2016-02-16 11:55:29', -6.1856604, 106.7912674, 'Assignment', 15205, '2016-02-16 11:55:27', 251, '', 'Jl. Arjuna 1A No.6, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110920, 0, 'Close', '2016-02-16 11:55:59', '2016-02-16 11:55:59', -6.1856604, 106.7912674, 'Assignment', 15205, '2016-02-16 11:55:59', 251, NULL, NULL),
(110921, 0, 'Close', '2016-02-16 11:55:59', '2016-02-16 11:55:59', 0.0000000, 0.0000000, 'Assignment', 15206, '2016-02-16 11:55:59', 249, NULL, NULL),
(110922, 0, 'Checkin', '2016-02-16 11:56:47', '2016-02-16 11:56:47', -6.1856604, 106.7912674, 'Assignment', 15203, '2016-02-16 11:56:46', 251, '', 'Jl. Arjuna 1A No.6, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110923, 0, 'DoneAndCheckout', '2016-02-16 11:57:01', '2016-02-16 11:57:01', -6.1856604, 106.7912674, 'Assignment', 15203, '2016-02-16 11:57:00', 251, '', 'Jl. Arjuna 1A No.6, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110924, 0, 'Close', '2016-02-16 11:57:25', '2016-02-16 11:57:25', -6.1856604, 106.7912674, 'Assignment', 15203, '2016-02-16 11:57:25', 251, NULL, NULL),
(110925, 0, 'Accept', '2016-02-16 11:57:33', '2016-02-16 11:57:33', -6.1856604, 106.7912674, 'Assignment', 15207, '2016-02-16 11:57:33', 251, '', 'Jl. Arjuna 1A No.6, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110926, 0, 'Checkin', '2016-02-16 11:57:40', '2016-02-16 11:57:40', -6.1856604, 106.7912674, 'Assignment', 15207, '2016-02-16 11:57:40', 251, '', 'Jl. Arjuna 1A No.6, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110927, 0, 'DoneAndCheckout', '2016-02-16 11:57:52', '2016-02-16 11:57:52', -6.1856604, 106.7912674, 'Assignment', 15207, '2016-02-16 11:57:52', 251, '', 'Jl. Arjuna 1A No.6, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110928, 0, 'Close', '2016-02-16 11:58:37', '2016-02-16 11:58:37', -6.1856604, 106.7912674, 'Assignment', 15207, '2016-02-16 11:58:37', 251, NULL, NULL),
(110929, 0, 'Logout', '2016-02-16 11:58:45', '2016-02-16 11:58:45', 0.0000000, 0.0000000, 'User', 251, '2016-02-16 11:58:45', 251, '', NULL),
(110930, 0, 'Login', '2016-02-16 12:02:01', '2016-02-16 12:02:01', 0.0000000, 0.0000000, 'User', 1, '2016-02-16 12:02:01', 1, '', NULL),
(110931, 0, 'Login', '2016-02-16 12:02:22', '2016-02-16 12:02:22', 0.0000000, 0.0000000, 'User', 250, '2016-02-16 12:02:22', 250, '', NULL),
(110932, 0, 'Login', '2016-02-16 12:08:02', '2016-02-16 12:08:02', -6.1894550, 106.7918091, 'User', 251, '2016-02-16 12:08:02', 251, '', NULL),
(110933, 0, 'Login', '2016-02-16 12:08:18', '2016-02-16 12:08:18', 0.0000000, 0.0000000, 'User', 120, '2016-02-16 12:08:18', 120, '', NULL),
(110934, 0, 'Login', '2016-02-16 12:12:10', '2016-02-16 12:12:10', 0.0000000, 0.0000000, 'User', 250, '2016-02-16 12:12:10', 250, '', NULL),
(110935, 0, 'Accept', '2016-02-16 12:13:16', '2016-02-16 12:13:16', -6.1856604, 106.7912674, 'Assignment', 15208, '2016-02-16 12:13:16', 251, '', 'Jl. Arjuna 1A No.6, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110936, 0, 'Checkin', '2016-02-16 12:13:26', '2016-02-16 12:13:26', -6.1856604, 106.7912674, 'Assignment', 15208, '2016-02-16 12:13:25', 251, 'sudah', 'Jl. Arjuna 1A No.6, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110937, 0, 'Checkout', '2016-02-16 12:13:44', '2016-02-16 12:13:44', -6.1856604, 106.7912674, 'Assignment', 15208, '2016-02-16 12:13:43', 251, 'sudah', 'Jl. Arjuna 1A No.6, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110938, 0, 'Checkin', '2016-02-16 12:15:25', '2016-02-16 12:15:25', -6.1856604, 106.7912674, 'Assignment', 15208, '2016-02-16 12:15:25', 251, 'sudah', 'Jl. Arjuna 1A No.6, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110939, 0, 'DoneAndCheckout', '2016-02-16 12:17:31', '2016-02-16 12:17:31', -6.1856604, 106.7912674, 'Assignment', 15208, '2016-02-16 12:17:31', 251, 'sudah', 'Jl. Arjuna 1A No.6, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110940, 0, 'Close', '2016-02-16 12:20:33', '2016-02-16 12:20:33', -6.1856604, 106.7912674, 'Assignment', 15208, '2016-02-16 12:20:33', 251, NULL, NULL),
(110941, 0, 'Login', '2016-02-16 12:24:31', '2016-02-16 12:24:31', 0.0000000, 0.0000000, 'User', 1, '2016-02-16 12:24:31', 1, '', NULL),
(110942, 0, 'Login', '2016-02-16 13:46:03', '2016-02-16 13:46:03', 0.0000000, 0.0000000, 'User', 252, '2016-02-16 13:46:03', 252, '', NULL),
(110943, 0, 'Logout', '2016-02-16 13:46:10', '2016-02-16 13:46:10', 0.0000000, 0.0000000, 'User', 252, '2016-02-16 13:46:10', 252, '', NULL),
(110944, 0, 'Login', '2016-02-16 13:46:11', '2016-02-16 13:46:11', 0.0000000, 0.0000000, 'User', 252, '2016-02-16 13:46:11', 252, '', NULL),
(110945, 0, 'Login', '2016-02-16 13:46:42', '2016-02-16 13:46:42', 0.0000000, 0.0000000, 'User', 120, '2016-02-16 13:46:42', 120, '', NULL),
(110946, 0, 'Login', '2016-02-16 13:47:22', '2016-02-16 13:47:22', 0.0000000, 0.0000000, 'User', 1, '2016-02-16 13:47:22', 1, '', NULL),
(110947, 0, 'Logout', '2016-02-16 14:17:55', '2016-02-16 14:17:55', 0.0000000, 0.0000000, 'User', 252, '2016-02-16 14:17:55', 252, '', NULL),
(110948, 0, 'Login', '2016-02-16 14:17:57', '2016-02-16 14:17:57', -6.1946187, 106.8205566, 'User', 252, '2016-02-16 14:17:57', 252, '', NULL),
(110949, 0, 'Login', '2016-02-16 14:18:47', '2016-02-16 14:18:47', 0.0000000, 0.0000000, 'User', 250, '2016-02-16 14:18:47', 250, '', NULL),
(110950, 0, 'Logout', '2016-02-16 14:19:12', '2016-02-16 14:19:12', 0.0000000, 0.0000000, 'User', 250, '2016-02-16 14:19:12', 250, '', NULL),
(110951, 0, 'Logout', '2016-02-16 14:19:19', '2016-02-16 14:19:19', 0.0000000, 0.0000000, 'User', 252, '2016-02-16 14:19:19', 252, '', NULL),
(110952, 0, 'Login', '2016-02-16 14:19:22', '2016-02-16 14:19:22', -6.1946187, 106.8205566, 'User', 251, '2016-02-16 14:19:22', 251, '', NULL),
(110953, 0, 'Login', '2016-02-16 14:19:24', '2016-02-16 14:19:24', 0.0000000, 0.0000000, 'User', 250, '2016-02-16 14:19:24', 250, '', NULL),
(110954, 0, 'Login', '2016-02-16 14:20:03', '2016-02-16 14:20:03', 0.0000000, 0.0000000, 'User', 250, '2016-02-16 14:20:03', 250, '', NULL),
(110955, 0, 'Accept', '2016-02-16 14:20:52', '2016-02-16 14:20:52', -6.1946187, 106.8205566, 'Assignment', 15209, '2016-02-16 14:20:49', 251, '', 'Jl. Kebon Kacang Raya No.1/1, Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10240, Indonesia'),
(110956, 0, 'Checkin', '2016-02-16 14:21:21', '2016-02-16 14:21:21', -6.1946187, 106.8205566, 'Assignment', 15209, '2016-02-16 14:21:21', 251, 'sampai dilokasi', 'Jl. Kebon Kacang Raya No.1/1, Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10240, Indonesia'),
(110957, 0, 'Support Request', '2016-02-16 14:23:34', '2016-02-16 14:23:34', -6.1946201, 106.8209991, 'Assignment', 15210, '2016-02-16 14:23:33', 251, 'butuh bantuan engineer lain', 'Hotel Indonesia, Jl. M.H. Thamrin No.1, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10310, Indonesia'),
(110958, 0, 'Checkout', '2016-02-16 14:26:13', '2016-02-16 14:26:13', -6.1946187, 106.8205566, 'Assignment', 15209, '2016-02-16 14:26:12', 251, 'makan siang', 'Jl. Kebon Kacang Raya No.1/1, Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10240, Indonesia'),
(110959, 0, 'Checkin', '2016-02-16 14:26:45', '2016-02-16 14:26:45', -6.1946187, 106.8205566, 'Assignment', 15209, '2016-02-16 14:26:41', 251, 'sudah selesai makan', 'Jl. Kebon Kacang Raya No.1/1, Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10240, Indonesia'),
(110960, 0, 'DoneAndCheckout', '2016-02-16 14:27:22', '2016-02-16 14:27:22', -6.1946187, 106.8205566, 'Assignment', 15209, '2016-02-16 14:27:13', 251, 'makan siang', 'Jl. Kebon Kacang Raya No.1/1, Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10240, Indonesia'),
(110961, 0, 'Close', '2016-02-16 14:28:39', '2016-02-16 14:28:39', -6.1946187, 106.8205566, 'Assignment', 15209, '2016-02-16 14:28:39', 251, NULL, NULL),
(110962, 0, 'Login', '2016-02-16 14:30:21', '2016-02-16 14:30:21', 0.0000000, 0.0000000, 'User', 250, '2016-02-16 14:30:21', 250, '', NULL),
(110963, 0, 'Login', '2016-02-16 14:32:17', '2016-02-16 14:32:17', 0.0000000, 0.0000000, 'User', 253, '2016-02-16 14:32:17', 253, '', NULL),
(110964, 0, 'Logout', '2016-02-16 14:45:03', '2016-02-16 14:45:03', 0.0000000, 0.0000000, 'User', 251, '2016-02-16 14:45:03', 251, '', NULL),
(110965, 0, 'Login', '2016-02-18 08:17:40', '2016-02-18 08:17:40', 0.0000000, 0.0000000, 'User', 1, '2016-02-18 08:17:40', 1, '', NULL),
(110966, 0, 'Login', '2016-02-18 08:25:30', '2016-02-18 08:25:30', 0.0000000, 0.0000000, 'User', 120, '2016-02-18 08:25:30', 120, '', NULL),
(110967, 0, 'Login', '2016-02-18 08:26:51', '2016-02-18 08:26:51', 0.0000000, 0.0000000, 'User', 120, '2016-02-18 08:26:51', 120, '', NULL),
(110968, 0, 'Login', '2016-02-18 08:32:13', '2016-02-18 08:32:13', 0.0000000, 0.0000000, 'User', 1, '2016-02-18 08:32:13', 1, '', NULL),
(110969, 0, 'Login', '2016-02-18 08:37:30', '2016-02-18 08:37:30', 0.0000000, 0.0000000, 'User', 253, '2016-02-18 08:37:30', 253, '', NULL),
(110970, 0, 'Login', '2016-02-18 08:38:51', '2016-02-18 08:38:51', 0.0000000, 0.0000000, 'User', 249, '2016-02-18 08:38:51', 249, '', NULL),
(110971, 0, 'Login', '2016-02-18 08:55:59', '2016-02-18 08:55:59', 0.0000000, 0.0000000, 'User', 251, '2016-02-18 08:55:59', 251, '', NULL),
(110972, 0, 'Login', '2016-02-18 08:56:25', '2016-02-18 08:56:25', 0.0000000, 0.0000000, 'User', 120, '2016-02-18 08:56:25', 120, '', NULL),
(110973, 0, 'Logout', '2016-02-18 08:58:52', '2016-02-18 08:58:52', 0.0000000, 0.0000000, 'User', 251, '2016-02-18 08:58:52', 251, '', NULL),
(110974, 0, 'Login', '2016-02-18 08:58:55', '2016-02-18 08:58:55', -6.1856604, 106.7912674, 'User', 252, '2016-02-18 08:58:55', 252, '', NULL),
(110975, 0, 'Accept', '2016-02-18 08:59:15', '2016-02-18 08:59:15', -6.1895332, 106.7917786, 'Assignment', 15211, '2016-02-18 08:59:15', 252, '', 'Jl. Olah Raga I No.12, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110976, 0, 'Checkin', '2016-02-18 08:59:23', '2016-02-18 08:59:23', -6.1895332, 106.7917786, 'Assignment', 15211, '2016-02-18 08:59:22', 252, '', 'Jl. Olah Raga I No.12, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110977, 0, 'Login', '2016-02-18 08:59:50', '2016-02-18 08:59:50', 0.0000000, 0.0000000, 'User', 250, '2016-02-18 08:59:50', 250, '', NULL),
(110978, 0, 'Login', '2016-02-18 09:01:13', '2016-02-18 09:01:13', 0.0000000, 0.0000000, 'User', 251, '2016-02-18 09:01:13', 251, '', NULL),
(110979, 0, 'Logout', '2016-02-18 09:01:24', '2016-02-18 09:01:24', 0.0000000, 0.0000000, 'User', 251, '2016-02-18 09:01:24', 251, '', NULL),
(110980, 0, 'Login', '2016-02-18 09:10:15', '2016-02-18 09:10:15', 0.0000000, 0.0000000, 'User', 1, '2016-02-18 09:10:15', 1, '', NULL),
(110981, 0, 'Login', '2016-02-18 09:17:27', '2016-02-18 09:17:27', -6.1895471, 106.7917709, 'User', 251, '2016-02-18 09:17:27', 251, '', NULL),
(110982, 0, 'Login', '2016-02-18 09:17:39', '2016-02-18 09:17:39', 0.0000000, 0.0000000, 'User', 120, '2016-02-18 09:17:39', 120, '', NULL),
(110983, 0, 'Accept', '2016-02-18 09:18:57', '2016-02-18 09:18:57', -6.1895361, 106.7917786, 'Assignment', 15212, '2016-02-18 09:18:56', 251, '', 'Jl. Olah Raga I No.12, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110984, 0, 'Checkin', '2016-02-18 09:19:03', '2016-02-18 09:19:03', -6.1895361, 106.7917786, 'Assignment', 15212, '2016-02-18 09:19:02', 251, '', 'Jl. Olah Raga I No.12, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia'),
(110985, 0, 'Login', '2016-02-18 10:50:15', '2016-02-18 10:50:15', 0.0000000, 0.0000000, 'User', 1, '2016-02-18 10:50:15', 1, '', NULL),
(110986, 0, 'Login', '2016-02-18 10:51:55', '2016-02-18 10:51:55', 0.0000000, 0.0000000, 'User', 249, '2016-02-18 10:51:55', 249, '', NULL),
(110987, 0, 'Logout', '2016-02-18 10:52:00', '2016-02-18 10:52:00', 0.0000000, 0.0000000, 'User', 249, '2016-02-18 10:52:00', 249, '', NULL),
(110988, 0, 'Login', '2016-02-18 10:52:01', '2016-02-18 10:52:01', 0.0000000, 0.0000000, 'User', 249, '2016-02-18 10:52:01', 249, '', NULL),
(110989, 0, 'Logout', '2016-02-18 10:52:24', '2016-02-18 10:52:24', 0.0000000, 0.0000000, 'User', 249, '2016-02-18 10:52:24', 249, '', NULL),
(110990, 0, 'Login', '2016-02-18 10:52:25', '2016-02-18 10:52:25', -6.1769481, 106.7923355, 'User', 249, '2016-02-18 10:52:25', 249, '', NULL),
(110991, 0, 'Logout', '2016-02-18 10:55:53', '2016-02-18 10:55:53', 0.0000000, 0.0000000, 'User', 249, '2016-02-18 10:55:53', 249, '', NULL),
(110992, 0, 'Login', '2016-02-18 10:56:07', '2016-02-18 10:56:07', -6.1769214, 106.7912598, 'User', 249, '2016-02-18 10:56:07', 249, '', NULL),
(110993, 0, 'Login', '2016-02-18 11:02:18', '2016-02-18 11:02:18', 0.0000000, 0.0000000, 'User', 120, '2016-02-18 11:02:18', 120, '', NULL),
(110994, 0, 'Accept', '2016-02-18 11:08:03', '2016-02-18 11:08:03', -6.1762676, 106.7926865, 'Assignment', 15213, '2016-02-18 11:07:57', 249, '', 'Jl. Letjen. S. Parman No.Kav 21, Grogol petamburan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11470, Indonesia'),
(110995, 0, 'Login', '2016-02-18 11:14:05', '2016-02-18 11:14:05', 0.0000000, 0.0000000, 'User', 249, '2016-02-18 11:14:05', 249, '', NULL),
(110996, 0, 'Checkin', '2016-02-18 11:15:11', '2016-02-18 11:15:11', -6.1769214, 106.7912598, 'Assignment', 15213, '2016-02-18 11:15:09', 249, 'sudah sampai', 'Jl. Letjen. S. Parman No.28, Grogol petamburan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11470, Indonesia'),
(110997, 0, 'Support Request', '2016-02-18 11:18:58', '2016-02-18 11:18:58', -6.1769199, 106.7910004, 'Assignment', 15214, '2016-02-18 11:18:55', 249, 'butuh bantuan engineer lain', 'Jl. Letjen. S. Parman No.28, Grogol petamburan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11470, Indonesia'),
(110998, 0, 'Login', '2016-02-18 11:19:38', '2016-02-18 11:19:38', 0.0000000, 0.0000000, 'User', 250, '2016-02-18 11:19:38', 250, '', NULL),
(110999, 0, 'Login', '2016-02-18 11:21:50', '2016-02-18 11:21:50', 0.0000000, 0.0000000, 'User', 253, '2016-02-18 11:21:50', 253, '', NULL),
(111000, 0, 'Login', '2016-02-18 11:22:40', '2016-02-18 11:22:40', 0.0000000, 0.0000000, 'User', 253, '2016-02-18 11:22:40', 253, '', NULL),
(111001, 0, 'Login', '2016-02-18 11:25:33', '2016-02-18 11:25:33', 0.0000000, 0.0000000, 'User', 1, '2016-02-18 11:25:33', 1, '', NULL),
(111002, 0, 'DoneAndCheckout', '2016-02-18 11:27:55', '2016-02-18 11:27:55', -6.1769214, 106.7912598, 'Assignment', 15213, '2016-02-18 11:27:54', 249, '', 'Jl. Letjen. S. Parman No.28, Grogol petamburan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11470, Indonesia'),
(111003, 0, 'Login', '2016-02-18 11:28:26', '2016-02-18 11:28:26', 0.0000000, 0.0000000, 'User', 250, '2016-02-18 11:28:26', 250, '', NULL),
(111004, 0, 'Close', '2016-02-18 11:31:31', '2016-02-18 11:31:31', -6.1769214, 106.7912598, 'Assignment', 15213, '2016-02-18 11:31:31', 249, NULL, NULL),
(111005, 0, 'Logout', '2016-02-18 11:52:46', '2016-02-18 11:52:46', 0.0000000, 0.0000000, 'User', 249, '2016-02-18 11:52:46', 249, '', NULL),
(111006, 0, 'Login', '2016-02-18 13:51:19', '2016-02-18 13:51:19', 0.0000000, 0.0000000, 'User', 1, '2016-02-18 13:51:19', 1, '', NULL),
(111007, 0, 'Login', '2016-02-18 14:12:08', '2016-02-18 14:12:08', 0.0000000, 0.0000000, 'User', 249, '2016-02-18 14:12:08', 249, '', NULL),
(111008, 0, 'Logout', '2016-02-18 14:12:22', '2016-02-18 14:12:22', 0.0000000, 0.0000000, 'User', 249, '2016-02-18 14:12:22', 249, '', NULL),
(111009, 0, 'Login', '2016-02-18 14:12:24', '2016-02-18 14:12:24', -6.2128587, 106.8180237, 'User', 249, '2016-02-18 14:12:24', 249, '', NULL),
(111010, 0, 'Login', '2016-02-18 14:12:35', '2016-02-18 14:12:35', 0.0000000, 0.0000000, 'User', 1, '2016-02-18 14:12:35', 1, '', NULL),
(111011, 0, 'Login', '2016-02-18 14:13:59', '2016-02-18 14:13:59', 0.0000000, 0.0000000, 'User', 250, '2016-02-18 14:13:59', 250, '', NULL),
(111012, 0, 'Login', '2016-02-18 14:17:03', '2016-02-18 14:17:03', 0.0000000, 0.0000000, 'User', 120, '2016-02-18 14:17:03', 120, '', NULL),
(111013, 0, 'Logout', '2016-02-18 14:22:35', '2016-02-18 14:22:35', 0.0000000, 0.0000000, 'User', 249, '2016-02-18 14:22:35', 249, '', NULL),
(111014, 0, 'Login', '2016-02-29 09:56:09', '2016-02-29 09:56:09', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 09:56:09', 249, '', NULL),
(111015, 0, 'Login', '2016-02-29 09:56:20', '2016-02-29 09:56:20', 0.0000000, 0.0000000, 'User', 120, '2016-02-29 09:56:19', 120, '', NULL),
(111016, 0, 'Logout', '2016-02-29 09:56:55', '2016-02-29 09:56:55', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 09:56:55', 249, '', NULL),
(111017, 0, 'Login', '2016-02-29 09:56:57', '2016-02-29 09:56:57', 36.5749855, -95.7656326, 'User', 249, '2016-02-29 09:56:57', 249, '', NULL),
(111018, 0, 'Logout', '2016-02-29 09:57:31', '2016-02-29 09:57:31', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 09:57:31', 249, '', NULL),
(111019, 0, 'Login', '2016-02-29 09:57:33', '2016-02-29 09:57:33', 36.5749855, -95.7656326, 'User', 249, '2016-02-29 09:57:33', 249, '', NULL),
(111020, 0, 'Accept', '2016-02-29 09:59:06', '2016-02-29 09:59:06', 36.5749855, -95.7656326, 'Assignment', 15216, '2016-02-29 09:59:06', 249, '', 'Feed Rd, Talala, OK 74080, USA'),
(111021, 0, 'Checkin', '2016-02-29 09:59:10', '2016-02-29 09:59:10', 36.5749855, -95.7656326, 'Assignment', 15216, '2016-02-29 09:59:10', 249, '', 'Feed Rd, Talala, OK 74080, USA'),
(111022, 0, 'DoneAndCheckout', '2016-02-29 10:00:03', '2016-02-29 10:00:03', 36.5749855, -95.7656326, 'Assignment', 15216, '2016-02-29 10:00:03', 249, '', 'Feed Rd, Talala, OK 74080, USA'),
(111023, 0, 'Login', '2016-02-29 10:00:37', '2016-02-29 10:00:37', 0.0000000, 0.0000000, 'User', 250, '2016-02-29 10:00:37', 250, '', NULL),
(111024, 0, 'Logout', '2016-02-29 10:14:42', '2016-02-29 10:14:42', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:14:42', 249, '', NULL),
(111025, 0, 'Login', '2016-02-29 10:15:07', '2016-02-29 10:15:07', 36.5749855, -95.7656326, 'User', 249, '2016-02-29 10:15:07', 249, '', NULL),
(111026, 0, 'Login', '2016-02-29 10:16:39', '2016-02-29 10:16:39', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:16:39', 249, '', NULL),
(111027, 0, 'Logout', '2016-02-29 10:16:48', '2016-02-29 10:16:48', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:16:48', 249, '', NULL),
(111028, 0, 'Login', '2016-02-29 10:16:49', '2016-02-29 10:16:49', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:16:49', 249, '', NULL),
(111029, 0, 'Logout', '2016-02-29 10:17:37', '2016-02-29 10:17:37', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:17:37', 249, '', NULL),
(111030, 0, 'Login', '2016-02-29 10:17:38', '2016-02-29 10:17:38', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:17:38', 249, '', NULL),
(111031, 0, 'Logout', '2016-02-29 10:18:01', '2016-02-29 10:18:01', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:18:01', 249, '', NULL),
(111032, 0, 'Login', '2016-02-29 10:18:03', '2016-02-29 10:18:03', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:18:03', 249, '', NULL),
(111033, 0, 'Logout', '2016-02-29 10:18:58', '2016-02-29 10:18:58', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:18:58', 249, '', NULL),
(111034, 0, 'Login', '2016-02-29 10:18:59', '2016-02-29 10:18:59', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:18:59', 249, '', NULL),
(111035, 0, 'Logout', '2016-02-29 10:32:52', '2016-02-29 10:32:52', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:32:52', 249, '', NULL),
(111036, 0, 'Login', '2016-02-29 10:32:53', '2016-02-29 10:32:53', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:32:53', 249, '', NULL),
(111037, 0, 'Logout', '2016-02-29 10:33:03', '2016-02-29 10:33:03', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:33:03', 249, '', NULL),
(111038, 0, 'Login', '2016-02-29 10:33:04', '2016-02-29 10:33:04', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:33:04', 249, '', NULL),
(111039, 0, 'Logout', '2016-02-29 10:35:02', '2016-02-29 10:35:02', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:35:02', 249, '', NULL),
(111040, 0, 'Login', '2016-02-29 10:35:03', '2016-02-29 10:35:03', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:35:03', 249, '', NULL),
(111041, 0, 'Logout', '2016-02-29 10:35:37', '2016-02-29 10:35:37', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:35:37', 249, '', NULL),
(111042, 0, 'Login', '2016-02-29 10:35:38', '2016-02-29 10:35:38', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:35:38', 249, '', NULL),
(111043, 0, 'Logout', '2016-02-29 10:36:18', '2016-02-29 10:36:18', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:36:18', 249, '', NULL),
(111044, 0, 'Login', '2016-02-29 10:36:19', '2016-02-29 10:36:19', 0.0000000, 0.0000000, 'User', 249, '2016-02-29 10:36:19', 249, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` bigint(20) NOT NULL,
  `answer_text` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `respondent_survey_header_id` bigint(20) NOT NULL,
  `survey_detail_id` bigint(20) NOT NULL,
  `survey_detail_option_id` bigint(20) NOT NULL,
  `actor` varchar(255) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `new_value` varchar(255) NOT NULL,
  `old_value` varchar(255) NOT NULL,
  `persisted_object_id` varchar(255) NOT NULL,
  `persisted_object_version` int(11) NOT NULL,
  `property_name` varchar(255) NOT NULL,
  `uri` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_setting`
--

CREATE TABLE `app_setting` (
  `val` text NOT NULL,
  `id` int(11) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `code` varchar(255) NOT NULL,
  `unit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_setting`
--

INSERT INTO `app_setting` (`val`, `id`, `version`, `date_created`, `last_updated`, `code`, `unit`) VALUES
('manual:1:Serial Number:varchar:20////', 1, 24, '2013-08-16 09:43:32', '2014-04-02 09:59:19', 'batch_number_format', NULL),
('10', 2, 3, '2013-08-16 09:43:32', '2013-08-16 09:43:32', 'default_reminder_for_contract_period', 'days'),
('3', 3, 0, '2013-08-16 09:43:32', '2013-08-16 09:43:32', 'default_reminder_for_returning', ''),
('3', 4, 0, '2013-08-16 09:43:32', '2013-08-16 09:43:32', 'default_reminder_for_regular_visit', ''),
('Dear [customer],\r\n\r\nyour ticket [ticket] will be responded within [respon_time] service hour(s), depends on your SLA Package\r\n\r\nThank you', 5, 4, '2013-08-16 09:43:32', '2013-08-16 09:43:32', 'response_time_sms_template ', NULL),
('Subject: TicketID [TicketNo] [Timestamp] Dear [PartnerPICSalutation]. [PartnerPICName], Your issues under TicketID [TicketNo] will be responded by our engineer within [respon_time] service hour(s), depends on your SLA Package Thank You for your Cooperation [EntityName]', 6, 1, '2013-08-16 09:43:32', '2014-02-11 09:22:23', 'response_time_email_template', NULL),
('Dear Customer,\r\n\r\nThank you for contacting maintenance team for your support request. This email confirms your request for support and the details are below.\r\n\r\nYour request has been recorded in our system on under Case ID number [TicketNo] \r\n\r\nCustomer Name: [PartnerName] \r\nCustomer Location: [PartnerLocation] \r\nCaller Name: [CallerName] \r\nCaller Email: [CallerEmail]\r\nCaller Phone: [CallerPhone]\r\nProblem Description: [Problem] \r\n\r\nOur engineer will contact you shortly. \r\nPlease supply this keycode: [KeyCode] to our engineer''s mobile to close your issue.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 7, 22, '2013-08-16 09:43:32', '2016-02-12 22:39:19', 'issues_received_email', NULL),
('Dear Customer, your support request under Case ID [TicketNo] has been recorded in our system and will be responded by our engineer shortly. Please supply this keycode: [KeyCode] to our engineer''s mobile to close your issue. Thank You for your Cooperation.', 8, 14, '2013-08-16 09:43:32', '2016-02-12 22:39:19', 'issues_received_sms', NULL),
('Subject: Issues waiting for Respond [Timestamp] Dear [PICName], Currently there are [qty of outstanding issues] issues waiting for respond 1. [CustomerName], [CustomerLocation], SLA: [SLAType], [TicketNo], [Issues Received Timestamp], [Problem], waiting for about [timestamp – issues recorded] hour(s), [status]** 2. .......... Thank you for your kind attention Regards, Helpdesk System', 9, 5, '2013-08-16 09:43:32', '2014-02-11 09:32:50', 'issues_escalation_summary_email', NULL),
('Dear [PICName],\r\n\r\n[PartnerPICName] from [CustomerName] – [CustomerLocation] reported an issue which hasn’t responded by your team for [timestamp-issues recorded time] hours, with detail as below: \r\n- Ticket No: [TicketNo]\r\n- Item ID: [ItemID]\r\n- Batch ID: [ItemBatchID]\r\n- Problem: [Problem]\r\n- Status: [Status] \r\n\r\nList of Action: \r\n1. Received on [Timestamp of Issues Recorded] by [Addedby]* \r\n2. Assign to [EngineerName] ([EngineerMobileNo]) on [Timestamp of Assignment] \r\n\r\nThank you for your kind attention.\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 10, 6, '2013-08-16 09:43:32', '2014-03-10 20:14:51', 'issues_escalation_detail_email', NULL),
('On [Timestamp], there are some issues haven’t been responded by your team:\r\n[qty of issues] issue(s) for [timestamp-issues recorded time] hours\r\n[qty of issues] issue(s) for [timestamp-issues recorded time] hours', 11, 3, '2013-08-16 09:43:32', '2014-03-10 20:15:51', 'issues_escalation_summary_sms', NULL),
('[PartnerPICName] from [CustomerName] – [CustomerLocation] reported an issue which hasn’t responded by your team for [timestamp-issues recorded time] hours. Ticket No: [TicketNo]\r\n', 12, 4, '2013-08-16 09:43:32', '2014-03-10 20:16:25', 'issues_escalation_detail_sms', NULL),
('Dear Customer,\r\n\r\nCompnet Case ID #: [TicketNo] \r\nCustomer Name: [PartnerName] \r\nCustomer Location: [PartnerLocation] \r\nCaller Name: [CallerName] \r\nCaller Email: [CallerEmail] \r\nCaller Phone: [CallerPhone] \r\nProblem Description: [Problem] \r\nSTATUS: CASE IS OPEN AND IN PROGRESS\r\n\r\nOur engineer [EngineerName] ([EngineerMobileNo]) will visit you shortly for Corrective Maintenance.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet. The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 13, 15, '2013-08-16 09:43:32', '2015-04-13 10:19:10', 'assignment_to_handle_issue_to_customer_email', NULL),
('Dear Customer, Our engineer [EngineerName] ([EngineerMobileNo]) will visit you shortly for Corrective Maintenance of Case ID: [TicketNo] . Thank You. Compnet.', 14, 6, '2013-08-16 09:43:32', '2015-03-23 09:06:35', 'assignment_to_handle_issue_to_customer_sms', NULL),
('Subject: Preventive Maintenance Schedule\r\n\r\nDear [PartnerPICSalutation] [PartnerPICName], \r\n\r\nAs discussed, our engineer [EngineerName] ([EngineerMobileNo]) will visit you for Preventive Maintenance. Thank You for your Cooperation.\r\n\r\n\r\nRegards,\r\n\r\nContract Management Service\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 15, 7, '2013-08-16 09:43:32', '2016-02-12 22:41:52', 'assignment_regular_visit_to_customer_by_email', NULL),
('Dear [PartnerPICSalutation]. [PartnerPICName], our engineer [EngineerName] ([EngineerMobileNo]) will visit you on [AppointmentDate] for Preventive Maintenance. Thank You for your Cooperation.', 16, 5, '2013-08-16 09:43:32', '2014-02-13 11:39:02', 'assignment_regular_visit_to_customer_by_sms', NULL),
('Subject: Issue will reach the escalation time [Timestamp] \r\n\r\nDear Partner, \r\n\r\nCurrently there are some outstanding issues reach critical period.f \r\n\r\nRED ALERT: [redList] \r\n\r\nYELLOW ALERT: [yellowList] \r\n\r\nPlease take any necessary action.\r\n\r\n\r\nRegards,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 17, 7, '2013-08-16 09:43:32', '2014-04-14 12:25:54', 'issues_solution_summary_email', NULL),
('On [Timestamp], there are [qty of issues] issue(s) marked as RED Issues and [qty of issues] issue(s) as YELLOW Issues Please review through Amatra System and take necessary action. Thank you for your cooperation. Compnet.', 18, 6, '2013-08-16 09:43:32', '2015-03-23 09:07:37', 'issues_solution_summary_sms', NULL),
('[RED / YELLOW] ALERT: [TicketNo], [PartnerName],[PartnerLocation] ([SLAType]), [PartnerPICName], [Problem], should be solved on [timestamp issues recorded + SLA_SolutionTime]. Call [EngineerName] ([EngineerMobileNo]) for more detail.', 20, 5, '2013-08-16 09:43:32', '2014-03-06 14:55:16', 'issues_solution_detail_sms_interactive', NULL),
('Subject: Renewal of Maintenance Contract no. [ContractNo] And [Reffnumber] with [Notes]\r\n\r\nDear [PartnerPICSalutation]  [PartnerPICName],\r\n\r\n[PartnerName]\r\n[PartnerAddress]\r\n\r\nThank you for your trust and confidence in Compnet to provide excellent support for your company.\r\n\r\nThrough this e-mail may we take this opportunity to remind you about expiration of your Maintenance Contract: [ContractNo] and [Reffnumber] with [Notes] on [ContractEndDate] (will expired under [ExpiringTime])\r\n\r\nWe recommend that you confirm your renewal at least 30 days prior to expiration to continue to receive our excellent support.\r\n\r\nDo not hesitate to contact our technical consultant: pssemtc@compnet.co.id to renew your maintenance contract.\r\n\r\n-----------------------------------------------------------------------------------\r\n\r\nYang Terhormat [PartnerPICSalutation]  [PartnerPICName],\r\n\r\n[PartnerName]\r\n[PartnerAddress]\r\n\r\nTerima kasih atas kepercayaan kepada kami untuk memberikan layanan unggulan dari kami untuk perusahaan Bapak/Ibu.\r\n\r\nMelalui e-mail ini, izinkan kami untuk mengingatkan tentang kontrak Maintenance yang akan selesai waktunya: [ContractNo] dan [Reffnumber] dengan [Notes] pada [ContractEndDate] (akan habis selama [ExpiringTime])\r\n\r\nKami rekomendasikan Bapak/Ibu agar melakukan konfirmasi paling lambat 30 hari untuk melanjutkan penerimaan layanan unggulan dari kami.\r\n\r\nJangan ragu untuk menghubungi konsultan teknikal kami: pssemtc@compnet.co.id agar dapat dilakukan pembaharuan kontrak maintenance.\r\n\r\n\r\nBest Regards, \r\n\r\nContract Management Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 21, 13, '2013-08-16 09:43:32', '2016-01-06 08:36:44', 'contract_renewal_email', NULL),
('[PartnerPICSalutation] [PartnerPICName], your maintenance contract no. [ContractNo] would be expired on [ContractEndDate]. In order to continue to receive our excellent support, please contact our technical consultant pssemtc@compnet.co.id to renew your maintenance contract. Thank you for your cooperation', 22, 4, '2013-08-16 09:43:32', '2015-06-03 08:29:11', 'contract_renewal_sms', NULL),
('Subject: Maintenance Contract Expiration\r\n[Timestamp]\r\n\r\nDear PSSE Team,\r\n\r\nBelow list of maintenance contract will be expired within 120 days:\r\n\r\n[ContractList]\r\n\r\n\r\nRegards,\r\n\r\nContract Management Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet. The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 23, 3, '2013-08-16 09:43:32', '2014-04-04 18:56:12', 'reminder_contract_renewal_email_internal_summary', NULL),
('Subject: Maintenance Contract Within 30 days Expiration Reminder \r\n[timestamp] \r\n\r\nDear PSSE Team, \r\n\r\nThere are [Qty of Contract] contracts would be expired within 30 days. \r\n\r\nPlease review in your Contract Management System and take necessary action.\r\n\r\nRegards,\r\n\r\nContract Management Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet. The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 24, 3, '2013-08-16 09:43:32', '2014-04-04 18:58:20', 'reminder_contract_renewal_email_internal_summary2', NULL),
('Dear Customer,\r\n\r\nCompnet Case ID #: [TicketNo] \r\nCustomer Name: [PartnerName] \r\nCustomer Location: [PartnerLocation] \r\nCaller Name: [CallerName] \r\nCaller Email: [CallerEmail] \r\nCaller Phone: [CallerPhone] \r\nProblem Description: [Problem] \r\nSTATUS: CASE IS DONE\r\n\r\nYour support request has been handled and solved by our engineer [EngineerName]. Please supply this keycode: [KeyCode] to our engineer''s mobile to close your issue.\r\n\r\nShould you have any complaint, do not hesitate to contact our Call Center at +62 21 53650840\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 25, 9, '2013-08-16 09:43:32', '2015-04-13 10:19:10', 'assignment_done_email', NULL),
('Dear Customer, your Case ID [TicketNo] has been solved by [EngineerName] ([EngineerMobileNo]) and the status is Done. Please supply this keycode: [KeyCode] to our engineer''s mobile to close your issue. Thank you for your cooperation. Compnet.', 26, 5, '2013-08-16 09:43:32', '2015-03-23 09:06:35', 'assignment_done_sms', NULL),
('Subject: Regular Visit within 30 days\r\n\r\nDear [PICName],\r\n\r\nIt’s time to schedule Regular Visit for your customer:\r\n1. [ContractNo], [PartnerName], [PartnerLocation], [SLAType], [VisitQty] [VisitInterval], Done: [VisitQtyActual]. Last Regular Visit [TRDate of last visit]\r\n2. ....\r\n\r\n\r\nRegards,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 27, 5, '2013-08-16 09:43:32', '2014-03-06 14:44:09', 'regular_visit_notification_summary_email', NULL),
('There are [Qty of Visit] Regular Visits need to be scheduled within 30 days. Please go to Amatra System and take any necessary action. Thank you for your cooperation.\r\n', 28, 5, '2013-08-16 09:43:32', '2014-03-06 14:50:45', 'regular_visit_notification_sms', NULL),
('Subject: Returning Reminder: Backup Unit at [PartnerLocation] under Contract No [ContractNo]\r\n\r\nDear [PICName],\r\n\r\nWe recognized there are backup units need to be returned from customer:\r\n1. [ItemID], [ItemBatchNo], [PartnerLocation], [BorrowDate], [TicketNo], should be returned on [SolvingDate+ReturningDate]\r\n2. ....\r\n\r\n\r\nRegards,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 29, 5, '2013-08-16 09:43:32', '2014-03-06 14:53:06', 'returning_backup_unit_notification_summary_email', NULL),
('Per [Timestamp], there are [QtyItem to be returned] units at Customer Locations need to be returned. Please review in Amatra System and take any necessary action. Thank you for your cooperation.', 30, 6, '2013-08-16 09:43:32', '2014-03-06 14:52:20', 'returning_backup_unit_notification_detail_sms', NULL),
('yyyy-M-dd kk:mm:ss', 31, 5, '2013-08-16 09:43:32', '2014-09-04 12:47:32', 'datetime_format_java', NULL),
('yyyy-MM-dd HH:mm:ss', 32, 4, '2013-08-16 09:43:32', '2014-07-14 14:21:41', 'datetime_format_js', NULL),
('30', 33, 0, '2013-08-16 09:43:32', '2013-08-16 09:43:32', 'contract_expired', 'days'),
('[Timestamp] Dear [PartnerPICSalutation] [PartnerPICName], your maintenance contract no. [ContractNo] would be expired on [ContractEndDate]. In order to continue to receive our excellent support, please contact pssemtc@compnet.co.id to renew your maintenance contract.', 35, 7, '2013-08-16 09:43:32', '2015-06-03 08:30:02', 'contract_renewal_sms_to_customer', NULL),
('Subject: Maintenance Contract Expiration\r\n\r\nDear PSSE Team,\r\n\r\nBelow list of maintenance contract will be expired within 30 days:\r\n1. [ContractNo], [PartnerName], [PartnerLocation], [PartnerPICName], [PartnerPICMobileNo], [PartnerPICEmail], [SLAType], [ContractEndDate]\r\n2. ......\r\n\r\nRegards, \r\n\r\nContract Management Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 37, 4, '2013-08-16 09:43:32', '2014-04-04 20:00:00', 'reminder_contract_renewal_mail_internal_summary', NULL),
('[timestamp]\r\nThere are [Qty of Contract] contracts would be expired within 30 days. Please review in your Contract Management System and take necessary action.\r\n-Contract Management System-\r\n', 38, 0, '2013-08-16 09:43:32', '2013-08-16 09:43:32', 'reminder_contract_renewal_mail_internal_summary', NULL),
('Subject: End of Maintenance Contract no. [ContractNo]\r\n[Timestamp]\r\nDear [PartnerPICSalutation]  [PartnerPICName],\r\n[PartnerName]\r\n[PartnerAddress]\r\n\r\nThank you for your trust and confidence in Compnet to provide excellent support for your company.\r\nWe inform you that your Maintenance Contract: [ContractNo] has been expired since [ContractEndDate] and today is your last chance to renew your contract\r\n\r\n\r\nWe recommend that you confirm your renewal today to continue to receive our excellent support.\r\n\r\nDo not hesitate to contact our technical consultant: pssemtc@compnet.co.id to renew your maintenance contract.\r\n\r\n\r\nRegards, \r\n\r\nContract Management Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 39, 10, '2013-08-16 09:43:32', '2015-07-28 07:39:36', 'notification_end_of_contract_email_customer', NULL),
('Subject: Termination of Contract\r\n[Timestamp]\r\nDear [PICName],\r\nBelow list of maintenance contract which has been expired today:\r\n\r\n[contractList]\r\n\r\nRegards, \r\n\r\nContract Management Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 40, 5, '2013-08-16 09:43:32', '2014-03-10 21:54:47', 'notif_of_termination_of_contract_email_internal_summary', NULL),
('10', 41, 0, '2013-08-16 09:43:32', '2013-08-16 09:43:32', 'repeat_reminder_for_contract_period', NULL),
('60000', 43, 14, '2013-08-18 00:00:00', '2014-06-13 15:50:26', 'sendmail_interval', 'ms'),
('60000000', 44, 3, '2013-08-18 00:00:00', '2014-06-02 12:15:30', 'contract_expiration_interval', NULL),
('90', 45, 2, '2013-08-23 16:45:21', '2015-07-01 10:18:11', 'contract_reminder_days_1', 'days'),
('60', 46, 2, '2013-08-23 16:45:38', '2015-07-01 10:18:11', 'contract_reminder_days_2', 'days'),
('30', 47, 2, '2013-08-23 16:45:54', '2015-07-01 10:18:11', 'contract_reminder_days_3', 'days'),
('15', 48, 2, '2013-08-23 16:46:33', '2015-07-01 10:18:11', 'contract_reminder_period_1', 'days '),
('15', 49, 2, '2013-08-23 16:46:46', '2015-07-01 10:18:11', 'contract_reminder_period_2', 'days'),
('15', 50, 4, '2013-08-23 16:47:03', '2015-07-01 10:18:11', 'contract_reminder_period_3', 'days '),
('-', 51, 6, '2013-09-06 16:20:58', '2015-03-02 13:12:16', 'batch_number_separator', NULL),
('batch', 52, 3, '2013-10-01 14:59:48', '2013-10-08 04:14:38', 'scanning_item_method', NULL),
('priority', 55, 2, '2013-10-08 00:00:00', '2014-02-11 09:03:44', 'call_response_escalation_method', NULL),
('priority', 56, 1, '2013-10-08 00:00:00', '2013-10-08 04:31:16', 'onsite_response_escalation_method', NULL),
('priority', 57, 1, '2013-07-31 06:12:46', '2013-10-08 04:31:27', 'resolution_escalation_method', NULL),
('5', 58, 1, '2013-07-31 06:12:46', '2013-10-08 05:24:38', 'default_dummy_contract_valid_period', NULL),
('1', 59, 0, '2013-07-31 06:12:46', '2013-08-13 04:22:19', 'default_sla', NULL),
('CO - Contract', 60, 1, '2013-07-31 06:12:46', '2013-10-08 05:24:27', 'default_dummy_contract_trgroup', NULL),
('600000', 61, 2, '2013-07-31 06:12:46', '2014-02-20 07:59:54', 'escalateInterval', 'ms'),
('MIDDLE', 62, 0, '2013-10-20 20:52:17', '2013-10-20 20:52:17', 'default_priority', NULL),
('1', 63, 0, '2013-11-06 05:32:38', '2013-11-06 05:32:38', 'item_temporary_reminder', NULL),
('amatra.smanggin@gmail.com', 64, 1, '2013-11-06 05:32:38', '2016-02-12 22:45:55', 'mail_default_from', NULL),
('86400000', 65, 0, '2013-11-06 05:32:38', '2013-11-06 05:32:38', 'regularVisitCreateInterval', NULL),
('anton.subekti@compnet.co.id', 66, 2, '2013-11-06 05:32:38', '2014-04-04 14:21:02', 'item_temporary_reminder_receiver', NULL),
('set appSetting issues_call_response_summary_email for summary of escalation call response message ', 67, 0, '2013-11-06 05:32:38', '2013-11-06 05:32:38', 'issues_call_response_summary_email', NULL),
('Subject: Escalation Call Response Time\r\n\r\nDear Manager/Supervisor,\r\n\r\nCustomer: [PartnerName]\r\nLocation: [PartnerLocation]\r\nPIC: [PartnerPICName]\r\nSLA: [SLAType]\r\nReported an issue which has not responded by your team, with detail as below:\r\n\r\nTicket No.: [TicketNo]\r\nPriority: [Priority]\r\nProblem: [Problem]\r\nRunning Time: [RunningTime]\r\nResponse Call SLA: [CallResponseTime]\r\n\r\nRuning Time : [RunningTime]\r\n\r\nEngineer who responsible for the ticket is [EngineerName] ([EngineerMobileNo])\r\nPlease remind the engineer to call the customer. Thank you for your kind attention.\r\n\r\n\r\nRegards, \r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 68, 15, '2013-11-06 05:32:39', '2015-05-08 13:58:08', 'issues_call_response_detail_email', NULL),
('1', 69, 1, '2013-11-06 05:32:39', '2013-11-19 09:11:16', 'contract_internal_reminder_send_period', NULL),
('2015-05-12 24:00:00', 70, 293, '2013-11-06 05:32:39', '2015-05-12 01:18:08', 'contract_internal_reminder_last_sent', NULL),
('pssemtc@compnet.co.id', 71, 3, '2013-11-13 17:50:34', '2014-04-07 09:35:20', 'contract_internal_reminder_receiver_email', NULL),
('amatra.smanggin@mail.com', 72, 2, '2013-11-13 17:50:34', '2016-02-12 22:44:26', 'contract_internal_reminder_sender_email', NULL),
('Subject: Maintenance Contract no. [ContractNo] Has Been Renewed [Timestamp] \r\n\r\nDear [PartnerPICSalutation] [PartnerPICName],\r\n\r\nThank you for your trust and confidence in Compnet to provide excellent support for your company. We glad to inform you that your Maintenance Contract: [ContractNo] has been renewal.\r\n\r\nYour company will receive our excellent support between [ContractStartDate] and [ContractEndDate]. Don''t hesitate to contact our call center: 62 21  53650840 or by email at support@compnet.co.id to get our support.\r\n\r\n\r\nRegards, \r\n\r\nContract Management Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 73, 6, '2013-11-14 11:34:46', '2015-07-28 07:48:15', 'contract_has_renewal_email', NULL),
('Dear [PartnerPICSalutation]. [PartnerPICName],\r\n\r\nSubject: Termination of Maintenance Contract no. [ContractNo]\r\n\r\nThank you for your trust and confidence in Compnet to provide excellent support for your company. We regret to inform you that your Maintenance Contract: [ContractNo] has been terminated. Because [Notes]\r\n\r\n\r\nRegards, \r\n\r\nContract Management Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 74, 5, '2013-11-14 11:37:31', '2014-04-05 09:39:27', 'contract_termination_email', NULL),
('AIzaSyAqwbCchvGU6h1iIXzOFSOddp80TuKLURU', 75, 0, '2013-11-23 10:06:22', '2013-11-23 10:06:22', 'gcm_api_key', NULL),
('set appSetting issues_onsite_response_summary_email for summary of escalation call response message ', 76, 0, '2013-11-24 18:44:54', '2013-11-24 18:44:54', 'issues_onsite_response_summary_email', NULL),
('Subject: Escalation Onsite Response Time\r\n\r\nDear Manager/Supervisor,\r\n\r\nCustomer: [PartnerName]\r\nLocation: [PartnerLocation]\r\nPIC: [PartnerPICName]\r\nSLA: [SLAType]\r\nReported an issue which has not visited by your team, with detail as below:\r\n\r\nTicket No.: [TicketNo]\r\nPriority: [Priority]\r\nProblem: [Problem]\r\nRunning Time: [RunningTime]\r\nOnsite SLA: [OnsiteResponseTime]\r\n\r\nIt seems [EngineerName] ([EngineerMobileNo]) has not arrived at customer.\r\nPlease contact your engineer to ask their location. Thank you for your kind attention.\r\n\r\n\r\nRegards, \r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 77, 9, '2013-11-24 18:44:54', '2014-11-20 19:10:44', 'issues_onsite_response_detail_email', NULL),
('Subject: Escalation Solving Response Time\r\n\r\nDear Manager/Supervisor, \r\n\r\nCurrently there are outstanding issues awaiting for escalation.\r\n\r\nCustomer: [PartnerName]\r\nLocation: [PartnerLocation]\r\nPIC: [PartnerPICName]\r\nSLA: [SLAType]\r\nReported an issue which has not solved by your team, with detail as below:\r\n\r\nTicket No.: [TicketNo]\r\nPriority: [Priority]\r\nProblem: [Problem]\r\nRunning Time: [RunningTime]\r\nSolving SLA: [SolvingTime]\r\nDeadline: [Deadline]\r\n\r\nPlease escalate [EngineerName] ([EngineerMobileNo]) to provide best solution to Customer''s Request. Thank you for your kind attention.\r\n\r\n\r\nRegards, \r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 78, 13, '2013-11-24 18:44:54', '2015-05-29 15:56:29', 'issues_solving_response_detail_email', NULL),
('supervisor', 79, 3, '2013-12-26 21:32:27', '2016-02-12 22:42:38', 'default_supervisor_non_sla', NULL),
('supervisor', 80, 3, '2013-12-26 21:32:28', '2016-02-12 22:42:38', 'default_supervisor_non_customer', NULL),
('supervisor', 81, 5, '2013-12-26 21:32:28', '2016-02-12 22:42:38', 'default_supervisor_non_contract', NULL),
('Dear Customer,\r\n\r\nCase ID #:  [TicketNo]\r\nCustomer Name: [PartnerName] \r\nCustomer Location: [PartnerLocation] \r\nCaller Name: [CallerName] \r\nCaller Email: [CallerEmail] \r\nCaller Phone: [CallerPhone] \r\nProblem Description: [Problem]\r\nSTATUS: CASE IS CLOSED\r\n\r\nThank you for your trust and confidence in Compnet to provide excellent support for your company.\r\n\r\nIf you have any concerns regarding the closing of the support request in our systems, please do not hesitate to contact our call center: +62 21  53650840\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 82, 9, '2013-12-30 11:09:13', '2016-02-12 22:40:03', 'mo_close_email', NULL),
('username', 83, 0, '2013-12-31 10:44:00', '2013-12-31 10:44:08', 'last_login', NULL),
('mtcm.compnet.co.id:8080', 84, 0, '2013-12-31 10:44:00', '2013-12-31 10:44:08', 'last_server', NULL),
('Dear [customer], your keyCode [item] for Sales Order Thank you', 87, 1, '2014-01-06 09:35:36', '2014-02-12 16:27:46', 'dn_confirmation_email', NULL),
('Dear [customer], your keyCode [KeyCode] for Sales Order [item] Thank you', 88, 1, '2014-01-06 09:35:36', '2014-02-12 16:28:24', 'so_confirmation_email', NULL),
('300000', 89, 2, '2014-01-08 13:50:55', '2014-04-29 13:37:20', 'refresh_interval', 'milisecond'),
('Dear Engineer,\r\n\r\nYour order has rejected by supervisor\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 90, 3, '2014-02-10 11:25:31', '2014-04-07 08:39:27', 'order_reject_email', NULL),
('Dear Engineer,\r\n\r\nYour order has approved by supervisor\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 91, 2, '2014-02-12 13:08:09', '2014-04-07 08:39:10', 'order_approve_email', NULL),
('never', 92, 0, '2014-02-12 13:08:09', '2014-02-12 13:08:09', 'batch_refresh_running_no', NULL),
('0', 93, 0, '2014-02-12 13:08:09', '2014-02-12 13:08:09', 'batch_running_no', NULL),
('Case ID # [TicketNo]: Handling of your request', 94, 1, '2014-02-13 00:00:00', '2014-02-17 15:08:42', 'assignment_to_handle_issue_to_customer_email_subject', ''),
('Preventive Maintenance: Assignment Regular Visit', 95, 1, '2014-02-13 00:00:00', '2014-03-06 13:59:55', 'assignment_regular_visit_to_customer_by_email_subject', NULL),
('Case ID # [TicketNo]: Confirmation of your request', 96, 1, '2014-02-13 00:00:00', '2014-02-17 15:08:42', 'assignment_done_email_subject', ''),
('Subject Assignment Done', 97, 0, '2014-02-13 00:00:00', '2014-02-13 00:00:00', 'assignment_done_email_subject', ''),
('Preventive Maintenance: Completing Regular Visit', 98, 1, '2014-02-13 00:00:00', '2014-03-06 14:01:56', 'preventive_assignment_done_email_subject', NULL),
('Dear Customer,\r\n\r\nWe are just finishing Preventive Maintenance Data Collection. It''ll be reported and send to you as a PM Report Documentation. \r\n\r\nThank you for your trust and confidence in Compnet to provide excellent support for your company.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 99, 4, '2014-02-13 00:00:00', '2016-02-12 22:41:52', 'preventive_assignment_done_email', NULL),
('Dear Customer, your Preventive Maintenance has been finished by [EngineerName] and the status is Done. Thank you for your cooperation.', 100, 1, '2014-02-13 00:00:00', '2014-03-06 13:57:32', 'preventive_assignment_done_sms', NULL),
('Dear Partner\r\n\r\nYour Contract has been merge\r\n\r\nYours sincerely,\r\n\r\nContract Management Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 101, 4, '2014-03-05 11:15:58', '2014-04-07 08:38:16', 'contract_merger_email', NULL),
('Dear Supervisor,\r\n\r\nCompnet Case ID #: [TicketNo]\r\nSTATUS: Reschedule Accepted\r\n\r\nOur engineer [EngineerName] ([EngineerMobileNo]) will visit you shortly for Corrective Maintenance.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet. The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 102, 1, '2014-04-23 09:07:22', '2014-04-29 13:36:44', 'assignment_preventive_reschedule_accepted_email', NULL),
('Dear Customer,\r\n\r\nCompnet Case ID #: [TicketNo]\r\nCustomer Name: [PartnerName]\r\nCustomer Location: [PartnerLocation]\r\nCaller Name: [CallerName]\r\nCaller Email: [CallerEmail]\r\nCaller Phone: [CallerPhone]\r\nProblem Description: [Problem]\r\nSTATUS: Rescheduled Accepted\r\n\r\nThis ticket has been rescheduled. Our engineer [EngineerName] ([EngineerMobileNo]) will visit you shortly for Corrective Maintenance.\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet. The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 103, 1, '2014-05-21 19:26:57', '2016-01-27 14:33:59', 'assignment_reschedule_accepted_email', NULL),
('Case ID # [TicketNo]: Completing your request', 104, 1, '2014-08-06 10:01:00', '2014-08-07 08:28:14', 'mo_close_email_subject', NULL),
('Case ID # [TicketNo]: Record your request', 105, 1, '2014-08-06 10:01:34', '2014-08-07 08:26:06', 'issues_received_email_subject', NULL),
('5', 106, 2, '2014-08-06 10:01:54', '2014-08-13 07:41:07', 'material_request_approver_1 ', NULL),
('set appSetting email_notif_for_operator for detail of issue received message ', 107, 0, '2014-12-15 08:25:25', '2014-12-15 08:25:25', 'email_notif_for_operator', NULL),
('Case ID # [TicketNo]: Has been rescheduled', 108, 1, '2015-01-07 09:09:52', '2016-01-27 14:28:35', 'assignment_reschedule_accepted_email_subject', NULL),
('set app_setting assignment_preventive_reschedule_accepted_email_subject', 109, 0, '2015-02-10 09:27:35', '2015-02-10 09:27:35', 'assignment_preventive_reschedule_accepted_email_subject', NULL),
(',null,null,null,null,null,null,null,null,00000000000000e0,7845c4c7953a,70188b12c149,null,null,70188b12c149,00000000000000e0,00000000000000e0,00000000000000e0,null,null,null,null,null,null,null,null,null,null,null,null', 110, 31, '2015-02-26 13:10:32', '2016-02-22 12:47:49', 'macAddr', NULL),
('005056a439e3,null', 111, 0, '2015-02-26 13:10:32', '2015-02-26 13:10:32', 'macAddr', NULL),
('005056a439e3,null', 112, 0, '2015-02-26 13:10:32', '2015-02-26 13:10:32', 'macAddr', NULL),
('005056a439e3,null', 113, 0, '2015-02-26 13:10:32', '2015-02-26 13:10:32', 'macAddr', NULL),
('005056a439e3,null', 114, 0, '2015-02-26 13:10:32', '2015-02-26 13:10:32', 'macAddr', NULL),
('7845c4c7953a', 115, 13, '2015-02-26 13:10:32', '2016-02-12 17:33:26', 'reg_key', NULL),
('005056a439e3', 116, 0, '2015-02-26 13:10:32', '2015-02-26 13:10:32', 'reg_key', NULL),
('2ab0ef5d68c213630fd280bda0b576af', 117, 2, '2015-02-26 00:00:00', '2015-02-26 13:17:45', 'active_key', NULL),
('Test', 119, 0, '2015-03-30 00:00:00', '2015-03-30 00:00:00', 'email_lt_temp_to_creator', NULL),
('Dear Manager/Supervisor, Customer: [PartnerName] Location: [PartnerLocation] PIC: [PartnerPICName] SLA: [SLAType] Reported an issue which has not visited by your team, with detail as below: Ticket No.: [TicketNo] Priority: [Priority] Problem: [Problem] Running Time: [RunningTime] Onsite SLA: [OnsiteResponseTime] It seems [EngineerName] ([EngineerMobileNo]) has not arrived at customer. Please contact your engineer to ask their location. Thank you for your kind attention. Regards, Manage Service PT Nusantara Compnet Integrator -', 120, 0, '2015-05-08 13:53:55', '2015-05-08 13:53:55', 'issues_onsite_response_detail_sms', NULL),
('Dear Manager/Supervisor, Customer: [PartnerName] Location: [PartnerLocation] PIC: [PartnerPICName] SLA: [SLAType] Reported an issue which has not responded by your team, with detail as below: Ticket No.: [TicketNo] Priority: [Priority] Problem: [Problem] Running Time: [RunningTime] Response Call SLA: [CallResponseTime] Engineer who responsible for the ticket is [EngineerName] ([EngineerMobileNo]) Please remind the engineer to call the customer. Thank you for your kind attention. Regards, Manage Service PT Nusantara Compnet Integrator \r\n', 121, 0, '2015-05-08 13:54:47', '2015-05-08 13:54:47', 'issues_call_response_detail_sms', NULL),
('Dear Manager/Supervisor, Currently there are outstanding issues awaiting for escalation in [Deadline] left. Customer: [PartnerName] Location: [PartnerLocation] PIC: [PartnerPICName] SLA: [SLAType] Reported an issue which has not solved by your team, with detail as below: Ticket No.: [TicketNo] Priority: [Priority] Problem: [Problem] Running Time: [RunningTime] Solving SLA: [SolvingTime] Deadline: [Deadline] Please escalate [EngineerName] ([EngineerMobileNo]) to provide best solution to Customer''s Request. Thank you for your kind attention. Regards, Manage Service PT Nusantara Compnet Integrator -\r\n', 122, 0, '2015-05-08 13:55:30', '2015-05-08 13:55:30', 'issues_solving_response_detail_sms', NULL),
('Dear Customer, Case ID #: [TicketNo] Customer Name: [PartnerName] Customer Location: [PartnerLocation] Caller Name: [CallerName] Caller Email: [CallerEmail] Caller Phone: [CallerPhone] Problem Description: [Problem] STATUS: CASE IS CLOSED Thank you for your trust and confidence in Compnet to provide excellent support for your company.', 123, 2, '2015-07-01 17:30:20', '2016-02-12 22:40:03', 'mo_close_sms', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` bigint(20) NOT NULL,
  `accepted_date` datetime DEFAULT NULL,
  `actual_date_end` datetime DEFAULT NULL,
  `actual_date_start` datetime DEFAULT NULL,
  `assign_date` datetime DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `engineer_id` bigint(20) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `latitude` float(10,7) DEFAULT NULL,
  `longitude` float(10,7) DEFAULT NULL,
  `maintenance_order_id` bigint(20) DEFAULT NULL,
  `plan_date_end` datetime DEFAULT NULL,
  `plan_date_start` datetime DEFAULT NULL,
  `reject_notes` varchar(255) DEFAULT NULL,
  `reschedule_notes` varchar(255) DEFAULT NULL,
  `solution` longtext,
  `state` varchar(50) DEFAULT NULL,
  `prev_engineer_id` bigint(20) DEFAULT NULL,
  `contract_item_id` bigint(20) DEFAULT NULL,
  `transaction_group_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT '0',
  `notes` varchar(255) DEFAULT NULL,
  `trigger_doc_class` varchar(255) DEFAULT NULL,
  `trigger_doc_id` bigint(20) DEFAULT NULL,
  `assignment_type_id` bigint(20) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `contract_id` bigint(20) DEFAULT NULL,
  `ref_number` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `approver_id` bigint(20) DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  `is_sent` int(11) DEFAULT NULL,
  `checkin_time` datetime DEFAULT NULL,
  `checkout_time` datetime DEFAULT NULL,
  `close_time` datetime DEFAULT NULL,
  `done_time` datetime DEFAULT NULL,
  `open_time` datetime DEFAULT NULL,
  `checkin_notes` varchar(255) DEFAULT NULL,
  `problem_management_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id`, `accepted_date`, `actual_date_end`, `actual_date_start`, `assign_date`, `date_created`, `engineer_id`, `last_updated`, `latitude`, `longitude`, `maintenance_order_id`, `plan_date_end`, `plan_date_start`, `reject_notes`, `reschedule_notes`, `solution`, `state`, `prev_engineer_id`, `contract_item_id`, `transaction_group_id`, `version`, `notes`, `trigger_doc_class`, `trigger_doc_id`, `assignment_type_id`, `number`, `contract_id`, `ref_number`, `created_by_id`, `approver_id`, `partner_id`, `is_sent`, `checkin_time`, `checkout_time`, `close_time`, `done_time`, `open_time`, `checkin_notes`, `problem_management_id`) VALUES
(15202, '2016-02-12 17:50:47', '2016-02-12 17:50:57', '2016-02-12 17:50:50', '2016-02-12 17:50:18', '2016-02-12 17:50:18', 222, '2016-02-12 17:50:57', 0.0000000, 0.0000000, 3762, '2016-02-12 21:49:00', '2016-02-12 17:49:27', NULL, NULL, 'sudah', 'Closed', NULL, 21523, 8, 5, NULL, NULL, NULL, NULL, 'AS1/1602/00001', NULL, NULL, 120, 250, NULL, NULL, '2016-02-12 17:50:50', NULL, NULL, '2016-02-12 17:50:57', '2016-02-12 17:50:18', '', NULL),
(15203, '2016-02-12 23:25:48', '2016-02-16 11:57:02', '2016-02-12 23:26:45', '2016-02-12 23:25:27', '2016-02-12 23:25:27', 223, '2016-02-16 11:57:25', -6.1856604, 106.7912674, 3764, '2016-02-13 03:25:55', '2016-02-12 23:25:55', NULL, NULL, 'sudah', 'Closed', NULL, 21523, 8, 8, NULL, NULL, NULL, NULL, 'AS1/1602/00002', NULL, NULL, 120, 250, NULL, NULL, '2016-02-16 11:56:47', '2016-02-12 23:26:58', NULL, '2016-02-16 11:57:02', '2016-02-12 23:25:26', '', NULL),
(15204, '2016-02-15 14:30:55', NULL, '2016-02-15 14:33:00', '2016-02-15 14:27:01', '2016-02-15 14:27:01', 222, '2016-02-15 16:53:43', -6.1856604, 106.7912674, 3768, '2016-02-15 18:23:00', '2016-02-15 14:23:45', NULL, NULL, 'restart', 'Closed', NULL, 21523, 8, 7, NULL, NULL, NULL, NULL, 'AS1/1602/00003', NULL, NULL, 120, 250, NULL, NULL, '2016-02-15 14:35:15', '2016-02-15 14:34:25', NULL, NULL, '2016-02-15 14:27:01', 'sampai kantor', NULL),
(15205, '2016-02-16 08:01:45', '2016-02-16 11:55:30', '2016-02-16 08:04:07', '2016-02-16 08:00:00', '2016-02-16 08:00:00', 223, '2016-02-16 11:55:59', -6.1856604, 106.7912674, 3771, '2016-02-17 07:54:00', '2016-02-16 07:54:37', NULL, NULL, 'sudah', 'Closed', NULL, 21528, 8, 6, NULL, NULL, NULL, NULL, 'AS1/1602/00004', NULL, NULL, 120, 250, NULL, NULL, '2016-02-16 08:04:07', NULL, NULL, '2016-02-16 11:55:30', '2016-02-16 08:00:00', 'sampai dilokasi', NULL),
(15206, NULL, NULL, NULL, '2016-02-16 08:20:06', '2016-02-16 08:18:11', 222, '2016-02-16 11:55:59', 0.0000000, 0.0000000, 3771, '2016-02-17 07:54:00', '2016-02-16 07:54:37', NULL, NULL, 'ganti device', 'Closed', NULL, 21528, 8, 8, 'help', NULL, NULL, NULL, 'AS1/1602/00005', NULL, 'AS1/1602/00004', 251, 250, NULL, 1, NULL, NULL, NULL, NULL, '2016-02-16 08:20:06', 'sampai dilokasi', NULL),
(15207, '2016-02-16 11:57:33', '2016-02-16 11:57:52', '2016-02-16 11:57:40', '2016-02-16 08:31:08', '2016-02-16 08:31:08', 223, '2016-02-16 11:58:37', -6.1856604, 106.7912674, 3774, '2016-02-16 12:29:00', '2016-02-16 08:29:31', NULL, NULL, 'sudah', 'Closed', NULL, 21528, 8, 5, NULL, NULL, NULL, NULL, 'AS1/1602/00006', NULL, NULL, 120, 250, NULL, NULL, '2016-02-16 11:57:40', NULL, NULL, '2016-02-16 11:57:52', '2016-02-16 08:31:08', '', NULL),
(15208, '2016-02-16 12:13:16', '2016-02-16 12:17:32', '2016-02-16 12:13:26', '2016-02-16 12:09:39', '2016-02-16 12:09:39', 223, '2016-02-16 12:20:33', -6.1856604, 106.7912674, 3778, '2016-02-16 16:08:00', '2016-02-16 12:08:28', NULL, NULL, 'sudah', 'Closed', NULL, 21528, 8, 7, 'sudah', NULL, NULL, NULL, 'AS1/1602/00007', NULL, NULL, 120, 250, NULL, NULL, '2016-02-16 12:15:25', '2016-02-16 12:13:44', NULL, '2016-02-16 12:17:32', '2016-02-16 12:09:39', 'sudah', NULL),
(15209, '2016-02-16 14:20:52', '2016-02-16 14:27:23', '2016-02-16 14:21:21', '2016-02-16 14:16:32', '2016-02-16 14:16:32', 223, '2016-02-16 14:28:39', -6.1946187, 106.8205566, 3782, '2016-02-16 18:11:47', '2016-02-16 14:11:47', NULL, NULL, 'sudah selesai', 'Closed', NULL, 21528, 8, 8, 'makan siang', NULL, NULL, NULL, 'AS1/1602/00008', NULL, NULL, 120, 250, NULL, NULL, '2016-02-16 14:26:45', '2016-02-16 14:26:13', NULL, '2016-02-16 14:27:23', '2016-02-16 14:16:32', 'sudah selesai makan', NULL),
(15210, NULL, NULL, NULL, NULL, '2016-02-16 14:23:33', NULL, '2016-02-16 14:28:39', -6.1946201, 106.8209991, 3782, '2016-02-16 18:11:47', '2016-02-16 14:11:47', NULL, NULL, NULL, 'Closed', NULL, 21528, 8, 1, 'butuh bantuan engineer lain', NULL, NULL, NULL, 'AS1/1602/00009', NULL, 'AS1/1602/00008', 251, 250, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'sampai dilokasi', NULL),
(15211, '2016-02-18 08:59:15', NULL, '2016-02-18 08:59:23', '2016-02-18 08:57:36', '2016-02-18 08:57:36', 224, '2016-02-18 08:59:23', -6.1895332, 106.7917786, 3786, '2016-02-18 10:56:00', '2016-02-18 05:56:30', NULL, NULL, NULL, 'On Progress', NULL, 21532, 8, 2, NULL, NULL, NULL, NULL, 'AS1/1602/00010', NULL, NULL, 120, 250, NULL, NULL, '2016-02-18 08:59:23', NULL, NULL, NULL, '2016-02-18 08:57:36', '', NULL),
(15212, '2016-02-18 09:18:57', NULL, '2016-02-18 09:19:03', '2016-02-18 09:18:36', '2016-02-18 09:18:36', 223, '2016-02-18 09:19:03', -6.1899943, 106.8586807, 3788, '2016-02-18 11:17:00', '2016-02-18 09:17:43', NULL, NULL, NULL, 'On Progress', NULL, 21533, 8, 2, NULL, NULL, NULL, NULL, 'AS1/1602/00011', NULL, NULL, 120, 250, NULL, NULL, '2016-02-18 09:19:03', NULL, NULL, NULL, '2016-02-18 09:18:36', '', NULL),
(15213, '2016-02-18 11:08:03', '2016-02-18 11:27:56', '2016-02-18 11:15:11', '2016-02-18 11:06:20', '2016-02-18 11:06:20', 222, '2016-02-18 11:31:31', -6.1769214, 106.7912598, 3790, '2016-02-18 15:02:27', '2016-02-18 11:02:27', NULL, NULL, 'sudah selesai ganti item', 'Closed', NULL, 21533, 8, 6, NULL, NULL, NULL, NULL, 'AS1/1602/00012', NULL, NULL, 120, 250, NULL, NULL, '2016-02-18 11:15:11', NULL, NULL, '2016-02-18 11:27:56', '2016-02-18 11:06:20', 'sudah sampai', NULL),
(15214, NULL, NULL, NULL, NULL, '2016-02-18 11:18:55', NULL, '2016-02-18 11:31:31', -6.1769199, 106.7910004, 3790, '2016-02-18 15:02:27', '2016-02-18 11:02:27', NULL, NULL, NULL, 'Closed', NULL, 21533, 8, 1, 'butuh bantuan engineer lain', NULL, NULL, NULL, 'AS1/1602/00013', NULL, 'AS1/1602/00012', 249, 250, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'sudah sampai', NULL),
(15215, NULL, NULL, NULL, '2016-02-18 14:21:16', '2016-02-18 14:21:16', 222, '2016-02-18 14:21:16', NULL, NULL, 3791, '2016-02-18 18:17:00', '2016-02-18 14:17:18', NULL, NULL, NULL, 'Pending Assign', NULL, 21524, 8, 0, NULL, NULL, NULL, NULL, 'AS1/1602/00014', NULL, NULL, 120, 250, NULL, NULL, NULL, NULL, NULL, NULL, '2016-02-18 14:21:16', NULL, NULL),
(15216, '2016-02-29 09:59:06', '2016-02-29 10:00:03', '2016-02-29 09:59:10', '2016-02-29 09:58:38', '2016-02-29 09:58:38', 222, '2016-02-29 10:00:04', 36.5749855, -95.7656326, 3792, '2016-03-01 09:57:00', '2016-02-29 09:57:22', NULL, NULL, 'sudah', 'Done', NULL, 21524, 8, 4, NULL, NULL, NULL, NULL, 'AS1/1602/00015', NULL, NULL, 120, 250, NULL, NULL, '2016-02-29 09:59:10', NULL, NULL, '2016-02-29 10:00:03', '2016-02-29 09:58:38', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assignment_activity_time`
--

CREATE TABLE `assignment_activity_time` (
  `assignment_activity_times_id` bigint(20) DEFAULT NULL,
  `activity_time_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_minute_of_meeting_additional_value`
--

CREATE TABLE `assignment_minute_of_meeting_additional_value` (
  `assignment_minute_of_meeting_additional_values_id` bigint(20) DEFAULT NULL,
  `minute_of_meeting_additional_value_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_type`
--

CREATE TABLE `assignment_type` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment_type`
--

INSERT INTO `assignment_type` (`id`, `date_created`, `last_updated`, `name`, `version`) VALUES
(1, '2013-12-26 00:00:00', '2013-12-26 00:00:00', 'Meeting', 0),
(2, '2013-12-26 00:00:00', '2013-12-26 00:00:00', 'Site Survey', 0),
(3, '2013-12-26 00:00:00', '2013-12-26 00:00:00', 'Create Report', 0),
(4, '2014-06-19 00:00:00', '2014-06-19 00:00:00', 'Training', 0),
(5, '2014-10-16 11:21:00', '2014-10-16 11:21:00', 'Implementation', 0),
(6, '2014-10-16 11:21:00', '2014-10-16 11:21:00', 'Audit', 0),
(7, '2014-10-16 11:21:00', '2014-10-16 11:21:00', 'Assessment', 0),
(8, '2014-10-21 09:34:00', '2014-10-21 09:34:00', 'Preventive Maintenance', 0),
(9, '2015-05-20 10:05:00', '2015-05-20 10:05:00', 'Corrective Maintenance', 0),
(10, '2015-05-20 10:05:00', '2015-05-20 10:05:00', 'Replace Barang', 0),
(11, '2015-05-20 10:05:00', '2015-05-20 10:05:00', 'Check Barang', 0),
(12, '2015-05-20 10:05:00', '2015-05-20 10:05:00', 'Exam', 0),
(13, '2015-05-20 10:05:00', '2015-05-20 10:05:00', 'Standby Onsite', 0),
(14, '2015-05-20 10:05:00', '2015-05-20 10:05:00', 'NgeLab (Demo/Simulasi)', 0),
(15, '2015-05-20 10:05:00', '2015-05-20 10:05:00', 'Pre Sales', 0);

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `id` bigint(20) NOT NULL,
  `assignment_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `file_name` varchar(225) DEFAULT NULL,
  `file_types_id` bigint(20) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `sales_order_id` bigint(20) DEFAULT NULL,
  `transfer_id` bigint(20) DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attachment`
--

INSERT INTO `attachment` (`id`, `assignment_id`, `date_created`, `file_name`, `file_types_id`, `last_updated`, `sales_order_id`, `transfer_id`, `version`, `notes`) VALUES
(1, 15204, '2016-02-15 16:53:43', 'AS1_1602_00003_2016-02-15_16_53_20.jpg', 1, '2016-02-15 16:53:43', NULL, NULL, 0, NULL),
(2, 15204, '2016-02-15 16:53:43', 'AS1_1602_00003_2016-02-15_16_38_09.jpg', 1, '2016-02-15 16:53:43', NULL, NULL, 0, NULL),
(3, 15204, '2016-02-15 16:53:43', 'AS1_1602_00003_2016-02-15_16_43_39.jpg', 1, '2016-02-15 16:53:43', NULL, NULL, 0, NULL),
(4, 15204, '2016-02-15 16:53:43', 'AS1_1602_00003_2016-02-15_16_37_13.jpg', 1, '2016-02-15 16:53:43', NULL, NULL, 0, NULL),
(5, 15205, '2016-02-16 08:21:14', 'AS1_1602_00004_2016-02-16_08_20_50.jpg', 1, '2016-02-16 08:21:14', NULL, NULL, 0, NULL),
(6, 15209, '2016-02-16 14:24:58', 'AS1_1602_00008_2016-02-16_14_24_33.jpg', 1, '2016-02-16 14:24:58', NULL, NULL, 0, NULL),
(7, 15213, '2016-02-18 11:18:11', 'AS1_1602_00012_2016-02-18_11_17_46.jpg', 1, '2016-02-18 11:18:11', NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `audit_log`
--

CREATE TABLE `audit_log` (
  `id` bigint(20) NOT NULL,
  `actor` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `new_value` varchar(255) DEFAULT NULL,
  `old_value` varchar(255) DEFAULT NULL,
  `persisted_object_id` varchar(255) DEFAULT NULL,
  `persisted_object_version` bigint(20) DEFAULT NULL,
  `property_name` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audit_log`
--

INSERT INTO `audit_log` (`id`, `actor`, `class_name`, `date_created`, `event_name`, `last_updated`, `new_value`, `old_value`, `persisted_object_id`, `persisted_object_version`, `property_name`, `uri`, `version`) VALUES
(142232, 'administrator', 'Partner', '2016-02-12 17:41:26', 'INSERT', '2016-02-12 17:41:26', NULL, NULL, '1240', 0, NULL, NULL, NULL),
(142233, 'administrator', 'Contract', '2016-02-12 17:43:21', 'INSERT', '2016-02-12 17:43:21', NULL, NULL, '1499', 0, NULL, NULL, NULL),
(142234, 'administrator', 'ContractItem', '2016-02-12 17:46:21', 'INSERT', '2016-02-12 17:46:21', NULL, NULL, '21523', 0, NULL, NULL, NULL),
(142235, 'administrator', 'Engineer', '2016-02-12 17:49:06', 'INSERT', '2016-02-12 17:49:06', NULL, NULL, '222', 0, NULL, NULL, NULL),
(142236, 'administrator', 'Engineer', '2016-02-12 17:49:13', 'UPDATE', '2016-02-12 17:49:13', '1st Level', 'CE', '222', 0, 'level', NULL, NULL),
(142237, 'operator', 'MaintenanceOrder', '2016-02-12 17:50:18', 'INSERT', '2016-02-12 17:50:18', NULL, NULL, '3762', 0, NULL, NULL, NULL),
(142238, 'operator', 'Assignment', '2016-02-12 17:50:18', 'INSERT', '2016-02-12 17:50:18', NULL, NULL, '15202', 0, NULL, NULL, NULL),
(142239, 'operator', 'Outbox', '2016-02-12 17:50:18', 'INSERT', '2016-02-12 17:50:18', NULL, NULL, '202', NULL, NULL, NULL, NULL),
(142240, 'operator', 'Outbox', '2016-02-12 17:50:18', 'INSERT', '2016-02-12 17:50:18', NULL, NULL, '203', NULL, NULL, NULL, NULL),
(142241, 'operator', 'MaintenanceOrder', '2016-02-12 17:50:21', 'INSERT', '2016-02-12 17:50:21', NULL, NULL, '3763', 0, NULL, NULL, NULL),
(142242, 'system', 'Outbox', '2016-02-12 17:50:26', 'UPDATE', '2016-02-12 17:50:26', '1', NULL, '202', NULL, 'retry', NULL, NULL),
(142243, 'system', 'Outbox', '2016-02-12 17:50:26', 'UPDATE', '2016-02-12 17:50:26', '1', NULL, '202', NULL, 'retry', NULL, NULL),
(142244, 'engineer', 'Outbox', '2016-02-12 17:50:47', 'INSERT', '2016-02-12 17:50:47', NULL, NULL, '204', NULL, NULL, NULL, NULL),
(142245, 'engineer', 'Outbox', '2016-02-12 17:50:47', 'INSERT', '2016-02-12 17:50:47', NULL, NULL, '205', NULL, NULL, NULL, NULL),
(142246, 'engineer', 'Assignment', '2016-02-12 17:50:47', 'UPDATE', '2016-02-12 17:50:47', 'Fri Feb 12 17:50:47 WIT 2016', NULL, '15202', 0, 'acceptedDate', NULL, NULL),
(142247, 'engineer', 'Assignment', '2016-02-12 17:50:47', 'UPDATE', '2016-02-12 17:50:47', 'Accepted', 'Pending Assign', '15202', 0, 'state', NULL, NULL),
(142248, 'engineer', 'Assignment', '2016-02-12 17:50:47', 'UPDATE', '2016-02-12 17:50:47', NULL, NULL, '15202', 1, 'longitude', NULL, NULL),
(142249, 'engineer', 'Assignment', '2016-02-12 17:50:47', 'UPDATE', '2016-02-12 17:50:47', NULL, NULL, '15202', 1, 'latitude', NULL, NULL),
(142250, 'engineer', 'Assignment', '2016-02-12 17:50:50', 'UPDATE', '2016-02-12 17:50:50', NULL, NULL, '15202', 2, 'checkinNotes', NULL, NULL),
(142251, 'engineer', 'Assignment', '2016-02-12 17:50:50', 'UPDATE', '2016-02-12 17:50:50', 'On Progress', 'Accepted', '15202', 2, 'state', NULL, NULL),
(142252, 'engineer', 'Assignment', '2016-02-12 17:50:50', 'UPDATE', '2016-02-12 17:50:50', 'Fri Feb 12 17:50:50 WIT 2016', NULL, '15202', 2, 'checkinTime', NULL, NULL),
(142253, 'engineer', 'Assignment', '2016-02-12 17:50:50', 'UPDATE', '2016-02-12 17:50:50', 'Fri Feb 12 17:50:50 WIT 2016', NULL, '15202', 2, 'actualDateStart', NULL, NULL),
(142254, 'engineer', 'Assignment', '2016-02-12 17:50:56', 'UPDATE', '2016-02-12 17:50:56', 'sudah', NULL, '15202', 3, 'solution', NULL, NULL),
(142255, 'engineer', 'Outbox', '2016-02-12 17:50:57', 'INSERT', '2016-02-12 17:50:57', NULL, NULL, '206', NULL, NULL, NULL, NULL),
(142256, 'engineer', 'Assignment', '2016-02-12 17:50:57', 'UPDATE', '2016-02-12 17:50:57', 'Fri Feb 12 17:50:57 WIT 2016', NULL, '15202', 4, 'doneTime', NULL, NULL),
(142257, 'engineer', 'Assignment', '2016-02-12 17:50:57', 'UPDATE', '2016-02-12 17:50:57', 'Done', 'On Progress', '15202', 4, 'state', NULL, NULL),
(142258, 'engineer', 'Assignment', '2016-02-12 17:50:57', 'UPDATE', '2016-02-12 17:50:57', 'Fri Feb 12 17:50:57 WIT 2016', NULL, '15202', 4, 'actualDateEnd', NULL, NULL),
(142259, 'engineer', 'Outbox', '2016-02-12 17:50:57', 'INSERT', '2016-02-12 17:50:57', NULL, NULL, '207', NULL, NULL, NULL, NULL),
(142260, 'system', 'Outbox', '2016-02-12 17:51:10', 'UPDATE', '2016-02-12 17:51:10', '2', '1', '202', NULL, 'retry', NULL, NULL),
(142261, 'system', 'Outbox', '2016-02-12 17:51:26', 'UPDATE', '2016-02-12 17:51:26', '1', NULL, '204', NULL, 'retry', NULL, NULL),
(142262, 'system', 'Outbox', '2016-02-12 17:51:26', 'UPDATE', '2016-02-12 17:51:26', '2', '1', '204', NULL, 'retry', NULL, NULL),
(142263, 'system', 'Outbox', '2016-02-12 17:52:26', 'UPDATE', '2016-02-12 17:52:26', '1', NULL, '206', NULL, 'retry', NULL, NULL),
(142264, 'system', 'Outbox', '2016-02-12 17:52:26', 'UPDATE', '2016-02-12 17:52:26', '1', NULL, '206', NULL, 'retry', NULL, NULL),
(142265, 'system', 'Outbox', '2016-02-12 22:37:23', 'UPDATE', '2016-02-12 22:37:23', '2', '1', '206', NULL, 'retry', NULL, NULL),
(142266, 'administrator', 'Engineer', '2016-02-12 22:51:55', 'INSERT', '2016-02-12 22:51:55', NULL, NULL, '223', 0, NULL, NULL, NULL),
(142267, 'administrator', 'Engineer', '2016-02-12 23:07:32', 'INSERT', '2016-02-12 23:07:32', NULL, NULL, '224', 0, NULL, NULL, NULL),
(142268, 'operator', 'MaintenanceOrder', '2016-02-12 23:25:26', 'INSERT', '2016-02-12 23:25:26', NULL, NULL, '3764', 0, NULL, NULL, NULL),
(142269, 'operator', 'Assignment', '2016-02-12 23:25:27', 'INSERT', '2016-02-12 23:25:27', NULL, NULL, '15203', 0, NULL, NULL, NULL),
(142270, 'operator', 'Outbox', '2016-02-12 23:25:28', 'INSERT', '2016-02-12 23:25:28', NULL, NULL, '1', NULL, NULL, NULL, NULL),
(142271, 'operator', 'Outbox', '2016-02-12 23:25:28', 'INSERT', '2016-02-12 23:25:28', NULL, NULL, '2', NULL, NULL, NULL, NULL),
(142272, 'engineer2', 'Outbox', '2016-02-12 23:25:48', 'INSERT', '2016-02-12 23:25:48', NULL, NULL, '3', NULL, NULL, NULL, NULL),
(142273, 'engineer2', 'Outbox', '2016-02-12 23:25:48', 'INSERT', '2016-02-12 23:25:48', NULL, NULL, '4', NULL, NULL, NULL, NULL),
(142274, 'engineer2', 'Assignment', '2016-02-12 23:25:49', 'UPDATE', '2016-02-12 23:25:49', 'Fri Feb 12 23:25:48 WIT 2016', NULL, '15203', 0, 'acceptedDate', NULL, NULL),
(142275, 'engineer2', 'Assignment', '2016-02-12 23:25:49', 'UPDATE', '2016-02-12 23:25:49', 'Accepted', 'Pending Assign', '15203', 0, 'state', NULL, NULL),
(142276, 'engineer2', 'Assignment', '2016-02-12 23:25:49', 'UPDATE', '2016-02-12 23:25:49', '106.72057', NULL, '15203', 0, 'longitude', NULL, NULL),
(142277, 'engineer2', 'Assignment', '2016-02-12 23:25:49', 'UPDATE', '2016-02-12 23:25:49', '-6.168087', NULL, '15203', 0, 'latitude', NULL, NULL),
(142278, 'engineer2', 'Assignment', '2016-02-12 23:25:55', 'UPDATE', '2016-02-12 23:25:55', 'Fri Feb 12 23:25:55 WIT 2016', '2016-02-12 23:24:14.0', '15203', 1, 'planDateStart', NULL, NULL),
(142279, 'engineer2', 'Assignment', '2016-02-12 23:25:55', 'UPDATE', '2016-02-12 23:25:55', 'Sat Feb 13 03:25:55 WIT 2016', '2016-02-13 03:24:00.0', '15203', 1, 'planDateEnd', NULL, NULL),
(142280, 'system', 'Outbox', '2016-02-12 23:26:25', 'UPDATE', '2016-02-12 23:26:25', '1', NULL, '1', NULL, 'retry', NULL, NULL),
(142281, 'engineer2', 'Assignment', '2016-02-12 23:26:45', 'UPDATE', '2016-02-12 23:26:45', NULL, NULL, '15203', 2, 'checkinNotes', NULL, NULL),
(142282, 'engineer2', 'Assignment', '2016-02-12 23:26:45', 'UPDATE', '2016-02-12 23:26:45', 'On Progress', 'Accepted', '15203', 2, 'state', NULL, NULL),
(142283, 'engineer2', 'Assignment', '2016-02-12 23:26:45', 'UPDATE', '2016-02-12 23:26:45', 'Fri Feb 12 23:26:45 WIT 2016', NULL, '15203', 2, 'checkinTime', NULL, NULL),
(142284, 'engineer2', 'Assignment', '2016-02-12 23:26:45', 'UPDATE', '2016-02-12 23:26:45', 'Fri Feb 12 23:26:45 WIT 2016', NULL, '15203', 2, 'actualDateStart', NULL, NULL),
(142285, 'engineer2', 'Assignment', '2016-02-12 23:26:45', 'UPDATE', '2016-02-12 23:26:45', '106.72075', '106.72057', '15203', 2, 'longitude', NULL, NULL),
(142286, 'engineer2', 'Assignment', '2016-02-12 23:26:45', 'UPDATE', '2016-02-12 23:26:45', '-6.1682973', '-6.168087', '15203', 2, 'latitude', NULL, NULL),
(142287, 'engineer2', 'Assignment', '2016-02-12 23:26:59', 'UPDATE', '2016-02-12 23:26:59', 'Fri Feb 12 23:26:58 WIT 2016', NULL, '15203', 3, 'checkoutTime', NULL, NULL),
(142288, 'engineer2', 'Assignment', '2016-02-12 23:26:59', 'UPDATE', '2016-02-12 23:26:59', 'Check Out', 'On Progress', '15203', 3, 'state', NULL, NULL),
(142289, 'operator', 'MaintenanceOrder', '2016-02-12 23:27:04', 'INSERT', '2016-02-12 23:27:04', NULL, NULL, '3765', 0, NULL, NULL, NULL),
(142290, 'system', 'Outbox', '2016-02-12 23:27:25', 'UPDATE', '2016-02-12 23:27:25', '2', '1', '1', NULL, 'retry', NULL, NULL),
(142291, 'system', 'Outbox', '2016-02-12 23:28:25', 'UPDATE', '2016-02-12 23:28:25', '1', NULL, '3', NULL, 'retry', NULL, NULL),
(142292, 'system', 'Outbox', '2016-02-12 23:29:25', 'UPDATE', '2016-02-12 23:29:25', '2', '1', '3', NULL, 'retry', NULL, NULL),
(142293, 'operator', 'MaintenanceOrder', '2016-02-12 23:29:40', 'INSERT', '2016-02-12 23:29:40', NULL, NULL, '3766', 0, NULL, NULL, NULL),
(142294, 'operator', 'MaintenanceOrder', '2016-02-12 23:29:50', 'INSERT', '2016-02-12 23:29:50', NULL, NULL, '3767', 0, NULL, NULL, NULL),
(142295, 'administrator', 'MaintenanceOrder', '2016-02-15 09:28:59', 'DELETE', '2016-02-15 09:28:59', NULL, NULL, '3763', 0, NULL, NULL, NULL),
(142296, 'administrator', 'MaintenanceOrder', '2016-02-15 09:29:14', 'DELETE', '2016-02-15 09:29:14', NULL, NULL, '3765', 0, NULL, NULL, NULL),
(142297, 'administrator', 'MaintenanceOrder', '2016-02-15 09:29:29', 'DELETE', '2016-02-15 09:29:29', NULL, NULL, '3767', 0, NULL, NULL, NULL),
(142298, 'administrator', 'MaintenanceOrder', '2016-02-15 09:29:31', 'DELETE', '2016-02-15 09:29:31', NULL, NULL, '3766', 0, NULL, NULL, NULL),
(142299, 'operator', 'MaintenanceOrder', '2016-02-15 14:27:01', 'INSERT', '2016-02-15 14:27:01', NULL, NULL, '3768', 0, NULL, NULL, NULL),
(142300, 'operator', 'Assignment', '2016-02-15 14:27:01', 'INSERT', '2016-02-15 14:27:01', NULL, NULL, '15204', 0, NULL, NULL, NULL),
(142301, 'operator', 'Outbox', '2016-02-15 14:27:07', 'INSERT', '2016-02-15 14:27:07', NULL, NULL, '5', NULL, NULL, NULL, NULL),
(142302, 'operator', 'Outbox', '2016-02-15 14:27:07', 'INSERT', '2016-02-15 14:27:07', NULL, NULL, '6', NULL, NULL, NULL, NULL),
(142303, 'system', 'Outbox', '2016-02-15 14:27:19', 'UPDATE', '2016-02-15 14:27:19', '1', NULL, '5', NULL, 'retry', NULL, NULL),
(142304, 'operator', 'MaintenanceOrder', '2016-02-15 14:27:24', 'INSERT', '2016-02-15 14:27:24', NULL, NULL, '3769', 0, NULL, NULL, NULL),
(142305, 'system', 'Outbox', '2016-02-15 14:28:19', 'UPDATE', '2016-02-15 14:28:19', '2', '1', '5', NULL, 'retry', NULL, NULL),
(142306, 'Engineer', 'Outbox', '2016-02-15 14:30:52', 'INSERT', '2016-02-15 14:30:52', NULL, NULL, '7', NULL, NULL, NULL, NULL),
(142307, 'Engineer', 'Outbox', '2016-02-15 14:30:52', 'INSERT', '2016-02-15 14:30:52', NULL, NULL, '8', NULL, NULL, NULL, NULL),
(142308, 'Engineer', 'Assignment', '2016-02-15 14:30:55', 'UPDATE', '2016-02-15 14:30:55', 'Mon Feb 15 14:30:55 WIT 2016', NULL, '15204', 0, 'acceptedDate', NULL, NULL),
(142309, 'Engineer', 'Assignment', '2016-02-15 14:30:55', 'UPDATE', '2016-02-15 14:30:55', 'Accepted', 'Pending Assign', '15204', 0, 'state', NULL, NULL),
(142310, 'Engineer', 'Assignment', '2016-02-15 14:30:55', 'UPDATE', '2016-02-15 14:30:55', '106.862564', NULL, '15204', 0, 'longitude', NULL, NULL),
(142311, 'Engineer', 'Assignment', '2016-02-15 14:30:55', 'UPDATE', '2016-02-15 14:30:55', '-6.139983', NULL, '15204', 0, 'latitude', NULL, NULL),
(142312, 'system', 'Outbox', '2016-02-15 14:31:19', 'UPDATE', '2016-02-15 14:31:19', '1', NULL, '7', NULL, 'retry', NULL, NULL),
(142313, 'system', 'Outbox', '2016-02-15 14:32:19', 'UPDATE', '2016-02-15 14:32:19', '2', '1', '7', NULL, 'retry', NULL, NULL),
(142314, 'Engineer', 'Assignment', '2016-02-15 14:33:01', 'UPDATE', '2016-02-15 14:33:01', 'sudah sampai dilokasi', NULL, '15204', 1, 'checkinNotes', NULL, NULL),
(142315, 'Engineer', 'Assignment', '2016-02-15 14:33:01', 'UPDATE', '2016-02-15 14:33:01', 'On Progress', 'Accepted', '15204', 1, 'state', NULL, NULL),
(142316, 'Engineer', 'Assignment', '2016-02-15 14:33:01', 'UPDATE', '2016-02-15 14:33:01', 'Mon Feb 15 14:33:00 WIT 2016', NULL, '15204', 1, 'checkinTime', NULL, NULL),
(142317, 'Engineer', 'Assignment', '2016-02-15 14:33:01', 'UPDATE', '2016-02-15 14:33:01', 'Mon Feb 15 14:33:00 WIT 2016', NULL, '15204', 1, 'actualDateStart', NULL, NULL),
(142318, 'Engineer', 'Assignment', '2016-02-15 14:34:25', 'UPDATE', '2016-02-15 14:34:25', 'Mon Feb 15 14:34:25 WIT 2016', NULL, '15204', 2, 'checkoutTime', NULL, NULL),
(142319, 'Engineer', 'Assignment', '2016-02-15 14:34:25', 'UPDATE', '2016-02-15 14:34:25', 'Check Out', 'On Progress', '15204', 2, 'state', NULL, NULL),
(142320, 'Engineer', 'Assignment', '2016-02-15 14:35:15', 'UPDATE', '2016-02-15 14:35:15', 'sampai kantor', 'sudah sampai dilokasi', '15204', 3, 'checkinNotes', NULL, NULL),
(142321, 'Engineer', 'Assignment', '2016-02-15 14:35:16', 'UPDATE', '2016-02-15 14:35:16', 'On Progress', 'Check Out', '15204', 3, 'state', NULL, NULL),
(142322, 'Engineer', 'Assignment', '2016-02-15 14:35:16', 'UPDATE', '2016-02-15 14:35:16', 'Mon Feb 15 14:35:15 WIT 2016', '2016-02-15 14:33:00.0', '15204', 3, 'checkinTime', NULL, NULL),
(142323, 'Engineer', 'Assignment', '2016-02-15 14:40:09', 'UPDATE', '2016-02-15 14:40:09', '106.86205', '106.862564', '15204', 4, 'longitude', NULL, NULL),
(142324, 'Engineer', 'Assignment', '2016-02-15 14:40:10', 'UPDATE', '2016-02-15 14:40:10', '-6.1404657', '-6.139983', '15204', 4, 'latitude', NULL, NULL),
(142325, 'administrator', 'Batch', '2016-02-15 15:54:52', 'INSERT', '2016-02-15 15:54:52', NULL, NULL, '1', 0, NULL, NULL, NULL),
(142326, 'supervisor', 'Outbox', '2016-02-15 15:55:37', 'INSERT', '2016-02-15 15:55:37', NULL, NULL, '9', NULL, NULL, NULL, NULL),
(142327, 'system', 'Outbox', '2016-02-15 15:55:42', 'UPDATE', '2016-02-15 15:55:42', '1', NULL, '9', NULL, 'retry', NULL, NULL),
(142328, 'system', 'Outbox', '2016-02-15 15:56:16', 'UPDATE', '2016-02-15 15:56:16', '2', '1', '9', NULL, 'retry', NULL, NULL),
(142329, 'Engineer', 'Assignment', '2016-02-15 15:57:05', 'UPDATE', '2016-02-15 15:57:05', '106.79127', '106.86205', '15204', 5, 'longitude', NULL, NULL),
(142330, 'Engineer', 'Assignment', '2016-02-15 15:57:05', 'UPDATE', '2016-02-15 15:57:05', '-6.1856604', '-6.1404657', '15204', 5, 'latitude', NULL, NULL),
(142331, 'Engineer', 'ContractItem', '2016-02-15 15:57:12', 'INSERT', '2016-02-15 15:57:12', NULL, NULL, '21524', 0, NULL, NULL, NULL),
(142332, 'Engineer', 'ContractItem', '2016-02-15 15:57:12', 'UPDATE', '2016-02-15 15:57:12', '21524', NULL, '21523', 0, 'replacementId', NULL, NULL),
(142333, 'Engineer', 'ContractItem', '2016-02-15 16:23:48', 'INSERT', '2016-02-15 16:23:48', NULL, NULL, '21525', 0, NULL, NULL, NULL),
(142334, 'Engineer', 'ContractItem', '2016-02-15 16:23:49', 'UPDATE', '2016-02-15 16:23:49', '21525', '21524', '21523', 1, 'replacementId', NULL, NULL),
(142335, 'Engineer', 'ContractItem', '2016-02-15 16:33:52', 'INSERT', '2016-02-15 16:33:52', NULL, NULL, '21526', 0, NULL, NULL, NULL),
(142336, 'Engineer', 'ContractItem', '2016-02-15 16:33:53', 'UPDATE', '2016-02-15 16:33:53', '21526', '21525', '21523', 2, 'replacementId', NULL, NULL),
(142337, 'Engineer', 'ContractItem', '2016-02-15 16:49:46', 'INSERT', '2016-02-15 16:49:46', NULL, NULL, '21527', 0, NULL, NULL, NULL),
(142338, 'Engineer', 'ContractItem', '2016-02-15 16:49:47', 'UPDATE', '2016-02-15 16:49:47', '21527', '21526', '21523', 3, 'replacementId', NULL, NULL),
(142339, 'system', 'Assignment', '2016-02-15 16:53:43', 'UPDATE', '2016-02-15 16:53:43', '[AS1_1602_00003_2016-02-15_16_53_20.jpg, AS1_1602_00003_2016-02-15_16_38_09.jpg, AS1_1602_00003_2016-02-15_16_43_39.jpg, AS1_1602_00003_2016-02-15_16_37_13.jpg]', 'N/A', '15204', 6, 'attachments', NULL, NULL),
(142340, 'administrator', 'Outbox', '2016-02-15 17:03:42', 'DELETE', '2016-02-15 17:03:42', NULL, NULL, '9', NULL, NULL, NULL, NULL),
(142341, 'system', 'Outbox', '2016-02-15 18:30:01', 'UPDATE', '2016-02-15 18:30:01', '2', '1', '1', NULL, 'retry', NULL, NULL),
(142342, 'system', 'Outbox', '2016-02-15 18:44:10', 'UPDATE', '2016-02-15 18:44:10', '1', NULL, '1', NULL, 'retry', NULL, NULL),
(142343, 'system', 'Outbox', '2016-02-15 18:45:09', 'UPDATE', '2016-02-15 18:45:09', '2', '1', '1', NULL, 'retry', NULL, NULL),
(142344, 'system', 'Outbox', '2016-02-15 18:46:09', 'UPDATE', '2016-02-15 18:46:09', '1', NULL, '3', NULL, 'retry', NULL, NULL),
(142345, 'system', 'Outbox', '2016-02-15 18:47:09', 'UPDATE', '2016-02-15 18:47:09', '2', '1', '3', NULL, 'retry', NULL, NULL),
(142346, 'system', 'Outbox', '2016-02-15 18:49:09', 'UPDATE', '2016-02-15 18:49:09', '1', NULL, '1', NULL, 'retry', NULL, NULL),
(142347, 'system', 'Outbox', '2016-02-15 18:50:23', 'UPDATE', '2016-02-15 18:50:23', '2', '1', '1', NULL, 'retry', NULL, NULL),
(142348, 'system', 'Outbox', '2016-02-15 18:51:09', 'UPDATE', '2016-02-15 18:51:09', '1', NULL, '3', NULL, 'retry', NULL, NULL),
(142349, 'system', 'Outbox', '2016-02-15 18:52:09', 'UPDATE', '2016-02-15 18:52:09', '2', '1', '3', NULL, 'retry', NULL, NULL),
(142350, 'system', 'Outbox', '2016-02-15 18:57:15', 'UPDATE', '2016-02-15 18:57:15', '1', NULL, '1', NULL, 'retry', NULL, NULL),
(142351, 'system', 'Outbox', '2016-02-15 18:58:09', 'UPDATE', '2016-02-15 18:58:09', '2', '1', '1', NULL, 'retry', NULL, NULL),
(142352, 'system', 'Outbox', '2016-02-16 00:59:09', 'UPDATE', '2016-02-16 00:59:09', '1', NULL, '3', NULL, 'retry', NULL, NULL),
(142353, 'system', 'Outbox', '2016-02-16 01:00:09', 'UPDATE', '2016-02-16 01:00:09', '2', '1', '3', NULL, 'retry', NULL, NULL),
(142354, 'administrator', 'ContractItem', '2016-02-16 07:44:24', 'INSERT', '2016-02-16 07:44:24', NULL, NULL, '21528', 0, NULL, NULL, NULL),
(142355, 'operator', 'MaintenanceOrder', '2016-02-16 07:52:13', 'INSERT', '2016-02-16 07:52:13', NULL, NULL, '3770', 0, NULL, NULL, NULL),
(142356, 'operator', 'MaintenanceOrder', '2016-02-16 08:00:00', 'INSERT', '2016-02-16 08:00:00', NULL, NULL, '3771', 0, NULL, NULL, NULL),
(142357, 'operator', 'Assignment', '2016-02-16 08:00:00', 'INSERT', '2016-02-16 08:00:00', NULL, NULL, '15205', 0, NULL, NULL, NULL),
(142358, 'operator', 'Outbox', '2016-02-16 08:00:03', 'INSERT', '2016-02-16 08:00:03', NULL, NULL, '9', NULL, NULL, NULL, NULL),
(142359, 'operator', 'Outbox', '2016-02-16 08:00:03', 'INSERT', '2016-02-16 08:00:03', NULL, NULL, '10', NULL, NULL, NULL, NULL),
(142360, 'system', 'Outbox', '2016-02-16 08:00:24', 'UPDATE', '2016-02-16 08:00:24', '1', NULL, '9', NULL, 'retry', NULL, NULL),
(142361, 'operator', 'MaintenanceOrder', '2016-02-16 08:01:06', 'INSERT', '2016-02-16 08:01:06', NULL, NULL, '3772', 0, NULL, NULL, NULL),
(142362, 'system', 'Outbox', '2016-02-16 08:01:23', 'UPDATE', '2016-02-16 08:01:23', '2', '1', '9', NULL, 'retry', NULL, NULL),
(142363, 'engineer2', 'Outbox', '2016-02-16 08:01:44', 'INSERT', '2016-02-16 08:01:44', NULL, NULL, '11', NULL, NULL, NULL, NULL),
(142364, 'engineer2', 'Outbox', '2016-02-16 08:01:45', 'INSERT', '2016-02-16 08:01:45', NULL, NULL, '12', NULL, NULL, NULL, NULL),
(142365, 'engineer2', 'Assignment', '2016-02-16 08:01:45', 'UPDATE', '2016-02-16 08:01:45', 'Tue Feb 16 08:01:45 WIT 2016', NULL, '15205', 0, 'acceptedDate', NULL, NULL),
(142366, 'engineer2', 'Assignment', '2016-02-16 08:01:45', 'UPDATE', '2016-02-16 08:01:45', 'Accepted', 'Pending Assign', '15205', 0, 'state', NULL, NULL),
(142367, 'engineer2', 'Assignment', '2016-02-16 08:01:45', 'UPDATE', '2016-02-16 08:01:45', '106.79127', NULL, '15205', 0, 'longitude', NULL, NULL),
(142368, 'engineer2', 'Assignment', '2016-02-16 08:01:45', 'UPDATE', '2016-02-16 08:01:45', '-6.1856604', NULL, '15205', 0, 'latitude', NULL, NULL),
(142369, 'system', 'Outbox', '2016-02-16 08:02:23', 'UPDATE', '2016-02-16 08:02:23', '1', NULL, '11', NULL, 'retry', NULL, NULL),
(142370, 'system', 'Outbox', '2016-02-16 08:03:24', 'UPDATE', '2016-02-16 08:03:24', '2', '1', '11', NULL, 'retry', NULL, NULL),
(142371, 'engineer2', 'Assignment', '2016-02-16 08:04:07', 'UPDATE', '2016-02-16 08:04:07', 'sampai dilokasi', NULL, '15205', 1, 'checkinNotes', NULL, NULL),
(142372, 'engineer2', 'Assignment', '2016-02-16 08:04:07', 'UPDATE', '2016-02-16 08:04:07', 'On Progress', 'Accepted', '15205', 1, 'state', NULL, NULL),
(142373, 'engineer2', 'Assignment', '2016-02-16 08:04:07', 'UPDATE', '2016-02-16 08:04:07', 'Tue Feb 16 08:04:07 WIT 2016', NULL, '15205', 1, 'checkinTime', NULL, NULL),
(142374, 'engineer2', 'Assignment', '2016-02-16 08:04:07', 'UPDATE', '2016-02-16 08:04:07', 'Tue Feb 16 08:04:07 WIT 2016', NULL, '15205', 1, 'actualDateStart', NULL, NULL),
(142375, 'supervisor', 'Outbox', '2016-02-16 08:06:14', 'INSERT', '2016-02-16 08:06:14', NULL, NULL, '13', NULL, NULL, NULL, NULL),
(142376, 'system', 'Outbox', '2016-02-16 08:06:24', 'UPDATE', '2016-02-16 08:06:24', '1', NULL, '13', NULL, 'retry', NULL, NULL),
(142377, 'system', 'Outbox', '2016-02-16 08:07:23', 'UPDATE', '2016-02-16 08:07:23', '2', '1', '13', NULL, 'retry', NULL, NULL),
(142378, 'engineer2', 'Assignment', '2016-02-16 08:18:11', 'INSERT', '2016-02-16 08:18:11', NULL, NULL, '15206', 0, NULL, NULL, NULL),
(142379, 'supervisor', 'Assignment', '2016-02-16 08:20:06', 'UPDATE', '2016-02-16 08:20:06', 'Pending Assign', 'Support Request', '15206', 0, 'state', NULL, NULL),
(142380, 'supervisor', 'Assignment', '2016-02-16 08:20:07', 'UPDATE', '2016-02-16 08:20:07', 'Adam/[]', NULL, '15206', 0, 'engineer', NULL, NULL),
(142381, 'supervisor', 'Assignment', '2016-02-16 08:20:07', 'UPDATE', '2016-02-16 08:20:07', 'Tue Feb 16 08:20:06 WIT 2016', NULL, '15206', 0, 'assignDate', NULL, NULL),
(142382, 'supervisor', 'Assignment', '2016-02-16 08:20:07', 'UPDATE', '2016-02-16 08:20:07', 'Tue Feb 16 08:20:06 WIT 2016', NULL, '15206', 0, 'openTime', NULL, NULL),
(142383, 'supervisor', 'Assignment', '2016-02-16 08:20:07', 'UPDATE', '2016-02-16 08:20:07', NULL, '106.791', '15206', 0, 'longitude', NULL, NULL),
(142384, 'supervisor', 'Assignment', '2016-02-16 08:20:07', 'UPDATE', '2016-02-16 08:20:07', NULL, '-6.18566', '15206', 0, 'latitude', NULL, NULL),
(142385, 'system', 'Assignment', '2016-02-16 08:21:14', 'UPDATE', '2016-02-16 08:21:14', '[AS1_1602_00004_2016-02-16_08_20_50.jpg]', 'N/A', '15205', 2, 'attachments', NULL, NULL),
(142386, NULL, 'MaintenanceOrder', '2016-02-16 08:27:48', 'INSERT', '2016-02-16 08:27:48', NULL, NULL, '3773', 0, NULL, NULL, NULL),
(142387, NULL, 'MaintenanceOrder', '2016-02-16 08:31:08', 'INSERT', '2016-02-16 08:31:08', NULL, NULL, '3774', 0, NULL, NULL, NULL),
(142388, NULL, 'Assignment', '2016-02-16 08:31:08', 'INSERT', '2016-02-16 08:31:08', NULL, NULL, '15207', 0, NULL, NULL, NULL),
(142389, NULL, 'Outbox', '2016-02-16 08:31:10', 'INSERT', '2016-02-16 08:31:10', NULL, NULL, '14', NULL, NULL, NULL, NULL),
(142390, NULL, 'Outbox', '2016-02-16 08:31:10', 'INSERT', '2016-02-16 08:31:10', NULL, NULL, '15', NULL, NULL, NULL, NULL),
(142391, NULL, 'MaintenanceOrder', '2016-02-16 08:31:10', 'INSERT', '2016-02-16 08:31:10', NULL, NULL, '3775', 0, NULL, NULL, NULL),
(142392, NULL, 'MaintenanceOrder', '2016-02-16 08:31:12', 'INSERT', '2016-02-16 08:31:12', NULL, NULL, '3776', 0, NULL, NULL, NULL),
(142393, NULL, 'MaintenanceOrder', '2016-02-16 08:31:16', 'INSERT', '2016-02-16 08:31:16', NULL, NULL, '3777', 0, NULL, NULL, NULL),
(142394, NULL, 'Outbox', '2016-02-16 08:31:24', 'UPDATE', '2016-02-16 08:31:24', '1', NULL, '14', NULL, 'retry', NULL, NULL),
(142395, NULL, 'Outbox', '2016-02-16 08:32:23', 'UPDATE', '2016-02-16 08:32:23', '2', '1', '14', NULL, 'retry', NULL, NULL),
(142396, 'system', 'Outbox', '2016-02-16 08:46:45', 'UPDATE', '2016-02-16 08:46:45', '2', '1', '1', NULL, 'retry', NULL, NULL),
(142397, 'system', 'Outbox', '2016-02-16 08:47:44', 'UPDATE', '2016-02-16 08:47:44', '2', '1', '3', NULL, 'retry', NULL, NULL),
(142398, 'system', 'Outbox', '2016-02-16 10:14:44', 'UPDATE', '2016-02-16 10:14:44', '1', NULL, '1', NULL, 'retry', NULL, NULL),
(142399, 'system', 'Outbox', '2016-02-16 10:14:45', 'INSERT', '2016-02-16 10:14:45', NULL, NULL, '16', NULL, NULL, NULL, NULL),
(142400, 'system', 'Outbox', '2016-02-16 10:14:45', 'INSERT', '2016-02-16 10:14:45', NULL, NULL, '17', NULL, NULL, NULL, NULL),
(142401, 'system', 'Outbox', '2016-02-16 10:15:50', 'UPDATE', '2016-02-16 10:15:50', '2', '1', '1', NULL, 'retry', NULL, NULL),
(142402, 'system', 'Outbox', '2016-02-16 10:16:44', 'UPDATE', '2016-02-16 10:16:44', '1', NULL, '16', NULL, 'retry', NULL, NULL),
(142403, 'system', 'Outbox', '2016-02-16 10:17:44', 'UPDATE', '2016-02-16 10:17:44', '2', '1', '16', NULL, 'retry', NULL, NULL),
(142404, 'system', 'Outbox', '2016-02-16 10:23:49', 'UPDATE', '2016-02-16 10:23:49', '1', NULL, '1', NULL, 'retry', NULL, NULL),
(142405, 'system', 'Outbox', '2016-02-16 10:24:44', 'UPDATE', '2016-02-16 10:24:44', '2', '1', '1', NULL, 'retry', NULL, NULL),
(142406, 'system', 'Outbox', '2016-02-16 10:25:44', 'UPDATE', '2016-02-16 10:25:44', '1', NULL, '3', NULL, 'retry', NULL, NULL),
(142407, 'system', 'Outbox', '2016-02-16 10:26:44', 'UPDATE', '2016-02-16 10:26:44', '2', '1', '3', NULL, 'retry', NULL, NULL),
(142408, 'system', 'Outbox', '2016-02-16 10:34:45', 'INSERT', '2016-02-16 10:34:45', NULL, NULL, '18', NULL, NULL, NULL, NULL),
(142409, 'system', 'Outbox', '2016-02-16 10:34:45', 'INSERT', '2016-02-16 10:34:45', NULL, NULL, '19', NULL, NULL, NULL, NULL),
(142410, 'system', 'Outbox', '2016-02-16 10:35:44', 'UPDATE', '2016-02-16 10:35:44', '1', NULL, '18', NULL, 'retry', NULL, NULL),
(142411, 'system', 'Outbox', '2016-02-16 10:36:44', 'UPDATE', '2016-02-16 10:36:44', '2', '1', '18', NULL, 'retry', NULL, NULL),
(142412, 'system', 'Outbox', '2016-02-16 10:59:10', 'UPDATE', '2016-02-16 10:59:10', '2', '1', '16', NULL, 'retry', NULL, NULL),
(142413, 'system', 'Outbox', '2016-02-16 11:22:28', 'UPDATE', '2016-02-16 11:22:28', '2', '1', '11', NULL, 'retry', NULL, NULL),
(142414, 'system', 'Outbox', '2016-02-16 11:23:27', 'UPDATE', '2016-02-16 11:23:27', '1', NULL, '13', NULL, 'retry', NULL, NULL),
(142415, 'system', 'Outbox', '2016-02-16 11:24:28', 'UPDATE', '2016-02-16 11:24:28', '2', '1', '13', NULL, 'retry', NULL, NULL),
(142416, 'system', 'Outbox', '2016-02-16 11:33:52', 'UPDATE', '2016-02-16 11:33:52', '1', NULL, '11', NULL, 'retry', NULL, NULL),
(142417, 'system', 'Outbox', '2016-02-16 11:34:00', 'UPDATE', '2016-02-16 11:34:00', '1', NULL, '14', NULL, 'retry', NULL, NULL),
(142418, 'administrator', 'ContractItem', '2016-02-16 11:46:47', 'DELETE', '2016-02-16 11:46:47', NULL, NULL, '21525', 0, NULL, NULL, NULL),
(142419, 'administrator', 'ContractItem', '2016-02-16 11:46:50', 'DELETE', '2016-02-16 11:46:50', NULL, NULL, '21526', 0, NULL, NULL, NULL),
(142420, 'administrator', 'ContractItem', '2016-02-16 11:46:55', 'DELETE', '2016-02-16 11:46:55', NULL, NULL, '21527', 0, NULL, NULL, NULL),
(142421, 'administrator', 'ContractItem', '2016-02-16 11:47:04', 'UPDATE', '2016-02-16 11:47:04', 'All Item', NULL, '21524', 0, 'parent', NULL, NULL),
(142422, 'administrator', 'ContractItem', '2016-02-16 11:50:48', 'INSERT', '2016-02-16 11:50:48', NULL, NULL, '21529', 0, NULL, NULL, NULL),
(142423, 'engineer2', 'Assignment', '2016-02-16 11:55:27', 'UPDATE', '2016-02-16 11:55:27', 'Done', 'On Progress', '15205', 3, 'state', NULL, NULL),
(142424, 'engineer2', 'Assignment', '2016-02-16 11:55:27', 'UPDATE', '2016-02-16 11:55:27', 'sudah', NULL, '15205', 3, 'solution', NULL, NULL),
(142425, 'engineer2', 'Assignment', '2016-02-16 11:55:27', 'UPDATE', '2016-02-16 11:55:27', 'Tue Feb 16 00:00:00 WIT 2016', NULL, '15205', 3, 'actualDateEnd', NULL, NULL),
(142426, 'engineer2', 'Outbox', '2016-02-16 11:55:31', 'INSERT', '2016-02-16 11:55:31', NULL, NULL, '1', NULL, NULL, NULL, NULL),
(142427, 'engineer2', 'Assignment', '2016-02-16 11:55:31', 'UPDATE', '2016-02-16 11:55:31', 'Tue Feb 16 11:55:30 WIT 2016', NULL, '15205', 4, 'doneTime', NULL, NULL),
(142428, 'engineer2', 'Assignment', '2016-02-16 11:55:31', 'UPDATE', '2016-02-16 11:55:31', 'Tue Feb 16 11:55:30 WIT 2016', 'Tue Feb 16 00:00:00 WIT 2016', '15205', 4, 'actualDateEnd', NULL, NULL),
(142429, 'engineer2', 'Outbox', '2016-02-16 11:55:31', 'INSERT', '2016-02-16 11:55:31', NULL, NULL, '2', NULL, NULL, NULL, NULL),
(142430, 'system', 'Outbox', '2016-02-16 11:55:46', 'UPDATE', '2016-02-16 11:55:46', '1', NULL, '1', NULL, 'retry', NULL, NULL),
(142431, 'engineer2', 'Assignment', '2016-02-16 11:55:59', 'UPDATE', '2016-02-16 11:55:59', 'Closed', 'Done', '15205', 5, 'state', NULL, NULL),
(142432, 'engineer2', 'Assignment', '2016-02-16 11:55:59', 'UPDATE', '2016-02-16 11:55:59', 'Closed', 'Pending Assign', '15206', 1, 'state', NULL, NULL),
(142433, 'engineer2', 'Outbox', '2016-02-16 11:55:59', 'INSERT', '2016-02-16 11:55:59', NULL, NULL, '3', NULL, NULL, NULL, NULL),
(142434, 'engineer2', 'Outbox', '2016-02-16 11:56:00', 'INSERT', '2016-02-16 11:56:00', NULL, NULL, '4', NULL, NULL, NULL, NULL),
(142435, 'system', 'Outbox', '2016-02-16 11:56:46', 'UPDATE', '2016-02-16 11:56:46', '1', NULL, '3', NULL, 'retry', NULL, NULL),
(142436, 'engineer2', 'Assignment', '2016-02-16 11:56:47', 'UPDATE', '2016-02-16 11:56:47', 'On Progress', 'Check Out', '15203', 4, 'state', NULL, NULL),
(142437, 'engineer2', 'Assignment', '2016-02-16 11:56:47', 'UPDATE', '2016-02-16 11:56:47', 'Tue Feb 16 11:56:47 WIT 2016', '2016-02-12 23:26:45.0', '15203', 4, 'checkinTime', NULL, NULL),
(142438, 'engineer2', 'Assignment', '2016-02-16 11:56:47', 'UPDATE', '2016-02-16 11:56:47', '106.79127', '106.72075', '15203', 4, 'longitude', NULL, NULL),
(142439, 'engineer2', 'Assignment', '2016-02-16 11:56:47', 'UPDATE', '2016-02-16 11:56:47', '-6.1856604', '-6.1682973', '15203', 4, 'latitude', NULL, NULL),
(142440, 'engineer2', 'Assignment', '2016-02-16 11:57:00', 'UPDATE', '2016-02-16 11:57:00', 'Done', 'On Progress', '15203', 5, 'state', NULL, NULL),
(142441, 'engineer2', 'Assignment', '2016-02-16 11:57:00', 'UPDATE', '2016-02-16 11:57:00', 'sudah', NULL, '15203', 5, 'solution', NULL, NULL),
(142442, 'engineer2', 'Assignment', '2016-02-16 11:57:00', 'UPDATE', '2016-02-16 11:57:00', 'Tue Feb 16 00:00:00 WIT 2016', NULL, '15203', 5, 'actualDateEnd', NULL, NULL),
(142443, 'engineer2', 'Outbox', '2016-02-16 11:57:02', 'INSERT', '2016-02-16 11:57:02', NULL, NULL, '5', NULL, NULL, NULL, NULL),
(142444, 'engineer2', 'Assignment', '2016-02-16 11:57:02', 'UPDATE', '2016-02-16 11:57:02', 'Tue Feb 16 11:57:02 WIT 2016', NULL, '15203', 6, 'doneTime', NULL, NULL),
(142445, 'engineer2', 'Assignment', '2016-02-16 11:57:02', 'UPDATE', '2016-02-16 11:57:02', 'Tue Feb 16 11:57:02 WIT 2016', 'Tue Feb 16 00:00:00 WIT 2016', '15203', 6, 'actualDateEnd', NULL, NULL),
(142446, 'engineer2', 'Outbox', '2016-02-16 11:57:02', 'INSERT', '2016-02-16 11:57:02', NULL, NULL, '6', NULL, NULL, NULL, NULL),
(142447, 'engineer2', 'MaintenanceOrder', '2016-02-16 11:57:25', 'UPDATE', '2016-02-16 11:57:25', 'Tue Feb 16 11:57:25 WIT 2016', NULL, '3764', 0, 'closeTime', NULL, NULL),
(142448, 'engineer2', 'MaintenanceOrder', '2016-02-16 11:57:25', 'UPDATE', '2016-02-16 11:57:25', 'good', NULL, '3764', 0, 'satisfaction', NULL, NULL),
(142449, 'engineer2', 'MaintenanceOrder', '2016-02-16 11:57:25', 'UPDATE', '2016-02-16 11:57:25', 'Closed', 'Open', '3764', 0, 'state', NULL, NULL),
(142450, 'engineer2', 'Assignment', '2016-02-16 11:57:25', 'UPDATE', '2016-02-16 11:57:25', 'Closed', 'Done', '15203', 7, 'state', NULL, NULL),
(142451, 'engineer2', 'Outbox', '2016-02-16 11:57:25', 'INSERT', '2016-02-16 11:57:25', NULL, NULL, '7', NULL, NULL, NULL, NULL),
(142452, 'engineer2', 'Outbox', '2016-02-16 11:57:25', 'INSERT', '2016-02-16 11:57:25', NULL, NULL, '8', NULL, NULL, NULL, NULL),
(142453, 'engineer2', 'Outbox', '2016-02-16 11:57:33', 'INSERT', '2016-02-16 11:57:33', NULL, NULL, '9', NULL, NULL, NULL, NULL),
(142454, 'engineer2', 'Outbox', '2016-02-16 11:57:33', 'INSERT', '2016-02-16 11:57:33', NULL, NULL, '10', NULL, NULL, NULL, NULL),
(142455, 'engineer2', 'Assignment', '2016-02-16 11:57:33', 'UPDATE', '2016-02-16 11:57:33', 'Tue Feb 16 11:57:33 WIT 2016', NULL, '15207', 0, 'acceptedDate', NULL, NULL),
(142456, 'engineer2', 'Assignment', '2016-02-16 11:57:33', 'UPDATE', '2016-02-16 11:57:33', 'Accepted', 'Pending Assign', '15207', 0, 'state', NULL, NULL),
(142457, 'engineer2', 'Assignment', '2016-02-16 11:57:33', 'UPDATE', '2016-02-16 11:57:33', '106.79127', NULL, '15207', 0, 'longitude', NULL, NULL),
(142458, 'engineer2', 'Assignment', '2016-02-16 11:57:33', 'UPDATE', '2016-02-16 11:57:33', '-6.1856604', NULL, '15207', 0, 'latitude', NULL, NULL),
(142459, 'engineer2', 'Assignment', '2016-02-16 11:57:40', 'UPDATE', '2016-02-16 11:57:40', NULL, NULL, '15207', 1, 'checkinNotes', NULL, NULL),
(142460, 'engineer2', 'Assignment', '2016-02-16 11:57:40', 'UPDATE', '2016-02-16 11:57:40', 'On Progress', 'Accepted', '15207', 1, 'state', NULL, NULL),
(142461, 'engineer2', 'Assignment', '2016-02-16 11:57:41', 'UPDATE', '2016-02-16 11:57:41', 'Tue Feb 16 11:57:40 WIT 2016', NULL, '15207', 1, 'checkinTime', NULL, NULL),
(142462, 'engineer2', 'Assignment', '2016-02-16 11:57:41', 'UPDATE', '2016-02-16 11:57:41', 'Tue Feb 16 11:57:40 WIT 2016', NULL, '15207', 1, 'actualDateStart', NULL, NULL),
(142463, 'system', 'Outbox', '2016-02-16 11:57:46', 'UPDATE', '2016-02-16 11:57:46', '1', NULL, '5', NULL, 'retry', NULL, NULL),
(142464, 'system', 'Outbox', '2016-02-16 11:57:49', 'UPDATE', '2016-02-16 11:57:49', '1', NULL, '7', NULL, 'retry', NULL, NULL),
(142465, 'engineer2', 'Assignment', '2016-02-16 11:57:51', 'UPDATE', '2016-02-16 11:57:51', 'Done', 'On Progress', '15207', 2, 'state', NULL, NULL),
(142466, 'engineer2', 'Assignment', '2016-02-16 11:57:51', 'UPDATE', '2016-02-16 11:57:51', 'sudah', NULL, '15207', 2, 'solution', NULL, NULL),
(142467, 'engineer2', 'Assignment', '2016-02-16 11:57:51', 'UPDATE', '2016-02-16 11:57:51', 'Tue Feb 16 00:00:00 WIT 2016', NULL, '15207', 2, 'actualDateEnd', NULL, NULL),
(142468, 'engineer2', 'Outbox', '2016-02-16 11:57:52', 'INSERT', '2016-02-16 11:57:52', NULL, NULL, '11', NULL, NULL, NULL, NULL),
(142469, 'system', 'Outbox', '2016-02-16 11:57:52', 'UPDATE', '2016-02-16 11:57:52', '1', NULL, '9', NULL, 'retry', NULL, NULL),
(142470, 'engineer2', 'Assignment', '2016-02-16 11:57:52', 'UPDATE', '2016-02-16 11:57:52', 'Tue Feb 16 11:57:52 WIT 2016', NULL, '15207', 3, 'doneTime', NULL, NULL),
(142471, 'engineer2', 'Assignment', '2016-02-16 11:57:52', 'UPDATE', '2016-02-16 11:57:52', 'Tue Feb 16 11:57:52 WIT 2016', 'Tue Feb 16 00:00:00 WIT 2016', '15207', 3, 'actualDateEnd', NULL, NULL),
(142472, 'engineer2', 'Outbox', '2016-02-16 11:57:52', 'INSERT', '2016-02-16 11:57:52', NULL, NULL, '12', NULL, NULL, NULL, NULL),
(142473, 'engineer2', 'Assignment', '2016-02-16 11:58:37', 'UPDATE', '2016-02-16 11:58:37', 'Closed', 'Done', '15207', 4, 'state', NULL, NULL),
(142474, 'engineer2', 'Outbox', '2016-02-16 11:58:37', 'INSERT', '2016-02-16 11:58:37', NULL, NULL, '13', NULL, NULL, NULL, NULL),
(142475, 'engineer2', 'Outbox', '2016-02-16 11:58:37', 'INSERT', '2016-02-16 11:58:37', NULL, NULL, '14', NULL, NULL, NULL, NULL),
(142476, 'system', 'Outbox', '2016-02-16 11:58:46', 'UPDATE', '2016-02-16 11:58:46', '1', NULL, '11', NULL, 'retry', NULL, NULL),
(142477, 'system', 'Outbox', '2016-02-16 11:58:49', 'UPDATE', '2016-02-16 11:58:49', '1', NULL, '13', NULL, 'retry', NULL, NULL),
(142478, 'operator', 'MaintenanceOrder', '2016-02-16 12:09:39', 'INSERT', '2016-02-16 12:09:39', NULL, NULL, '3778', 0, NULL, NULL, NULL),
(142479, 'operator', 'Assignment', '2016-02-16 12:09:39', 'INSERT', '2016-02-16 12:09:39', NULL, NULL, '15208', 0, NULL, NULL, NULL),
(142480, 'operator', 'Outbox', '2016-02-16 12:09:40', 'INSERT', '2016-02-16 12:09:40', NULL, NULL, '15', NULL, NULL, NULL, NULL),
(142481, 'operator', 'Outbox', '2016-02-16 12:09:40', 'INSERT', '2016-02-16 12:09:40', NULL, NULL, '16', NULL, NULL, NULL, NULL),
(142482, 'system', 'Outbox', '2016-02-16 12:10:01', 'UPDATE', '2016-02-16 12:10:01', '1', NULL, '15', NULL, 'retry', NULL, NULL),
(142483, 'operator', 'MaintenanceOrder', '2016-02-16 12:12:06', 'INSERT', '2016-02-16 12:12:06', NULL, NULL, '3779', 0, NULL, NULL, NULL),
(142484, 'engineer2', 'Outbox', '2016-02-16 12:13:16', 'INSERT', '2016-02-16 12:13:16', NULL, NULL, '17', NULL, NULL, NULL, NULL),
(142485, 'engineer2', 'Outbox', '2016-02-16 12:13:16', 'INSERT', '2016-02-16 12:13:16', NULL, NULL, '18', NULL, NULL, NULL, NULL),
(142486, 'engineer2', 'Assignment', '2016-02-16 12:13:16', 'UPDATE', '2016-02-16 12:13:16', 'Tue Feb 16 12:13:16 WIT 2016', NULL, '15208', 0, 'acceptedDate', NULL, NULL),
(142487, 'engineer2', 'Assignment', '2016-02-16 12:13:16', 'UPDATE', '2016-02-16 12:13:16', 'Accepted', 'Pending Assign', '15208', 0, 'state', NULL, NULL),
(142488, 'engineer2', 'Assignment', '2016-02-16 12:13:17', 'UPDATE', '2016-02-16 12:13:17', '106.79127', NULL, '15208', 0, 'longitude', NULL, NULL),
(142489, 'engineer2', 'Assignment', '2016-02-16 12:13:17', 'UPDATE', '2016-02-16 12:13:17', '-6.1856604', NULL, '15208', 0, 'latitude', NULL, NULL),
(142490, 'engineer2', 'Assignment', '2016-02-16 12:13:26', 'UPDATE', '2016-02-16 12:13:26', 'sudah', NULL, '15208', 1, 'checkinNotes', NULL, NULL),
(142491, 'engineer2', 'Assignment', '2016-02-16 12:13:26', 'UPDATE', '2016-02-16 12:13:26', 'On Progress', 'Accepted', '15208', 1, 'state', NULL, NULL),
(142492, 'engineer2', 'Assignment', '2016-02-16 12:13:26', 'UPDATE', '2016-02-16 12:13:26', 'Tue Feb 16 12:13:26 WIT 2016', NULL, '15208', 1, 'checkinTime', NULL, NULL),
(142493, 'engineer2', 'Assignment', '2016-02-16 12:13:26', 'UPDATE', '2016-02-16 12:13:26', 'Tue Feb 16 12:13:26 WIT 2016', NULL, '15208', 1, 'actualDateStart', NULL, NULL),
(142494, 'engineer2', 'Assignment', '2016-02-16 12:13:44', 'UPDATE', '2016-02-16 12:13:44', 'Tue Feb 16 12:13:44 WIT 2016', NULL, '15208', 2, 'checkoutTime', NULL, NULL),
(142495, 'engineer2', 'Assignment', '2016-02-16 12:13:44', 'UPDATE', '2016-02-16 12:13:44', 'Check Out', 'On Progress', '15208', 2, 'state', NULL, NULL),
(142496, 'system', 'Outbox', '2016-02-16 12:14:01', 'UPDATE', '2016-02-16 12:14:01', '1', NULL, '17', NULL, 'retry', NULL, NULL),
(142497, 'engineer2', 'Assignment', '2016-02-16 12:15:26', 'UPDATE', '2016-02-16 12:15:26', 'On Progress', 'Check Out', '15208', 3, 'state', NULL, NULL),
(142498, 'engineer2', 'Assignment', '2016-02-16 12:15:26', 'UPDATE', '2016-02-16 12:15:26', 'Tue Feb 16 12:15:25 WIT 2016', '2016-02-16 12:13:26.0', '15208', 3, 'checkinTime', NULL, NULL),
(142499, 'engineer2', 'Assignment', '2016-02-16 12:17:31', 'UPDATE', '2016-02-16 12:17:31', 'Done', 'On Progress', '15208', 4, 'state', NULL, NULL),
(142500, 'engineer2', 'Assignment', '2016-02-16 12:17:31', 'UPDATE', '2016-02-16 12:17:31', 'sudah', NULL, '15208', 4, 'notes', NULL, NULL),
(142501, 'engineer2', 'Assignment', '2016-02-16 12:17:31', 'UPDATE', '2016-02-16 12:17:31', 'sudah', NULL, '15208', 4, 'solution', NULL, NULL),
(142502, 'engineer2', 'Assignment', '2016-02-16 12:17:31', 'UPDATE', '2016-02-16 12:17:31', 'Tue Feb 16 00:00:00 WIT 2016', NULL, '15208', 4, 'actualDateEnd', NULL, NULL),
(142503, 'engineer2', 'Outbox', '2016-02-16 12:17:32', 'INSERT', '2016-02-16 12:17:32', NULL, NULL, '19', NULL, NULL, NULL, NULL),
(142504, 'engineer2', 'Assignment', '2016-02-16 12:17:32', 'UPDATE', '2016-02-16 12:17:32', 'Tue Feb 16 12:17:32 WIT 2016', NULL, '15208', 5, 'doneTime', NULL, NULL),
(142505, 'engineer2', 'Assignment', '2016-02-16 12:17:32', 'UPDATE', '2016-02-16 12:17:32', 'Tue Feb 16 12:17:32 WIT 2016', 'Tue Feb 16 00:00:00 WIT 2016', '15208', 5, 'actualDateEnd', NULL, NULL),
(142506, 'engineer2', 'Outbox', '2016-02-16 12:17:32', 'INSERT', '2016-02-16 12:17:32', NULL, NULL, '20', NULL, NULL, NULL, NULL),
(142507, 'system', 'Outbox', '2016-02-16 12:18:01', 'UPDATE', '2016-02-16 12:18:01', '1', NULL, '19', NULL, 'retry', NULL, NULL),
(142508, 'engineer2', 'MaintenanceOrder', '2016-02-16 12:20:32', 'UPDATE', '2016-02-16 12:20:32', 'Tue Feb 16 12:20:32 WIT 2016', NULL, '3778', 0, 'closeTime', NULL, NULL),
(142509, 'engineer2', 'MaintenanceOrder', '2016-02-16 12:20:33', 'UPDATE', '2016-02-16 12:20:33', 'good', NULL, '3778', 0, 'satisfaction', NULL, NULL),
(142510, 'engineer2', 'MaintenanceOrder', '2016-02-16 12:20:33', 'UPDATE', '2016-02-16 12:20:33', 'Closed', 'Open', '3778', 0, 'state', NULL, NULL),
(142511, 'engineer2', 'Assignment', '2016-02-16 12:20:33', 'UPDATE', '2016-02-16 12:20:33', 'Closed', 'Done', '15208', 6, 'state', NULL, NULL),
(142512, 'engineer2', 'Outbox', '2016-02-16 12:20:33', 'INSERT', '2016-02-16 12:20:33', NULL, NULL, '21', NULL, NULL, NULL, NULL),
(142513, 'engineer2', 'Outbox', '2016-02-16 12:20:33', 'INSERT', '2016-02-16 12:20:33', NULL, NULL, '22', NULL, NULL, NULL, NULL),
(142514, 'system', 'Outbox', '2016-02-16 12:21:01', 'UPDATE', '2016-02-16 12:21:01', '1', NULL, '21', NULL, 'retry', NULL, NULL),
(142515, 'administrator', 'Outbox', '2016-02-16 12:25:21', 'INSERT', '2016-02-16 12:25:21', NULL, NULL, '1', NULL, NULL, NULL, NULL),
(142516, 'system', 'Outbox', '2016-02-16 12:26:07', 'UPDATE', '2016-02-16 12:26:07', '1', NULL, '1', NULL, 'retry', NULL, NULL),
(142517, 'system', 'Outbox', '2016-02-16 12:27:13', 'UPDATE', '2016-02-16 12:27:13', '2', '1', '1', NULL, 'retry', NULL, NULL),
(142518, 'administrator', 'Outbox', '2016-02-16 12:30:32', 'INSERT', '2016-02-16 12:30:32', NULL, NULL, '2', NULL, NULL, NULL, NULL),
(142519, 'system', 'Outbox', '2016-02-16 12:31:07', 'UPDATE', '2016-02-16 12:31:07', '1', NULL, '2', NULL, 'retry', NULL, NULL),
(142520, 'operator', 'MaintenanceOrder', '2016-02-16 13:57:31', 'INSERT', '2016-02-16 13:57:31', NULL, NULL, '3780', 0, NULL, NULL, NULL),
(142521, 'administrator', 'Contract', '2016-02-16 14:10:49', 'INSERT', '2016-02-16 14:10:49', NULL, NULL, '1500', 0, NULL, NULL, NULL),
(142522, 'administrator', 'ContractItem', '2016-02-16 14:11:11', 'INSERT', '2016-02-16 14:11:11', NULL, NULL, '21530', 0, NULL, NULL, NULL),
(142523, 'administrator', 'Contract', '2016-02-16 14:11:41', 'UPDATE', '2016-02-16 14:11:41', 'true', NULL, '1500', 0, 'expired', NULL, NULL),
(142524, 'administrator', 'Contract', '2016-02-16 14:11:41', 'UPDATE', '2016-02-16 14:11:41', 'true', NULL, '1500', 0, 'isterminated', NULL, NULL),
(142525, 'administrator', 'Contract', '2016-02-16 14:11:41', 'UPDATE', '2016-02-16 14:11:41', 'expired', NULL, '1500', 0, 'notes', NULL, NULL),
(142526, 'administrator', 'Outbox', '2016-02-16 14:11:41', 'INSERT', '2016-02-16 14:11:41', NULL, NULL, '1', NULL, NULL, NULL, NULL),
(142527, 'operator', 'MaintenanceOrder', '2016-02-16 14:11:46', 'INSERT', '2016-02-16 14:11:46', NULL, NULL, '3781', 0, NULL, NULL, NULL),
(142528, 'system', 'Outbox', '2016-02-16 14:12:15', 'UPDATE', '2016-02-16 14:12:15', '1', NULL, '1', NULL, 'retry', NULL, NULL),
(142529, 'system', 'Outbox', '2016-02-16 14:12:18', 'UPDATE', '2016-02-16 14:12:18', '2', '1', '1', NULL, 'retry', NULL, NULL),
(142530, 'operator', 'MaintenanceOrder', '2016-02-16 14:16:32', 'INSERT', '2016-02-16 14:16:32', NULL, NULL, '3782', 0, NULL, NULL, NULL),
(142531, 'operator', 'Assignment', '2016-02-16 14:16:32', 'INSERT', '2016-02-16 14:16:32', NULL, NULL, '15209', 0, NULL, NULL, NULL),
(142532, 'operator', 'Outbox', '2016-02-16 14:16:34', 'INSERT', '2016-02-16 14:16:34', NULL, NULL, '2', NULL, NULL, NULL, NULL),
(142533, 'operator', 'Outbox', '2016-02-16 14:16:34', 'INSERT', '2016-02-16 14:16:34', NULL, NULL, '3', NULL, NULL, NULL, NULL),
(142534, 'system', 'Outbox', '2016-02-16 14:17:15', 'UPDATE', '2016-02-16 14:17:15', '1', NULL, '2', NULL, 'retry', NULL, NULL),
(142535, 'system', 'Outbox', '2016-02-16 14:17:18', 'UPDATE', '2016-02-16 14:17:18', '2', '1', '2', NULL, 'retry', NULL, NULL),
(142536, 'operator', 'MaintenanceOrder', '2016-02-16 14:17:26', 'INSERT', '2016-02-16 14:17:26', NULL, NULL, '3783', 0, NULL, NULL, NULL),
(142537, 'Engineer2', 'Outbox', '2016-02-16 14:20:49', 'INSERT', '2016-02-16 14:20:49', NULL, NULL, '4', NULL, NULL, NULL, NULL),
(142538, 'Engineer2', 'Outbox', '2016-02-16 14:20:49', 'INSERT', '2016-02-16 14:20:49', NULL, NULL, '5', NULL, NULL, NULL, NULL),
(142539, 'Engineer2', 'Assignment', '2016-02-16 14:20:53', 'UPDATE', '2016-02-16 14:20:53', 'Tue Feb 16 14:20:52 WIT 2016', NULL, '15209', 0, 'acceptedDate', NULL, NULL),
(142540, 'Engineer2', 'Assignment', '2016-02-16 14:20:53', 'UPDATE', '2016-02-16 14:20:53', 'Accepted', 'Pending Assign', '15209', 0, 'state', NULL, NULL),
(142541, 'Engineer2', 'Assignment', '2016-02-16 14:20:53', 'UPDATE', '2016-02-16 14:20:53', '106.82056', NULL, '15209', 0, 'longitude', NULL, NULL),
(142542, 'Engineer2', 'Assignment', '2016-02-16 14:20:53', 'UPDATE', '2016-02-16 14:20:53', '-6.1946187', NULL, '15209', 0, 'latitude', NULL, NULL),
(142543, 'system', 'Outbox', '2016-02-16 14:21:15', 'UPDATE', '2016-02-16 14:21:15', '1', NULL, '4', NULL, 'retry', NULL, NULL),
(142544, 'system', 'Outbox', '2016-02-16 14:21:18', 'UPDATE', '2016-02-16 14:21:18', '2', '1', '4', NULL, 'retry', NULL, NULL),
(142545, 'Engineer2', 'Assignment', '2016-02-16 14:21:22', 'UPDATE', '2016-02-16 14:21:22', 'sampai dilokasi', NULL, '15209', 1, 'checkinNotes', NULL, NULL),
(142546, 'Engineer2', 'Assignment', '2016-02-16 14:21:22', 'UPDATE', '2016-02-16 14:21:22', 'On Progress', 'Accepted', '15209', 1, 'state', NULL, NULL),
(142547, 'Engineer2', 'Assignment', '2016-02-16 14:21:22', 'UPDATE', '2016-02-16 14:21:22', 'Tue Feb 16 14:21:21 WIT 2016', NULL, '15209', 1, 'checkinTime', NULL, NULL),
(142548, 'Engineer2', 'Assignment', '2016-02-16 14:21:22', 'UPDATE', '2016-02-16 14:21:22', 'Tue Feb 16 14:21:21 WIT 2016', NULL, '15209', 1, 'actualDateStart', NULL, NULL),
(142549, 'Engineer2', 'Assignment', '2016-02-16 14:23:33', 'INSERT', '2016-02-16 14:23:33', NULL, NULL, '15210', 0, NULL, NULL, NULL),
(142550, 'system', 'Assignment', '2016-02-16 14:24:58', 'UPDATE', '2016-02-16 14:24:58', '[AS1_1602_00008_2016-02-16_14_24_33.jpg]', 'N/A', '15209', 2, 'attachments', NULL, NULL),
(142551, NULL, 'Assignment', '2016-02-16 14:26:13', 'UPDATE', '2016-02-16 14:26:13', 'Tue Feb 16 14:26:13 WIT 2016', NULL, '15209', 3, 'checkoutTime', NULL, NULL),
(142552, NULL, 'Assignment', '2016-02-16 14:26:13', 'UPDATE', '2016-02-16 14:26:13', 'Check Out', 'On Progress', '15209', 3, 'state', NULL, NULL),
(142553, NULL, 'Assignment', '2016-02-16 14:26:46', 'UPDATE', '2016-02-16 14:26:46', 'sudah selesai makan', 'sampai dilokasi', '15209', 4, 'checkinNotes', NULL, NULL),
(142554, NULL, 'Assignment', '2016-02-16 14:26:46', 'UPDATE', '2016-02-16 14:26:46', 'On Progress', 'Check Out', '15209', 4, 'state', NULL, NULL),
(142555, NULL, 'Assignment', '2016-02-16 14:26:46', 'UPDATE', '2016-02-16 14:26:46', 'Tue Feb 16 14:26:45 WIT 2016', '2016-02-16 14:21:21.0', '15209', 4, 'checkinTime', NULL, NULL),
(142556, NULL, 'Assignment', '2016-02-16 14:27:13', 'UPDATE', '2016-02-16 14:27:13', 'Done', 'On Progress', '15209', 5, 'state', NULL, NULL),
(142557, NULL, 'Assignment', '2016-02-16 14:27:13', 'UPDATE', '2016-02-16 14:27:13', 'makan siang', NULL, '15209', 5, 'notes', NULL, NULL),
(142558, NULL, 'Assignment', '2016-02-16 14:27:13', 'UPDATE', '2016-02-16 14:27:13', 'sudah selesai', NULL, '15209', 5, 'solution', NULL, NULL),
(142559, NULL, 'Assignment', '2016-02-16 14:27:13', 'UPDATE', '2016-02-16 14:27:13', 'Tue Feb 16 00:00:00 WIT 2016', NULL, '15209', 5, 'actualDateEnd', NULL, NULL),
(142560, NULL, 'Outbox', '2016-02-16 14:27:23', 'INSERT', '2016-02-16 14:27:23', NULL, NULL, '6', NULL, NULL, NULL, NULL),
(142561, NULL, 'Assignment', '2016-02-16 14:27:23', 'UPDATE', '2016-02-16 14:27:23', 'Tue Feb 16 14:27:23 WIT 2016', NULL, '15209', 6, 'doneTime', NULL, NULL),
(142562, NULL, 'Assignment', '2016-02-16 14:27:23', 'UPDATE', '2016-02-16 14:27:23', 'Tue Feb 16 14:27:23 WIT 2016', 'Tue Feb 16 00:00:00 WIT 2016', '15209', 6, 'actualDateEnd', NULL, NULL),
(142563, NULL, 'Outbox', '2016-02-16 14:27:23', 'INSERT', '2016-02-16 14:27:23', NULL, NULL, '7', NULL, NULL, NULL, NULL),
(142564, NULL, 'Outbox', '2016-02-16 14:28:15', 'UPDATE', '2016-02-16 14:28:15', '1', NULL, '6', NULL, 'retry', NULL, NULL),
(142565, NULL, 'Outbox', '2016-02-16 14:28:18', 'UPDATE', '2016-02-16 14:28:18', '2', '1', '6', NULL, 'retry', NULL, NULL),
(142566, NULL, 'MaintenanceOrder', '2016-02-16 14:28:38', 'UPDATE', '2016-02-16 14:28:38', 'Tue Feb 16 14:28:38 WIT 2016', NULL, '3782', 0, 'closeTime', NULL, NULL),
(142567, NULL, 'MaintenanceOrder', '2016-02-16 14:28:38', 'UPDATE', '2016-02-16 14:28:38', 'good', NULL, '3782', 0, 'satisfaction', NULL, NULL),
(142568, NULL, 'MaintenanceOrder', '2016-02-16 14:28:39', 'UPDATE', '2016-02-16 14:28:39', 'Closed', 'Open', '3782', 0, 'state', NULL, NULL),
(142569, NULL, 'Assignment', '2016-02-16 14:28:39', 'UPDATE', '2016-02-16 14:28:39', 'Closed', 'Done', '15209', 7, 'state', NULL, NULL),
(142570, NULL, 'Assignment', '2016-02-16 14:28:39', 'UPDATE', '2016-02-16 14:28:39', 'Closed', 'Support Request', '15210', 0, 'state', NULL, NULL),
(142571, NULL, 'Outbox', '2016-02-16 14:28:39', 'INSERT', '2016-02-16 14:28:39', NULL, NULL, '8', NULL, NULL, NULL, NULL),
(142572, NULL, 'Outbox', '2016-02-16 14:28:39', 'INSERT', '2016-02-16 14:28:39', NULL, NULL, '9', NULL, NULL, NULL, NULL),
(142573, NULL, 'Outbox', '2016-02-16 14:29:15', 'UPDATE', '2016-02-16 14:29:15', '1', NULL, '8', NULL, 'retry', NULL, NULL),
(142574, NULL, 'Outbox', '2016-02-16 14:29:18', 'UPDATE', '2016-02-16 14:29:18', '2', '1', '8', NULL, 'retry', NULL, NULL),
(142575, NULL, 'Outbox', '2016-02-16 14:32:00', 'INSERT', '2016-02-16 14:32:00', NULL, NULL, '10', NULL, NULL, NULL, NULL),
(142576, NULL, 'Outbox', '2016-02-16 14:32:15', 'UPDATE', '2016-02-16 14:32:15', '1', NULL, '10', NULL, 'retry', NULL, NULL),
(142577, NULL, 'Outbox', '2016-02-16 14:32:18', 'UPDATE', '2016-02-16 14:32:18', '2', '1', '10', NULL, 'retry', NULL, NULL),
(142578, NULL, 'Batch', '2016-02-16 14:32:58', 'INSERT', '2016-02-16 14:32:58', NULL, NULL, '2', 0, NULL, NULL, NULL),
(142579, NULL, 'ContractItem', '2016-02-16 14:35:54', 'INSERT', '2016-02-16 14:35:54', NULL, NULL, '21531', 0, NULL, NULL, NULL),
(142580, NULL, 'ContractItem', '2016-02-16 14:35:55', 'UPDATE', '2016-02-16 14:35:55', '21531', NULL, '21528', 0, 'replacementId', NULL, NULL),
(142581, NULL, 'ContractItem', '2016-02-16 14:39:03', 'UPDATE', '2016-02-16 14:39:03', 'disabled by SR SR2/1602/0001 @ Tue Feb 16 14:39:03 WIT 2016', NULL, '21528', 1, 'notes', NULL, NULL),
(142582, NULL, 'ContractItem', '2016-02-16 14:39:03', 'UPDATE', '2016-02-16 14:39:03', 'true', NULL, '21528', 1, 'disabled', NULL, NULL);
INSERT INTO `audit_log` (`id`, `actor`, `class_name`, `date_created`, `event_name`, `last_updated`, `new_value`, `old_value`, `persisted_object_id`, `persisted_object_version`, `property_name`, `uri`, `version`) VALUES
(142583, 'administrator', 'ContractItem', '2016-02-18 08:20:06', 'INSERT', '2016-02-18 08:20:06', NULL, NULL, '21532', 0, NULL, NULL, NULL),
(142584, 'administrator', 'ContractItem', '2016-02-18 08:20:32', 'INSERT', '2016-02-18 08:20:32', NULL, NULL, '21533', 0, NULL, NULL, NULL),
(142585, 'administrator', 'Batch', '2016-02-18 08:21:17', 'INSERT', '2016-02-18 08:21:17', NULL, NULL, '3', 0, NULL, NULL, NULL),
(142586, 'administrator', 'Batch', '2016-02-18 08:21:26', 'INSERT', '2016-02-18 08:21:26', NULL, NULL, '4', 0, NULL, NULL, NULL),
(142587, 'administrator', 'Partner', '2016-02-18 08:22:55', 'INSERT', '2016-02-18 08:22:55', NULL, NULL, '1241', 0, NULL, NULL, NULL),
(142588, 'administrator', 'Contract', '2016-02-18 08:24:37', 'INSERT', '2016-02-18 08:24:37', NULL, NULL, '1501', 0, NULL, NULL, NULL),
(142589, 'administrator', 'ContractItem', '2016-02-18 08:25:11', 'INSERT', '2016-02-18 08:25:11', NULL, NULL, '21534', 0, NULL, NULL, NULL),
(142590, 'operator', 'MaintenanceOrder', '2016-02-18 08:26:05', 'INSERT', '2016-02-18 08:26:05', NULL, NULL, '3784', 0, NULL, NULL, NULL),
(142591, 'operator', 'MaintenanceOrder', '2016-02-18 08:31:39', 'INSERT', '2016-02-18 08:31:39', NULL, NULL, '3785', 0, NULL, NULL, NULL),
(142592, 'administrator', 'Priority', '2016-02-18 08:33:28', 'UPDATE', '2016-02-18 08:33:28', 'Order', 'Checkin', '5', 1, 'solvingTimeStartFrom', NULL, NULL),
(142593, 'operator', 'MaintenanceOrder', '2016-02-18 08:57:36', 'INSERT', '2016-02-18 08:57:36', NULL, NULL, '3786', 0, NULL, NULL, NULL),
(142594, 'operator', 'Assignment', '2016-02-18 08:57:36', 'INSERT', '2016-02-18 08:57:36', NULL, NULL, '15211', 0, NULL, NULL, NULL),
(142595, 'operator', 'Outbox', '2016-02-18 08:57:39', 'INSERT', '2016-02-18 08:57:39', NULL, NULL, '10', NULL, NULL, NULL, NULL),
(142596, 'operator', 'Outbox', '2016-02-18 08:57:39', 'INSERT', '2016-02-18 08:57:39', NULL, NULL, '11', NULL, NULL, NULL, NULL),
(142597, 'system', 'Outbox', '2016-02-18 08:57:57', 'UPDATE', '2016-02-18 08:57:57', '1', NULL, '10', NULL, 'retry', NULL, NULL),
(142598, 'operator', 'MaintenanceOrder', '2016-02-18 08:58:04', 'INSERT', '2016-02-18 08:58:04', NULL, NULL, '3787', 0, NULL, NULL, NULL),
(142599, 'engineer3', 'Assignment', '2016-02-18 08:59:16', 'UPDATE', '2016-02-18 08:59:16', 'Thu Feb 18 08:59:15 WIT 2016', NULL, '15211', 0, 'acceptedDate', NULL, NULL),
(142600, 'engineer3', 'Assignment', '2016-02-18 08:59:16', 'UPDATE', '2016-02-18 08:59:16', 'Accepted', 'Pending Assign', '15211', 0, 'state', NULL, NULL),
(142601, 'engineer3', 'Assignment', '2016-02-18 08:59:16', 'UPDATE', '2016-02-18 08:59:16', '106.79178', NULL, '15211', 0, 'longitude', NULL, NULL),
(142602, 'engineer3', 'Assignment', '2016-02-18 08:59:16', 'UPDATE', '2016-02-18 08:59:16', '-6.189533', NULL, '15211', 0, 'latitude', NULL, NULL),
(142603, 'engineer3', 'Assignment', '2016-02-18 08:59:23', 'UPDATE', '2016-02-18 08:59:23', NULL, NULL, '15211', 1, 'checkinNotes', NULL, NULL),
(142604, 'engineer3', 'Assignment', '2016-02-18 08:59:23', 'UPDATE', '2016-02-18 08:59:23', 'On Progress', 'Accepted', '15211', 1, 'state', NULL, NULL),
(142605, 'engineer3', 'Assignment', '2016-02-18 08:59:23', 'UPDATE', '2016-02-18 08:59:23', 'Thu Feb 18 08:59:23 WIT 2016', NULL, '15211', 1, 'checkinTime', NULL, NULL),
(142606, 'engineer3', 'Assignment', '2016-02-18 08:59:23', 'UPDATE', '2016-02-18 08:59:23', 'Thu Feb 18 08:59:23 WIT 2016', NULL, '15211', 1, 'actualDateStart', NULL, NULL),
(142607, 'administrator', 'MaintenanceOrder', '2016-02-18 09:11:12', 'DELETE', '2016-02-18 09:11:12', NULL, NULL, '3787', 0, NULL, NULL, NULL),
(142608, 'operator', 'MaintenanceOrder', '2016-02-18 09:18:36', 'INSERT', '2016-02-18 09:18:36', NULL, NULL, '3788', 0, NULL, NULL, NULL),
(142609, 'operator', 'Assignment', '2016-02-18 09:18:36', 'INSERT', '2016-02-18 09:18:36', NULL, NULL, '15212', 0, NULL, NULL, NULL),
(142610, 'operator', 'Outbox', '2016-02-18 09:18:36', 'INSERT', '2016-02-18 09:18:36', NULL, NULL, '12', NULL, NULL, NULL, NULL),
(142611, 'operator', 'Outbox', '2016-02-18 09:18:36', 'INSERT', '2016-02-18 09:18:36', NULL, NULL, '13', NULL, NULL, NULL, NULL),
(142612, 'system', 'Outbox', '2016-02-18 09:18:57', 'UPDATE', '2016-02-18 09:18:57', '1', NULL, '12', NULL, 'retry', NULL, NULL),
(142613, 'engineer2', 'Assignment', '2016-02-18 09:18:57', 'UPDATE', '2016-02-18 09:18:57', 'Thu Feb 18 09:18:57 WIT 2016', NULL, '15212', 0, 'acceptedDate', NULL, NULL),
(142614, 'engineer2', 'Assignment', '2016-02-18 09:18:57', 'UPDATE', '2016-02-18 09:18:57', 'Accepted', 'Pending Assign', '15212', 0, 'state', NULL, NULL),
(142615, 'engineer2', 'Assignment', '2016-02-18 09:18:58', 'UPDATE', '2016-02-18 09:18:58', '106.79178', NULL, '15212', 0, 'longitude', NULL, NULL),
(142616, 'engineer2', 'Assignment', '2016-02-18 09:18:58', 'UPDATE', '2016-02-18 09:18:58', '-6.189536', NULL, '15212', 0, 'latitude', NULL, NULL),
(142617, 'engineer2', 'Assignment', '2016-02-18 09:19:03', 'UPDATE', '2016-02-18 09:19:03', NULL, NULL, '15212', 1, 'checkinNotes', NULL, NULL),
(142618, 'engineer2', 'Assignment', '2016-02-18 09:19:03', 'UPDATE', '2016-02-18 09:19:03', 'On Progress', 'Accepted', '15212', 1, 'state', NULL, NULL),
(142619, 'engineer2', 'Assignment', '2016-02-18 09:19:03', 'UPDATE', '2016-02-18 09:19:03', 'Thu Feb 18 09:19:03 WIT 2016', NULL, '15212', 1, 'checkinTime', NULL, NULL),
(142620, 'engineer2', 'Assignment', '2016-02-18 09:19:03', 'UPDATE', '2016-02-18 09:19:03', 'Thu Feb 18 09:19:03 WIT 2016', NULL, '15212', 1, 'actualDateStart', NULL, NULL),
(142621, 'operator', 'MaintenanceOrder', '2016-02-18 09:19:05', 'INSERT', '2016-02-18 09:19:05', NULL, NULL, '3789', 0, NULL, NULL, NULL),
(142622, 'system', 'Outbox', '2016-02-18 09:21:57', 'INSERT', '2016-02-18 09:21:57', NULL, NULL, '14', NULL, NULL, NULL, NULL),
(142623, 'system', 'Outbox', '2016-02-18 09:21:57', 'INSERT', '2016-02-18 09:21:57', NULL, NULL, '15', NULL, NULL, NULL, NULL),
(142624, 'system', 'Outbox', '2016-02-18 09:21:57', 'INSERT', '2016-02-18 09:21:57', NULL, NULL, '16', NULL, NULL, NULL, NULL),
(142625, 'system', 'Outbox', '2016-02-18 09:22:34', 'UPDATE', '2016-02-18 09:22:34', '1', NULL, '14', NULL, 'retry', NULL, NULL),
(142626, 'system', 'Outbox', '2016-02-18 09:22:37', 'UPDATE', '2016-02-18 09:22:37', '1', NULL, '16', NULL, 'retry', NULL, NULL),
(142627, 'system', 'Outbox', '2016-02-18 10:46:51', 'INSERT', '2016-02-18 10:46:51', NULL, NULL, '16', NULL, NULL, NULL, NULL),
(142628, 'system', 'Outbox', '2016-02-18 10:46:51', 'INSERT', '2016-02-18 10:46:51', NULL, NULL, '17', NULL, NULL, NULL, NULL),
(142629, 'system', 'Outbox', '2016-02-18 10:46:56', 'UPDATE', '2016-02-18 10:46:56', '1', NULL, '16', NULL, 'retry', NULL, NULL),
(142630, 'system', 'Outbox', '2016-02-18 10:47:04', 'UPDATE', '2016-02-18 10:47:04', '1', NULL, '17', NULL, 'retry', NULL, NULL),
(142631, 'system', 'Outbox', '2016-02-18 10:56:50', 'INSERT', '2016-02-18 10:56:50', NULL, NULL, '18', NULL, NULL, NULL, NULL),
(142632, 'system', 'Outbox', '2016-02-18 10:56:50', 'INSERT', '2016-02-18 10:56:50', NULL, NULL, '19', NULL, NULL, NULL, NULL),
(142633, 'system', 'Outbox', '2016-02-18 10:56:50', 'INSERT', '2016-02-18 10:56:50', NULL, NULL, '20', NULL, NULL, NULL, NULL),
(142634, 'system', 'Outbox', '2016-02-18 10:56:55', 'UPDATE', '2016-02-18 10:56:55', '1', NULL, '18', NULL, 'retry', NULL, NULL),
(142635, 'system', 'Outbox', '2016-02-18 10:57:00', 'UPDATE', '2016-02-18 10:57:00', '1', NULL, '20', NULL, 'retry', NULL, NULL),
(142636, 'operator', 'MaintenanceOrder', '2016-02-18 11:06:20', 'INSERT', '2016-02-18 11:06:20', NULL, NULL, '3790', 0, NULL, NULL, NULL),
(142637, 'operator', 'Assignment', '2016-02-18 11:06:20', 'INSERT', '2016-02-18 11:06:20', NULL, NULL, '15213', 0, NULL, NULL, NULL),
(142638, 'operator', 'Outbox', '2016-02-18 11:06:22', 'INSERT', '2016-02-18 11:06:22', NULL, NULL, '21', NULL, NULL, NULL, NULL),
(142639, 'operator', 'Outbox', '2016-02-18 11:06:22', 'INSERT', '2016-02-18 11:06:22', NULL, NULL, '22', NULL, NULL, NULL, NULL),
(142640, 'system', 'Outbox', '2016-02-18 11:06:49', 'UPDATE', '2016-02-18 11:06:49', '1', NULL, '21', NULL, 'retry', NULL, NULL),
(142641, 'system', 'Outbox', '2016-02-18 11:06:55', 'UPDATE', '2016-02-18 11:06:55', '2', '1', '21', NULL, 'retry', NULL, NULL),
(142642, 'Engineer', 'Assignment', '2016-02-18 11:08:04', 'UPDATE', '2016-02-18 11:08:04', 'Thu Feb 18 11:08:03 WIT 2016', NULL, '15213', 0, 'acceptedDate', NULL, NULL),
(142643, 'Engineer', 'Assignment', '2016-02-18 11:08:04', 'UPDATE', '2016-02-18 11:08:04', 'Accepted', 'Pending Assign', '15213', 0, 'state', NULL, NULL),
(142644, 'Engineer', 'Assignment', '2016-02-18 11:08:04', 'UPDATE', '2016-02-18 11:08:04', '106.79269', NULL, '15213', 0, 'longitude', NULL, NULL),
(142645, 'Engineer', 'Assignment', '2016-02-18 11:08:04', 'UPDATE', '2016-02-18 11:08:04', '-6.1762676', NULL, '15213', 0, 'latitude', NULL, NULL),
(142646, 'engineer', 'Assignment', '2016-02-18 11:15:11', 'UPDATE', '2016-02-18 11:15:11', 'sudah sampai', NULL, '15213', 1, 'checkinNotes', NULL, NULL),
(142647, 'engineer', 'Assignment', '2016-02-18 11:15:11', 'UPDATE', '2016-02-18 11:15:11', 'On Progress', 'Accepted', '15213', 1, 'state', NULL, NULL),
(142648, 'engineer', 'Assignment', '2016-02-18 11:15:11', 'UPDATE', '2016-02-18 11:15:11', 'Thu Feb 18 11:15:11 WIT 2016', NULL, '15213', 1, 'checkinTime', NULL, NULL),
(142649, 'engineer', 'Assignment', '2016-02-18 11:15:11', 'UPDATE', '2016-02-18 11:15:11', 'Thu Feb 18 11:15:11 WIT 2016', NULL, '15213', 1, 'actualDateStart', NULL, NULL),
(142650, 'engineer', 'Assignment', '2016-02-18 11:15:11', 'UPDATE', '2016-02-18 11:15:11', '106.79126', '106.79269', '15213', 1, 'longitude', NULL, NULL),
(142651, 'engineer', 'Assignment', '2016-02-18 11:15:11', 'UPDATE', '2016-02-18 11:15:11', '-6.1769214', '-6.1762676', '15213', 1, 'latitude', NULL, NULL),
(142652, 'system', 'Assignment', '2016-02-18 11:18:11', 'UPDATE', '2016-02-18 11:18:11', '[AS1_1602_00012_2016-02-18_11_17_46.jpg]', 'N/A', '15213', 2, 'attachments', NULL, NULL),
(142653, NULL, 'Assignment', '2016-02-18 11:18:55', 'INSERT', '2016-02-18 11:18:55', NULL, NULL, '15214', 0, NULL, NULL, NULL),
(142654, NULL, 'Outbox', '2016-02-18 11:21:36', 'INSERT', '2016-02-18 11:21:36', NULL, NULL, '23', NULL, NULL, NULL, NULL),
(142655, NULL, 'Outbox', '2016-02-18 11:21:49', 'UPDATE', '2016-02-18 11:21:49', '1', NULL, '23', NULL, 'retry', NULL, NULL),
(142656, NULL, 'ContractItem', '2016-02-18 11:25:13', 'INSERT', '2016-02-18 11:25:13', NULL, NULL, '21535', 0, NULL, NULL, NULL),
(142657, NULL, 'ContractItem', '2016-02-18 11:25:13', 'UPDATE', '2016-02-18 11:25:13', '21535', NULL, '21533', 0, 'replacementId', NULL, NULL),
(142658, NULL, 'Outbox', '2016-02-18 11:26:50', 'INSERT', '2016-02-18 11:26:50', NULL, NULL, '24', NULL, NULL, NULL, NULL),
(142659, NULL, 'Outbox', '2016-02-18 11:26:50', 'INSERT', '2016-02-18 11:26:50', NULL, NULL, '25', NULL, NULL, NULL, NULL),
(142660, NULL, 'Outbox', '2016-02-18 11:26:55', 'UPDATE', '2016-02-18 11:26:55', '1', NULL, '24', NULL, 'retry', NULL, NULL),
(142661, NULL, 'Outbox', '2016-02-18 11:27:02', 'UPDATE', '2016-02-18 11:27:02', '1', NULL, '25', NULL, 'retry', NULL, NULL),
(142662, NULL, 'Assignment', '2016-02-18 11:27:54', 'UPDATE', '2016-02-18 11:27:54', 'Done', 'On Progress', '15213', 3, 'state', NULL, NULL),
(142663, NULL, 'Assignment', '2016-02-18 11:27:54', 'UPDATE', '2016-02-18 11:27:54', 'sudah selesai ganti item', NULL, '15213', 3, 'solution', NULL, NULL),
(142664, NULL, 'Assignment', '2016-02-18 11:27:54', 'UPDATE', '2016-02-18 11:27:54', 'Thu Feb 18 00:00:00 WIT 2016', NULL, '15213', 3, 'actualDateEnd', NULL, NULL),
(142665, NULL, 'Assignment', '2016-02-18 11:27:56', 'UPDATE', '2016-02-18 11:27:56', 'Thu Feb 18 11:27:56 WIT 2016', NULL, '15213', 4, 'doneTime', NULL, NULL),
(142666, NULL, 'Assignment', '2016-02-18 11:27:56', 'UPDATE', '2016-02-18 11:27:56', 'Thu Feb 18 11:27:56 WIT 2016', 'Thu Feb 18 00:00:00 WIT 2016', '15213', 4, 'actualDateEnd', NULL, NULL),
(142667, NULL, 'MaintenanceOrder', '2016-02-18 11:31:31', 'UPDATE', '2016-02-18 11:31:31', 'Thu Feb 18 11:31:31 WIT 2016', NULL, '3790', 0, 'closeTime', NULL, NULL),
(142668, NULL, 'MaintenanceOrder', '2016-02-18 11:31:31', 'UPDATE', '2016-02-18 11:31:31', 'good', NULL, '3790', 0, 'satisfaction', NULL, NULL),
(142669, NULL, 'MaintenanceOrder', '2016-02-18 11:31:31', 'UPDATE', '2016-02-18 11:31:31', 'Closed', 'Open', '3790', 0, 'state', NULL, NULL),
(142670, NULL, 'Assignment', '2016-02-18 11:31:31', 'UPDATE', '2016-02-18 11:31:31', 'Closed', 'Done', '15213', 5, 'state', NULL, NULL),
(142671, NULL, 'Assignment', '2016-02-18 11:31:31', 'UPDATE', '2016-02-18 11:31:31', 'Closed', 'Support Request', '15214', 0, 'state', NULL, NULL),
(142672, 'operator', 'MaintenanceOrder', '2016-02-18 14:21:16', 'INSERT', '2016-02-18 14:21:16', NULL, NULL, '3791', 0, NULL, NULL, NULL),
(142673, 'operator', 'Assignment', '2016-02-18 14:21:16', 'INSERT', '2016-02-18 14:21:16', NULL, NULL, '15215', 0, NULL, NULL, NULL),
(142674, 'operator', 'Outbox', '2016-02-18 14:21:21', 'INSERT', '2016-02-18 14:21:21', NULL, NULL, '23', NULL, NULL, NULL, NULL),
(142675, 'operator', 'Outbox', '2016-02-18 14:21:21', 'INSERT', '2016-02-18 14:21:21', NULL, NULL, '24', NULL, NULL, NULL, NULL),
(142676, 'system', 'Outbox', '2016-02-18 14:22:01', 'UPDATE', '2016-02-18 14:22:01', '1', NULL, '23', NULL, 'retry', NULL, NULL),
(142677, 'operator', 'MaintenanceOrder', '2016-02-29 09:58:38', 'INSERT', '2016-02-29 09:58:38', NULL, NULL, '3792', 0, NULL, NULL, NULL),
(142678, 'operator', 'Assignment', '2016-02-29 09:58:38', 'INSERT', '2016-02-29 09:58:38', NULL, NULL, '15216', 0, NULL, NULL, NULL),
(142679, 'operator', 'Outbox', '2016-02-29 09:58:39', 'INSERT', '2016-02-29 09:58:39', NULL, NULL, '25', NULL, NULL, NULL, NULL),
(142680, 'operator', 'Outbox', '2016-02-29 09:58:39', 'INSERT', '2016-02-29 09:58:39', NULL, NULL, '26', NULL, NULL, NULL, NULL),
(142681, 'Engineer', 'Outbox', '2016-02-29 09:59:06', 'INSERT', '2016-02-29 09:59:06', NULL, NULL, '27', NULL, NULL, NULL, NULL),
(142682, 'Engineer', 'Outbox', '2016-02-29 09:59:06', 'INSERT', '2016-02-29 09:59:06', NULL, NULL, '28', NULL, NULL, NULL, NULL),
(142683, 'Engineer', 'Assignment', '2016-02-29 09:59:06', 'UPDATE', '2016-02-29 09:59:06', 'Mon Feb 29 09:59:06 WIT 2016', NULL, '15216', 0, 'acceptedDate', NULL, NULL),
(142684, 'Engineer', 'Assignment', '2016-02-29 09:59:06', 'UPDATE', '2016-02-29 09:59:06', 'Accepted', 'Pending Assign', '15216', 0, 'state', NULL, NULL),
(142685, 'Engineer', 'Assignment', '2016-02-29 09:59:06', 'UPDATE', '2016-02-29 09:59:06', '-95.76563', NULL, '15216', 0, 'longitude', NULL, NULL),
(142686, 'Engineer', 'Assignment', '2016-02-29 09:59:06', 'UPDATE', '2016-02-29 09:59:06', '36.574986', NULL, '15216', 0, 'latitude', NULL, NULL),
(142687, 'Engineer', 'Assignment', '2016-02-29 09:59:10', 'UPDATE', '2016-02-29 09:59:10', NULL, NULL, '15216', 1, 'checkinNotes', NULL, NULL),
(142688, 'Engineer', 'Assignment', '2016-02-29 09:59:10', 'UPDATE', '2016-02-29 09:59:10', 'On Progress', 'Accepted', '15216', 1, 'state', NULL, NULL),
(142689, 'Engineer', 'Assignment', '2016-02-29 09:59:10', 'UPDATE', '2016-02-29 09:59:10', 'Mon Feb 29 09:59:10 WIT 2016', NULL, '15216', 1, 'checkinTime', NULL, NULL),
(142690, 'Engineer', 'Assignment', '2016-02-29 09:59:10', 'UPDATE', '2016-02-29 09:59:10', 'Mon Feb 29 09:59:10 WIT 2016', NULL, '15216', 1, 'actualDateStart', NULL, NULL),
(142691, 'system', 'Outbox', '2016-02-29 09:59:36', 'UPDATE', '2016-02-29 09:59:36', '1', NULL, '25', NULL, 'retry', NULL, NULL),
(142692, 'Engineer', 'Assignment', '2016-02-29 10:00:03', 'UPDATE', '2016-02-29 10:00:03', 'Done', 'On Progress', '15216', 2, 'state', NULL, NULL),
(142693, 'Engineer', 'Assignment', '2016-02-29 10:00:03', 'UPDATE', '2016-02-29 10:00:03', 'sudah', NULL, '15216', 2, 'solution', NULL, NULL),
(142694, 'Engineer', 'Assignment', '2016-02-29 10:00:03', 'UPDATE', '2016-02-29 10:00:03', 'Mon Feb 29 00:00:00 WIT 2016', NULL, '15216', 2, 'actualDateEnd', NULL, NULL),
(142695, 'Engineer', 'Outbox', '2016-02-29 10:00:04', 'INSERT', '2016-02-29 10:00:04', NULL, NULL, '29', NULL, NULL, NULL, NULL),
(142696, 'Engineer', 'Assignment', '2016-02-29 10:00:04', 'UPDATE', '2016-02-29 10:00:04', 'Mon Feb 29 10:00:03 WIT 2016', NULL, '15216', 3, 'doneTime', NULL, NULL),
(142697, 'Engineer', 'Assignment', '2016-02-29 10:00:04', 'UPDATE', '2016-02-29 10:00:04', 'Mon Feb 29 10:00:03 WIT 2016', 'Mon Feb 29 00:00:00 WIT 2016', '15216', 3, 'actualDateEnd', NULL, NULL),
(142698, 'Engineer', 'Outbox', '2016-02-29 10:00:04', 'INSERT', '2016-02-29 10:00:04', NULL, NULL, '30', NULL, NULL, NULL, NULL),
(142699, 'system', 'Outbox', '2016-02-29 10:00:36', 'UPDATE', '2016-02-29 10:00:36', '2', '1', '25', NULL, 'retry', NULL, NULL),
(142700, 'system', 'Outbox', '2016-02-29 10:01:36', 'UPDATE', '2016-02-29 10:01:36', '1', NULL, '27', NULL, 'retry', NULL, NULL),
(142701, 'system', 'Outbox', '2016-02-29 10:02:36', 'UPDATE', '2016-02-29 10:02:36', '2', '1', '27', NULL, 'retry', NULL, NULL),
(142702, 'system', 'Outbox', '2016-02-29 10:03:36', 'UPDATE', '2016-02-29 10:03:36', '1', NULL, '29', NULL, 'retry', NULL, NULL),
(142703, 'system', 'Outbox', '2016-02-29 10:04:36', 'UPDATE', '2016-02-29 10:04:36', '2', '1', '29', NULL, 'retry', NULL, NULL),
(142704, 'operator', 'MaintenanceOrder', '2016-02-29 10:29:13', 'INSERT', '2016-02-29 10:29:13', NULL, NULL, '3793', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `audit_log_event`
--

CREATE TABLE `audit_log_event` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `actor` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `new_value` varchar(255) DEFAULT NULL,
  `old_value` varchar(255) DEFAULT NULL,
  `persisted_object_id` varchar(255) DEFAULT NULL,
  `persisted_object_version` bigint(20) DEFAULT NULL,
  `property_name` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `authentication_user`
--

CREATE TABLE `authentication_user` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `login` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bacth_item`
--

CREATE TABLE `bacth_item` (
  `id` bigint(20) NOT NULL,
  `batch_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` bigint(20) NOT NULL,
  `batchbalance_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `pack_no_level1` varchar(45) DEFAULT NULL,
  `pack_no_level2` varchar(45) DEFAULT NULL,
  `prod_date` datetime DEFAULT NULL,
  `qty` bigint(20) DEFAULT NULL,
  `running_no` bigint(20) DEFAULT NULL,
  `warehouse_id` bigint(20) NOT NULL,
  `qty2` bigint(20) NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `write_off_date` datetime DEFAULT NULL,
  `manual` varchar(255) DEFAULT NULL,
  `tables` varchar(255) DEFAULT NULL,
  `manual1` varchar(100) DEFAULT NULL,
  `manual2` varchar(100) DEFAULT NULL,
  `manual3` varchar(100) DEFAULT NULL,
  `manual4` varchar(100) DEFAULT NULL,
  `manual5` varchar(100) DEFAULT NULL,
  `tables1` varchar(255) DEFAULT NULL,
  `tables2` varchar(255) DEFAULT NULL,
  `tables3` varchar(255) DEFAULT NULL,
  `tables4` varchar(255) DEFAULT NULL,
  `tables5` varchar(255) DEFAULT NULL,
  `time_stamps` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `time_stamps1` varchar(255) DEFAULT NULL,
  `time_stamps2` varchar(255) DEFAULT NULL,
  `time_stamps3` varchar(255) DEFAULT NULL,
  `time_stamps4` varchar(255) DEFAULT NULL,
  `time_stamps5` varchar(255) DEFAULT NULL,
  `stok_balance` int(11) DEFAULT '0',
  `stok_balance2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `batchbalance_id`, `date_created`, `item_id`, `last_updated`, `number`, `pack_no_level1`, `pack_no_level2`, `prod_date`, `qty`, `running_no`, `warehouse_id`, `qty2`, `active`, `write_off_date`, `manual`, `tables`, `manual1`, `manual2`, `manual3`, `manual4`, `manual5`, `tables1`, `tables2`, `tables3`, `tables4`, `tables5`, `time_stamps`, `version`, `time_stamps1`, `time_stamps2`, `time_stamps3`, `time_stamps4`, `time_stamps5`, `stok_balance`, `stok_balance2`) VALUES
(1, NULL, '2016-02-15 15:54:52', 1211, '2016-02-15 15:54:52', 'AS01', NULL, NULL, '2016-02-15 15:54:43', 1, 1, 7, 1, b'1', NULL, NULL, NULL, 'AS01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, '2016-02-16 14:32:58', 1211, '2016-02-16 14:32:58', 'RT01', NULL, NULL, '2016-02-16 14:32:48', 1, 2, 7, 1, b'1', NULL, NULL, NULL, 'RT01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, '2016-02-18 08:21:17', 1213, '2016-02-18 08:21:17', 'PW003', NULL, NULL, '2016-02-18 08:21:07', 1, 3, 7, 1, b'1', NULL, NULL, NULL, 'PW003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, '2016-02-18 08:21:26', 1214, '2016-02-18 08:21:26', 'PW0294', NULL, NULL, '2016-02-18 08:21:20', 1, 4, 7, 1, b'1', NULL, NULL, NULL, 'PW0294', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `batch_balance`
--

CREATE TABLE `batch_balance` (
  `id` bigint(20) NOT NULL,
  `batch_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `in_qty` bigint(20) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `opening_balance_qty` bigint(20) DEFAULT NULL,
  `out_qty` bigint(20) DEFAULT NULL,
  `warehouse_id` bigint(20) NOT NULL,
  `in_qty2` bigint(20) NOT NULL,
  `out_qty2` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT '0',
  `transaction_date` datetime NOT NULL,
  `stok_balance` int(11) DEFAULT NULL,
  `stok_balance2` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `item_balance_id` bigint(20) DEFAULT NULL,
  `reff_no` varchar(255) DEFAULT NULL,
  `warehouse_dest_id` bigint(20) DEFAULT NULL,
  `warehouse_source_id` bigint(20) DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch_balance`
--

INSERT INTO `batch_balance` (`id`, `batch_id`, `date_created`, `in_qty`, `last_updated`, `opening_balance_qty`, `out_qty`, `warehouse_id`, `in_qty2`, `out_qty2`, `version`, `transaction_date`, `stok_balance`, `stok_balance2`, `description`, `item_balance_id`, `reff_no`, `warehouse_dest_id`, `warehouse_source_id`, `partner_id`) VALUES
(1, 1, '2016-02-15 15:54:52', 1, '2016-02-15 15:54:52', NULL, 0, 7, 1, 0, 0, '2016-02-15 15:54:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, '2016-02-15 15:57:12', 0, '2016-02-15 15:57:12', NULL, 1, 7, 0, 1, 0, '2016-02-15 15:56:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 1, '2016-02-15 16:23:48', 0, '2016-02-15 16:23:48', NULL, 1, 7, 0, 1, 0, '2016-02-15 15:56:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(4, 1, '2016-02-15 16:33:53', 0, '2016-02-15 16:33:53', NULL, 1, 7, 0, 1, 0, '2016-02-15 15:56:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, 1, '2016-02-15 16:49:47', 0, '2016-02-15 16:49:47', NULL, 1, 7, 0, 1, 0, '2016-02-15 15:56:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 2, '2016-02-16 14:32:58', 1, '2016-02-16 14:32:58', NULL, 0, 7, 1, 0, 0, '2016-02-16 14:32:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 2, '2016-02-16 14:35:55', 0, '2016-02-16 14:35:55', NULL, 1, 7, 0, 1, 0, '2016-02-16 14:33:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(8, 1, '2016-02-16 14:39:03', 1, '2016-02-16 14:39:03', NULL, 0, 7, 1, 0, 0, '2016-02-16 14:37:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(9, 3, '2016-02-18 08:21:17', 1, '2016-02-18 08:21:17', NULL, 0, 7, 1, 0, 0, '2016-02-18 08:21:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 4, '2016-02-18 08:21:26', 1, '2016-02-18 08:21:26', NULL, 0, 7, 1, 0, 0, '2016-02-18 08:21:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 4, '2016-02-18 11:25:13', 0, '2016-02-18 11:25:13', NULL, 1, 7, 0, 1, 0, '2016-02-18 11:23:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `c2dm`
--

CREATE TABLE `c2dm` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `rid` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c2dm`
--

INSERT INTO `c2dm` (`id`, `date_created`, `last_updated`, `name`, `rid`) VALUES
(22, '2016-02-16 14:30:28', '2016-02-16 14:30:28', 'supervisor', 'APA91bEAhW5Equv7IfcF08ojoxOyYq9UM34mg5j7WPifq6OPCLQKKJMpJXo9peCQnMPMTKMJz573CA6z_ydsNNnKwX3DMRXuTjGHL3OwFE0Yze88Psle7KiJqwK4B6pFGyyVvAJF569u'),
(25, '2016-02-18 08:55:41', '2016-02-18 08:55:41', 'heru', 'APA91bGN8hEs4enPBlc1FB0_bbp0eMiYltb6BVfQ1tPmnF3UfP1Z3Fc_BzQHX47KOvfKAn-mAtoshH87fda2KUbNaWUmjEklba8g937ytHyO1UaaDYpQxjBFQSpSaty01j77MdQbd03w'),
(27, '2016-02-18 08:58:56', '2016-02-18 08:58:56', 'engineer3', 'APA91bGN8hEs4enPBlc1FB0_bbp0eMiYltb6BVfQ1tPmnF3UfP1Z3Fc_BzQHX47KOvfKAn-mAtoshH87fda2KUbNaWUmjEklba8g937ytHyO1UaaDYpQxjBFQSpSaty01j77MdQbd03w'),
(29, '2016-02-18 09:17:29', '2016-02-18 09:17:29', 'engineer2', 'APA91bGN8hEs4enPBlc1FB0_bbp0eMiYltb6BVfQ1tPmnF3UfP1Z3Fc_BzQHX47KOvfKAn-mAtoshH87fda2KUbNaWUmjEklba8g937ytHyO1UaaDYpQxjBFQSpSaty01j77MdQbd03w'),
(39, '2016-02-29 09:56:02', '2016-02-29 09:56:02', '2ndlevel', 'APA91bHYL8di_upzAPoUjdwMkoBuAVHa99bODxhvp4TZliMHZvn0VknQ0gcAUwsnk8G0iP2iy9s7CFKTF8rCKaXZRnY8xp1VWmOK1d_Q895UnlY_-jmddKvmVfVKSnga1MK9Rqz7FIai'),
(53, '2016-02-29 10:36:20', '2016-02-29 10:36:20', 'Engineer', 'APA91bHYL8di_upzAPoUjdwMkoBuAVHa99bODxhvp4TZliMHZvn0VknQ0gcAUwsnk8G0iP2iy9s7CFKTF8rCKaXZRnY8xp1VWmOK1d_Q895UnlY_-jmddKvmVfVKSnga1MK9Rqz7FIai');

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `level` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `substitute_cert_id` bigint(20) DEFAULT NULL,
  `vendor_code` varchar(255) NOT NULL,
  `vendor_level` int(11) NOT NULL,
  `certificate_id` bigint(20) DEFAULT NULL,
  `substitute_certificate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`id`, `version`, `date_created`, `last_updated`, `level`, `name`, `substitute_cert_id`, `vendor_code`, `vendor_level`, `certificate_id`, `substitute_certificate_id`) VALUES
(1, 2, '2013-12-09 07:35:56', '2014-10-09 08:51:57', NULL, 'CCNA Routing and Switching', NULL, 'CISCO', 1, NULL, NULL),
(2, 1, '2013-12-09 07:36:09', '2014-10-09 08:52:14', NULL, 'CCNP Routing And Switching', NULL, 'CISCO', 1, NULL, NULL),
(3, 1, '2013-12-09 07:36:18', '2014-10-09 09:10:27', NULL, 'CCIE Routing and Switching', NULL, 'CISCO', 1, NULL, NULL),
(4, 0, '2013-12-09 07:36:52', '2013-12-09 07:36:52', NULL, 'HCDA', NULL, 'HUAWEI', 3, NULL, NULL),
(5, 1, '2013-12-09 07:37:03', '2013-12-09 07:37:35', NULL, 'HCNP', NULL, 'HUAWEI', 3, NULL, NULL),
(6, 0, '2013-12-09 07:37:49', '2013-12-09 07:37:49', NULL, 'HCIE', NULL, 'HUAWEI', 3, NULL, NULL),
(7, 0, '2013-12-09 07:38:11', '2013-12-09 07:38:11', NULL, 'JNCIA', NULL, 'JUNIPER', 3, NULL, NULL),
(8, 0, '2013-12-09 07:38:23', '2013-12-09 07:38:23', NULL, 'JNCIP', NULL, 'JUNIPER', 3, NULL, NULL),
(9, 0, '2013-12-09 07:38:37', '2013-12-09 07:38:37', NULL, 'JNCIE', NULL, 'JUNIPER', 3, NULL, NULL),
(10, 0, '2013-12-09 07:38:57', '2013-12-09 07:38:57', NULL, 'VCA', NULL, 'VMWARE', 2, NULL, NULL),
(11, 0, '2013-12-09 07:39:05', '2013-12-09 07:39:05', NULL, 'VCP', NULL, 'VMWARE', 2, NULL, NULL),
(12, 0, '2013-12-09 07:39:26', '2013-12-09 07:39:26', NULL, 'VCAP', NULL, 'VMWARE', 2, NULL, NULL),
(13, 0, '2013-12-09 07:39:51', '2013-12-09 07:39:51', NULL, 'VCDx', NULL, 'VMWARE', 2, NULL, NULL),
(14, 0, '2013-12-09 07:40:08', '2013-12-09 07:40:08', NULL, 'F5-CA', NULL, 'F5', 2, NULL, NULL),
(15, 0, '2013-12-09 07:40:19', '2013-12-09 07:40:19', NULL, 'F5-CTS', NULL, 'F5', 2, NULL, NULL),
(16, 0, '2013-12-09 07:40:30', '2013-12-09 07:40:30', NULL, 'F5-CSE', NULL, 'F5', 2, NULL, NULL),
(17, 0, '2013-12-09 07:40:45', '2013-12-09 07:40:45', NULL, 'F5-CADE', NULL, 'F5', 2, NULL, NULL),
(18, 0, '2013-12-09 07:40:59', '2013-12-09 07:40:59', NULL, 'F5-CADA', NULL, 'F5', 2, NULL, NULL),
(19, 0, '2013-12-09 07:41:14', '2013-12-09 07:41:14', NULL, 'MCSA', NULL, 'MICROSOFT', 2, NULL, NULL),
(20, 0, '2013-12-09 07:41:28', '2013-12-09 07:41:28', NULL, 'MCSE', NULL, 'MICROSOFT', 2, NULL, NULL),
(21, 0, '2013-12-09 07:41:39', '2013-12-09 07:41:39', NULL, 'MCSD', NULL, 'MICROSOFT', 2, NULL, NULL),
(22, 0, '2013-12-09 07:41:51', '2013-12-09 07:41:51', NULL, 'MCSM', NULL, 'MICROSOFT', 2, NULL, NULL),
(23, 1, '2013-12-09 08:19:51', '2014-10-09 08:52:53', NULL, 'CCNA Voice', NULL, 'CISCO', 1, NULL, NULL),
(24, 1, '2013-12-09 08:20:05', '2014-10-09 08:53:06', NULL, 'CCNA Wireless', NULL, 'CISCO', 1, NULL, NULL),
(25, 1, '2013-12-09 08:20:18', '2014-10-09 08:53:26', NULL, 'CCNA Security', NULL, 'CISCO', 1, NULL, NULL),
(27, 2, '2013-12-10 11:14:49', '2014-10-09 09:07:24', NULL, 'CCNP Security', NULL, 'CISCO', 1, NULL, NULL),
(28, 1, '2014-02-17 12:24:10', '2014-10-09 09:07:07', NULL, 'CCNP Voice', NULL, 'CISCO', 1, NULL, NULL),
(29, 0, '2014-10-09 08:53:49', '2014-10-09 08:53:49', NULL, 'CCNA Data Center', NULL, 'CISCO', 1, NULL, NULL),
(30, 0, '2014-10-09 08:54:08', '2014-10-09 08:54:08', NULL, 'CCNA SP Operations', NULL, 'CISCO', 1, NULL, NULL),
(31, 0, '2014-10-09 08:54:31', '2014-10-09 08:54:31', NULL, 'CCNA Service Provider', NULL, 'CISCO', 1, NULL, NULL),
(32, 0, '2014-10-09 08:54:46', '2014-10-09 08:54:46', NULL, 'CCNA Video', NULL, 'CISCO', 1, NULL, NULL),
(33, 0, '2014-10-09 08:55:18', '2014-10-09 08:55:18', NULL, 'CCDA', NULL, 'CISCO', 1, NULL, NULL),
(34, 0, '2014-10-09 08:55:44', '2014-10-09 08:55:44', NULL, 'CCNP Data Center', NULL, 'CISCO', 1, NULL, NULL),
(35, 0, '2014-10-09 08:56:12', '2014-10-09 08:56:12', NULL, 'CCNP SP Operations', NULL, 'CISCO', 1, NULL, NULL),
(36, 1, '2014-10-09 09:05:19', '2014-10-09 09:06:34', NULL, 'CCNP Wireless', NULL, 'CISCO', 1, NULL, NULL),
(37, 0, '2014-10-09 09:05:39', '2014-10-09 09:05:39', NULL, 'CCNP Service Provider', NULL, 'CISCO', 1, NULL, NULL),
(38, 0, '2014-10-09 09:08:02', '2014-10-09 09:08:02', NULL, 'CCDP', NULL, 'CISCO', 1, NULL, NULL),
(39, 0, '2014-10-09 09:11:08', '2014-10-09 09:11:08', NULL, 'CCIE Security', NULL, 'CISCO', 1, NULL, NULL),
(40, 0, '2014-10-09 09:11:21', '2014-10-09 09:11:21', NULL, 'CCIE Voice', NULL, 'CISCO', 1, NULL, NULL),
(41, 0, '2014-10-09 09:11:40', '2014-10-09 09:11:40', NULL, 'CCIE Data Center', NULL, 'CISCO', 1, NULL, NULL),
(42, 0, '2014-10-09 09:11:52', '2014-10-09 09:11:52', NULL, 'CCIE Service Provider', NULL, 'CISCO', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certificate_certificate`
--

CREATE TABLE `certificate_certificate` (
  `certificate_certificates_id` bigint(20) DEFAULT NULL,
  `certificate_id` bigint(20) DEFAULT NULL,
  `certificate_substitute_certs_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_substitute_certificate`
--

CREATE TABLE `certificate_substitute_certificate` (
  `certificate_substitute_certificates_id` bigint(20) DEFAULT NULL,
  `substitute_certificate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `province_id` bigint(20) NOT NULL,
  `home_city` bit(1) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `radius` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `version`, `date_created`, `last_updated`, `name`, `province_id`, `home_city`, `latitude`, `longitude`, `radius`) VALUES
(1, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Aceh Barat', 1, b'0', 0, 0, 0),
(2, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Aceh Barat Daya', 1, b'0', 0, 0, 0),
(3, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Aceh Besar', 1, b'0', 0, 0, 0),
(4, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Aceh Jaya', 1, b'0', 0, 0, 0),
(5, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Aceh Selatan', 1, b'0', 0, 0, 0),
(6, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Aceh Singkil', 1, b'0', 0, 0, 0),
(7, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Aceh Tamiang', 1, b'0', 0, 0, 0),
(8, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Aceh Tengah', 1, b'0', 0, 0, 0),
(9, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Aceh Tenggara', 1, b'0', 0, 0, 0),
(10, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Aceh Timur', 1, b'0', 0, 0, 0),
(11, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Aceh Utara', 1, b'0', 0, 0, 0),
(12, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bener Meriah', 1, b'0', 0, 0, 0),
(13, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bireuen', 1, b'0', 0, 0, 0),
(14, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Gayo Lues', 1, b'0', 0, 0, 0),
(15, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Nagan Raya', 1, b'0', 0, 0, 0),
(16, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pidie', 1, b'0', 0, 0, 0),
(17, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pidie Jaya', 1, b'0', 0, 0, 0),
(18, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Simeulue', 1, b'0', 0, 0, 0),
(19, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Banda Aceh', 1, b'0', 0, 0, 0),
(20, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Langsa', 1, b'0', 0, 0, 0),
(21, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Lhokseumawe', 1, b'0', 0, 0, 0),
(22, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Sabang', 1, b'0', 0, 0, 0),
(23, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Subulussalam', 1, b'0', 0, 0, 0),
(24, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Asahan', 2, b'0', 0, 0, 0),
(25, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Batu Bara', 2, b'0', 0, 0, 0),
(26, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Dairi', 2, b'0', 0, 0, 0),
(27, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Deli Serdang', 2, b'0', 0, 0, 0),
(28, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Humbang Hasundutan', 2, b'0', 0, 0, 0),
(29, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Karo', 2, b'0', 0, 0, 0),
(30, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Labuhanbatu', 2, b'0', 0, 0, 0),
(31, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Labuhanbatu Selatan', 2, b'0', 0, 0, 0),
(32, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Labuhanbatu Utara', 2, b'0', 0, 0, 0),
(33, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Langkat', 2, b'0', 0, 0, 0),
(34, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Mandailing Natal', 2, b'0', 0, 0, 0),
(35, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Nias', 2, b'0', 0, 0, 0),
(36, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Nias Barat', 2, b'0', 0, 0, 0),
(37, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Nias Selatan', 2, b'0', 0, 0, 0),
(38, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Nias Utara', 2, b'0', 0, 0, 0),
(39, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Padang Lawas', 2, b'0', 0, 0, 0),
(40, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Padang Lawas Utara', 2, b'0', 0, 0, 0),
(41, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pakpak Bharat', 2, b'0', 0, 0, 0),
(42, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Samosir', 2, b'0', 0, 0, 0),
(43, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Serdang Bedagai', 2, b'0', 0, 0, 0),
(44, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Simalungun', 2, b'0', 0, 0, 0),
(45, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tapanuli Selatan', 2, b'0', 0, 0, 0),
(46, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tapanuli Tengah', 2, b'0', 0, 0, 0),
(47, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tapanuli Utara', 2, b'0', 0, 0, 0),
(48, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Toba Samosir', 2, b'0', 0, 0, 0),
(49, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Binjai', 2, b'0', 0, 0, 0),
(50, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Gunung Sitoli', 2, b'0', 0, 0, 0),
(51, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Medan', 2, b'0', 0, 0, 0),
(52, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Padang Sidempuan', 2, b'0', 0, 0, 0),
(53, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Pematangsiantar', 2, b'0', 0, 0, 0),
(54, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Sibolga', 2, b'0', 0, 0, 0),
(55, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Tanjung Balai', 2, b'0', 0, 0, 0),
(56, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Tebing Tinggi', 2, b'0', 0, 0, 0),
(57, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bengkulu Selatan', 3, b'0', 0, 0, 0),
(58, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bengkulu Tengah', 3, b'0', 0, 0, 0),
(59, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bengkulu Utara', 3, b'0', 0, 0, 0),
(60, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Benteng', 3, b'0', 0, 0, 0),
(61, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kaur', 3, b'0', 0, 0, 0),
(62, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kepahiang', 3, b'0', 0, 0, 0),
(63, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lebong', 3, b'0', 0, 0, 0),
(64, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Mukomuko', 3, b'0', 0, 0, 0),
(65, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Rejang Lebong', 3, b'0', 0, 0, 0),
(66, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Seluma', 3, b'0', 0, 0, 0),
(67, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Bengkulu', 3, b'0', 0, 0, 0),
(68, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Batang Hari', 4, b'0', 0, 0, 0),
(69, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bungo', 4, b'0', 0, 0, 0),
(70, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kerinci', 4, b'0', 0, 0, 0),
(71, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Merangin', 4, b'0', 0, 0, 0),
(72, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Muaro Jambi', 4, b'0', 0, 0, 0),
(73, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sarolangun', 4, b'0', 0, 0, 0),
(74, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tanjung Jabung Barat', 4, b'0', 0, 0, 0),
(75, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tanjung Jabung Timur', 4, b'0', 0, 0, 0),
(76, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tebo', 4, b'0', 0, 0, 0),
(77, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Jambi', 4, b'0', 0, 0, 0),
(78, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Sungai Penuh', 4, b'0', 0, 0, 0),
(79, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bengkalis', 5, b'0', 0, 0, 0),
(80, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Indragiri Hilir', 5, b'0', 0, 0, 0),
(81, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Indragiri Hulu', 5, b'0', 0, 0, 0),
(82, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kampar', 5, b'0', 0, 0, 0),
(83, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kuantan Singingi', 5, b'0', 0, 0, 0),
(84, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pelalawan', 5, b'0', 0, 0, 0),
(85, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Rokan Hilir', 5, b'0', 0, 0, 0),
(86, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Rokan Hulu', 5, b'0', 0, 0, 0),
(87, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Siak', 5, b'0', 0, 0, 0),
(88, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Pekanbaru', 5, b'0', 0, 0, 0),
(89, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Dumai', 5, b'0', 0, 0, 0),
(90, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kepulauan Meranti', 5, b'0', 0, 0, 0),
(91, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Agam', 6, b'0', 0, 0, 0),
(92, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Dharmasraya', 6, b'0', 0, 0, 0),
(93, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kepulauan Mentawai', 6, b'0', 0, 0, 0),
(94, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lima Puluh Kota', 6, b'0', 0, 0, 0),
(95, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Padang Pariaman', 6, b'0', 0, 0, 0),
(96, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pasaman', 6, b'0', 0, 0, 0),
(97, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pasaman Barat', 6, b'0', 0, 0, 0),
(98, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pesisir Selatan', 6, b'0', 0, 0, 0),
(99, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sijunjung', 6, b'0', 0, 0, 0),
(100, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Solok', 6, b'0', 0, 0, 0),
(101, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Solok Selatan', 6, b'0', 0, 0, 0),
(102, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tanah Datar', 6, b'0', 0, 0, 0),
(103, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Bukittinggi', 6, b'0', 0, 0, 0),
(104, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Padang', 6, b'0', 0, 0, 0),
(105, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Padangpanjang', 6, b'0', 0, 0, 0),
(106, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Pariaman', 6, b'0', 0, 0, 0),
(107, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Payakumbuh', 6, b'0', 0, 0, 0),
(108, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Sawahlunto', 6, b'0', 0, 0, 0),
(109, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Solok', 6, b'0', 0, 0, 0),
(110, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Banyuasin', 7, b'0', 0, 0, 0),
(111, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Empat Lawang', 7, b'0', 0, 0, 0),
(112, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lahat', 7, b'0', 0, 0, 0),
(113, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Muara Enim', 7, b'0', 0, 0, 0),
(114, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Musi Banyuasin', 7, b'0', 0, 0, 0),
(115, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Musi Rawas', 7, b'0', 0, 0, 0),
(116, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Ogan Ilir', 7, b'0', 0, 0, 0),
(117, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Ogan Komering Ilir', 7, b'0', 0, 0, 0),
(118, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Ogan Komering Ulu', 7, b'0', 0, 0, 0),
(119, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Ogan Komering Ulu Selatan', 7, b'0', 0, 0, 0),
(120, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Ogan Komering Ulu Timur', 7, b'0', 0, 0, 0),
(121, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Lubuklinggau', 7, b'0', 0, 0, 0),
(122, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Pagar Alam', 7, b'0', 0, 0, 0),
(123, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Palembang', 7, b'0', 0, 0, 0),
(124, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Prabumulih', 7, b'0', 0, 0, 0),
(125, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Sorong', 29, b'0', 0, 0, 0),
(126, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lampung Barat', 8, b'0', 0, 0, 0),
(127, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lampung Selatan', 8, b'0', 0, 0, 0),
(128, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lampung Tengah', 8, b'0', 0, 0, 0),
(129, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lampung Timur', 8, b'0', 0, 0, 0),
(130, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lampung Utara', 8, b'0', 0, 0, 0),
(131, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Mesuji', 8, b'0', 0, 0, 0),
(132, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pesawaran', 8, b'0', 0, 0, 0),
(133, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pringsewu', 8, b'0', 0, 0, 0),
(134, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tanggamus', 8, b'0', 0, 0, 0),
(135, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tulang Bawang', 8, b'0', 0, 0, 0),
(136, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tulang Bawang Barat', 8, b'0', 0, 0, 0),
(137, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Way Kanan', 8, b'0', 0, 0, 0),
(138, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Bandar Lampung', 8, b'0', 0, 0, 0),
(139, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Metro', 8, b'0', 0, 0, 0),
(140, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bangka', 9, b'0', 0, 0, 0),
(141, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bangka Barat', 9, b'0', 0, 0, 0),
(142, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bangka Selatan', 9, b'0', 0, 0, 0),
(143, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bangka Tengah', 9, b'0', 0, 0, 0),
(144, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Belitung', 9, b'0', 0, 0, 0),
(145, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Belitung Timur', 9, b'0', 0, 0, 0),
(146, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Pangkal Pinang', 9, b'0', 0, 0, 0),
(147, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bintan', 10, b'0', 0, 0, 0),
(148, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Karimun', 10, b'0', 0, 0, 0),
(149, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kepulauan Anambas', 10, b'0', 0, 0, 0),
(150, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lingga', 10, b'0', 0, 0, 0),
(151, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Natuna', 10, b'0', 0, 0, 0),
(152, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Batam', 10, b'0', 0, 0, 0),
(153, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Tanjung Pinang', 10, b'0', 0, 0, 0),
(154, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lebak', 30, b'0', 0, 0, 0),
(155, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pandeglang', 30, b'0', 0, 0, 0),
(156, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Serang', 30, b'0', 0, 0, 0),
(157, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tangerang', 30, b'0', 0, 0, 0),
(158, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Cilegon', 30, b'0', 0, 0, 0),
(159, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Serang', 30, b'0', 0, 0, 0),
(160, 1, '2013-10-25 17:38:00', '2013-10-31 10:01:12', 'Kota Tangerang', 30, b'1', 0, 0, 0),
(161, 1, '2013-10-25 17:38:00', '2013-10-31 10:01:08', 'Kota Tangerang Selatan', 30, b'1', 0, 0, 0),
(162, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bandung', 31, b'0', 0, 0, 0),
(163, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bandung Barat', 31, b'0', 0, 0, 0),
(164, 1, '2013-10-25 17:38:00', '2013-10-31 10:00:56', 'Kabupaten Bekasi', 31, b'1', 0, 0, 0),
(165, 1, '2013-10-25 17:38:00', '2013-10-31 10:00:52', 'Kabupaten Bogor', 31, b'1', 0, 0, 0),
(166, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Ciamis', 31, b'0', 0, 0, 0),
(167, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Cianjur', 31, b'0', 0, 0, 0),
(168, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Cirebon', 31, b'0', 0, 0, 0),
(169, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Garut', 31, b'0', 0, 0, 0),
(170, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Indramayu', 31, b'0', 0, 0, 0),
(171, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Karawang', 31, b'0', 0, 0, 0),
(172, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kuningan', 31, b'0', 0, 0, 0),
(173, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Majalengka', 31, b'0', 0, 0, 0),
(174, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Purwakarta', 31, b'0', 0, 0, 0),
(175, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Subang', 31, b'0', 0, 0, 0),
(176, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sukabumi', 31, b'0', 0, 0, 0),
(177, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sumedang', 31, b'0', 0, 0, 0),
(178, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tasikmalaya', 31, b'0', 0, 0, 0),
(179, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Bandung', 31, b'0', 0, 0, 0),
(180, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Banjar', 31, b'0', 0, 0, 0),
(181, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Bekasi', 31, b'0', 0, 0, 0),
(182, 1, '2013-10-25 17:38:00', '2013-10-31 10:01:00', 'Kota Bogor', 31, b'1', 0, 0, 0),
(183, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Cimahi', 31, b'0', 0, 0, 0),
(184, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Cirebon', 31, b'0', 0, 0, 0),
(185, 1, '2013-10-25 17:38:00', '2013-10-31 10:01:04', 'Kota Depok', 31, b'1', 0, 0, 0),
(186, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Sukabumi', 31, b'0', 0, 0, 0),
(187, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Tasikmalaya', 31, b'0', 0, 0, 0),
(188, 1, '2013-10-25 17:38:00', '2013-10-31 09:58:39', 'Kabupaten Kepulauan Seribu', 11, b'1', 0, 0, 0),
(189, 1, '2013-10-25 17:38:00', '2013-10-31 09:58:30', 'Kota Jakarta Barat', 11, b'1', 0, 0, 0),
(190, 1, '2013-10-25 17:38:00', '2013-10-31 09:59:43', 'Kota Jakarta Pusat', 11, b'1', 0, 0, 0),
(191, 1, '2013-10-25 17:38:00', '2013-10-31 09:59:39', 'Kota Jakarta Selatan', 11, b'1', 0, 0, 0),
(192, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Jakarta Timur', 11, b'1', 0, 0, 0),
(193, 1, '2013-10-25 17:38:00', '2013-10-31 09:58:45', 'Kota Jakarta Utara', 11, b'1', 0, 0, 0),
(194, 1, '2013-10-25 17:38:00', '2013-10-31 09:59:36', 'Kabupaten Banjarnegara', 11, b'1', 0, 0, 0),
(195, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Banyumas', 32, b'0', 0, 0, 0),
(196, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Batang', 32, b'0', 0, 0, 0),
(197, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Blora', 32, b'0', 0, 0, 0),
(198, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Boyolali', 32, b'0', 0, 0, 0),
(199, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Brebes', 32, b'0', 0, 0, 0),
(200, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Cilacap', 32, b'0', 0, 0, 0),
(201, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Demak', 32, b'0', 0, 0, 0),
(202, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Grobogan', 32, b'0', 0, 0, 0),
(203, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Jepara', 32, b'0', 0, 0, 0),
(204, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Karanganyar', 32, b'0', 0, 0, 0),
(205, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kebumen', 32, b'0', 0, 0, 0),
(206, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kendal', 32, b'0', 0, 0, 0),
(207, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Klaten', 32, b'0', 0, 0, 0),
(208, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kudus', 32, b'0', 0, 0, 0),
(209, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Magelang', 32, b'0', 0, 0, 0),
(210, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pati', 32, b'0', 0, 0, 0),
(211, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pekalongan', 32, b'0', 0, 0, 0),
(212, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pemalang', 32, b'0', 0, 0, 0),
(213, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Purbalingga', 32, b'0', 0, 0, 0),
(214, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Purworejo', 32, b'0', 0, 0, 0),
(215, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Rembang', 32, b'0', 0, 0, 0),
(216, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Semarang', 32, b'0', 0, 0, 0),
(217, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sragen', 32, b'0', 0, 0, 0),
(218, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sukoharjo', 32, b'0', 0, 0, 0),
(219, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tegal', 32, b'0', 0, 0, 0),
(220, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Temanggung', 32, b'0', 0, 0, 0),
(221, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Wonogiri', 32, b'0', 0, 0, 0),
(222, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Wonosobo', 32, b'0', 0, 0, 0),
(223, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Magelang', 32, b'0', 0, 0, 0),
(224, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Pekalongan', 32, b'0', 0, 0, 0),
(225, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Salatiga', 32, b'0', 0, 0, 0),
(226, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Semarang', 32, b'0', 0, 0, 0),
(227, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Surakarta', 32, b'0', 0, 0, 0),
(228, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Tegal', 32, b'0', 0, 0, 0),
(229, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bangkalan', 33, b'0', 0, 0, 0),
(230, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Banyuwangi', 33, b'0', 0, 0, 0),
(231, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Blitar', 33, b'0', 0, 0, 0),
(232, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bojonegoro', 33, b'0', 0, 0, 0),
(233, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bondowoso', 33, b'0', 0, 0, 0),
(234, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Gresik', 33, b'0', 0, 0, 0),
(235, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Jember', 33, b'0', 0, 0, 0),
(236, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Jombang', 33, b'0', 0, 0, 0),
(237, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kediri', 33, b'0', 0, 0, 0),
(238, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lamongan', 33, b'0', 0, 0, 0),
(239, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lumajang', 33, b'0', 0, 0, 0),
(240, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Madiun', 33, b'0', 0, 0, 0),
(241, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Magetan', 33, b'0', 0, 0, 0),
(242, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Malang', 33, b'0', 0, 0, 0),
(243, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Mojokerto', 33, b'0', 0, 0, 0),
(244, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Nganjuk', 33, b'0', 0, 0, 0),
(245, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Ngawi', 33, b'0', 0, 0, 0),
(246, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pacitan', 33, b'0', 0, 0, 0),
(247, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pamekasan', 33, b'0', 0, 0, 0),
(248, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pasuruan', 33, b'0', 0, 0, 0),
(249, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Ponorogo', 33, b'0', 0, 0, 0),
(250, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Probolinggo', 33, b'0', 0, 0, 0),
(251, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sampang', 33, b'0', 0, 0, 0),
(252, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sidoarjo', 33, b'0', 0, 0, 0),
(253, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Situbondo', 33, b'0', 0, 0, 0),
(254, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sumenep', 33, b'0', 0, 0, 0),
(255, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Trenggalek', 33, b'0', 0, 0, 0),
(256, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tuban', 33, b'0', 0, 0, 0),
(257, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tulungagung', 33, b'0', 0, 0, 0),
(258, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Batu', 33, b'0', 0, 0, 0),
(259, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Blitar', 33, b'0', 0, 0, 0),
(260, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Kediri', 33, b'0', 0, 0, 0),
(261, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Madiun', 33, b'0', 0, 0, 0),
(262, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Malang', 33, b'0', 0, 0, 0),
(263, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Mojokerto', 33, b'0', 0, 0, 0),
(264, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Pasuruan', 33, b'0', 0, 0, 0),
(265, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Probolinggo', 33, b'0', 0, 0, 0),
(266, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Surabaya', 33, b'0', 0, 0, 0),
(267, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bantul', 12, b'0', 0, 0, 0),
(268, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Gunung Kidul', 12, b'0', 0, 0, 0),
(269, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kulon Progo', 12, b'0', 0, 0, 0),
(270, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sleman', 12, b'0', 0, 0, 0),
(271, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Yogyakarta', 12, b'0', 0, 0, 0),
(272, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Badung', 13, b'0', 0, 0, 0),
(273, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bangli', 13, b'0', 0, 0, 0),
(274, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Buleleng', 13, b'0', 0, 0, 0),
(275, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Gianyar', 13, b'0', 0, 0, 0),
(276, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Jembrana', 13, b'0', 0, 0, 0),
(277, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Karangasem', 13, b'0', 0, 0, 0),
(278, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Klungkung', 13, b'0', 0, 0, 0),
(279, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tabanan', 13, b'0', 0, 0, 0),
(280, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Denpasar', 13, b'0', 0, 0, 0),
(281, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bima', 14, b'0', 0, 0, 0),
(282, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Dompu', 14, b'0', 0, 0, 0),
(283, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lombok Barat', 14, b'0', 0, 0, 0),
(284, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lombok Tengah', 14, b'0', 0, 0, 0),
(285, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lombok Timur', 14, b'0', 0, 0, 0),
(286, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lombok Utara', 14, b'0', 0, 0, 0),
(287, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sumbawa', 14, b'0', 0, 0, 0),
(288, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sumbawa Barat', 14, b'0', 0, 0, 0),
(289, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Bima', 14, b'0', 0, 0, 0),
(290, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Mataram', 14, b'0', 0, 0, 0),
(291, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kupang', 15, b'0', 0, 0, 0),
(292, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Timor Tengah Selatan', 15, b'0', 0, 0, 0),
(293, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Timor Tengah Utara', 15, b'0', 0, 0, 0),
(294, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Belu', 15, b'0', 0, 0, 0),
(295, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Alor', 15, b'0', 0, 0, 0),
(296, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Flores Timur', 15, b'0', 0, 0, 0),
(297, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sikka', 15, b'0', 0, 0, 0),
(298, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Ende', 15, b'0', 0, 0, 0),
(299, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Ngada', 15, b'0', 0, 0, 0),
(300, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Manggarai', 15, b'0', 0, 0, 0),
(301, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sumba Timur', 15, b'0', 0, 0, 0),
(302, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sumba Barat', 15, b'0', 0, 0, 0),
(303, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lembata', 15, b'0', 0, 0, 0),
(304, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Rote Ndao', 15, b'0', 0, 0, 0),
(305, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Manggarai Barat', 15, b'0', 0, 0, 0),
(306, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Nagekeo', 15, b'0', 0, 0, 0),
(307, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sumba Tengah', 15, b'0', 0, 0, 0),
(308, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sumba Barat Daya', 15, b'0', 0, 0, 0),
(309, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Manggarai Timur', 15, b'0', 0, 0, 0),
(310, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sabu Raijua', 15, b'0', 0, 0, 0),
(311, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Kupang', 15, b'0', 0, 0, 0),
(312, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bengkayang', 16, b'0', 0, 0, 0),
(313, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kapuas Hulu', 16, b'0', 0, 0, 0),
(314, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kayong Utara', 16, b'0', 0, 0, 0),
(315, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Ketapang', 16, b'0', 0, 0, 0),
(316, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kubu Raya', 16, b'0', 0, 0, 0),
(317, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Landak', 16, b'0', 0, 0, 0),
(318, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Melawi', 16, b'0', 0, 0, 0),
(319, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pontianak', 16, b'0', 0, 0, 0),
(320, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sambas', 16, b'0', 0, 0, 0),
(321, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sanggau', 16, b'0', 0, 0, 0),
(322, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sekadau', 16, b'0', 0, 0, 0),
(323, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sintang', 16, b'0', 0, 0, 0),
(324, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Pontianak', 16, b'0', 0, 0, 0),
(325, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Singkawang', 16, b'0', 0, 0, 0),
(326, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Balangan', 17, b'0', 0, 0, 0),
(327, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Banjar', 17, b'0', 0, 0, 0),
(328, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Barito Kuala', 17, b'0', 0, 0, 0),
(329, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Hulu Sungai Selatan', 17, b'0', 0, 0, 0),
(330, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Hulu Sungai Tengah', 17, b'0', 0, 0, 0),
(331, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Hulu Sungai Utara', 17, b'0', 0, 0, 0),
(332, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kotabaru', 17, b'0', 0, 0, 0),
(333, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tabalong', 17, b'0', 0, 0, 0),
(334, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tanah Bumbu', 17, b'0', 0, 0, 0),
(335, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tanah Laut', 17, b'0', 0, 0, 0),
(336, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tapin', 17, b'0', 0, 0, 0),
(337, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Banjarbaru', 17, b'0', 0, 0, 0),
(338, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Banjarmasin', 17, b'0', 0, 0, 0),
(339, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Barito Selatan', 18, b'0', 0, 0, 0),
(340, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Barito Timur', 18, b'0', 0, 0, 0),
(341, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Barito Utara', 18, b'0', 0, 0, 0),
(342, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Gunung Mas', 18, b'0', 0, 0, 0),
(343, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kapuas', 18, b'0', 0, 0, 0),
(344, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Katingan', 18, b'0', 0, 0, 0),
(345, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kotawaringin Barat', 18, b'0', 0, 0, 0),
(346, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kotawaringin Timur', 18, b'0', 0, 0, 0),
(347, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lamandau', 18, b'0', 0, 0, 0),
(348, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Murung Raya', 18, b'0', 0, 0, 0),
(349, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pulang Pisau', 18, b'0', 0, 0, 0),
(350, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sukamara', 18, b'0', 0, 0, 0),
(351, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Seruyan', 18, b'0', 0, 0, 0),
(352, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Palangka Raya', 18, b'0', 0, 0, 0),
(353, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Berau', 19, b'0', 0, 0, 0),
(354, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bulungan', 19, b'0', 0, 0, 0),
(355, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kutai Barat', 19, b'0', 0, 0, 0),
(356, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kutai Kartanegara', 19, b'0', 0, 0, 0),
(357, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kutai Timur', 19, b'0', 0, 0, 0),
(358, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Malinau', 19, b'0', 0, 0, 0),
(359, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Nunukan', 19, b'0', 0, 0, 0),
(360, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Paser', 19, b'0', 0, 0, 0),
(361, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Penajam Paser Utara', 19, b'0', 0, 0, 0),
(362, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tana Tidung', 19, b'0', 0, 0, 0),
(363, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Balikpapan', 19, b'0', 0, 0, 0),
(364, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Bontang', 19, b'0', 0, 0, 0),
(365, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Samarinda', 19, b'0', 0, 0, 0),
(366, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Tarakan', 19, b'0', 0, 0, 0),
(367, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Boalemo', 20, b'0', 0, 0, 0),
(368, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bone Bolango', 20, b'0', 0, 0, 0),
(369, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Gorontalo', 20, b'0', 0, 0, 0),
(370, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Gorontalo Utara', 20, b'0', 0, 0, 0),
(371, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pohuwato', 20, b'0', 0, 0, 0),
(372, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Gorontalo', 20, b'0', 0, 0, 0),
(373, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bantaeng', 21, b'0', 0, 0, 0),
(374, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Barru', 21, b'0', 0, 0, 0),
(375, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bone', 21, b'0', 0, 0, 0),
(376, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bulukumba', 21, b'0', 0, 0, 0),
(377, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Enrekang', 21, b'0', 0, 0, 0),
(378, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Gowa', 21, b'0', 0, 0, 0),
(379, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Jeneponto', 21, b'0', 0, 0, 0),
(380, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kepulauan Selayar', 21, b'0', 0, 0, 0),
(381, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Luwu', 21, b'0', 0, 0, 0),
(382, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Luwu Timur', 21, b'0', 0, 0, 0),
(383, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Luwu Utara', 21, b'0', 0, 0, 0),
(384, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Maros', 21, b'0', 0, 0, 0),
(385, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pangkajene dan Kepulauan', 21, b'0', 0, 0, 0),
(386, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pinrang', 21, b'0', 0, 0, 0),
(387, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sidenreng Rappang', 21, b'0', 0, 0, 0),
(388, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sinjai', 21, b'0', 0, 0, 0),
(389, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Soppeng', 21, b'0', 0, 0, 0),
(390, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Takalar', 21, b'0', 0, 0, 0),
(391, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tana Toraja', 21, b'0', 0, 0, 0),
(392, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Toraja Utara', 21, b'0', 0, 0, 0),
(393, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Wajo', 21, b'0', 0, 0, 0),
(394, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Makassar', 21, b'0', 0, 0, 0),
(395, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Palopo', 21, b'0', 0, 0, 0),
(396, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Parepare', 21, b'0', 0, 0, 0),
(397, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bombana', 22, b'0', 0, 0, 0),
(398, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Buton', 22, b'0', 0, 0, 0),
(399, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Buton Utara', 22, b'0', 0, 0, 0),
(400, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kolaka', 22, b'0', 0, 0, 0),
(401, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kolaka Utara', 22, b'0', 0, 0, 0),
(402, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Konawe', 22, b'0', 0, 0, 0),
(403, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Konawe Selatan', 22, b'0', 0, 0, 0),
(404, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Konawe Utara', 22, b'0', 0, 0, 0),
(405, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Muna', 22, b'0', 0, 0, 0),
(406, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Wakatobi', 22, b'0', 0, 0, 0),
(407, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Bau-Bau', 22, b'0', 0, 0, 0),
(408, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Kendari', 22, b'0', 0, 0, 0),
(409, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Banggai', 23, b'0', 0, 0, 0),
(410, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Banggai Kepulauan', 23, b'0', 0, 0, 0),
(411, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Buol', 23, b'0', 0, 0, 0),
(412, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Donggala', 23, b'0', 0, 0, 0),
(413, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Morowali', 23, b'0', 0, 0, 0),
(414, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Parigi Moutong', 23, b'0', 0, 0, 0),
(415, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Poso', 23, b'0', 0, 0, 0),
(416, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tojo Una-Una', 23, b'0', 0, 0, 0),
(417, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Toli-Toli', 23, b'0', 0, 0, 0),
(418, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sigi', 23, b'0', 0, 0, 0),
(419, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Palu', 23, b'0', 0, 0, 0),
(420, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bolaang Mongondow', 24, b'0', 0, 0, 0),
(421, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bolaang Mongondow Selatan', 24, b'0', 0, 0, 0),
(422, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bolaang Mongondow Timur', 24, b'0', 0, 0, 0),
(423, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Bolaang Mongondow Utara', 24, b'0', 0, 0, 0),
(424, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kepulauan Sangihe', 24, b'0', 0, 0, 0),
(425, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kepulauan Siau Tagulandang Biaro', 24, b'0', 0, 0, 0),
(426, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kepulauan Talaud', 24, b'0', 0, 0, 0),
(427, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Minahasa', 24, b'0', 0, 0, 0),
(428, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Minahasa Selatan', 24, b'0', 0, 0, 0),
(429, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Minahasa Tenggara', 24, b'0', 0, 0, 0),
(430, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Minahasa Utara', 24, b'0', 0, 0, 0),
(431, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Bitung', 24, b'0', 0, 0, 0),
(432, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Kotamobagu', 24, b'0', 0, 0, 0),
(433, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Manado', 24, b'0', 0, 0, 0),
(434, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Tomohon', 24, b'0', 0, 0, 0),
(435, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Majene', 25, b'0', 0, 0, 0),
(436, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Mamasa', 25, b'0', 0, 0, 0),
(437, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Mamuju', 25, b'0', 0, 0, 0),
(438, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Mamuju Utara', 25, b'0', 0, 0, 0),
(439, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Polewali Mandar', 25, b'0', 0, 0, 0),
(440, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Buru', 26, b'0', 0, 0, 0),
(441, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Buru Selatan', 26, b'0', 0, 0, 0),
(442, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kepulauan Aru', 26, b'0', 0, 0, 0),
(443, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Maluku Barat Daya', 26, b'0', 0, 0, 0),
(444, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Maluku Tengah', 26, b'0', 0, 0, 0),
(445, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Maluku Tenggara', 26, b'0', 0, 0, 0),
(446, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Maluku Tenggara Barat', 26, b'0', 0, 0, 0),
(447, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Seram Bagian Barat', 26, b'0', 0, 0, 0),
(448, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Seram Bagian Timur', 26, b'0', 0, 0, 0),
(449, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Ambon', 26, b'0', 0, 0, 0),
(450, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Tual', 26, b'0', 0, 0, 0),
(451, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Halmahera Barat', 27, b'0', 0, 0, 0),
(452, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Halmahera Tengah', 27, b'0', 0, 0, 0),
(453, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Halmahera Utara', 27, b'0', 0, 0, 0),
(454, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Halmahera Selatan', 27, b'0', 0, 0, 0),
(455, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kepulauan Sula', 27, b'0', 0, 0, 0),
(456, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Halmahera Timur', 27, b'0', 0, 0, 0),
(457, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pulau Morotai', 27, b'0', 0, 0, 0),
(458, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Ternate', 27, b'0', 0, 0, 0),
(459, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Tidore Kepulauan', 27, b'0', 0, 0, 0),
(460, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Asmat', 28, b'0', 0, 0, 0),
(461, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Biak Numfor', 28, b'0', 0, 0, 0),
(462, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Boven Digoel', 28, b'0', 0, 0, 0),
(463, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Deiyai', 28, b'0', 0, 0, 0),
(464, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Dogiyai', 28, b'0', 0, 0, 0),
(465, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Intan Jaya', 28, b'0', 0, 0, 0),
(466, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Jayapura', 28, b'0', 0, 0, 0),
(467, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Jayawijaya', 28, b'0', 0, 0, 0),
(468, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Keerom', 28, b'0', 0, 0, 0),
(469, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kepulauan Yapen', 28, b'0', 0, 0, 0),
(470, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Lanny Jaya', 28, b'0', 0, 0, 0),
(471, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Mamberamo Raya', 28, b'0', 0, 0, 0),
(472, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Mamberamo Tengah', 28, b'0', 0, 0, 0),
(473, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Mappi', 28, b'0', 0, 0, 0),
(474, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Merauke', 28, b'0', 0, 0, 0),
(475, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Mimika', 28, b'0', 0, 0, 0),
(476, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Nabire', 28, b'0', 0, 0, 0),
(477, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Nduga', 28, b'0', 0, 0, 0),
(478, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Paniai', 28, b'0', 0, 0, 0),
(479, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Pegunungan Bintang', 28, b'0', 0, 0, 0),
(480, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Puncak', 28, b'0', 0, 0, 0),
(481, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Puncak Jaya', 28, b'0', 0, 0, 0),
(482, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sarmi', 28, b'0', 0, 0, 0),
(483, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Supiori', 28, b'0', 0, 0, 0),
(484, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tolikara', 28, b'0', 0, 0, 0),
(485, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Waropen', 28, b'0', 0, 0, 0),
(486, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Yahukimo', 28, b'0', 0, 0, 0),
(487, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Yalimo', 28, b'0', 0, 0, 0),
(488, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Jayapura', 28, b'0', 0, 0, 0),
(489, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Fakfak', 29, b'0', 0, 0, 0),
(490, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Kaimana', 29, b'0', 0, 0, 0),
(491, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Manokwari', 29, b'0', 0, 0, 0),
(492, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Maybrat', 29, b'0', 0, 0, 0),
(493, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Raja Ampat', 29, b'0', 0, 0, 0),
(494, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sorong', 29, b'0', 0, 0, 0),
(495, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Sorong Selatan', 29, b'0', 0, 0, 0),
(496, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Tambrauw', 29, b'0', 0, 0, 0),
(497, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Teluk Bintuni', 29, b'0', 0, 0, 0),
(498, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Teluk Wondama', 29, b'0', 0, 0, 0),
(499, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Sorong', 29, b'0', 0, 0, 0),
(500, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Banjar', 17, b'0', 0, 0, 0),
(501, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'KabupatenKotabaru', 17, b'0', 0, 0, 0),
(502, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Surakarta', 32, b'0', 0, 0, 0),
(503, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Gunung Kidul', 32, b'0', 0, 0, 0),
(504, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kudus', 32, b'0', 0, 0, 0),
(505, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Baru', 12, b'0', 0, 0, 0),
(506, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Jember', 33, b'0', 0, 0, 0),
(507, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Garut', 31, b'0', 0, 0, 0),
(508, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Palangkaraya', 18, b'0', 0, 0, 0),
(509, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Lombok', 14, b'0', 0, 0, 0),
(510, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Jember', 33, b'0', 0, 0, 0),
(511, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Semarang', 32, b'0', 0, 0, 0),
(512, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kabupaten Gresik', 33, b'0', 0, 0, 0),
(513, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Lombok Barat', 14, b'0', 0, 0, 0),
(514, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Gianyar', 13, b'0', 0, 0, 0),
(515, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Badung', 13, b'0', 0, 0, 0),
(516, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Bangli', 13, b'0', 0, 0, 0),
(517, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Tabanan', 13, b'0', 0, 0, 0),
(518, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kab. Kubu Raya', 16, b'0', 0, 0, 0),
(519, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kab. Sintang', 16, b'0', 0, 0, 0),
(520, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kab. Melawi', 16, b'0', 0, 0, 0),
(521, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kab. Kapuas Hulu', 16, b'0', 0, 0, 0),
(522, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Baru', 17, b'0', 0, 0, 0),
(523, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Banjar', 17, b'0', 0, 0, 0),
(524, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Martapura', 17, b'0', 0, 0, 0),
(525, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Banjarbaru', 17, b'0', 0, 0, 0);
INSERT INTO `city` (`id`, `version`, `date_created`, `last_updated`, `name`, `province_id`, `home_city`, `latitude`, `longitude`, `radius`) VALUES
(526, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Landasan Ulin', 17, b'0', 0, 0, 0),
(527, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Banjarmasin', 17, b'0', 0, 0, 0),
(528, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kertak Hanyar', 17, b'0', 0, 0, 0),
(529, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kampung Lampung Selatan', 8, b'0', 0, 0, 0),
(530, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kampung Tanggamus', 8, b'0', 0, 0, 0),
(531, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kampung Lampung Tengah', 8, b'0', 0, 0, 0),
(532, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kampung Lampung Timur', 8, b'0', 0, 0, 0),
(533, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Garut', 31, b'0', 0, 0, 0),
(534, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Ciamis', 31, b'0', 0, 0, 0),
(535, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Lombok Barat', 14, b'0', 0, 0, 0),
(536, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Kudus', 32, b'0', 0, 0, 0),
(537, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kota Kubu Raya', 16, b'0', 0, 0, 0),
(538, 0, '2015-03-24 00:00:00', '2015-03-11 00:00:00', 'Undeffined', 11, b'0', 0, 0, 0),
(539, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined2', 11, b'0', 0, 0, 0),
(540, 0, '2015-03-24 00:00:00', '2015-03-19 00:00:00', 'Undefined3', 11, b'0', 0, 0, 0),
(541, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined4', 11, b'0', 0, 0, 0),
(542, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 5', 11, b'1', 0, 0, 0),
(543, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 6', 11, b'1', 0, 0, 0),
(544, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 7', 11, b'1', 0, 0, 0),
(545, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 8', 11, b'1', 0, 0, 0),
(546, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 9', 11, b'1', 0, 0, 0),
(547, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 10', 11, b'1', 0, 0, 0),
(548, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 11', 11, b'1', 0, 0, 0),
(549, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 12', 11, b'1', 0, 0, 0),
(550, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 13', 11, b'1', 0, 0, 0),
(551, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 14', 11, b'1', 0, 0, 0),
(552, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 15', 11, b'1', 0, 0, 0),
(553, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 16', 11, b'1', 0, 0, 0),
(554, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 17', 11, b'1', 0, 0, 0),
(555, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 18', 11, b'1', 0, 0, 0),
(556, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 19', 11, b'1', 0, 0, 0),
(557, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 20', 11, b'1', 0, 0, 0),
(558, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 21', 11, b'1', 0, 0, 0),
(559, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 22', 11, b'1', 0, 0, 0),
(560, 0, '2015-03-24 00:00:00', '2015-03-24 00:00:00', 'Undefined 23', 11, b'1', 0, 0, 0),
(561, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(562, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(563, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(564, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(565, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(566, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(567, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(568, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(569, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(570, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(571, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(572, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(573, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(574, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(575, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(576, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(577, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(578, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(579, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(580, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(581, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(582, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(583, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(584, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(585, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(586, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(587, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(588, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(589, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(590, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(591, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(592, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(593, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(594, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(595, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(596, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(597, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(598, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(599, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(600, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(601, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(602, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(603, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(604, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(605, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(606, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(607, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(608, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(609, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(610, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(611, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(612, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(613, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(614, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(615, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(616, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(617, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(618, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(619, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(620, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(621, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(622, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(623, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(624, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(625, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(626, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(627, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(628, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(629, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(630, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(631, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(632, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(633, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(634, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(635, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(636, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(637, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(638, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(639, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(640, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(641, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(642, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(643, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(644, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(645, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(646, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(647, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(648, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(649, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(650, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(651, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(652, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(653, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(654, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(655, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(656, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(657, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(658, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(659, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(660, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(661, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(662, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(663, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(664, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(665, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(666, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(667, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(668, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(669, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(670, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(671, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(672, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(673, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(674, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(675, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(676, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(677, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(678, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(679, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(680, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(681, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(682, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(683, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(684, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(685, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(686, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(687, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(688, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(689, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(690, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(691, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(692, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(693, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(694, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(695, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(696, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(697, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(698, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(699, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(700, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(701, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(702, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(703, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(704, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(705, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(706, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(707, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(708, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(709, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(710, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(711, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(712, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(713, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(714, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(715, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(716, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(717, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(718, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(719, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(720, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(721, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(722, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(723, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(724, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(725, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(726, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(727, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(728, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(729, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(730, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(731, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(732, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(733, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(734, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(735, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(736, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(737, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(738, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(739, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(740, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(741, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(742, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(743, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(744, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(745, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(746, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(747, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(748, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(749, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(750, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(751, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(752, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(753, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(754, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(755, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(756, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(757, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(758, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(759, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(760, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(761, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(762, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(763, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(764, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(765, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(766, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(767, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(768, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(769, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(770, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(771, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(772, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(773, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(774, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(775, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(776, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(777, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(778, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(779, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(780, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(781, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(782, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(783, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(784, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(785, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(786, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(787, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(788, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(789, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(790, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(791, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(792, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(793, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(794, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(795, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(796, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(797, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(798, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(799, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(800, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(801, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(802, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(803, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(804, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(805, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(806, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(807, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(808, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(809, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(810, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(811, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(812, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(813, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(814, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(815, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(816, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(817, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(818, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(819, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(820, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(821, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(822, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(823, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(824, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(825, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(826, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(827, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(828, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(829, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(830, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(831, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(832, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(833, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(834, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(835, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(836, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(837, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(838, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(839, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(840, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(841, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(842, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(843, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(844, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(845, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(846, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(847, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(848, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(849, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(850, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(851, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(852, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(853, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(854, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(855, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(856, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(857, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(858, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(859, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(860, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(861, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(862, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(863, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(864, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(865, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(866, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(867, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(868, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(869, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(870, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(871, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(872, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(873, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(874, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(875, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(876, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(877, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(878, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(879, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(880, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(881, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(882, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(883, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(884, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(885, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(886, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(887, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(888, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(889, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(890, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(891, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(892, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(893, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(894, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(895, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(896, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(897, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(898, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(899, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(900, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(901, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(902, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(903, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(904, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(905, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(906, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(907, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(908, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(909, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(910, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(911, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(912, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(913, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(914, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(915, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(916, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(917, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(918, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(919, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(920, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(921, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(922, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(923, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(924, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(925, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(926, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(927, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(928, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(929, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(930, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(931, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(932, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(933, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(934, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(935, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(936, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(937, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(938, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(939, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(940, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(941, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(942, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(943, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(944, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(945, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(946, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(947, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(948, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(949, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(950, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(951, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(952, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(953, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(954, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(955, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(956, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(957, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(958, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(959, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(960, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(961, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(962, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(963, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(964, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(965, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(966, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(967, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(968, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(969, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(970, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(971, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(972, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(973, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(974, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(975, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(976, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(977, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(978, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(979, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(980, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(981, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(982, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(983, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(984, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(985, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(986, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(987, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(988, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(989, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(990, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(991, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(992, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(993, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(994, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(995, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(996, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(997, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(998, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(999, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(1000, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(1001, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(1002, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(1003, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(1004, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(1005, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0),
(1006, 0, '2015-02-20 00:00:00', '2015-02-20 00:00:00', '', 0, b'0', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `compact_transaction`
--

CREATE TABLE `compact_transaction` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `compact_transaction_details`
--

CREATE TABLE `compact_transaction_details` (
  `id` bigint(20) NOT NULL,
  `compact_transaction_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `final_status_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `sequence_no` bigint(20) NOT NULL,
  `transaction_group_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact_role`
--

CREATE TABLE `contact_role` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_role`
--

INSERT INTO `contact_role` (`id`, `date_created`, `last_updated`, `name`, `version`) VALUES
(1, '2013-10-02 00:00:00', '2013-10-02 00:00:00', 'Purchasing', 0),
(2, '2013-10-02 00:00:00', '2013-10-02 00:00:00', 'Finance', 0),
(3, '2013-10-02 00:00:00', '2013-10-02 00:00:00', 'Warehouse', 0),
(4, '2013-10-02 00:00:00', '2013-10-02 00:00:00', 'Logistic', 0),
(5, '2013-10-02 00:00:00', '2013-10-02 00:00:00', 'Delivery', 0),
(6, '2013-10-02 00:00:00', '2013-10-02 00:00:00', 'Support', 0),
(7, '2013-10-02 00:00:00', '2013-10-02 00:00:00', 'Sales', 0),
(8, '2013-10-02 00:00:00', '2013-10-02 00:00:00', 'IT', 0),
(9, '2013-10-02 00:00:00', '2013-10-02 00:00:00', 'GA', 0),
(10, '2013-10-02 00:00:00', '2013-10-02 00:00:00', 'HR', 0),
(11, '2013-10-02 00:00:00', '2013-10-02 00:00:00', 'BOD', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `date_start` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  `sla_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `detail_per_item` bit(1) DEFAULT NULL,
  `exception` bit(1) DEFAULT NULL,
  `expired` bit(1) DEFAULT NULL,
  `extend_days` int(11) DEFAULT NULL,
  `grace_period` int(11) DEFAULT NULL,
  `notes` text,
  `last_reminder` datetime DEFAULT NULL,
  `manual_ref` varchar(255) DEFAULT NULL,
  `salesname_id` bigint(20) DEFAULT NULL,
  `transaction_group_id` bigint(20) DEFAULT NULL,
  `dummy` bit(1) DEFAULT NULL,
  `has_renewed` bit(1) DEFAULT NULL,
  `value` varchar(25) DEFAULT NULL,
  `currency_id` bigint(20) DEFAULT NULL,
  `isterminated` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`id`, `date_created`, `date_end`, `date_start`, `last_updated`, `name`, `partner_id`, `sla_id`, `version`, `detail_per_item`, `exception`, `expired`, `extend_days`, `grace_period`, `notes`, `last_reminder`, `manual_ref`, `salesname_id`, `transaction_group_id`, `dummy`, `has_renewed`, `value`, `currency_id`, `isterminated`) VALUES
(1499, '2016-02-12 17:43:20', '2016-12-29 00:00:00', '2016-01-01 00:00:00', '2016-02-12 17:43:20', 'CO/1601/00001', 1, 1, 0, NULL, b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, 18, b'0', NULL, NULL, 1, NULL),
(1500, '2016-02-16 14:10:49', '2016-02-15 00:00:00', '2016-02-09 00:00:00', '2016-02-16 14:11:41', 'CO/1602/00002', 1240, 1, 1, NULL, b'0', b'1', NULL, NULL, 'expired', NULL, NULL, NULL, 18, b'0', NULL, NULL, 1, b'1'),
(1501, '2016-02-18 08:24:37', '2016-08-25 00:00:00', '2016-02-01 00:00:00', '2016-02-18 08:24:37', 'CO/1602/00003', 1241, 1, 0, NULL, b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, 18, b'0', NULL, '1000000000', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contract_contract_internal_cc`
--

CREATE TABLE `contract_contract_internal_cc` (
  `contract_contract_internal_ccs_id` bigint(20) DEFAULT NULL,
  `contract_internal_cc_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contract_internal_cc`
--

CREATE TABLE `contract_internal_cc` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `contract_id` bigint(20) NOT NULL,
  `bcc` bit(1) DEFAULT b'0',
  `cc` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contract_internal_cc`
--

INSERT INTO `contract_internal_cc` (`id`, `date_created`, `last_updated`, `user_id`, `contract_id`, `bcc`, `cc`) VALUES
(1, '2016-02-18 08:20:43', '2016-02-18 08:20:43', 250, 1499, b'0', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `contract_item`
--

CREATE TABLE `contract_item` (
  `id` bigint(20) NOT NULL,
  `contract_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `location_id` bigint(20) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `serial_number` varchar(255) NOT NULL,
  `sla_id` bigint(20) NOT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  `supplier_contract` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `regular_visit_count` int(11) DEFAULT NULL,
  `regular_visit_interval` varchar(8) DEFAULT NULL,
  `version` bigint(20) DEFAULT '0',
  `disabled` bit(1) DEFAULT NULL,
  `last_regular_assignment_date` datetime DEFAULT NULL,
  `filled_by_system` bit(1) DEFAULT b'0',
  `last_generated` datetime DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `is_replacement` bit(1) DEFAULT NULL,
  `replacement_id` int(11) DEFAULT NULL,
  `warranty_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contract_item`
--

INSERT INTO `contract_item` (`id`, `contract_id`, `date_created`, `item_id`, `last_updated`, `location_id`, `notes`, `serial_number`, `sla_id`, `partner_id`, `supplier_contract`, `customer_id`, `regular_visit_count`, `regular_visit_interval`, `version`, `disabled`, `last_regular_assignment_date`, `filled_by_system`, `last_generated`, `parent_id`, `is_replacement`, `replacement_id`, `warranty_date`) VALUES
(21523, 1499, '2016-02-12 17:46:20', 1210, '2016-02-15 16:49:47', 2900, '', '2435', 1, NULL, NULL, 1, NULL, NULL, 4, b'0', NULL, b'0', NULL, 1210, NULL, 21527, '2016-04-22 17:46:08'),
(21524, 1499, '2016-02-15 15:57:11', 1211, '2016-02-16 11:47:03', 2900, 'DN DN3/1602/0001, replacement of item S/N:2435', 'AS01', 1, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, b'0', NULL, 1212, b'1', NULL, NULL),
(21528, 1499, '2016-02-16 07:44:24', 1211, '2016-02-16 14:39:03', 2900, 'disabled by SR SR2/1602/0001 @ Tue Feb 16 14:39:03 WIT 2016', 'RO01', 1, NULL, NULL, 1, NULL, NULL, 2, b'1', NULL, b'0', NULL, 1211, NULL, 21531, '2016-02-19 07:44:13'),
(21529, 1499, '2016-02-16 11:50:43', 1210, '2016-02-16 11:50:43', 2902, '', 'IB001', 5, NULL, NULL, 1, NULL, NULL, 0, b'0', NULL, b'0', NULL, 1210, NULL, NULL, '2016-05-20 11:50:27'),
(21530, 1500, '2016-02-16 14:11:10', 1211, '2016-02-16 14:11:10', 2901, '', 'jk24', 1, NULL, NULL, 1240, NULL, NULL, 0, NULL, NULL, b'0', NULL, 1211, NULL, NULL, '2016-02-16 14:11:03'),
(21531, 1499, '2016-02-16 14:35:54', 1211, '2016-02-16 14:35:54', 2900, 'DN DN3/1602/0002, replacement of item S/N:RO01', 'RT01', 1, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, b'0', NULL, NULL, b'1', NULL, NULL),
(21532, 1499, '2016-02-18 08:20:05', 1213, '2016-02-18 08:20:05', 2902, '', 'RM0223', 1, NULL, NULL, 1, NULL, NULL, 0, b'0', NULL, b'0', NULL, 1213, NULL, NULL, '2016-05-19 08:19:52'),
(21533, 1499, '2016-02-18 08:20:32', 1214, '2016-02-18 11:25:13', 2902, '', 'RM0033', 1, NULL, NULL, 1, NULL, NULL, 1, b'0', NULL, b'0', NULL, 1214, NULL, 21535, '2016-05-13 08:20:21'),
(21534, 1501, '2016-02-18 08:25:11', 1212, '2016-02-18 08:25:11', 2903, '', '09043', 10, NULL, NULL, 1241, NULL, NULL, 0, b'0', NULL, b'0', NULL, 1212, NULL, NULL, '2016-05-13 08:24:50'),
(21535, 1499, '2016-02-18 11:25:12', 1214, '2016-02-18 11:25:12', 2902, 'DN DN3/1602/0003, replacement of item S/N:RM0033', 'PW0294', 1, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, b'0', NULL, NULL, b'1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contract_partner`
--

CREATE TABLE `contract_partner` (
  `id` int(11) NOT NULL,
  `contract_partners_id` bigint(20) DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `contract_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contract_partner_contact`
--

CREATE TABLE `contract_partner_contact` (
  `contract_partner_contacts_id` bigint(20) DEFAULT NULL,
  `partner_contact_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `contract_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `location_id` bigint(20) NOT NULL,
  `pic` bit(1) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contract_partner_contact`
--

INSERT INTO `contract_partner_contact` (`contract_partner_contacts_id`, `partner_contact_id`, `id`, `contract_id`, `date_created`, `last_updated`, `location_id`, `pic`, `version`) VALUES
(NULL, 548, 582, 1499, '2016-02-12 17:46:29', '2016-02-12 17:46:29', 2900, b'1', NULL),
(NULL, 549, 583, 1500, '2016-02-16 14:11:22', '2016-02-16 14:11:22', 2901, b'1', NULL),
(NULL, 550, 584, 1501, '2016-02-18 08:25:21', '2016-02-18 08:25:21', 2903, b'1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contract_summary_list`
--

CREATE TABLE `contract_summary_list` (
  `id` bigint(20) NOT NULL,
  `contract_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `version`, `date_created`, `last_updated`, `name`) VALUES
(1, 0, '2013-07-20 14:58:55', '2013-07-20 14:58:55', 'Indonesia'),
(2, 0, '2013-07-20 16:11:26', '2013-07-20 16:11:26', 'Singapore');

-- --------------------------------------------------------

--
-- Table structure for table `country_province`
--

CREATE TABLE `country_province` (
  `country_provinces_id` bigint(20) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `version`, `code`, `date_created`, `last_updated`, `name`) VALUES
(1, 1, 'Rp', '2014-03-20 00:00:00', '2014-03-20 00:00:00', 'Rupiah'),
(2, 1, 'USD', '2014-03-20 00:00:00', '2014-03-20 00:00:00', 'Dolar');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL,
  `customer_address1` varchar(200) DEFAULT NULL,
  `customer_address2` varchar(200) DEFAULT NULL,
  `customer_city` varchar(200) DEFAULT NULL,
  `customer_country` varchar(100) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `customer_fax` varchar(20) DEFAULT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_postal` varchar(10) DEFAULT NULL,
  `customer_telp` varchar(20) DEFAULT NULL,
  `customer_website` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `price_list_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_contact`
--

CREATE TABLE `customer_contact` (
  `id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `customer_contact_dept` varchar(100) DEFAULT NULL,
  `customer_contact_email` varchar(100) DEFAULT NULL,
  `customer_contact_id` varchar(20) DEFAULT NULL,
  `customer_contact_mobile` varchar(100) DEFAULT NULL,
  `customer_contact_name_first` varchar(100) DEFAULT NULL,
  `customer_contact_name_last` varchar(100) DEFAULT NULL,
  `customer_contact_position` varchar(100) DEFAULT NULL,
  `customer_contact_salutation` varchar(5) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_contact_minute_of_meeting_attendee`
--

CREATE TABLE `customer_contact_minute_of_meeting_attendee` (
  `customer_contact_minute_of_meeting_attendees_id` bigint(20) DEFAULT NULL,
  `minute_of_meeting_attendee_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_location`
--

CREATE TABLE `customer_location` (
  `customer_locations_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_minute_of_meeting`
--

CREATE TABLE `customer_minute_of_meeting` (
  `customer_minute_of_meetings_id` bigint(20) DEFAULT NULL,
  `minute_of_meeting_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_schedule_visit`
--

CREATE TABLE `customer_schedule_visit` (
  `customer_schedule_visit_id` bigint(20) DEFAULT NULL,
  `schedule_visit_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_sla`
--

CREATE TABLE `customer_sla` (
  `customer_slas_id` bigint(20) DEFAULT NULL,
  `sla_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `databasechangeloglock`
--

CREATE TABLE `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` tinyint(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` bigint(20) NOT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `location_id` bigint(20) NOT NULL,
  `number` varchar(45) DEFAULT NULL,
  `sales_order_id` bigint(20) NOT NULL,
  `so_number` varchar(45) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_item`
--

CREATE TABLE `delivery_item` (
  `id` bigint(20) NOT NULL,
  `delivery_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `dept_name` varchar(200) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `date_created`, `dept_name`, `last_updated`, `version`) VALUES
(1, '2013-11-28 13:25:50', 'Maintenance', '2013-11-28 13:25:50', 0),
(2, '2013-11-28 16:40:03', 'Sales', '2013-11-28 16:40:03', 0),
(3, '2014-11-06 11:19:24', 'Finance', '2014-11-06 11:19:24', 0),
(4, '2014-11-11 15:15:00', 'HR', '2014-11-11 15:15:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `destination_role`
--

CREATE TABLE `destination_role` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `contact_role_id` bigint(20) NOT NULL,
  `transaction_group_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `document_status`
--

CREATE TABLE `document_status` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document_status`
--

INSERT INTO `document_status` (`id`, `name`, `date_created`, `last_updated`) VALUES
(1, 'New', '2013-10-10 12:57:29', '2013-10-10 12:57:29'),
(2, 'Open', '2013-10-10 12:57:29', '2013-10-10 12:57:29'),
(3, 'Approved', '2013-10-10 12:57:29', '2013-10-10 12:57:29'),
(4, 'Rejected', '2013-10-10 12:57:29', '2013-10-10 12:57:29'),
(5, 'Revised', '2013-10-10 12:57:29', '2013-10-10 12:57:29'),
(6, 'Done', '2013-10-10 12:57:29', '2013-10-10 12:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `department_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile1` varchar(20) DEFAULT NULL,
  `mobile2` varchar(20) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `super_ordinate_id` bigint(20) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `date_created`, `department_id`, `last_updated`, `user_id`, `email`, `mobile1`, `mobile2`, `name`, `super_ordinate_id`, `version`) VALUES
(162, '2014-10-29 09:30:47', 1, '2014-10-29 09:30:47', 120, 'Operator@compnet.co.id', '085692503140', NULL, 'Operator', NULL, 0),
(232, '2016-02-12 17:48:15', 1, '2016-02-12 17:48:55', 249, 'engineer@gmail.com', '0902', NULL, 'Adam', 233, 2),
(233, '2016-02-12 17:48:47', 1, '2016-02-12 17:48:47', 250, 'supervisor@gmail.com', '23', NULL, 'supervisor', NULL, 0),
(234, '2016-02-12 22:51:24', 1, '2016-02-12 22:51:24', 251, 'engineer2@gmail.com', '08273847294', NULL, 'Mukti', 233, 0),
(235, '2016-02-12 23:07:18', 1, '2016-02-12 23:07:18', 252, 'engineer3@gmail.com', '085727374839', NULL, 'Heru', 233, 0),
(236, '2016-02-15 15:54:28', 2, '2016-02-15 15:54:28', 253, 'asev.setiawan@smanggin.com', '0', NULL, 'Asep', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `encrypted_data`
--

CREATE TABLE `encrypted_data` (
  `id` varchar(32) NOT NULL,
  `version` bigint(20) NOT NULL,
  `data_item` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `engineer`
--

CREATE TABLE `engineer` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `level` varchar(45) DEFAULT NULL,
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `engineer`
--

INSERT INTO `engineer` (`id`, `date_created`, `employee_id`, `last_updated`, `level`, `version`) VALUES
(222, '2016-02-12 17:49:06', 232, '2016-02-12 17:49:13', '1st Level', 1),
(223, '2016-02-12 22:51:54', 234, '2016-02-12 22:51:54', '2nd Level', 0),
(224, '2016-02-12 23:07:32', 235, '2016-02-12 23:07:32', '1st Level', 0);

-- --------------------------------------------------------

--
-- Table structure for table `engineer_certificate`
--

CREATE TABLE `engineer_certificate` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `acquired` datetime DEFAULT NULL,
  `certificate_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `engineer_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `expired` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `engineer_certificate`
--

INSERT INTO `engineer_certificate` (`id`, `version`, `acquired`, `certificate_id`, `date_created`, `engineer_id`, `last_updated`, `expired`) VALUES
(1, 0, '2014-01-01 00:00:00', 1, '2016-02-12 22:52:25', 223, '2016-02-12 22:52:25', '2016-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `engineer_expertise`
--

CREATE TABLE `engineer_expertise` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `engineer_id` bigint(20) NOT NULL,
  `expertise_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `engineer_expertise`
--

INSERT INTO `engineer_expertise` (`id`, `version`, `date_created`, `engineer_id`, `expertise_id`, `last_updated`, `level`) VALUES
(1, 0, '2016-02-12 22:52:34', 223, 1, '2016-02-12 22:52:34', '1');

-- --------------------------------------------------------

--
-- Table structure for table `engineer_level`
--

CREATE TABLE `engineer_level` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `engineer_level`
--

INSERT INTO `engineer_level` (`id`, `date_created`, `last_updated`, `name`) VALUES
(1, '2013-10-12 00:00:00', '2013-10-12 00:00:00', 'CE'),
(2, '2013-10-12 00:00:00', '2013-10-12 00:00:00', '2nd Level'),
(3, '2013-10-12 00:00:00', '2013-10-12 00:00:00', '1st Level'),
(4, '2013-10-12 00:00:00', '2013-10-12 00:00:00', 'Onsite'),
(5, '2013-10-12 00:00:00', '2013-10-12 00:00:00', 'Service Point'),
(6, '2013-10-12 00:00:00', '2013-10-12 00:00:00', 'Manager'),
(7, '2013-10-12 00:00:00', '2013-10-12 00:00:00', 'Legal'),
(8, '2013-10-12 00:00:00', '2013-10-12 00:00:00', 'Supervisor'),
(9, '2013-10-12 00:00:00', '2013-10-12 00:00:00', 'Presales'),
(10, '2014-06-19 00:00:00', '2014-06-19 00:00:00', 'Logistik'),
(11, '2014-06-19 00:00:00', '2014-06-19 00:00:00', 'Call Center'),
(12, '2014-08-14 09:44:00', '2014-08-14 09:44:00', 'Admin'),
(13, '2014-09-16 09:29:00', '2014-09-16 09:29:00', 'Internship'),
(14, '2014-10-17 17:36:00', '2014-10-17 17:36:00', 'Sales'),
(15, '2014-11-06 11:00:00', '2014-11-06 11:00:00', 'General Manager'),
(16, '2014-11-06 11:00:00', '2014-11-06 11:00:00', 'Direktur'),
(17, '2015-04-06 09:00:00', '2015-04-06 09:00:00', 'Sekretaris');

-- --------------------------------------------------------

--
-- Table structure for table `engineer_maintenance_order`
--

CREATE TABLE `engineer_maintenance_order` (
  `engineer_maintenance_orders_id` bigint(20) DEFAULT NULL,
  `maintenance_order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entity`
--

CREATE TABLE `entity` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `entity_name` varchar(200) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entity_user`
--

CREATE TABLE `entity_user` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `entity_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `escalate`
--

CREATE TABLE `escalate` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `sla_type_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `sla_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `escalate_escalation_response_time_target`
--

CREATE TABLE `escalate_escalation_response_time_target` (
  `escalate_escalation_response_time_target_id` bigint(20) DEFAULT NULL,
  `escalation_response_time_target_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `escalate_escalation_solving_time_target`
--

CREATE TABLE `escalate_escalation_solving_time_target` (
  `escalate_escalation_solving_time_target_id` bigint(20) DEFAULT NULL,
  `escalation_solving_time_target_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `escalation_onsite_response_time`
--

CREATE TABLE `escalation_onsite_response_time` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `partner_contact_id` bigint(20) DEFAULT NULL,
  `sla_id` bigint(20) DEFAULT NULL,
  `time` float NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `priority_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `escalation_onsite_response_time_target`
--

CREATE TABLE `escalation_onsite_response_time_target` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `partner_contact_id` bigint(20) DEFAULT NULL,
  `priority_id` bigint(20) DEFAULT NULL,
  `sla_id` bigint(20) DEFAULT NULL,
  `time` float NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `escalation_onsite_response_time_target`
--

INSERT INTO `escalation_onsite_response_time_target` (`id`, `version`, `date_created`, `last_updated`, `notes`, `partner_contact_id`, `priority_id`, `sla_id`, `time`, `user_id`) VALUES
(1, 0, '2016-02-16 08:28:53', '2016-02-16 08:28:53', NULL, NULL, 1, NULL, 0, 250);

-- --------------------------------------------------------

--
-- Table structure for table `escalation_response_time_target`
--

CREATE TABLE `escalation_response_time_target` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `partner_contact_id` bigint(20) DEFAULT NULL,
  `time` float NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `sla_id` bigint(20) DEFAULT NULL,
  `priority_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `escalation_response_time_target`
--

INSERT INTO `escalation_response_time_target` (`id`, `version`, `date_created`, `last_updated`, `notes`, `partner_contact_id`, `time`, `user_id`, `sla_id`, `priority_id`) VALUES
(1, 1, '2016-02-16 08:28:29', '2016-02-16 08:28:44', NULL, NULL, 0, 250, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `escalation_solving_time_target`
--

CREATE TABLE `escalation_solving_time_target` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `partner_contact_id` bigint(20) DEFAULT NULL,
  `time` float NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `sla_id` bigint(20) DEFAULT NULL,
  `color` varchar(255) NOT NULL,
  `priority_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `escalation_solving_time_target`
--

INSERT INTO `escalation_solving_time_target` (`id`, `version`, `date_created`, `last_updated`, `notes`, `partner_contact_id`, `time`, `user_id`, `sla_id`, `color`, `priority_id`) VALUES
(1, 0, '2016-02-16 08:29:05', '2016-02-16 08:29:05', NULL, NULL, 0, 250, NULL, 'yellow', 1),
(2, 0, '2016-02-16 08:29:18', '2016-02-16 08:29:18', NULL, NULL, 1, 1, NULL, 'red', 1),
(3, 0, '2016-02-18 08:33:50', '2016-02-18 08:33:50', NULL, NULL, -0.5, 250, NULL, 'yellow', 5),
(4, 0, '2016-02-18 08:34:01', '2016-02-18 08:34:01', NULL, NULL, 0, 1, NULL, 'red', 5);

-- --------------------------------------------------------

--
-- Table structure for table `expertise`
--

CREATE TABLE `expertise` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expertise`
--

INSERT INTO `expertise` (`id`, `version`, `date_created`, `last_updated`, `name`) VALUES
(1, 0, '2013-12-02 11:21:34', '2013-12-02 11:21:34', 'Networking'),
(2, 0, '2013-12-02 11:21:48', '2013-12-02 11:21:48', 'Voice'),
(3, 0, '2013-12-02 11:21:56', '2013-12-02 11:21:56', 'Security'),
(4, 0, '2013-12-02 11:22:03', '2013-12-02 11:22:03', 'Wireless'),
(5, 0, '2013-12-02 11:23:39', '2013-12-02 11:23:39', 'Server'),
(6, 0, '2013-12-02 11:23:46', '2013-12-02 11:23:46', 'Hardware'),
(7, 0, '2013-12-02 11:23:57', '2013-12-02 11:23:57', 'Application Software');

-- --------------------------------------------------------

--
-- Table structure for table `file_types`
--

CREATE TABLE `file_types` (
  `id` bigint(20) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_types`
--

INSERT INTO `file_types` (`id`, `code`, `date_created`, `last_updated`, `name`, `version`) VALUES
(1, 'JPG', '2014-02-14 00:00:00', '2014-02-14 00:00:00', 'Image', 0);

-- --------------------------------------------------------

--
-- Table structure for table `group_module`
--

CREATE TABLE `group_module` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `module_id` bigint(20) NOT NULL,
  `user_group_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_module`
--

INSERT INTO `group_module` (`id`, `version`, `date_created`, `last_updated`, `module_id`, `user_group_id`) VALUES
(1, 0, '2013-07-20 10:25:31', '2013-07-20 10:25:31', 147, 1),
(2, 0, '2013-07-20 11:51:43', '2013-07-20 11:51:43', 159, 1),
(3, 1, '2013-07-20 11:51:59', '2015-01-15 14:05:33', 4, 1),
(4, 0, '2013-07-20 12:29:30', '2013-07-20 12:29:30', 181, 1),
(13, 0, '2014-05-06 09:49:29', '2014-05-06 09:49:29', 159, 6),
(16, 0, '2013-07-30 15:36:45', '2013-07-30 15:36:45', 176, 5),
(17, 3, '2013-07-30 00:00:00', '2014-01-09 15:03:41', 176, 2),
(18, 0, '2013-07-31 08:39:04', '2013-07-31 08:39:04', 176, 1),
(20, 0, '2013-09-03 10:11:59', '2013-09-03 10:11:59', 147, 4),
(21, 0, '2013-09-03 10:12:17', '2013-09-03 10:12:17', 159, 4),
(23, 1, '2013-10-01 00:00:00', '2014-03-21 15:28:30', 163, 5),
(24, 0, '2013-10-01 05:17:03', '2013-10-01 05:17:03', 163, 4),
(26, 0, '2013-10-13 11:56:37', '2013-10-13 11:56:37', 147, 7),
(27, 0, '2013-10-13 11:59:10', '2013-10-13 11:59:10', 163, 7),
(28, 2, '2014-01-08 00:00:00', '2014-01-08 17:28:18', 176, 10),
(29, 1, '2014-03-05 00:00:00', '2014-03-05 10:27:24', 176, 11),
(30, 0, '2014-03-21 15:28:43', '2014-03-21 15:28:43', 163, 11),
(31, 0, '2014-03-21 15:29:41', '2014-03-21 15:29:41', 159, 5),
(32, 0, '2014-03-21 15:30:38', '2014-03-21 15:30:38', 159, 11),
(33, 0, '2014-03-21 15:30:55', '2014-03-21 15:30:55', 147, 11),
(34, 0, '2014-03-21 15:31:26', '2014-03-21 15:31:26', 147, 5),
(35, 1, '2014-04-25 00:00:00', '2014-04-25 11:18:22', 159, 10),
(36, 0, '2013-07-30 14:19:52', '2013-07-30 14:19:52', 158, 6),
(39, 0, '2014-06-06 20:27:00', '2014-06-06 20:27:00', 159, 12),
(40, 0, '2014-06-06 20:27:10', '2014-06-06 20:27:10', 176, 12),
(41, 0, '2014-06-06 20:27:18', '2014-06-06 20:27:18', 147, 12),
(42, 0, '2014-06-06 20:27:28', '2014-06-06 20:27:28', 163, 12),
(43, 0, '2014-06-06 20:29:07', '2014-06-06 20:29:07', 159, 13),
(44, 0, '2014-06-06 20:29:14', '2014-06-06 20:29:14', 176, 13),
(45, 0, '2014-06-06 20:29:22', '2014-06-06 20:29:22', 147, 13),
(46, 0, '2014-06-06 20:29:27', '2014-06-06 20:29:27', 163, 13),
(47, 0, '2014-06-06 20:30:56', '2014-06-06 20:30:56', 159, 15),
(48, 0, '2014-06-06 20:31:03', '2014-06-06 20:31:03', 176, 15),
(49, 0, '2014-06-06 20:31:08', '2014-06-06 20:31:08', 147, 15),
(50, 0, '2014-06-06 20:31:14', '2014-06-06 20:31:14', 163, 15),
(53, 0, '2014-08-27 09:06:21', '2014-08-27 09:06:21', 217, 8),
(54, 0, '2014-08-27 09:49:51', '2014-08-27 09:49:51', 217, 9),
(55, 0, '2014-09-15 09:38:27', '2014-09-15 09:38:27', 217, 4),
(56, 0, '2015-01-15 13:54:55', '2015-01-15 13:54:55', 147, 17),
(57, 0, '2015-02-24 16:21:36', '2015-02-24 16:21:36', 147, 2);

-- --------------------------------------------------------

--
-- Table structure for table `incident_to_problem`
--

CREATE TABLE `incident_to_problem` (
  `id` bigint(20) NOT NULL,
  `approver_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `engineer_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `maintenance_order_id` bigint(20) NOT NULL,
  `notes` text,
  `status` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interval_visit`
--

CREATE TABLE `interval_visit` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issue_type`
--

CREATE TABLE `issue_type` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `notes` longtext,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_type`
--

INSERT INTO `issue_type` (`id`, `date_created`, `last_updated`, `name`, `notes`, `version`) VALUES
(1, '2013-12-09 12:32:25', '2013-12-09 12:32:25', 'Corrective Maintenance', NULL, 0),
(2, '2013-12-09 12:32:38', '2013-12-09 12:32:38', 'Preventive Maintenance', NULL, 0),
(3, '2013-12-09 12:32:53', '2013-12-09 12:32:53', 'Implementation', NULL, 0),
(4, '2013-12-09 12:33:07', '2013-12-09 12:33:07', 'RMA', NULL, 0),
(5, '2014-12-09 14:39:42', '2014-12-09 14:39:42', 'Service Request', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `default_batch_qty` int(11) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `lot` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `uom_conversion` float NOT NULL,
  `item_lot_id` bigint(20) NOT NULL,
  `item_type_id` bigint(20) NOT NULL,
  `bar_code` varchar(255) DEFAULT NULL,
  `uom1_id` bigint(20) NOT NULL,
  `uom2_id` bigint(20) NOT NULL,
  `price` float DEFAULT NULL,
  `version` bigint(20) DEFAULT '0',
  `stok_balance` int(11) DEFAULT NULL,
  `stok_balance2` int(11) DEFAULT NULL,
  `item_brand_id` bigint(20) DEFAULT NULL,
  `item_class_id` bigint(20) DEFAULT NULL,
  `item_group_id` bigint(20) DEFAULT NULL,
  `tax_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `code`, `date_created`, `default_batch_qty`, `last_updated`, `lot`, `name`, `type`, `uom_conversion`, `item_lot_id`, `item_type_id`, `bar_code`, `uom1_id`, `uom2_id`, `price`, `version`, `stok_balance`, `stok_balance2`, `item_brand_id`, `item_class_id`, `item_group_id`, `tax_rate`) VALUES
(1210, 'ed32eea5-8b28-49ba-a531-dc76eb379901', '2016-02-12 17:44:43', 1, '2016-02-12 17:44:43', NULL, 'Server IBM', NULL, 1, 1, 2, '001', 7, 7, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(1211, '919f6541-7d9f-46e2-9e14-a5e50da967b7', '2016-02-12 17:45:05', 1, '2016-02-16 14:39:03', NULL, 'Router', NULL, 1, 1, 2, '002', 7, 7, 0, 8, -2, NULL, NULL, NULL, NULL, NULL),
(1212, '715cec18-285c-474d-b8ff-83c6e822c4f2', '2016-02-12 17:45:24', 1, '2016-02-12 17:45:24', NULL, 'All Item', NULL, 1, 1, 2, '003', 7, 7, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(1213, 'afd57120-bac9-441f-b71e-e76442f5c939', '2016-02-18 08:18:22', 1, '2016-02-18 08:21:18', NULL, 'Powerware 5115RM 500-1500 VA UPS', NULL, 1, 1, 2, NULL, 7, 7, 0, 1, 1, NULL, NULL, NULL, NULL, NULL),
(1214, '4c66e670-4786-4744-9704-e3fc09421c5a', '2016-02-18 08:19:02', 1, '2016-02-18 11:25:13', NULL, 'Powerware 9120 700-6000 VA UPS', NULL, 1, 1, 2, NULL, 7, 7, 0, 2, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_balance`
--

CREATE TABLE `item_balance` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `in_qty` bigint(20) DEFAULT NULL,
  `item_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `opening_balance_qty` bigint(20) DEFAULT NULL,
  `out_qty` bigint(20) DEFAULT NULL,
  `reff_no` varchar(255) DEFAULT NULL,
  `warehouse_id` bigint(20) DEFAULT NULL,
  `in_qty2` bigint(20) NOT NULL,
  `out_qty2` bigint(20) NOT NULL,
  `transfer_item_id` bigint(20) DEFAULT NULL,
  `version` bigint(20) DEFAULT '0',
  `transaction_date` datetime NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `warehouse_dest_id` bigint(20) DEFAULT NULL,
  `warehouse_source_id` bigint(20) DEFAULT NULL,
  `saldo1` bigint(20) DEFAULT NULL,
  `saldo2` bigint(20) DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_balance`
--

INSERT INTO `item_balance` (`id`, `date_created`, `in_qty`, `item_id`, `last_updated`, `opening_balance_qty`, `out_qty`, `reff_no`, `warehouse_id`, `in_qty2`, `out_qty2`, `transfer_item_id`, `version`, `transaction_date`, `description`, `warehouse_dest_id`, `warehouse_source_id`, `saldo1`, `saldo2`, `partner_id`) VALUES
(1, '2016-02-15 15:54:52', 1, 1211, '2016-02-15 15:54:52', NULL, 0, 'AS01', 7, 1, 0, NULL, 0, '2016-02-15 15:54:52', 'Batch Assignment', NULL, NULL, 1, 1, NULL),
(2, '2016-02-15 15:57:12', 0, 1211, '2016-02-15 15:57:12', NULL, 1, 'DN3/1602/0001', 7, 0, 1, 1, 0, '2016-02-15 15:56:00', 'Delivery', NULL, 7, -1, -1, 1),
(3, '2016-02-15 16:23:48', 0, 1211, '2016-02-15 16:23:48', NULL, 1, 'DN3/1602/0001', 7, 0, 1, 1, 0, '2016-02-15 15:56:00', 'Delivery', NULL, 7, -1, -1, 1),
(4, '2016-02-15 16:33:52', 0, 1211, '2016-02-15 16:33:52', NULL, 1, 'DN3/1602/0001', 7, 0, 1, 1, 0, '2016-02-15 15:56:00', 'Delivery', NULL, 7, -1, -1, 1),
(5, '2016-02-15 16:49:47', 0, 1211, '2016-02-15 16:49:47', NULL, 1, 'DN3/1602/0001', 7, 0, 1, 1, 0, '2016-02-15 15:56:00', 'Delivery', NULL, 7, -1, -1, 1),
(6, '2016-02-16 14:32:58', 1, 1211, '2016-02-16 14:32:58', NULL, 0, 'RT01', 7, 1, 0, NULL, 0, '2016-02-16 14:32:58', 'Batch Assignment', NULL, NULL, 1, 1, NULL),
(7, '2016-02-16 14:35:55', 0, 1211, '2016-02-16 14:35:55', NULL, 1, 'DN3/1602/0002', 7, 0, 1, 2, 0, '2016-02-16 14:33:00', 'Delivery', NULL, 7, -1, -1, 1),
(8, '2016-02-16 14:39:03', 1, 1211, '2016-02-16 14:39:03', NULL, 0, 'SR2/1602/0001', 7, 1, 0, 3, 0, '2016-02-16 14:37:44', 'sales return', 7, NULL, 1, 1, 1),
(9, '2016-02-18 08:21:17', 1, 1213, '2016-02-18 08:21:17', NULL, 0, 'PW003', 7, 1, 0, NULL, 0, '2016-02-18 08:21:17', 'Batch Assignment', NULL, NULL, 1, 1, NULL),
(10, '2016-02-18 08:21:26', 1, 1214, '2016-02-18 08:21:26', NULL, 0, 'PW0294', 7, 1, 0, NULL, 0, '2016-02-18 08:21:26', 'Batch Assignment', NULL, NULL, 1, 1, NULL),
(11, '2016-02-18 11:25:13', 0, 1214, '2016-02-18 11:25:13', NULL, 1, 'DN3/1602/0003', 7, 0, 1, 4, 0, '2016-02-18 11:23:00', 'Delivery', NULL, 7, -1, -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_brand`
--

CREATE TABLE `item_brand` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `item_brand_id` bigint(20) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `use_in_item` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_class`
--

CREATE TABLE `item_class` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `item_class_id` bigint(20) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `use_in_item` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_contract`
--

CREATE TABLE `item_contract` (
  `item_slas_id` bigint(20) DEFAULT NULL,
  `contract_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_group`
--

CREATE TABLE `item_group` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `item_group_id` bigint(20) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `use_in_item` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_lot`
--

CREATE TABLE `item_lot` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_lot`
--

INSERT INTO `item_lot` (`id`, `date_created`, `last_updated`, `name`, `version`) VALUES
(1, '2013-07-21 11:06:11', '2013-07-21 11:06:11', 'With Lot', 0),
(2, '2013-07-21 11:06:17', '2013-07-21 11:06:17', 'No Lot', 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE `item_type` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_type`
--

INSERT INTO `item_type` (`id`, `date_created`, `last_updated`, `name`) VALUES
(1, '2013-07-21 11:05:47', '2013-07-21 11:05:47', 'Service'),
(2, '2013-07-21 11:05:55', '2013-07-21 11:05:55', 'Product');

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base`
--

CREATE TABLE `knowledge_base` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `created_by_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `estimate_time` varchar(255) DEFAULT NULL,
  `issue_type_id` bigint(20) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `problem` longtext,
  `sequence` int(11) NOT NULL,
  `solution` longtext,
  `state` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `knowledge_base`
--

INSERT INTO `knowledge_base` (`id`, `version`, `created_by_id`, `date_created`, `estimate_time`, `issue_type_id`, `last_updated`, `problem`, `sequence`, `solution`, `state`) VALUES
(1, 0, 120, '2015-12-08 10:20:39', '6 hours, 22 minutes, 5.000 seconds', 1, '2015-12-08 10:20:39', 'Konfigurasi Jaringan di DC TBS', 1, 'Belum ada perubahan konfigurasi disisi coreswitch karena server baru belum UP. Pekerjaan akkan dilanjutkan besok hari jam 10 pagi di DC lintas Arta TBS', 'Valid');

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_tag`
--

CREATE TABLE `knowledge_tag` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `knowledge_base_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `knowlege_base`
--

CREATE TABLE `knowlege_base` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `issue_type_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `problem` longtext,
  `solution` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loading`
--

CREATE TABLE `loading` (
  `id` bigint(20) NOT NULL,
  `loading_date` datetime DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `truck_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loading_delivery`
--

CREATE TABLE `loading_delivery` (
  `loading_deliveries_id` bigint(20) DEFAULT NULL,
  `delivery_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loading_item`
--

CREATE TABLE `loading_item` (
  `id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `loading_id` bigint(20) NOT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `partner_id` bigint(20) NOT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `lattitude` varchar(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `pic_email` varchar(100) DEFAULT NULL,
  `pic_first_name` varchar(100) DEFAULT NULL,
  `pic_last_name` varchar(100) DEFAULT NULL,
  `pic_mobile` varchar(20) DEFAULT NULL,
  `pic_salutation` varchar(10) DEFAULT NULL,
  `postal` varchar(10) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `interval_visit_id` bigint(20) DEFAULT NULL,
  `last_visit` datetime DEFAULT NULL,
  `sales_person_id` bigint(20) DEFAULT NULL,
  `sales_visit_qty` float DEFAULT NULL,
  `credit_limit` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `date_created`, `last_updated`, `partner_id`, `address1`, `address2`, `city_id`, `email`, `fax`, `lattitude`, `longitude`, `name`, `pic_email`, `pic_first_name`, `pic_last_name`, `pic_mobile`, `pic_salutation`, `postal`, `telp`, `latitude`, `version`, `country_id`, `province_id`, `interval_visit_id`, `last_visit`, `sales_person_id`, `sales_visit_qty`, `credit_limit`) VALUES
(2900, '2016-02-12 17:36:35', '2016-02-12 17:36:35', 1, NULL, NULL, 267, 'pusat@gmail.com', NULL, NULL, NULL, 'Kantor Pusat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 12, NULL, NULL, NULL, NULL, NULL),
(2901, '2016-02-12 17:41:47', '2016-02-12 17:41:47', 1240, NULL, NULL, 190, '', NULL, NULL, NULL, 'Kantor Pusat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 11, NULL, NULL, NULL, NULL, NULL),
(2902, '2016-02-16 11:49:46', '2016-02-16 11:49:46', 1, 'alamat', NULL, 190, 'cabang@gmail.com', NULL, NULL, NULL, 'Cabang Utama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 11, NULL, NULL, NULL, NULL, NULL),
(2903, '2016-02-18 08:23:22', '2016-02-18 08:23:22', 1241, NULL, NULL, 189, '', NULL, NULL, NULL, 'Head Office', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 11, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_order`
--

CREATE TABLE `maintenance_order` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `estimated_duration` int(11) DEFAULT NULL,
  `issue_type_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `problem` longtext,
  `contract_id` bigint(20) DEFAULT NULL,
  `priority_id` bigint(20) DEFAULT NULL,
  `contract_item_id` bigint(20) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `key_code` varchar(255) DEFAULT NULL,
  `charge` int(11) DEFAULT NULL,
  `manual_counter` bit(1) DEFAULT NULL,
  `manual_counter_started` bit(1) DEFAULT NULL,
  `item_temporary` bit(1) DEFAULT NULL,
  `item_temporary_returned` bit(1) DEFAULT NULL,
  `item_temporary_returned_date` datetime DEFAULT NULL,
  `prev_engineer_id` bigint(20) DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  `transaction_group_id` bigint(20) DEFAULT NULL,
  `version` bigint(20) DEFAULT '0',
  `caller_name` varchar(255) DEFAULT NULL,
  `ref_number` varchar(255) DEFAULT NULL,
  `plan_date_end` datetime DEFAULT NULL,
  `plan_date_start` datetime DEFAULT NULL,
  `contact_person_email` varchar(255) DEFAULT NULL,
  `contact_person_name` varchar(255) DEFAULT NULL,
  `contact_person_phone` varchar(255) DEFAULT NULL,
  `approver_id` bigint(20) DEFAULT NULL,
  `maintenance_order_type_id` bigint(20) DEFAULT NULL,
  `approve_time` datetime DEFAULT NULL,
  `close_time` datetime DEFAULT NULL,
  `open_time` datetime DEFAULT NULL,
  `satisfaction_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maintenance_order`
--

INSERT INTO `maintenance_order` (`id`, `date_created`, `estimated_duration`, `issue_type_id`, `last_updated`, `notes`, `number`, `order_date`, `problem`, `contract_id`, `priority_id`, `contract_item_id`, `state`, `key_code`, `charge`, `manual_counter`, `manual_counter_started`, `item_temporary`, `item_temporary_returned`, `item_temporary_returned_date`, `prev_engineer_id`, `partner_id`, `transaction_group_id`, `version`, `caller_name`, `ref_number`, `plan_date_end`, `plan_date_start`, `contact_person_email`, `contact_person_name`, `contact_person_phone`, `approver_id`, `maintenance_order_type_id`, `approve_time`, `close_time`, `open_time`, `satisfaction_id`) VALUES
(3762, '2016-02-12 17:50:18', NULL, 1, '2016-02-12 17:50:18', NULL, 'IT/1602/00001', '2016-02-12 17:49:23', 'test', 1499, 1, 21523, 'Closed', 'RB69OK', NULL, b'0', NULL, NULL, b'0', NULL, NULL, 1, 15, 1, NULL, NULL, '2016-02-12 21:49:00', '2016-02-12 17:49:27', 'mulyadigunawan02@gmail.com', 'MULYADI GUNAWAN', '+6285727095949', 250, NULL, NULL, NULL, '2016-02-12 17:50:17', 2),
(3764, '2016-02-12 23:25:26', NULL, 1, '2016-02-16 11:57:25', NULL, 'IT/1602/00002', '2016-02-12 23:24:11', 'test', 1499, 2, 21523, 'Closed', 'JXSHSI', NULL, b'1', NULL, NULL, b'0', NULL, NULL, 1, 15, 1, NULL, NULL, '2016-02-13 03:24:00', '2016-02-12 23:24:14', 'mulyadi.gunawan@smanggin.com', 'MULYADI GUNAWAN', '+6285727095949', 250, NULL, NULL, '2016-02-16 11:57:25', '2016-02-12 23:25:26', 2),
(3768, '2016-02-15 14:27:01', NULL, 1, '2016-02-15 14:27:01', NULL, 'IT/1602/00003', '2016-02-15 14:23:41', 'test', 1499, 2, 21523, 'Closed', 'QOEJ92', NULL, b'0', NULL, NULL, b'0', NULL, NULL, 1, 15, 1, NULL, NULL, '2016-02-15 18:23:00', '2016-02-15 14:23:45', 'caroline@smanggin.com', 'MULYADI GUNAWAN', '+6285727095949', 250, NULL, NULL, NULL, '2016-02-15 14:27:00', 1),
(3771, '2016-02-16 08:00:00', NULL, 1, '2016-02-16 08:00:00', NULL, 'IT/1602/00004', '2016-02-16 07:54:36', 'Internet Lambat', 1499, 3, 21528, 'Closed', '4GRX1C', NULL, b'0', NULL, NULL, b'0', NULL, NULL, 1, 15, 1, NULL, NULL, '2016-02-17 07:54:00', '2016-02-16 07:54:37', 'mulyadigunawan02@gmail.com', 'pelapor', '+6285727095949', 250, NULL, NULL, NULL, '2016-02-16 08:00:00', 2),
(3774, '2016-02-16 08:31:08', NULL, 1, '2016-02-16 08:31:08', NULL, 'IT/1602/00005', '2016-02-16 08:29:31', 'internet lambat', 1499, 1, 21528, 'Closed', 'KITTYB', NULL, b'0', NULL, NULL, b'0', NULL, NULL, 1, 15, 1, NULL, NULL, '2016-02-16 12:29:00', '2016-02-16 08:29:31', 'caroline@smanggin.com', 'caroline', '085727095949', 250, NULL, NULL, NULL, '2016-02-16 08:31:08', 3),
(3778, '2016-02-16 12:09:39', NULL, 1, '2016-02-16 12:20:32', NULL, 'IT/1602/00006', '2016-02-16 12:08:22', 'test masalah', 1499, 1, 21528, 'Closed', 'QXLKKC', NULL, b'0', NULL, NULL, b'0', NULL, NULL, 1, 15, 1, NULL, NULL, '2016-02-16 16:08:00', '2016-02-16 12:08:28', 'dumanurhayatisimanjuntak@gmail.com', 'Duma', '089283', 250, NULL, NULL, '2016-02-16 12:20:32', '2016-02-16 12:09:39', 2),
(3782, '2016-02-16 14:16:32', NULL, 1, '2016-02-16 14:28:38', NULL, 'IT/1602/00010', '2016-02-16 14:11:46', 'masalah jaringan', 1499, 1, 21528, 'Closed', 'OX647U', NULL, b'0', NULL, NULL, b'0', NULL, NULL, 1, 15, 1, NULL, NULL, '2016-02-16 18:11:47', '2016-02-16 14:11:47', 'cs_yanuar@yahoo.com', 'Toto', '08267', 250, NULL, NULL, '2016-02-16 14:28:38', '2016-02-16 14:16:32', 2),
(3785, '2016-02-18 08:31:39', NULL, 1, '2016-02-18 08:31:39', NULL, 'IT/1602/00011', '2016-02-18 08:31:39', NULL, NULL, NULL, NULL, 'Auto Saved Draft', 'EQUUMS', NULL, b'0', NULL, NULL, b'0', NULL, NULL, NULL, 15, 0, NULL, NULL, NULL, '2016-02-18 08:31:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3786, '2016-02-18 08:57:36', NULL, 1, '2016-02-18 08:57:36', NULL, 'IT/1602/00012', '2016-02-18 08:56:29', 'test', 1499, 5, 21532, 'Open', 'OOX35T', NULL, b'0', NULL, NULL, b'0', NULL, NULL, 1, 15, 0, NULL, NULL, '2016-02-18 10:56:00', '2016-02-18 05:56:30', 'dumanurhayatisimanjuntak@gmail.com', 'Duma', '085727095949', 250, NULL, NULL, NULL, '2016-02-18 08:57:36', NULL),
(3788, '2016-02-18 09:18:36', NULL, 1, '2016-02-18 09:18:36', NULL, 'IT/1602/00013', '2016-02-18 09:17:43', 'test', 1499, 5, 21533, 'Open', 'AYTK8N', NULL, b'0', NULL, NULL, b'0', NULL, NULL, 1, 15, 0, NULL, NULL, '2016-02-18 11:17:00', '2016-02-18 09:17:43', 'dumanurhayatisimanjuntak@gmail.com', 'Duma', '018289', 250, NULL, NULL, NULL, '2016-02-18 09:18:36', NULL),
(3789, '2016-02-18 09:19:05', NULL, 1, '2016-02-18 09:19:05', NULL, 'IT/1602/00014', '2016-02-18 09:19:05', NULL, 1499, NULL, 21533, 'Auto Saved Draft', 'K5UX56', NULL, b'0', NULL, NULL, b'0', NULL, NULL, NULL, 15, 0, NULL, NULL, NULL, '2016-02-18 09:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3790, '2016-02-18 11:06:20', NULL, 1, '2016-02-18 11:31:31', NULL, 'IT/1602/00015', '2016-02-18 11:02:20', 'Tidak bisa upp', 1499, 1, 21533, 'Closed', 'ZEQYIP', NULL, b'0', NULL, NULL, b'0', NULL, NULL, 1, 15, 1, NULL, NULL, '2016-02-18 15:02:27', '2016-02-18 11:02:27', 'jhadyTj@deltasindo.com', 'Hady', '08551886698', 250, NULL, NULL, '2016-02-18 11:31:31', '2016-02-18 11:06:20', 2),
(3791, '2016-02-18 14:21:15', NULL, 1, '2016-02-18 14:21:15', NULL, 'IT/1602/00016', '2016-02-18 14:17:14', 'Masalah jaringan', 1499, 2, 21524, 'Open', 'S2IRC9', NULL, b'1', NULL, NULL, b'0', NULL, NULL, 1, 15, 0, NULL, NULL, '2016-02-18 18:17:00', '2016-02-18 14:17:18', 'sutejo@artapala.com', 'Sutejo', '08161675148', 250, NULL, NULL, NULL, '2016-02-18 14:21:15', NULL),
(3792, '2016-02-29 09:58:37', NULL, 1, '2016-02-29 09:58:37', NULL, 'IT/1602/00017', '2016-02-29 09:57:18', 'test', 1499, 3, 21524, 'Open', 'V3M6I6', NULL, b'0', NULL, NULL, b'0', NULL, NULL, 1, 15, 0, NULL, NULL, '2016-03-01 09:57:00', '2016-02-29 09:57:22', 'mulyadigunawan02@gmail.com', 'MULYADI GUNAWAN', '+6285727095949', 250, NULL, NULL, NULL, '2016-02-29 09:58:37', NULL),
(3793, '2016-02-29 10:29:13', NULL, 1, '2016-02-29 10:29:13', NULL, 'IT/1602/00018', '2016-02-29 10:29:13', NULL, 1499, NULL, 21524, 'Auto Saved Draft', 'PFGC2E', NULL, b'0', NULL, NULL, b'0', NULL, NULL, NULL, 15, 0, NULL, NULL, NULL, '2016-02-29 09:58:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_order_activity_time`
--

CREATE TABLE `maintenance_order_activity_time` (
  `maintenance_order_activity_times_id` bigint(20) DEFAULT NULL,
  `activity_time_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_order_minute_of_meeting_additional_value`
--

CREATE TABLE `maintenance_order_minute_of_meeting_additional_value` (
  `maintenance_order_minute_of_meeting_additional_values_id` bigint(20) DEFAULT NULL,
  `minute_of_meeting_additional_value_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_order_type`
--

CREATE TABLE `maintenance_order_type` (
  `id` bigint(20) NOT NULL,
  `code` varchar(45) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maintenance_order_type`
--

INSERT INTO `maintenance_order_type` (`id`, `code`, `date_created`, `last_updated`, `name`) VALUES
(5, 'nonSla', '2014-02-07 11:49:38', '2014-02-07 11:49:38', 'NonSla');

-- --------------------------------------------------------

--
-- Table structure for table `master_additional`
--

CREATE TABLE `master_additional` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_additional_field`
--

CREATE TABLE `master_additional_field` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `master_additional_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_additional_value`
--

CREATE TABLE `master_additional_value` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `master_additional_id` bigint(20) DEFAULT NULL,
  `master_additional_field_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_data_template`
--

CREATE TABLE `master_data_template` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_data_template`
--

INSERT INTO `master_data_template` (`id`, `version`, `date_created`, `file_name`, `last_updated`, `name`) VALUES
(1, 0, '2013-12-24 03:10:11', 'item.xls', '2013-12-24 03:10:11', 'template item'),
(8, 0, '2014-10-29 18:11:59', 'batch.xls', '2014-10-29 18:11:59', 'Barang Spare'),
(12, 0, '2015-04-20 10:11:24', 'contract item.xls', '2015-04-20 10:11:24', 'Contract Item');

-- --------------------------------------------------------

--
-- Table structure for table `minute_of_meeting`
--

CREATE TABLE `minute_of_meeting` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `partner_id` bigint(20) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `minute_of_meeting_additional_value`
--

CREATE TABLE `minute_of_meeting_additional_value` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `field_header_no` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `ref_class` varchar(255) DEFAULT NULL,
  `ref_id` bigint(20) DEFAULT NULL,
  `tr_group_add_header_id` bigint(20) NOT NULL,
  `transaction_group_id` bigint(20) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minute_of_meeting_additional_value`
--

INSERT INTO `minute_of_meeting_additional_value` (`id`, `version`, `date_created`, `field_header_no`, `last_updated`, `ref_class`, `ref_id`, `tr_group_add_header_id`, `transaction_group_id`, `value`) VALUES
(451, 0, '2015-11-06 15:38:06', 1, '2015-11-06 15:38:06', 'Assignment', 14110, 1, 8, 'SR 654321'),
(452, 0, '2015-11-06 15:38:06', 2, '2015-11-06 15:38:06', 'Assignment', 14110, 2, 8, 'http://mtcm.compnet.co.id/laporan/sla.php'),
(453, 0, '2015-11-06 15:38:06', 3, '2015-11-06 15:38:06', 'Assignment', 14110, 3, 8, ''),
(454, 0, '2015-11-06 15:38:06', 4, '2015-11-06 15:38:06', 'Assignment', 14110, 4, 8, ''),
(455, 0, '2015-11-06 15:38:06', 5, '2015-11-06 15:38:06', 'Assignment', 14110, 5, 8, ''),
(456, 0, '2015-11-20 13:28:18', 1, '2015-11-20 13:28:18', 'Assignment', 14230, 1, 8, ''),
(457, 0, '2015-11-20 13:28:18', 2, '2015-11-20 13:28:18', 'Assignment', 14230, 2, 8, ''),
(458, 0, '2015-11-20 13:28:18', 3, '2015-11-20 13:28:18', 'Assignment', 14230, 3, 8, ''),
(459, 0, '2015-11-20 13:28:18', 4, '2015-11-20 13:28:18', 'Assignment', 14230, 4, 8, ''),
(460, 0, '2015-11-20 13:28:18', 5, '2015-11-20 13:28:18', 'Assignment', 14230, 5, 8, ''),
(471, 0, '2015-11-27 11:32:41', 1, '2015-11-27 11:32:41', 'Assignment', 14280, 1, 8, 'a9s0as90s'),
(472, 0, '2015-11-27 11:32:41', 2, '2015-11-27 11:32:41', 'Assignment', 14280, 2, 8, 'http://cisco.com'),
(473, 0, '2015-11-27 11:32:41', 3, '2015-11-27 11:32:41', 'Assignment', 14280, 3, 8, ''),
(474, 0, '2015-11-27 11:32:41', 4, '2015-11-27 11:32:41', 'Assignment', 14280, 4, 8, ''),
(475, 0, '2015-11-27 11:32:41', 5, '2015-11-27 11:32:41', 'Assignment', 14280, 5, 8, ''),
(476, 0, '2015-11-27 17:04:14', 1, '2015-11-27 17:04:14', 'Assignment', 14288, 1, 8, '836386'),
(477, 0, '2015-11-27 17:04:14', 2, '2015-11-27 17:04:14', 'Assignment', 14288, 2, 8, 'cisco'),
(478, 0, '2015-11-27 17:04:14', 3, '2015-11-27 17:04:14', 'Assignment', 14288, 3, 8, '8s678'),
(479, 0, '2015-11-30 09:36:27', 1, '2015-11-30 09:36:27', 'Assignment', 14284, 1, 8, '654321'),
(480, 0, '2015-11-30 09:36:27', 2, '2015-11-30 09:36:27', 'Assignment', 14284, 2, 8, 'http://www.cisco.com'),
(481, 0, '2015-11-30 09:36:27', 3, '2015-11-30 09:36:27', 'Assignment', 14284, 3, 8, ''),
(482, 0, '2015-11-30 10:21:19', 1, '2015-11-30 10:21:19', 'Assignment', 14279, 1, 8, ''),
(483, 0, '2015-11-30 10:21:19', 2, '2015-11-30 10:21:19', 'Assignment', 14279, 2, 8, ''),
(484, 0, '2015-11-30 10:21:19', 3, '2015-11-30 10:21:19', 'Assignment', 14279, 3, 8, ''),
(485, 0, '2015-12-03 17:12:05', 1, '2015-12-03 17:12:05', 'Assignment', 14363, 1, 8, ''),
(486, 0, '2015-12-03 17:12:05', 2, '2015-12-03 17:12:05', 'Assignment', 14363, 2, 8, ''),
(487, 0, '2015-12-03 17:12:05', 3, '2015-12-03 17:12:05', 'Assignment', 14363, 3, 8, ''),
(491, 0, '2015-12-03 17:26:53', 1, '2015-12-03 17:26:53', 'Assignment', 14364, 1, 8, 'ahsg'),
(492, 0, '2015-12-03 17:26:53', 2, '2015-12-03 17:26:53', 'Assignment', 14364, 2, 8, 'ciaco'),
(493, 0, '2015-12-03 17:26:53', 3, '2015-12-03 17:26:53', 'Assignment', 14364, 3, 8, 'jsu'),
(503, 0, '2015-12-03 17:55:21', 1, '2015-12-03 17:55:21', 'Assignment', 14365, 1, 8, '567'),
(504, 0, '2015-12-03 17:55:21', 2, '2015-12-03 17:55:21', 'Assignment', 14365, 2, 8, 'www.567.com'),
(505, 0, '2015-12-03 17:55:21', 3, '2015-12-03 17:55:21', 'Assignment', 14365, 3, 8, ''),
(509, 0, '2015-12-03 18:08:45', 1, '2015-12-03 18:08:45', 'Assignment', 14368, 1, 8, 'tac0028'),
(510, 0, '2015-12-03 18:08:45', 2, '2015-12-03 18:08:45', 'Assignment', 14368, 2, 8, 'visco'),
(511, 0, '2015-12-03 18:08:45', 3, '2015-12-03 18:08:45', 'Assignment', 14368, 3, 8, 'jdjd88'),
(517, 0, '2015-12-03 18:35:11', 1, '2015-12-03 18:35:11', 'Assignment', 14369, 6, 23, 'http:cisco'),
(518, 0, '2015-12-03 18:35:11', 2, '2015-12-03 18:35:11', 'Assignment', 14369, 7, 23, 'ajs989'),
(519, 0, '2015-12-03 18:35:11', 3, '2015-12-03 18:35:11', 'Assignment', 14369, 8, 23, 'new tac ID'),
(520, 0, '2015-12-03 18:35:11', 4, '2015-12-03 18:35:11', 'Assignment', 14369, 9, 23, 'http:cisco'),
(521, 0, '2015-12-03 18:35:11', 5, '2015-12-03 18:35:11', 'Assignment', 14369, 10, 23, 'jskd98'),
(525, 0, '2015-12-07 15:52:48', 3, '2015-12-07 15:52:48', 'Assignment', 14396, 8, 23, 'new ID'),
(526, 0, '2015-12-07 15:52:48', 4, '2015-12-07 15:52:48', 'Assignment', 14396, 9, 23, 'ciscp'),
(527, 0, '2015-12-07 15:52:48', 5, '2015-12-07 15:52:48', 'Assignment', 14396, 10, 23, 'jsis77'),
(531, 0, '2015-12-11 17:56:02', 1, '2015-12-11 17:56:02', 'Assignment', 14442, 1, 8, 'KJP0923'),
(532, 0, '2015-12-11 17:56:02', 2, '2015-12-11 17:56:02', 'Assignment', 14442, 2, 8, 'cisco'),
(533, 0, '2015-12-11 17:56:02', 3, '2015-12-11 17:56:02', 'Assignment', 14442, 3, 8, 'jk91'),
(534, 0, '2015-12-13 21:04:05', 1, '2015-12-13 21:04:05', 'Assignment', 14458, 1, 8, '123'),
(535, 0, '2015-12-13 21:04:05', 2, '2015-12-13 21:04:05', 'Assignment', 14458, 2, 8, 'aaa'),
(536, 0, '2015-12-13 21:04:05', 3, '2015-12-13 21:04:05', 'Assignment', 14458, 3, 8, 'bbb'),
(537, 0, '2015-12-14 11:00:57', 1, '2015-12-14 11:00:57', 'Assignment', 14476, 1, 8, 'O234'),
(538, 0, '2015-12-14 11:00:57', 2, '2015-12-14 11:00:57', 'Assignment', 14476, 2, 8, 'cisco'),
(539, 0, '2015-12-14 11:00:57', 3, '2015-12-14 11:00:57', 'Assignment', 14476, 3, 8, 'TY01'),
(540, 0, '2015-12-14 12:06:51', 3, '2015-12-14 12:06:51', 'Assignment', 14488, 8, 23, '90'),
(541, 0, '2015-12-14 12:06:51', 4, '2015-12-14 12:06:51', 'Assignment', 14488, 9, 23, 'cisco'),
(542, 0, '2015-12-14 12:06:51', 5, '2015-12-14 12:06:51', 'Assignment', 14488, 10, 23, 'RMA'),
(543, 0, '2015-12-15 11:13:14', 3, '2015-12-15 11:13:14', 'Assignment', 14526, 8, 23, '17739'),
(544, 0, '2015-12-15 11:13:14', 4, '2015-12-15 11:13:14', 'Assignment', 14526, 9, 23, 'cisco'),
(545, 0, '2015-12-15 11:13:14', 5, '2015-12-15 11:13:14', 'Assignment', 14526, 10, 23, 'RMA No01'),
(546, 0, '2015-12-15 11:48:46', 3, '2015-12-15 11:48:46', 'Assignment', 14536, 8, 23, 'TAC001'),
(547, 0, '2015-12-15 11:48:46', 4, '2015-12-15 11:48:46', 'Assignment', 14536, 9, 23, 'cisco.com'),
(548, 0, '2015-12-15 11:48:46', 5, '2015-12-15 11:48:46', 'Assignment', 14536, 10, 23, 'RMA001'),
(549, 0, '2015-12-16 08:21:04', 1, '2015-12-16 08:21:04', 'Assignment', 14555, 1, 8, 'isi tac number'),
(550, 0, '2015-12-16 08:21:04', 2, '2015-12-16 08:21:04', 'Assignment', 14555, 2, 8, 'Cisco.com'),
(551, 0, '2015-12-16 08:21:04', 3, '2015-12-16 08:21:04', 'Assignment', 14555, 3, 8, 'rma'),
(552, 0, '2015-12-16 08:33:14', 3, '2015-12-16 08:33:14', 'Assignment', 14562, 8, 23, '898s8'),
(553, 0, '2015-12-16 08:33:14', 4, '2015-12-16 08:33:14', 'Assignment', 14562, 9, 23, 'cisco.com'),
(554, 0, '2015-12-16 08:33:14', 5, '2015-12-16 08:33:14', 'Assignment', 14562, 10, 23, 'shipmeny'),
(555, 0, '2015-12-22 15:17:14', 1, '2015-12-22 15:17:14', 'Assignment', 14566, 1, 8, 'TAC01'),
(556, 0, '2015-12-22 15:17:14', 2, '2015-12-22 15:17:14', 'Assignment', 14566, 2, 8, 'cisco.com'),
(557, 0, '2015-12-22 15:17:14', 3, '2015-12-22 15:17:14', 'Assignment', 14566, 3, 8, '001'),
(558, 0, '2015-12-22 16:03:09', 3, '2015-12-22 16:03:09', 'Assignment', 14695, 8, 23, 'ID 001'),
(559, 0, '2015-12-22 16:03:09', 4, '2015-12-22 16:03:09', 'Assignment', 14695, 9, 23, 'Cisco.com'),
(560, 0, '2015-12-22 16:03:09', 5, '2015-12-22 16:03:09', 'Assignment', 14695, 10, 23, 'RMA 001'),
(561, 0, '2015-12-27 15:19:57', 1, '2015-12-27 15:19:57', 'Assignment', 14723, 1, 8, ''),
(562, 0, '2015-12-27 15:19:57', 2, '2015-12-27 15:19:57', 'Assignment', 14723, 2, 8, ''),
(563, 0, '2015-12-27 15:19:57', 3, '2015-12-27 15:19:57', 'Assignment', 14723, 3, 8, ''),
(564, 0, '2015-12-28 16:09:27', 1, '2015-12-28 16:09:27', 'Assignment', 14571, 1, 8, 'NO001'),
(565, 0, '2015-12-28 16:09:27', 2, '2015-12-28 16:09:27', 'Assignment', 14571, 2, 8, 'Csi'),
(566, 0, '2015-12-28 16:09:27', 3, '2015-12-28 16:09:27', 'Assignment', 14571, 3, 8, 'JA'),
(567, 0, '2015-12-30 12:27:17', 3, '2015-12-30 12:27:17', 'Assignment', 14754, 8, 23, 'id001'),
(568, 0, '2015-12-30 12:27:17', 4, '2015-12-30 12:27:17', 'Assignment', 14754, 9, 23, 'cisco'),
(569, 0, '2015-12-30 12:27:17', 5, '2015-12-30 12:27:17', 'Assignment', 14754, 10, 23, 'rma'),
(570, 0, '2015-12-30 15:29:52', 3, '2015-12-30 15:29:52', 'Assignment', 14760, 8, 23, '23'),
(571, 0, '2015-12-30 15:29:52', 4, '2015-12-30 15:29:52', 'Assignment', 14760, 9, 23, 'dsd'),
(572, 0, '2015-12-30 15:29:52', 5, '2015-12-30 15:29:52', 'Assignment', 14760, 10, 23, 'sd'),
(576, 0, '2016-01-02 18:12:27', 1, '2016-01-02 18:12:27', 'Assignment', 14771, 1, 8, ''),
(577, 0, '2016-01-02 18:12:27', 2, '2016-01-02 18:12:27', 'Assignment', 14771, 2, 8, ''),
(578, 0, '2016-01-02 18:12:27', 3, '2016-01-02 18:12:27', 'Assignment', 14771, 3, 8, ''),
(579, 0, '2016-01-05 11:19:00', 1, '2016-01-05 11:19:00', 'Assignment', 14791, 1, 8, ''),
(580, 0, '2016-01-05 11:19:00', 2, '2016-01-05 11:19:00', 'Assignment', 14791, 2, 8, ''),
(581, 0, '2016-01-05 11:19:00', 3, '2016-01-05 11:19:00', 'Assignment', 14791, 3, 8, ''),
(582, 0, '2016-01-05 11:19:00', 4, '2016-01-05 11:19:00', 'Assignment', 14791, 4, 8, ''),
(583, 0, '2016-01-05 11:19:00', 5, '2016-01-05 11:19:00', 'Assignment', 14791, 5, 8, ''),
(584, 0, '2016-01-06 11:25:16', 1, '2016-01-06 11:25:16', 'Assignment', 14553, 1, 8, 'usu'),
(585, 0, '2016-01-06 11:25:16', 2, '2016-01-06 11:25:16', 'Assignment', 14553, 2, 8, 'zhsy'),
(586, 0, '2016-01-06 11:25:16', 3, '2016-01-06 11:25:16', 'Assignment', 14553, 3, 8, 'Hzu'),
(587, 0, '2016-01-06 11:25:53', 1, '2016-01-06 11:25:53', 'Assignment', 14796, 1, 8, 'suus'),
(588, 0, '2016-01-06 11:25:53', 2, '2016-01-06 11:25:53', 'Assignment', 14796, 2, 8, 'sjsj'),
(589, 0, '2016-01-06 11:25:53', 3, '2016-01-06 11:25:53', 'Assignment', 14796, 3, 8, '77s'),
(590, 0, '2016-01-12 14:35:27', 1, '2016-01-12 14:35:27', 'Assignment', 14875, 1, 8, '637530133'),
(591, 0, '2016-01-12 14:35:27', 2, '2016-01-12 14:35:27', 'Assignment', 14875, 2, 8, ''),
(592, 0, '2016-01-12 14:35:27', 3, '2016-01-12 14:35:27', 'Assignment', 14875, 3, 8, '');

-- --------------------------------------------------------

--
-- Table structure for table `minute_of_meeting_attendee`
--

CREATE TABLE `minute_of_meeting_attendee` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `minute_of_meeting_id` bigint(20) NOT NULL,
  `partner_contact_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `minute_of_meeting_item`
--

CREATE TABLE `minute_of_meeting_item` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `minute_of_meeting_id` bigint(20) NOT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `icon_front_page` varchar(50) DEFAULT NULL,
  `icon_menu` varchar(50) DEFAULT NULL,
  `is_front_page` bit(1) NOT NULL,
  `is_new_window` bit(1) NOT NULL,
  `last_updated` datetime NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `module_id` bigint(20) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `page_name` varchar(200) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `root` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `date_created`, `icon_front_page`, `icon_menu`, `is_front_page`, `is_new_window`, `last_updated`, `lft`, `module_id`, `name`, `notes`, `page_name`, `position`, `rgt`, `root`, `sorting`, `url`, `version`) VALUES
(4, '2013-07-09 20:49:14', NULL, 'building', b'1', b'1', '2013-07-09 20:49:14', 0, NULL, 'Administration', 'Konfigurasi User, Group, Access Rights', 'Administration', 0, 0, 0, 100, '/site/submenu/4', 0),
(24, '2013-07-09 20:49:14', 'settings.png', 'wrench', b'0', b'0', '2013-08-23 16:52:19', 0, 4, 'Application Setting', 'Manage application settings', 'appSetting', 0, 0, 0, 100, '/appSetting/admin', 0),
(25, '2013-07-09 20:49:14', 'user.png', 'user', b'0', b'0', '2013-08-23 16:51:58', 0, 4, 'Users', 'Manage User login', 'User', 1, 0, 0, 100, '/user', 0),
(26, '2013-07-09 20:49:14', 'group.png', 'group', b'0', b'0', '2013-08-23 16:51:28', 0, 4, 'Group', 'Manage group data and access rights', 'userGroup', 2, 0, 0, 110, '/group', 0),
(27, '2013-07-09 20:49:14', 'module.png', 'beaker', b'0', b'0', '2013-08-23 16:51:01', 0, 4, 'Module', 'Manage application modules', 'Module', 3, 0, 0, 120, '/module', 0),
(147, '2013-07-09 20:49:14', 'asses.png', 'barcode', b'1', b'0', '2013-07-09 20:49:14', 0, NULL, 'Logistic', 'Input data self risk assesment', '', 0, 0, 0, 10, NULL, 0),
(158, '2013-07-09 20:49:14', NULL, NULL, b'1', b'1', '2013-07-09 20:49:14', NULL, NULL, 'Engineer', NULL, '', NULL, NULL, NULL, 60, '/site/submenu/158', 0),
(159, '2013-07-09 20:49:14', 'master.png', NULL, b'1', b'1', '2013-08-13 23:18:50', 0, NULL, 'Master Data', NULL, '', 0, 0, 0, 90, '/site/submenu/159', 0),
(160, '2013-07-09 20:49:14', 'library.png', NULL, b'0', b'0', '2014-08-20 15:41:29', 0, 159, 'Department', 'Manage Risk Master Data', 'Department', 0, 0, 0, 10, NULL, 0),
(161, '2013-07-09 20:49:14', 'profil-korporat.png', NULL, b'0', b'0', '2014-08-20 16:05:40', 0, 159, 'Business Partner', NULL, 'partner', 1, 0, 0, 1000, '/office', 0),
(162, '2013-07-09 20:49:14', 'recruitment.png', NULL, b'0', b'0', '2014-08-20 15:41:41', 0, 159, 'Employee', NULL, 'employee', 0, 0, 0, 20, NULL, 0),
(163, '2013-07-09 20:49:14', 'internet.png', NULL, b'1', b'1', '2013-08-13 23:16:43', 0, NULL, 'Sales', NULL, '', 0, 0, 0, 5, '/riskAnalysis', 0),
(166, '2013-07-09 20:49:14', 'binoculars.png', NULL, b'0', b'0', '2014-08-20 16:05:56', 0, 159, 'Location', NULL, 'location', 3, 0, 0, 1010, NULL, 0),
(167, '2013-07-09 20:49:14', 'column-chart.png', NULL, b'0', b'0', '2014-08-20 15:41:55', 0, 159, 'Entity', NULL, 'Entity', 4, 0, 0, 30, NULL, 0),
(168, '2013-07-09 20:49:14', 'accounting.png', NULL, b'0', b'0', '2014-08-20 15:43:04', 0, 159, 'Item', NULL, 'item', 5, 0, 0, 60, NULL, 0),
(169, '2013-07-09 20:49:14', 'messaging.png', NULL, b'0', b'0', '2014-08-20 15:42:51', 0, 159, 'Warehouse', NULL, 'Warehouse', 6, 0, 0, 50, NULL, 0),
(170, '2013-07-09 20:49:14', NULL, NULL, b'0', b'0', '2015-02-02 16:51:05', NULL, 147, 'Barang Spare', NULL, 'batch', NULL, NULL, NULL, 10, NULL, 0),
(171, '2013-07-09 20:49:14', NULL, NULL, b'0', b'0', '2013-10-01 14:04:03', NULL, 147, 'Location Transfer', NULL, 'transfer?trx=loc_transfer', NULL, NULL, NULL, 110, NULL, 0),
(172, '2013-07-09 20:49:14', NULL, NULL, b'0', b'0', '2013-07-22 13:46:06', NULL, 147, 'Delivery', NULL, 'transfer?trx=delivery', NULL, NULL, NULL, 120, NULL, 0),
(173, '2013-07-09 20:49:14', NULL, NULL, b'0', b'0', '2013-07-22 13:46:13', NULL, 147, 'Sales Return', NULL, 'transfer?trx=sales_return', NULL, NULL, NULL, 130, NULL, 0),
(174, '2013-07-09 20:49:14', NULL, NULL, b'0', b'0', '2013-07-09 20:49:14', NULL, 163, 'Customer Visit', NULL, 'CustomerVisit', NULL, NULL, NULL, NULL, NULL, 0),
(175, '2013-07-09 20:49:14', NULL, NULL, b'0', b'0', '2013-09-25 05:37:00', NULL, 163, 'Sales Order', NULL, 'salesOrder?trx=sales_order', NULL, NULL, NULL, 50, NULL, 0),
(176, '2013-07-09 20:49:14', NULL, NULL, b'0', b'0', '2013-07-09 20:49:14', NULL, NULL, 'Engineer', NULL, '', NULL, NULL, NULL, 60, NULL, 0),
(177, '2013-07-09 20:49:14', NULL, NULL, b'0', b'0', '2013-07-22 15:01:50', NULL, 176, 'Engineer', NULL, 'engineer', NULL, NULL, NULL, 20, NULL, 0),
(178, '2013-07-09 20:49:14', NULL, NULL, b'1', b'1', '2015-11-13 09:09:44', NULL, 176, 'Incident Ticket', NULL, 'maintenanceOrder', NULL, NULL, NULL, 120, NULL, 0),
(179, '2013-07-09 20:49:14', NULL, NULL, b'0', b'0', '2013-09-24 08:20:10', NULL, 176, 'Manual Assignment', NULL, 'assignment', NULL, NULL, NULL, 130, NULL, 0),
(180, '2013-07-09 20:49:14', NULL, NULL, b'1', b'1', '2013-08-13 23:18:10', NULL, 176, 'Working Calendar', NULL, 'nonWorkingDay', 70, NULL, NULL, NULL, NULL, 0),
(181, '2013-07-09 20:49:14', NULL, NULL, b'0', b'0', '2013-07-09 20:49:14', NULL, NULL, 'Survey', NULL, '', NULL, NULL, NULL, 80, NULL, 0),
(182, '2013-07-09 20:49:14', NULL, NULL, b'0', b'0', '2013-07-09 20:49:14', NULL, 181, 'Survey Definition', NULL, 'SurveyHeader', NULL, NULL, NULL, 10, NULL, 0),
(183, '2013-07-09 20:49:14', NULL, NULL, b'0', b'0', '2013-07-09 20:49:14', NULL, 181, 'Survey Result', NULL, 'Survey/result', NULL, NULL, NULL, 20, NULL, 0),
(184, '2013-07-16 03:43:49', NULL, NULL, b'0', b'0', '2013-07-20 13:55:08', NULL, 159, 'Transaction Group', NULL, 'transactionGroup', NULL, NULL, NULL, 110, NULL, 0),
(185, '2013-07-16 05:47:50', NULL, NULL, b'0', b'0', '2013-07-20 14:01:53', NULL, 159, 'Transaction Type', NULL, 'transactionType', NULL, NULL, NULL, 100, NULL, 0),
(186, '2013-07-16 10:32:15', NULL, NULL, b'0', b'0', '2013-07-22 13:46:25', NULL, 147, 'Receiving', NULL, 'transfer?trx=receiving', NULL, NULL, NULL, 140, NULL, 0),
(187, '2013-07-20 13:54:40', NULL, NULL, b'0', b'0', '2013-07-20 13:55:27', NULL, 159, '-', NULL, '', NULL, NULL, NULL, 40, NULL, 0),
(188, '2013-07-20 13:56:30', NULL, NULL, b'0', b'0', '2013-07-20 13:56:30', NULL, 159, '-', NULL, '', NULL, NULL, NULL, 200, NULL, 0),
(189, '2013-07-20 14:55:31', NULL, NULL, b'0', b'0', '2013-07-20 14:55:31', NULL, 159, '-', NULL, '', NULL, NULL, NULL, 2000, NULL, 0),
(190, '2013-07-20 14:55:50', NULL, NULL, b'0', b'0', '2013-07-20 14:55:50', NULL, 159, 'Country', NULL, 'country', NULL, NULL, NULL, 2010, NULL, 0),
(191, '2013-07-20 14:56:13', NULL, NULL, b'0', b'0', '2013-07-20 14:56:13', NULL, 159, 'Province', NULL, 'province', NULL, NULL, NULL, 2020, NULL, 0),
(192, '2013-07-20 14:56:31', NULL, NULL, b'0', b'0', '2013-07-20 14:56:31', NULL, 159, 'City', NULL, 'city', NULL, NULL, NULL, 2030, NULL, 0),
(193, '2013-07-21 09:00:17', NULL, NULL, b'0', b'0', '2013-07-21 09:00:17', NULL, 159, 'Price List', NULL, 'priceList', NULL, NULL, NULL, 70, NULL, 0),
(194, '2013-07-21 11:31:44', NULL, NULL, b'0', b'0', '2013-10-02 11:30:38', NULL, 159, 'Contact', NULL, 'partnerContact', NULL, NULL, NULL, 1020, NULL, 0),
(195, '2013-07-22 13:45:34', NULL, NULL, b'0', b'0', '2014-08-13 07:44:51', NULL, 147, 'Stock History', NULL, 'batchBalance/stockHistory', NULL, NULL, NULL, 100, NULL, 0),
(196, '2013-07-22 13:47:08', NULL, NULL, b'0', b'0', '2013-07-22 13:47:08', NULL, 147, '-', NULL, '', NULL, NULL, NULL, 200, NULL, 0),
(197, '2013-07-22 13:47:38', NULL, NULL, b'0', b'0', '2013-07-22 13:47:38', NULL, 147, 'Item Balance', NULL, 'itemBalance', NULL, NULL, NULL, 210, NULL, 0),
(198, '2013-07-22 13:48:12', NULL, NULL, b'0', b'0', '2014-08-13 07:41:54', NULL, 147, 'Log Transaksi', NULL, 'batchBalance', NULL, NULL, NULL, 220, NULL, 0),
(199, '2013-07-22 15:02:08', NULL, NULL, b'0', b'0', '2013-07-22 15:02:08', NULL, 176, 'Certificate', NULL, 'certificate', NULL, NULL, NULL, 30, NULL, 0),
(200, '2013-07-22 15:02:25', NULL, NULL, b'0', b'0', '2013-07-22 15:02:25', NULL, 176, 'Expertise', NULL, 'expertise', NULL, NULL, NULL, 40, NULL, 0),
(201, '2013-07-22 15:02:50', NULL, NULL, b'0', b'0', '2013-07-22 15:02:50', NULL, 176, '-', NULL, '', NULL, NULL, NULL, 50, NULL, 0),
(202, '2013-07-22 15:03:26', NULL, NULL, b'0', b'0', '2013-07-22 15:03:26', NULL, 176, 'SLA', NULL, 'sla', NULL, NULL, NULL, 100, NULL, 0),
(203, '2013-07-22 15:04:37', NULL, NULL, b'0', b'0', '2014-04-02 10:10:23', NULL, 176, 'Contract', NULL, 'contract', NULL, NULL, NULL, 110, NULL, 0),
(204, '2013-07-31 09:02:00', NULL, NULL, b'0', b'0', '2013-07-31 09:02:00', NULL, 176, 'Issue Type', NULL, 'issueType', NULL, NULL, NULL, 45, NULL, 0),
(205, '2013-07-31 09:02:34', NULL, NULL, b'0', b'0', '2013-07-31 09:02:34', NULL, 176, 'Priority', NULL, 'priority', NULL, NULL, NULL, 48, NULL, 0),
(206, '2013-08-23 17:06:35', NULL, NULL, b'0', b'0', '2013-08-23 17:06:35', NULL, 4, '-', NULL, '', NULL, NULL, NULL, 130, NULL, 0),
(207, '2013-08-23 17:07:12', NULL, NULL, b'0', b'0', '2014-08-20 15:39:34', NULL, 4, 'Outbox', NULL, 'outbox', NULL, NULL, NULL, 140, NULL, 0),
(208, '2013-08-23 17:07:34', NULL, NULL, b'0', b'0', '2014-08-20 15:40:12', NULL, 4, 'Sent', NULL, 'sent', NULL, NULL, NULL, 150, NULL, 0),
(209, '2013-09-09 11:31:21', NULL, NULL, b'0', b'0', '2013-09-09 11:31:21', NULL, 4, 'Audit Log', NULL, 'auditLog', NULL, NULL, NULL, 200, NULL, 0),
(210, '2013-09-10 13:23:32', NULL, NULL, b'0', b'0', '2014-08-20 15:44:26', NULL, 159, 'Unit of Measures', NULL, 'uom', NULL, NULL, NULL, 65, NULL, 0),
(212, '2013-09-25 05:36:51', NULL, NULL, b'0', b'0', '2013-09-25 05:36:51', NULL, 163, 'Saler Return Request', NULL, 'salesOrder?trx=sales_return_request', NULL, NULL, NULL, NULL, NULL, 0),
(213, '2013-10-13 12:03:09', NULL, NULL, b'0', b'0', '2013-10-13 12:03:09', NULL, 163, 'Scan Delivery', NULL, 'salesOrder/scanDelivery', NULL, NULL, NULL, 50, NULL, NULL),
(214, '2013-12-01 12:38:58', NULL, NULL, b'0', b'0', '2013-12-01 12:38:58', NULL, 176, 'Regular Visits', NULL, 'assignment/regularVisitList', NULL, NULL, NULL, 888, NULL, NULL),
(215, '2013-12-12 22:01:23', NULL, NULL, b'0', b'0', '2013-12-12 22:01:23', NULL, 4, 'Group Module', NULL, 'groupModule', NULL, NULL, NULL, 125, NULL, NULL),
(216, '2013-12-24 00:44:18', NULL, NULL, b'0', b'0', '2013-12-24 00:44:18', NULL, 159, 'Master Data Template', NULL, 'masterDataTemplate', NULL, NULL, NULL, 10, NULL, NULL),
(217, '2014-08-27 08:55:00', NULL, 'building', b'1', b'1', '2014-08-27 08:55:00', 0, NULL, 'PreSales', 'Menu Khusus presales', 'PSSE', 0, 0, 0, 110, '/site/submenu/217', 0),
(218, '2014-08-27 09:02:00', NULL, NULL, b'0', b'0', '2014-08-27 09:02:00', NULL, 217, 'Contract', NULL, 'contract', NULL, NULL, NULL, 60, NULL, 0),
(219, '2014-08-27 09:20:00', 'profil-korporat.png', NULL, b'0', b'0', '2014-08-27 09:20:00', 0, 217, 'Customer', 'List Customer Compnet', 'partner', 1, 0, 0, 20, '/office', 0),
(220, '2014-08-27 09:23:00', 'binoculars.png', NULL, b'0', b'0', '2014-08-27 09:23:00', 0, 217, 'Location', 'List Lokasi Customer', 'location', 3, 0, 0, 30, NULL, 0),
(221, '2014-08-27 09:29:00', NULL, NULL, b'0', b'0', '2014-08-27 09:29:00', NULL, 217, 'Contact', 'List Contact Person Customer', 'partnerContact', NULL, NULL, NULL, 40, NULL, 0),
(222, '2014-08-27 09:30:00', NULL, NULL, b'0', b'0', '2014-08-27 09:30:00', NULL, 217, '-', NULL, '', NULL, NULL, NULL, 50, NULL, 0),
(223, '2014-08-27 09:35:00', NULL, NULL, b'1', b'1', '2014-08-27 09:35:00', NULL, 217, 'Working Calendar', 'Kalender Kerja', 'nonWorkingDay', 70, NULL, NULL, 10, NULL, 0),
(224, '2014-08-27 09:39:00', NULL, NULL, b'0', b'0', '2014-08-27 09:39:00', NULL, 217, 'Engineer', 'List Engineer Compnet', 'engineer', NULL, NULL, NULL, 70, NULL, 0),
(225, '2014-08-27 09:41:00', NULL, NULL, b'0', b'0', '2014-08-27 09:41:00', NULL, 217, 'SLA', 'List SLA Service', 'sla', NULL, NULL, NULL, 80, NULL, 0),
(227, '2014-09-19 12:22:58', NULL, 'User.png', b'0', b'0', '2014-09-19 12:23:53', NULL, 176, 'User', 'Manage User login', 'User', NULL, NULL, NULL, 60, NULL, 0),
(228, '2014-09-19 12:26:12', NULL, 'user.png', b'0', b'0', '2014-09-19 12:26:12', NULL, 147, 'User', 'Manage User login', 'User', NULL, NULL, NULL, 60, NULL, 0),
(229, '2014-11-05 10:00:00', NULL, NULL, b'0', b'0', '2014-11-05 10:00:00', NULL, 217, 'Master Item', 'Master Data Item', 'item', NULL, NULL, NULL, 45, NULL, 0),
(230, '2014-11-05 10:00:00', NULL, NULL, b'0', b'0', '2014-11-05 10:00:00', NULL, 217, 'Data Template', 'Master Data Template', 'masterDataTemplate', NULL, NULL, NULL, 46, NULL, 0),
(231, '2014-11-05 10:00:00', NULL, NULL, b'0', b'0', '2014-11-05 10:00:00', NULL, 217, '-', NULL, '', NULL, NULL, NULL, 15, NULL, 0),
(232, '2014-11-05 10:00:00', NULL, NULL, b'0', b'0', '2014-11-05 10:00:00', NULL, 217, '-', NULL, '', NULL, NULL, NULL, 41, NULL, 0),
(233, '2015-03-17 11:11:31', NULL, NULL, b'1', b'1', '2015-03-17 11:12:16', NULL, NULL, 'Satisfication', NULL, 'satisfaction', NULL, NULL, NULL, 57, NULL, NULL),
(234, '2015-03-17 11:13:24', NULL, NULL, b'1', b'1', '2015-03-17 11:13:24', NULL, 159, 'Satisfaction', NULL, 'satisfaction', NULL, NULL, NULL, 55, NULL, NULL),
(235, '2015-11-11 17:16:52', NULL, NULL, b'1', b'1', '2015-11-13 09:10:05', NULL, 176, 'Problem Ticket', NULL, 'problemManagement', NULL, NULL, NULL, 125, NULL, NULL),
(240, '2013-07-09 20:49:14', NULL, NULL, b'1', b'1', '2013-08-13 23:18:10', NULL, 158, 'Working Calendar', NULL, 'nonWorkingDay', 70, NULL, NULL, NULL, NULL, 0),
(241, '2013-07-09 20:49:14', NULL, NULL, b'0', b'0', '2013-07-22 15:01:50', NULL, 158, 'Engineer', NULL, 'engineer', NULL, NULL, NULL, 20, NULL, 0),
(242, '2013-07-22 15:02:08', NULL, NULL, b'0', b'0', '2013-07-22 15:02:08', NULL, 158, 'Certificate', NULL, 'certificate', NULL, NULL, NULL, 30, NULL, 0),
(243, '2013-07-22 15:02:25', NULL, NULL, b'0', b'0', '2013-07-22 15:02:25', NULL, 158, 'Expertise', NULL, 'expertise', NULL, NULL, NULL, 40, NULL, 0),
(244, '2013-07-31 09:02:00', NULL, NULL, b'0', b'0', '2013-07-31 09:02:00', NULL, 158, 'Issue Type', NULL, 'issueType', NULL, NULL, NULL, 45, NULL, 0),
(245, '2013-07-31 09:02:34', NULL, NULL, b'0', b'0', '2013-07-31 09:02:34', NULL, 158, 'Priority', NULL, 'priority', NULL, NULL, NULL, 48, NULL, 0),
(246, '2013-07-22 15:02:50', NULL, NULL, b'0', b'0', '2013-07-22 15:02:50', NULL, 158, '-', NULL, '', NULL, NULL, NULL, 50, NULL, 0),
(247, '2013-07-09 20:49:14', NULL, NULL, b'1', b'1', '2015-11-13 09:09:44', NULL, 158, 'Create New Incident Ticket', NULL, 'maintenanceOrder/create', NULL, NULL, NULL, 51, '', 0),
(248, '2013-07-09 20:49:14', NULL, NULL, b'1', b'1', '2015-11-13 09:09:44', NULL, 158, 'Create New Manual Assignment', NULL, 'assignment/manualCreate', NULL, NULL, NULL, 52, '', 0),
(249, '2013-07-22 15:02:50', NULL, NULL, b'0', b'0', '2013-07-22 15:02:50', NULL, 158, '-', NULL, '', NULL, NULL, NULL, 53, NULL, 0),
(250, '2014-09-19 12:22:58', NULL, 'User.png', b'0', b'0', '2014-09-19 12:23:53', NULL, 158, 'User', 'Manage User login', 'User', NULL, NULL, NULL, 60, NULL, 0),
(251, '2013-07-22 15:03:26', NULL, NULL, b'0', b'0', '2013-07-22 15:03:26', NULL, 158, 'SLA', NULL, 'sla', NULL, NULL, NULL, 100, NULL, 0),
(252, '2013-07-22 15:04:37', NULL, NULL, b'0', b'0', '2014-04-02 10:10:23', NULL, 158, 'Contract', NULL, 'contract', NULL, NULL, NULL, 110, NULL, 0),
(253, '2013-07-09 20:49:14', NULL, NULL, b'1', b'1', '2015-11-13 09:09:44', NULL, 158, 'Incident Ticket', NULL, 'maintenanceOrder', NULL, NULL, NULL, 120, NULL, 0),
(254, '2015-11-11 17:16:52', NULL, NULL, b'1', b'1', '2015-11-13 09:10:05', NULL, 158, 'Problem Ticket', NULL, 'problemManagement', NULL, NULL, NULL, 125, NULL, NULL),
(255, '2013-07-09 20:49:14', NULL, NULL, b'0', b'0', '2013-09-24 08:20:10', NULL, 158, 'Manual Assignment', NULL, 'assignment', NULL, NULL, NULL, 130, NULL, 0),
(256, '2013-12-01 12:38:58', NULL, NULL, b'0', b'0', '2013-12-01 12:38:58', NULL, 158, 'Regular Visits', NULL, 'assignment/regularVisitList', NULL, NULL, NULL, 888, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mo_call`
--

CREATE TABLE `mo_call` (
  `id` bigint(20) NOT NULL,
  `assignment_id` bigint(20) DEFAULT NULL,
  `call_end` datetime DEFAULT NULL,
  `call_report` varchar(255) DEFAULT NULL,
  `call_start` datetime DEFAULT NULL,
  `call_status` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `destination` varchar(255) NOT NULL,
  `ref_number` varchar(255) DEFAULT NULL,
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mo_onsite_response_time_escalated`
--

CREATE TABLE `mo_onsite_response_time_escalated` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_sent` datetime NOT NULL,
  `escalation_onsite_response_time_id` bigint(20) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `assignment_id` bigint(20) NOT NULL,
  `escalation_onsite_response_time_target_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mo_onsite_response_time_escalated`
--

INSERT INTO `mo_onsite_response_time_escalated` (`id`, `date_created`, `date_sent`, `escalation_onsite_response_time_id`, `last_updated`, `version`, `assignment_id`, `escalation_onsite_response_time_target_id`) VALUES
(1, '2016-02-16 10:34:45', '2016-02-16 10:34:45', NULL, '2016-02-16 10:34:45', NULL, 15207, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mo_priority_onsite_response_time_escalated`
--

CREATE TABLE `mo_priority_onsite_response_time_escalated` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `escalation_onsite_response_time_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `maintenance_order_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mo_priority_response_time_escalated`
--

CREATE TABLE `mo_priority_response_time_escalated` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `escalation_response_time_target_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `maintenance_order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mo_priority_solving_time_escalated`
--

CREATE TABLE `mo_priority_solving_time_escalated` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `escalation_solving_time_target_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `maintenance_order_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mo_reschedule_history`
--

CREATE TABLE `mo_reschedule_history` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `engineer_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `maintenance_order_id` bigint(20) NOT NULL,
  `plan_date_end` datetime NOT NULL,
  `plan_date_start` datetime NOT NULL,
  `reschedule_notes` varchar(255) NOT NULL,
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mo_response_time_escalated`
--

CREATE TABLE `mo_response_time_escalated` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_sent` datetime NOT NULL,
  `escalation_response_time_target_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `assignment_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mo_response_time_escalated`
--

INSERT INTO `mo_response_time_escalated` (`id`, `version`, `date_created`, `date_sent`, `escalation_response_time_target_id`, `last_updated`, `assignment_id`) VALUES
(1, 0, '2016-02-16 10:14:45', '2016-02-16 10:14:45', 1, '2016-02-16 10:14:45', 15207);

-- --------------------------------------------------------

--
-- Table structure for table `mo_solving_time_escalated`
--

CREATE TABLE `mo_solving_time_escalated` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_sent` datetime NOT NULL,
  `escalation_solving_time_target_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `assignment_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mo_solving_time_escalated`
--

INSERT INTO `mo_solving_time_escalated` (`id`, `version`, `date_created`, `date_sent`, `escalation_solving_time_target_id`, `last_updated`, `assignment_id`) VALUES
(1, 0, '2016-02-18 09:21:57', '2016-02-18 09:21:57', 3, '2016-02-18 09:21:57', 15211),
(2, 0, '2016-02-18 10:46:51', '2016-02-18 10:46:51', 4, '2016-02-18 10:46:51', 15211),
(3, 0, '2016-02-18 10:56:50', '2016-02-18 10:56:50', 3, '2016-02-18 10:56:50', 15212),
(4, 0, '2016-02-18 11:26:50', '2016-02-18 11:26:50', 4, '2016-02-18 11:26:50', 15212);

-- --------------------------------------------------------

--
-- Table structure for table `mo_state`
--

CREATE TABLE `mo_state` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mo_status`
--

CREATE TABLE `mo_status` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `non_working_day`
--

CREATE TABLE `non_working_day` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_end` datetime NOT NULL,
  `date_start` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `non_working_day`
--

INSERT INTO `non_working_day` (`id`, `version`, `date_created`, `last_updated`, `name`, `date_end`, `date_start`) VALUES
(1, 0, '2014-01-06 13:51:26', '2014-01-06 13:51:26', 'Aniversary perusahaan', '2013-12-06 00:00:00', '2013-12-06 00:00:00'),
(2, 0, '2014-01-07 21:04:02', '2014-01-07 21:04:02', 'Tahun Baru 2014', '2014-01-01 00:00:00', '2014-01-01 00:00:00'),
(3, 0, '2014-01-07 21:05:23', '2014-01-07 21:05:23', 'The Prophet Muhammad''s Birthday', '2014-01-14 00:00:00', '2014-01-14 00:00:00'),
(4, 0, '2014-01-07 21:05:40', '2014-01-07 21:05:40', 'Chinese New Year', '2014-01-31 00:00:00', '2014-01-31 00:00:00'),
(5, 0, '2014-01-07 21:06:33', '2014-01-07 21:06:33', 'Day of Silence (Hari Raya Nyepi)', '2014-03-31 00:00:00', '2014-03-31 00:00:00'),
(6, 1, '2014-01-07 21:07:13', '2014-03-05 17:11:22', 'Good Friday (Wafat Isa Al-Masih)', '2014-04-18 00:00:00', '2014-04-18 00:00:00'),
(7, 1, '2014-01-07 21:07:36', '2014-03-05 17:12:17', 'International Labor Day (Hari Buruh Nasional)', '2014-05-01 00:00:00', '2014-05-01 00:00:00'),
(8, 0, '2014-01-07 21:07:53', '2014-01-07 21:07:53', 'Waisak Day', '2014-05-15 00:00:00', '2014-05-15 00:00:00'),
(9, 1, '2014-01-07 21:08:22', '2014-03-05 17:13:37', 'Ascension of the Prophet Muhammad (Isra Miraj Nabi Muhammad SAW)', '2014-05-27 00:00:00', '2014-05-27 00:00:00'),
(10, 1, '2014-01-07 21:08:50', '2014-03-05 17:14:11', 'Ascension Day of Jesus Christ (Kenaikan Isa Al-Masih)', '2014-05-29 00:00:00', '2014-05-29 00:00:00'),
(12, 0, '2014-02-17 15:59:00', '2014-02-17 15:59:00', 'aa', '2014-02-17 00:00:00', '2014-02-17 00:00:00'),
(13, 0, '2014-03-05 17:05:53', '2014-03-05 17:05:53', 'Eid Al-Fitr Day', '2014-07-28 00:00:00', '2014-07-28 00:00:00'),
(14, 0, '2014-03-05 17:06:11', '2014-03-05 17:06:11', 'Eid Al-Fitr Day', '2014-07-29 00:00:00', '2014-07-29 00:00:00'),
(15, 0, '2014-03-05 17:06:54', '2014-03-05 17:06:54', 'Indonesian Independence Day', '2014-08-17 00:00:00', '2014-08-17 00:00:00'),
(16, 1, '2014-03-05 17:07:35', '2014-03-05 17:08:31', 'Eid Al-Adha Day', '2014-10-05 00:00:00', '2014-10-05 00:00:00'),
(17, 1, '2014-03-05 17:08:12', '2014-03-05 17:16:49', 'Muharram Day (Tahun Baru Hijriah)', '2014-10-25 00:00:00', '2014-10-25 00:00:00'),
(18, 0, '2014-03-05 17:09:17', '2014-03-05 17:09:17', 'Christmas Day', '2014-12-25 00:00:00', '2014-12-25 00:00:00'),
(19, 0, '2014-04-10 21:13:39', '2014-04-10 21:13:39', 'sierad', '2014-04-24 00:00:00', '2014-04-24 00:00:00'),
(20, 0, '2014-12-17 10:07:28', '2014-12-17 10:07:28', 'Tahun Baru 2015', '2015-01-01 00:00:00', '2015-01-01 00:00:00'),
(21, 0, '2014-12-17 10:07:48', '2014-12-17 10:07:48', 'Maulid Nabi Muhammad SAW', '2015-01-03 00:00:00', '2015-01-03 00:00:00'),
(22, 0, '2014-12-17 10:08:15', '2014-12-17 10:08:15', 'Tahun Baru Imlek 2566', '2015-02-19 00:00:00', '2015-02-19 00:00:00'),
(23, 0, '2014-12-17 10:14:33', '2014-12-17 10:14:33', 'Hari Raya Nyepi Tahun Baru Saka 1937', '2015-03-21 00:00:00', '2015-03-21 00:00:00'),
(24, 0, '2014-12-17 10:16:43', '2014-12-17 10:16:43', 'Wafat Isa al Masih', '2015-04-03 00:00:00', '2015-04-03 00:00:00'),
(25, 0, '2014-12-17 10:17:10', '2014-12-17 10:17:10', 'Hari Buruh Internasional', '2015-05-01 00:00:00', '2015-05-01 00:00:00'),
(26, 0, '2014-12-17 10:17:32', '2014-12-17 10:17:32', 'Kenaikan Isa al Masih', '2015-05-14 00:00:00', '2015-05-14 00:00:00'),
(27, 3, '2014-12-17 10:18:02', '2015-05-19 07:52:23', 'Isra Miraj Nabi Muhammad SAW', '2015-05-16 00:00:00', '2015-05-16 00:00:00'),
(28, 0, '2014-12-17 10:18:25', '2014-12-17 10:18:25', 'Hari Raya Waisak 2559', '2015-06-02 00:00:00', '2015-06-02 00:00:00'),
(29, 0, '2014-12-17 10:18:46', '2014-12-17 10:18:46', 'Idul Fitri 1436H', '2015-07-17 00:00:00', '2015-07-17 00:00:00'),
(30, 0, '2014-12-17 10:19:00', '2014-12-17 10:19:00', 'Idul Fitri 1436H', '2015-07-18 00:00:00', '2015-07-18 00:00:00'),
(31, 0, '2014-12-17 10:19:28', '2014-12-17 10:19:28', 'Hari Proklamasi Kemerdekaan RI', '2015-08-17 00:00:00', '2015-08-17 00:00:00'),
(32, 0, '2014-12-17 10:19:53', '2014-12-17 10:19:53', 'Hari Raya Idul Adha 1436H', '2015-09-24 00:00:00', '2015-09-24 00:00:00'),
(33, 0, '2014-12-17 10:20:19', '2014-12-17 10:20:19', 'Tahun Baru Islam 1437H', '2015-10-14 00:00:00', '2015-10-14 00:00:00'),
(34, 0, '2014-12-17 10:20:39', '2014-12-17 10:20:39', 'Hari Raya Natal', '2015-12-25 00:00:00', '2015-12-25 00:00:00'),
(35, 0, '2015-02-12 10:37:17', '2015-02-12 10:37:17', 'Cuti', '2015-02-20 00:00:00', '2015-02-20 00:00:00'),
(36, 0, '2015-02-12 10:37:51', '2015-02-12 10:37:51', 'Training @26', '2015-02-16 00:00:00', '2015-02-16 00:00:00'),
(37, 0, '2015-02-12 10:38:14', '2015-02-12 10:38:14', 'Cuti Imlek', '2015-02-23 00:00:00', '2015-02-23 00:00:00'),
(38, 0, '2015-02-12 10:38:34', '2015-02-12 10:38:34', 'Cuti Imlek', '2015-02-24 00:00:00', '2015-02-24 00:00:00'),
(39, 0, '2015-02-12 10:38:57', '2015-02-12 10:38:57', 'Cuti Imlek', '2015-02-25 00:00:00', '2015-02-25 00:00:00'),
(40, 0, '2015-02-12 10:39:11', '2015-02-12 10:39:11', 'Cuti Imlek', '2015-02-26 00:00:00', '2015-02-26 00:00:00'),
(41, 0, '2015-02-12 10:39:40', '2015-02-12 10:39:40', 'Cuti Imlek', '2015-02-27 00:00:00', '2015-02-27 00:00:00'),
(42, 0, '2015-07-01 08:36:39', '2015-07-01 08:36:39', 'Cuti Bersama Hari Raya Idul Fitri 1436H', '2015-07-16 00:00:00', '2015-07-16 00:00:00'),
(43, 0, '2015-07-01 08:37:00', '2015-07-01 08:37:00', 'Cuti Bersama Hari Raya Idul Fitri 1436H', '2015-07-20 00:00:00', '2015-07-20 00:00:00'),
(44, 0, '2015-07-01 08:37:11', '2015-07-01 08:37:11', 'Cuti Bersama Hari Raya Idul Fitri 1436H', '2015-07-21 00:00:00', '2015-07-21 00:00:00'),
(45, 0, '2015-12-22 07:22:04', '2015-12-22 07:22:04', 'Maulid Nabi', '2015-12-24 00:00:00', '2015-12-24 00:00:00'),
(46, 1, '2016-01-04 11:31:52', '2016-01-04 11:32:32', 'Tahun Baru 2016', '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(47, 0, '2016-01-04 11:33:34', '2016-01-04 11:33:34', 'Tahun Baru Imlek 2567 Kongzili', '2016-02-08 00:00:00', '2016-02-08 00:00:00'),
(48, 0, '2016-01-04 11:34:30', '2016-01-04 11:34:30', 'Hari Raya Nyepi Tahun Baru Saka 1938', '2016-03-09 00:00:00', '2016-03-09 00:00:00'),
(49, 0, '2016-01-04 11:35:05', '2016-01-04 11:35:05', 'Wafat Isa Al-Masih', '2016-03-25 00:00:00', '2016-03-25 00:00:00'),
(50, 0, '2016-01-04 11:35:51', '2016-01-04 11:35:51', 'Hari Buruh Internasional', '2016-05-01 00:00:00', '2016-05-01 00:00:00'),
(51, 0, '2016-01-04 11:36:16', '2016-01-04 11:36:16', 'Kenaikan Yesus Kristus', '2016-05-05 00:00:00', '2016-05-05 00:00:00'),
(52, 0, '2016-01-04 11:36:51', '2016-01-04 11:36:51', 'Isra'' Mi''raj Nabi Muhammad SAW', '2016-05-06 00:00:00', '2016-05-06 00:00:00'),
(53, 0, '2016-01-04 11:37:26', '2016-01-04 11:37:26', 'Hari Trisuci Waisak 2560', '2016-05-22 00:00:00', '2016-05-22 00:00:00'),
(54, 0, '2016-01-04 11:38:05', '2016-01-04 11:38:05', 'Hari Raya Idul Fitri 1437 Hijriah', '2016-07-06 00:00:00', '2016-07-06 00:00:00'),
(55, 0, '2016-01-04 11:38:31', '2016-01-04 11:38:31', 'Hari Raya Idul Fitri 1437 Hijriah', '2016-07-07 00:00:00', '2016-07-07 00:00:00'),
(56, 0, '2016-01-04 11:39:18', '2016-01-04 11:39:18', 'Cuti Bersama Hari Raya Idul Fitri 1437 Hijriah', '2016-07-04 00:00:00', '2016-07-04 00:00:00'),
(57, 0, '2016-01-04 11:39:30', '2016-01-04 11:39:30', 'Cuti Bersama Hari Raya Idul Fitri 1437 Hijriah', '2016-07-05 00:00:00', '2016-07-05 00:00:00'),
(58, 0, '2016-01-04 11:39:41', '2016-01-04 11:39:41', 'Cuti Bersama Hari Raya Idul Fitri 1437 Hijriah', '2016-07-08 00:00:00', '2016-07-08 00:00:00'),
(59, 0, '2016-01-04 11:40:26', '2016-01-04 11:40:26', 'Hari Kemerdekaan RI', '2016-08-17 00:00:00', '2016-08-17 00:00:00'),
(60, 0, '2016-01-04 11:41:30', '2016-01-04 11:41:30', 'Hari Raya Idul Adha 1437 Hijriah', '2016-09-12 00:00:00', '2016-09-12 00:00:00'),
(61, 0, '2016-01-04 11:42:03', '2016-01-04 11:42:03', 'Tahun Baru Islam 1438 Hijriah', '2016-10-02 00:00:00', '2016-10-02 00:00:00'),
(62, 0, '2016-01-04 11:42:33', '2016-01-04 11:42:33', 'Maulid Nabi Muhammad SAW', '2016-12-12 00:00:00', '2016-12-12 00:00:00'),
(63, 0, '2016-01-04 11:43:05', '2016-01-04 11:43:05', 'Hari Raya Natal', '2016-12-25 00:00:00', '2016-12-25 00:00:00'),
(64, 0, '2016-01-04 11:43:31', '2016-01-04 11:43:31', 'Cuti Bersama Natal', '2016-12-26 00:00:00', '2016-12-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `non_working_days`
--

CREATE TABLE `non_working_days` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date` datetime NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `non_working_days_engineer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `non_working_days_engineer`
--

CREATE TABLE `non_working_days_engineer` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `engineer_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `non_working_days_id` bigint(20) NOT NULL,
  `notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `non_working_day_engineer`
--

CREATE TABLE `non_working_day_engineer` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `engineer_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `non_working_day_id` bigint(20) NOT NULL,
  `notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `outbox`
--

CREATE TABLE `outbox` (
  `id` bigint(20) NOT NULL,
  `channel` varchar(5) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `message` text NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `sent_date` datetime DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `version` bigint(20) DEFAULT '0',
  `bcc` varchar(255) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `retry` int(11) DEFAULT NULL,
  `assignment_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outbox`
--

INSERT INTO `outbox` (`id`, `channel`, `date_created`, `last_updated`, `message`, `receiver`, `sender`, `sent_date`, `subject`, `version`, `bcc`, `cc`, `retry`, `assignment_id`) VALUES
(3, 'sms', '2016-02-16 14:16:34', '2016-02-16 14:16:34', 'Dear Customer, your support request under Case ID IT/1602/00010 has been recorded in our system and will be responded by our engineer shortly. Please supply this keycode: OX647U to our engineer''s mobile to close your issue. Thank You for your Cooperation.', '08267', 'amatra.smanggin@gmail.com', NULL, 'Case ID # IT/1602/00010: Record your request', 0, NULL, '', 0, NULL),
(5, 'sms', '2016-02-16 14:20:49', '2016-02-16 14:20:49', 'Dear Customer, Our engineer Mukti (08273847294) will visit you shortly for Corrective Maintenance of Case ID: IT/1602/00010 . Thank You. Compnet.', '08267,07', 'amatra.smanggin@gmail.com', NULL, 'Case ID # IT/1602/00010: Handling of your request', 0, NULL, NULL, 0, NULL),
(7, 'sms', '2016-02-16 14:27:23', '2016-02-16 14:27:23', 'Dear Customer, your Case ID IT/1602/00010 has been solved by Mukti (08273847294) and the status is Done. Please supply this keycode: OX647U to our engineer''s mobile to close your issue. Thank you for your cooperation. Compnet.', '08267,07', 'amatra.smanggin@gmail.com', NULL, 'Case ID # IT/1602/00010: Confirmation of your request', 0, NULL, NULL, 0, NULL),
(9, 'sms', '2016-02-16 14:28:39', '2016-02-16 14:28:39', 'Dear Customer, Case ID #: IT/1602/00010 Customer Name: Partner Dummy Customer Location: Kantor Pusat Caller Name: Toto Caller Email: cs_yanuar@yahoo.com Caller Phone: 08267 Problem Description: masalah jaringan STATUS: CASE IS CLOSED Thank you for your trust and confidence in Compnet to provide excellent support for your company.', '08267', 'amatra.smanggin@gmail.com', NULL, 'Case ID # IT/1602/00010: Completing your request', 0, NULL, NULL, 0, NULL),
(11, 'sms', '2016-02-18 08:57:39', '2016-02-18 08:57:39', 'Dear Customer, your support request under Case ID IT/1602/00012 has been recorded in our system and will be responded by our engineer shortly. Please supply this keycode: OOX35T to our engineer''s mobile to close your issue. Thank You for your Cooperation.', '085727095949', 'amatra.smanggin@gmail.com', NULL, 'Case ID # IT/1602/00012: Record your request', 0, NULL, '', 0, NULL),
(13, 'sms', '2016-02-18 09:18:36', '2016-02-18 09:18:36', 'Dear Customer, your support request under Case ID IT/1602/00013 has been recorded in our system and will be responded by our engineer shortly. Please supply this keycode: AYTK8N to our engineer''s mobile to close your issue. Thank You for your Cooperation.', '018289', 'amatra.smanggin@gmail.com', NULL, 'Case ID # IT/1602/00013: Record your request', 0, NULL, '', 0, NULL),
(15, 'sms', '2016-02-18 09:21:57', '2016-02-18 09:21:57', 'Subject: Escalation Solving Response Time\r\n\r\nDear Manager/Supervisor, \r\n\r\nCurrently there are outstanding issues awaiting for escalation.\r\n\r\nCustomer: Partner Dummy\r\nLocation: Cabang Utama\r\nPIC: [Mulyadi]\r\nSLA: Gold type 1\r\nReported an issue which has not solved by your team, with detail as below:\r\n\r\nTicket No.: IT/1602/00012\r\nPriority: p cek\r\nProblem: test\r\nRunning Time: 3.4243858\r\nSolving SLA: 2\r\nDeadline: 18-Feb-2016 05:56:30\r\n\r\nPlease escalate Heru (085727374839) to provide best solution to Customer''s Request. Thank you for your kind attention.\r\n\r\n\r\nRegards, \r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', '23', 'amatra.smanggin@gmail.com', NULL, 'Solving Time Escalation for Assignment #AS1/1602/00010 2016-02-18 05:56:30.0-2016-02-18 10:56:00.0 Heru/[]', 0, NULL, NULL, 0, 15211),
(19, 'sms', '2016-02-18 10:56:50', '2016-02-18 10:56:50', 'Subject: Escalation Solving Response Time\r\n\r\nDear Manager/Supervisor, \r\n\r\nCurrently there are outstanding issues awaiting for escalation.\r\n\r\nCustomer: Partner Dummy\r\nLocation: Cabang Utama\r\nPIC: [Mulyadi]\r\nSLA: Gold type 1\r\nReported an issue which has not solved by your team, with detail as below:\r\n\r\nTicket No.: IT/1602/00013\r\nPriority: p cek\r\nProblem: test\r\nRunning Time: 1.651997\r\nSolving SLA: 2\r\nDeadline: 18-Feb-2016 09:17:43\r\n\r\nPlease escalate Mukti (08273847294) to provide best solution to Customer''s Request. Thank you for your kind attention.\r\n\r\n\r\nRegards, \r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', '23', 'amatra.smanggin@gmail.com', NULL, 'Solving Time Escalation for Assignment #AS1/1602/00011 2016-02-18 09:17:43.0-2016-02-18 11:17:00.0 Mukti/[CCNA Routing and Switching]', 0, NULL, NULL, 0, 15212),
(22, 'sms', '2016-02-18 11:06:22', '2016-02-18 11:06:22', 'Dear Customer, your support request under Case ID IT/1602/00015 has been recorded in our system and will be responded by our engineer shortly. Please supply this keycode: ZEQYIP to our engineer''s mobile to close your issue. Thank You for your Cooperation.', '08551886698', 'amatra.smanggin@gmail.com', NULL, 'Case ID # IT/1602/00015: Record your request', 0, NULL, '', 0, NULL),
(24, 'sms', '2016-02-18 14:21:21', '2016-02-18 14:21:21', 'Dear Customer, your support request under Case ID IT/1602/00016 has been recorded in our system and will be responded by our engineer shortly. Please supply this keycode: S2IRC9 to our engineer''s mobile to close your issue. Thank You for your Cooperation.', '08161675148', 'amatra.smanggin@gmail.com', NULL, 'Case ID # IT/1602/00016: Record your request', 0, NULL, '', 0, NULL),
(25, 'email', '2016-02-29 09:58:39', '2016-02-29 10:00:36', 'Dear Customer,\r\n\r\nThank you for contacting maintenance team for your support request. This email confirms your request for support and the details are below.\r\n\r\nYour request has been recorded in our system on under Case ID number IT/1602/00017 \r\n\r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: MULYADI GUNAWAN \r\nCaller Email: mulyadigunawan02@gmail.com\r\nCaller Phone: +6285727095949\r\nProblem Description: test \r\n\r\nOur engineer will contact you shortly. \r\nPlease supply this keycode: V3M6I6 to our engineer''s mobile to close your issue.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadigunawan02@gmail.com', 'amatra.smanggin@gmail.com', NULL, 'Case ID # IT/1602/00017: Record your request', 0, NULL, '', 2, NULL),
(26, 'sms', '2016-02-29 09:58:39', '2016-02-29 09:58:39', 'Dear Customer, your support request under Case ID IT/1602/00017 has been recorded in our system and will be responded by our engineer shortly. Please supply this keycode: V3M6I6 to our engineer''s mobile to close your issue. Thank You for your Cooperation.', '+6285727095949', 'amatra.smanggin@gmail.com', NULL, 'Case ID # IT/1602/00017: Record your request', 0, NULL, '', 0, NULL),
(27, 'email', '2016-02-29 09:59:05', '2016-02-29 10:02:36', 'Dear Customer,\r\n\r\nCompnet Case ID #: IT/1602/00017 \r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: MULYADI GUNAWAN \r\nCaller Email: mulyadigunawan02@gmail.com \r\nCaller Phone: +6285727095949 \r\nProblem Description: test \r\nSTATUS: CASE IS OPEN AND IN PROGRESS\r\n\r\nOur engineer Adam (0902) will visit you shortly for Corrective Maintenance.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet. The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadigunawan02@gmail.com,mulyadigunawan02@gmail.com', 'amatra.smanggin@gmail.com', NULL, 'Case ID # IT/1602/00017: Handling of your request', 0, NULL, NULL, 2, NULL),
(28, 'sms', '2016-02-29 09:59:06', '2016-02-29 09:59:06', 'Dear Customer, Our engineer Adam (0902) will visit you shortly for Corrective Maintenance of Case ID: IT/1602/00017 . Thank You. Compnet.', '+6285727095949,07', 'amatra.smanggin@gmail.com', NULL, 'Case ID # IT/1602/00017: Handling of your request', 0, NULL, NULL, 0, NULL),
(29, 'email', '2016-02-29 10:00:03', '2016-02-29 10:04:36', 'Dear Customer,\r\n\r\nCompnet Case ID #: IT/1602/00017 \r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: MULYADI GUNAWAN \r\nCaller Email: mulyadigunawan02@gmail.com \r\nCaller Phone: +6285727095949 \r\nProblem Description: test \r\nSTATUS: CASE IS DONE\r\n\r\nYour support request has been handled and solved by our engineer Adam. Please supply this keycode: V3M6I6 to our engineer''s mobile to close your issue.\r\n\r\nShould you have any complaint, do not hesitate to contact our Call Center at +62 21 53650840\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadigunawan02@gmail.com,mulyadigunawan02@gmail.com', 'amatra.smanggin@gmail.com', NULL, 'Case ID # IT/1602/00017: Confirmation of your request', 0, NULL, NULL, 2, NULL),
(30, 'sms', '2016-02-29 10:00:04', '2016-02-29 10:00:04', 'Dear Customer, your Case ID IT/1602/00017 has been solved by Adam (0902) and the status is Done. Please supply this keycode: V3M6I6 to our engineer''s mobile to close your issue. Thank you for your cooperation. Compnet.', '+6285727095949,07', 'amatra.smanggin@gmail.com', NULL, 'Case ID # IT/1602/00017: Confirmation of your request', 0, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `is_customer` bit(1) NOT NULL,
  `is_supplier` bit(1) NOT NULL,
  `last_updated` datetime NOT NULL,
  `price_list_id` bigint(20) DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `postal` varchar(10) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `is_prospect` bit(1) NOT NULL,
  `salesman_id` bigint(20) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `partner_class_id` bigint(20) DEFAULT NULL,
  `partner_group_id` bigint(20) DEFAULT NULL,
  `partner_industry_id` bigint(20) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `is_verified` bit(1) DEFAULT NULL,
  `reff_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `date_created`, `is_customer`, `is_supplier`, `last_updated`, `price_list_id`, `address1`, `address2`, `city_id`, `country_id`, `email`, `fax`, `name`, `postal`, `province_id`, `telp`, `website`, `is_prospect`, `salesman_id`, `version`, `partner_class_id`, `partner_group_id`, `partner_industry_id`, `code`, `created_by_id`, `is_verified`, `reff_no`) VALUES
(1, '2016-02-12 00:00:00', b'1', b'0', '2016-02-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Partner Dummy', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1240, '2016-02-12 17:41:25', b'1', b'0', '2016-02-12 17:41:25', NULL, 'alamat', NULL, NULL, NULL, NULL, NULL, 'Partner Dummy 01', NULL, NULL, NULL, NULL, b'0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1241, '2016-02-18 08:22:55', b'1', b'0', '2016-02-18 08:22:55', NULL, 'Alamat', NULL, NULL, NULL, NULL, NULL, 'Partner Dummy 03', NULL, NULL, NULL, NULL, b'0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partner_class`
--

CREATE TABLE `partner_class` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `partner_class_id` bigint(20) DEFAULT NULL,
  `use_inpartner` bit(1) DEFAULT b'0',
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `partner_contact`
--

CREATE TABLE `partner_contact` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `partner_id` bigint(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_last` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `salutation` varchar(5) DEFAULT NULL,
  `location_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `mobile2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partner_contact`
--

INSERT INTO `partner_contact` (`id`, `date_created`, `last_updated`, `partner_id`, `code`, `dept`, `email`, `mobile`, `name`, `name_last`, `position`, `salutation`, `location_id`, `role_id`, `version`, `mobile2`) VALUES
(548, '2016-02-12 17:38:03', '2016-02-12 17:38:03', 1, '001', 'IT', 'mulyadigunawan02@gmail.com', '07', 'Mulyadi', 'Gunawan', 'GA', 'Bpk', 2900, 8, 0, NULL),
(549, '2016-02-12 17:42:21', '2016-02-12 17:42:21', 1240, '003', 'IT', 'mulyadi.gunawan@smanggin.com', '92', 'Mulyadi', 'Guna', 'HA', 'Mr', 2901, 8, 0, NULL),
(550, '2016-02-18 08:24:02', '2016-02-18 08:24:02', 1241, '00123', 'IT', 'anjas@gmail.com', '01829', 'Anjar', 'Susilo', 'HA', 'Bpk', 2903, 8, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partner_group`
--

CREATE TABLE `partner_group` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `partner_group_id` bigint(20) DEFAULT NULL,
  `use_inpartner` bit(1) DEFAULT b'0',
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `partner_industry`
--

CREATE TABLE `partner_industry` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `partner_industry_id` bigint(20) DEFAULT NULL,
  `use_inpartner` bit(1) DEFAULT b'0',
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `partner_sales_order`
--

CREATE TABLE `partner_sales_order` (
  `partner_sales_orders_id` bigint(20) DEFAULT NULL,
  `sales_order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `price_list`
--

CREATE TABLE `price_list` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  `blocked` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `price_list_item`
--

CREATE TABLE `price_list_item` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `discount1` bigint(20) DEFAULT NULL,
  `discount2` bigint(20) DEFAULT NULL,
  `discount3` bigint(20) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `item_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `price` bigint(20) DEFAULT NULL,
  `price_list_id` bigint(20) NOT NULL,
  `qty` bigint(20) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `priority`
--

CREATE TABLE `priority` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `onsite_response_time` int(11) DEFAULT NULL,
  `onsite_response_time_start_from_id` bigint(20) DEFAULT NULL,
  `response_time` int(11) DEFAULT NULL,
  `response_time_start_from_id` bigint(20) DEFAULT NULL,
  `solving_time` int(11) DEFAULT NULL,
  `solving_time_start_from_id` bigint(20) DEFAULT NULL,
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `priority`
--

INSERT INTO `priority` (`id`, `date_created`, `last_updated`, `name`, `notes`, `rating`, `onsite_response_time`, `onsite_response_time_start_from_id`, `response_time`, `response_time_start_from_id`, `solving_time`, `solving_time_start_from_id`, `version`) VALUES
(1, '2013-12-09 10:28:25', '2013-12-18 19:39:14', 'P1', 'Top Urgent Priority', 1, 2, 1, 1, 1, 4, 1, 0),
(2, '2013-12-09 10:30:03', '2014-04-24 09:13:52', 'P2', 'High Priority', 2, 2, 1, 1, 1, 4, 1, 1),
(3, '2013-12-09 10:32:32', '2013-12-09 10:32:45', 'P3', 'Medium Priority', 3, 4, 1, 1, 1, 24, 1, 0),
(4, '2013-12-09 10:34:16', '2013-12-09 10:34:16', 'P4', 'Low Priority', 4, 6, 1, 1, 1, 72, 1, 0),
(5, '2014-08-05 13:38:46', '2016-02-18 08:33:28', 'p cek', NULL, 1, 1, 1, 0, 1, 2, 1, 2),
(6, '2014-09-30 13:41:11', '2014-09-30 13:56:07', 'Pinjam Barang', 'Khusus Pinjam Barang', 5, 4, 3, 2, 1, 1488, 2, 1),
(7, '2015-03-05 09:04:28', '2015-03-05 09:04:28', 'P1 INPEX', 'Custom Priority 1 for Inpex', 1, 2, 1, 1, 1, 3, 1, 0),
(8, '2015-03-05 09:20:04', '2015-03-05 09:20:31', 'P2 INPEX', 'Custom Priority 2 for Inpex', 2, 2, 1, 1, 1, 4, 1, 1),
(9, '2015-03-05 09:26:25', '2015-03-05 09:26:25', 'P3 INPEX', 'Custom Priority 3 for Inpex', 3, 2, 1, 1, 1, 12, 1, 0),
(10, '2015-03-05 09:31:10', '2015-03-05 09:31:10', 'P4 INPEX', 'Custom Priority 4 for Inpex', 4, 2, 1, 1, 1, 72, 1, 0),
(11, '2015-08-06 11:34:16', '2015-08-06 11:34:16', 'P1 Transcosmos', 'Emergency', 1, 2, 1, 1, 1, 4, 1, 0),
(12, '2015-08-06 11:40:36', '2015-08-06 11:40:36', 'P2 Transcosmos', 'Critical', 2, 2, 1, 1, 1, 24, 1, 0),
(13, '2015-08-06 11:41:33', '2015-08-06 11:41:33', 'P3 Transcosmos', 'Minor', 3, 2, 1, 1, 1, 240, 1, 0),
(14, '2015-12-29 15:00:08', '2015-12-29 15:00:08', 'P1 Problem', NULL, 1, 4, 1, 1, 1, 24, 1, 0),
(15, '2015-12-29 15:00:38', '2015-12-29 15:00:38', 'P2 Problem', NULL, 2, 4, 1, 1, 1, 72, 1, 0),
(16, '2015-12-29 15:01:02', '2015-12-29 15:01:02', 'P3 Problem', NULL, 3, 4, 1, 1, 1, 120, 1, 0),
(17, '2015-12-29 15:01:33', '2015-12-29 15:01:33', 'P4 Problem', NULL, 4, 4, 1, 1, 1, 168, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `priority_escalation_onsite_response_time`
--

CREATE TABLE `priority_escalation_onsite_response_time` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `partner_contact_id` bigint(20) DEFAULT NULL,
  `priority_id` bigint(20) NOT NULL,
  `sla_id` bigint(20) NOT NULL,
  `time` float NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `problem_item`
--

CREATE TABLE `problem_item` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `created_by_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `problem_management_id` bigint(20) NOT NULL,
  `remark` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `problem_management`
--

CREATE TABLE `problem_management` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `approve_time` datetime DEFAULT NULL,
  `approver_id` bigint(20) DEFAULT NULL,
  `caller_name` varchar(255) DEFAULT NULL,
  `charge` int(11) DEFAULT NULL,
  `close_time` datetime DEFAULT NULL,
  `contact_person_email` varchar(255) DEFAULT NULL,
  `contact_person_name` varchar(255) DEFAULT NULL,
  `contact_person_phone` varchar(255) DEFAULT NULL,
  `contract_id` bigint(20) DEFAULT NULL,
  `contract_item_id` bigint(20) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `issue_type_id` bigint(20) NOT NULL,
  `item_temporary` bit(1) DEFAULT NULL,
  `item_temporary_returned` bit(1) DEFAULT NULL,
  `item_temporary_returned_date` datetime DEFAULT NULL,
  `key_code` varchar(255) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `maintenance_order_type_id` bigint(20) DEFAULT NULL,
  `manual_counter` bit(1) DEFAULT NULL,
  `manual_counter_started` bit(1) DEFAULT NULL,
  `notes` longtext,
  `number` varchar(45) DEFAULT NULL,
  `open_time` datetime DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  `plan_date_end` datetime DEFAULT NULL,
  `plan_date_start` datetime DEFAULT NULL,
  `prev_engineer_id` bigint(20) DEFAULT NULL,
  `priority_id` bigint(20) NOT NULL,
  `problem` longtext,
  `ref_number` varchar(255) DEFAULT NULL,
  `satisfaction_id` bigint(20) DEFAULT NULL,
  `state` varchar(18) DEFAULT NULL,
  `transaction_group_id` bigint(20) DEFAULT NULL,
  `root_cause` longtext,
  `work_arround` longtext,
  `knowledge_base_no` longtext,
  `knowledge_base_url` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `problem_management_item`
--

CREATE TABLE `problem_management_item` (
  `problem_management_item_id` bigint(20) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `problem_management_maintenance_order`
--

CREATE TABLE `problem_management_maintenance_order` (
  `problem_management_incident_id` bigint(20) DEFAULT NULL,
  `maintenance_order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `problem_management_minute_of_meeting_additional_value`
--

CREATE TABLE `problem_management_minute_of_meeting_additional_value` (
  `problem_management_minute_of_meeting_additional_values_id` bigint(20) DEFAULT NULL,
  `minute_of_meeting_additional_value_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `notes` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `version`, `date_created`, `last_updated`, `name`, `country_id`) VALUES
(1, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Aceh', 1),
(2, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Sumatera Utara', 1),
(3, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Bengkulu', 1),
(4, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Jambi', 1),
(5, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Riau', 1),
(6, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Sumatera Barat', 1),
(7, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Sumatera Selatan', 1),
(8, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Lampung', 1),
(9, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kepulauan Bangka Belitung', 1),
(10, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kepulauan Riau', 1),
(11, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'DKI Jakarta', 1),
(12, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Daerah Istimewa Yogyakarta', 1),
(13, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Bali', 1),
(14, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Nusa Tenggara Barat', 1),
(15, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Nusa Tenggara Timur', 1),
(16, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kalimantan Barat', 1),
(17, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kalimantan Selatan', 1),
(18, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kalimantan Tengah', 1),
(19, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Kalimantan Timur', 1),
(20, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Gorontalo', 1),
(21, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Sulawesi Selatan', 1),
(22, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Sulawesi Tenggara', 1),
(23, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Sulawesi Tengah', 1),
(24, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Sulawesi Utara', 1),
(25, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Sulawesi Barat', 1),
(26, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Maluku', 1),
(27, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Maluku Utara', 1),
(28, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Papua', 1),
(29, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Papua Barat', 1),
(30, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Banten', 1),
(31, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Jawa Barat', 1),
(32, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Jawa Tengah', 1),
(33, 0, '2013-10-25 17:38:00', '2013-10-25 17:38:00', 'Jawa Timur', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reff`
--

CREATE TABLE `reff` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `incident_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `problem_management_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `respondent`
--

CREATE TABLE `respondent` (
  `id` bigint(20) NOT NULL,
  `address1` varchar(1000) DEFAULT NULL,
  `address2` varchar(1000) DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `birth_place` varchar(5) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country_of_birth` varchar(5) DEFAULT NULL,
  `country_of_residence` varchar(5) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `education` varchar(5) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `facebook_account` varchar(100) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `job` varchar(10) DEFAULT NULL,
  `job_area` varchar(10) DEFAULT NULL,
  `job_position` varchar(10) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `line_id` varchar(100) DEFAULT NULL,
  `marital_status` int(11) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `respondent_first_name` varchar(100) DEFAULT NULL,
  `respondent_last_name` varchar(100) DEFAULT NULL,
  `twitter_account` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `whatsapp_id` varchar(100) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `respondent_survey_header`
--

CREATE TABLE `respondent_survey_header` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `respondent_id` bigint(20) NOT NULL,
  `survey_header_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `respondent_survey_header_answer`
--

CREATE TABLE `respondent_survey_header_answer` (
  `respondent_survey_header_answers_id` bigint(20) DEFAULT NULL,
  `answer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `s`
--

CREATE TABLE `s` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `transaction_type_id` bigint(20) NOT NULL,
  `width` int(11) NOT NULL,
  `transaction_group_numbering_id` bigint(20) NOT NULL,
  `trigger_id` bigint(20) DEFAULT NULL,
  `alert_when_not_created` bit(1) DEFAULT b'1',
  `trigger_group_access_id` bigint(20) DEFAULT NULL,
  `approver1_id` bigint(20) DEFAULT NULL,
  `approver2_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `approved1action` varchar(255) DEFAULT NULL,
  `approved2action` varchar(255) DEFAULT NULL,
  `created_action` varchar(255) DEFAULT NULL,
  `done_action` varchar(255) DEFAULT NULL,
  `approved_action` varchar(255) DEFAULT NULL,
  `archived_action` varchar(255) DEFAULT NULL,
  `cancelled_action` varchar(255) DEFAULT NULL,
  `open_action` varchar(255) DEFAULT NULL,
  `rejected_action` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_group`
--

CREATE TABLE `sales_group` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_group_detail`
--

CREATE TABLE `sales_group_detail` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `is_team_leader` bit(1) NOT NULL DEFAULT b'0',
  `last_updated` datetime NOT NULL,
  `running_no` int(11) NOT NULL,
  `sales_group_id` bigint(20) NOT NULL,
  `sales_person_id` bigint(20) NOT NULL,
  `team_leader_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_group_scope`
--

CREATE TABLE `sales_group_scope` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `running_no` bigint(20) DEFAULT NULL,
  `sales_group_id` bigint(20) NOT NULL,
  `scope_class` varchar(255) NOT NULL,
  `scope_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `id` bigint(20) NOT NULL,
  `discount` bigint(20) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `sales_order_date` datetime DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `total` bigint(20) DEFAULT NULL,
  `transaction_group_id` bigint(20) NOT NULL,
  `state` varchar(255) NOT NULL,
  `reff_no` varchar(255) DEFAULT NULL,
  `trigger_doc` varchar(255) DEFAULT NULL,
  `partner_id` bigint(20) NOT NULL,
  `cancel_date` datetime DEFAULT NULL,
  `cancel_notes` varchar(255) DEFAULT NULL,
  `reject_date` datetime DEFAULT NULL,
  `reject_notes` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `trigger_doc_class` varchar(255) DEFAULT NULL,
  `trigger_doc_id` bigint(20) DEFAULT NULL,
  `trigger_doc_no` varchar(255) DEFAULT NULL,
  `version` bigint(20) DEFAULT '0',
  `truck_id` bigint(20) DEFAULT NULL,
  `approver_id` bigint(20) DEFAULT NULL,
  `key_code` varchar(255) DEFAULT NULL,
  `will_be_release` bit(1) DEFAULT NULL,
  `approve_time` datetime DEFAULT NULL,
  `done_time` datetime DEFAULT NULL,
  `open_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`id`, `discount`, `latitude`, `location_id`, `longitude`, `notes`, `number`, `project_id`, `sales_order_date`, `date_created`, `last_updated`, `total`, `transaction_group_id`, `state`, `reff_no`, `trigger_doc`, `partner_id`, `cancel_date`, `cancel_notes`, `reject_date`, `reject_notes`, `created_by`, `trigger_doc_class`, `trigger_doc_id`, `trigger_doc_no`, `version`, `truck_id`, `approver_id`, `key_code`, `will_be_release`, `approve_time`, `done_time`, `open_time`) VALUES
(1, 0, 107.32, 2900, -6.22, NULL, 'SRR-IT/1602/00001', NULL, '2016-02-15 15:54:42', '2016-02-15 15:55:07', '2016-02-15 15:56:22', 0, 9, 'Transfer Created', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'Engineer', 'MaintenanceOrder', 3768, 'IT/1602/00002', 3, NULL, NULL, 'IVHOSZ', NULL, '2016-02-15 15:55:36', NULL, '2016-02-15 15:55:11'),
(2, 0, 107.32, 2900, -6.22, NULL, 'SRR-IT/1602/00002', NULL, '2016-02-16 08:05:08', '2016-02-16 08:05:41', '2016-02-16 08:06:13', 0, 9, 'Approved', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'engineer2', 'MaintenanceOrder', 3771, 'IT/1602/00002', 2, NULL, NULL, 'DVQRZT', NULL, '2016-02-16 08:06:13', NULL, '2016-02-16 08:05:46'),
(3, 0, 107.32, 2900, -6.22, NULL, 'SRR-IT/1602/00003', NULL, '2016-02-16 14:21:23', '2016-02-16 14:21:57', '2016-02-16 14:33:56', 0, 9, 'Transfer Created', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'engineer2', 'MaintenanceOrder', 3782, 'IT/1602/00010', 3, NULL, NULL, 'FTK1T1', NULL, '2016-02-16 14:31:59', NULL, '2016-02-16 14:22:03'),
(4, 0, 107.32, 2902, -6.22, NULL, 'SRR-IT/1602/00004', NULL, '2016-02-18 11:20:19', '2016-02-18 11:20:54', '2016-02-18 11:23:56', 0, 9, 'Transfer Created', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'Engineer', 'MaintenanceOrder', 3790, 'IT/1602/00015', 3, NULL, NULL, 'E7QXQD', NULL, '2016-02-18 11:21:36', NULL, '2016-02-18 11:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_item`
--

CREATE TABLE `sales_order_item` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `discount` float DEFAULT NULL,
  `item_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `sales_order_id` bigint(20) NOT NULL,
  `sub_total` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `vat` float DEFAULT NULL,
  `qty2` float DEFAULT NULL,
  `version` bigint(20) DEFAULT '0',
  `serial_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_order_item`
--

INSERT INTO `sales_order_item` (`id`, `date_created`, `discount`, `item_id`, `last_updated`, `notes`, `qty`, `sales_order_id`, `sub_total`, `total`, `unit_price`, `vat`, `qty2`, `version`, `serial_number`) VALUES
(1, '2016-02-15 15:55:07', 0, 1210, '2016-02-15 15:55:07', NULL, 1, 1, 0, 0, 0, 0, 1, 0, '2435'),
(2, '2016-02-16 08:05:41', 0, 1211, '2016-02-16 08:05:41', NULL, 1, 2, 0, 0, 0, 0, 1, 0, 'RO01'),
(3, '2016-02-16 14:21:57', 0, 1211, '2016-02-16 14:21:57', NULL, 1, 3, 0, 0, 0, 0, 1, 0, 'RO01'),
(4, '2016-02-18 11:20:54', 0, 1214, '2016-02-18 11:20:54', NULL, 1, 4, 0, 0, 0, 0, 1, 0, 'RM0033');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_minute_of_meeting_additional_value`
--

CREATE TABLE `sales_order_minute_of_meeting_additional_value` (
  `sales_order_minute_of_meeting_additional_values_id` bigint(20) DEFAULT NULL,
  `minute_of_meeting_additional_value_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_transfer`
--

CREATE TABLE `sales_order_transfer` (
  `sales_order_transfers_id` bigint(20) DEFAULT NULL,
  `transfer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_person`
--

CREATE TABLE `sales_person` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `sales_type_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_return`
--

CREATE TABLE `sales_return` (
  `id` bigint(20) NOT NULL,
  `number` varchar(45) DEFAULT NULL,
  `sales_return_date` datetime DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_return_item`
--

CREATE TABLE `sales_return_item` (
  `id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `sales_return_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_type`
--

CREATE TABLE `sales_type` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `satisfaction`
--

CREATE TABLE `satisfaction` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satisfaction`
--

INSERT INTO `satisfaction` (`id`, `code`, `date_created`, `last_updated`, `name`, `score`, `sorting`) VALUES
(1, 'poor', '2014-07-25 14:20:26', '2014-07-25 14:20:26', 'poor', 50, 1),
(2, 'good', '2014-07-25 14:20:36', '2014-07-25 14:20:36', 'good', 70, 3),
(3, 'average', '2014-07-25 14:20:46', '2014-07-25 14:20:46', 'average', 60, 2);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_visit`
--

CREATE TABLE `schedule_visit` (
  `id` bigint(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `employee_id` bigint(20) NOT NULL,
  `location_id` bigint(20) NOT NULL,
  `maintenance_order_id` bigint(20) NOT NULL,
  `partner_id` bigint(20) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sent`
--

CREATE TABLE `sent` (
  `id` bigint(20) NOT NULL,
  `channel` varchar(5) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `message` text NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `sent_date` datetime DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `version` bigint(20) DEFAULT '0',
  `bcc` varchar(255) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `retry` int(11) DEFAULT NULL,
  `assignment_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sent`
--

INSERT INTO `sent` (`id`, `channel`, `date_created`, `last_updated`, `message`, `receiver`, `sender`, `sent_date`, `subject`, `version`, `bcc`, `cc`, `retry`, `assignment_id`) VALUES
(1, 'email', '2016-02-16 11:33:59', '2016-02-16 11:33:59', 'Dear Customer,\r\n\r\nCompnet Case ID #: IT/1602/00002 \r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: pelapor \r\nCaller Email: mulyadigunawan02@gmail.com \r\nCaller Phone: +6285727095949 \r\nProblem Description: Internet Lambat \r\nSTATUS: CASE IS OPEN AND IN PROGRESS\r\n\r\nOur engineer Mukti (08273847294) will visit you shortly for Corrective Maintenance.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet. The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadigunawan02@gmail.com,mulyadigunawan02@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-16 11:33:59', 'Case ID # IT/1602/00002: Handling of your request', 0, NULL, NULL, 1, NULL),
(2, 'email', '2016-02-16 11:34:03', '2016-02-16 11:34:03', 'Dear Customer,\r\n\r\nThank you for contacting maintenance team for your support request. This email confirms your request for support and the details are below.\r\n\r\nYour request has been recorded in our system on under Case ID number IT/1602/00002 \r\n\r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: caroline \r\nCaller Email: caroline@smanggin.com\r\nCaller Phone: 085727095949\r\nProblem Description: internet lambat \r\n\r\nOur engineer will contact you shortly. \r\nPlease supply this keycode: KITTYB to our engineer''s mobile to close your issue.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'caroline@smanggin.com', 'amatra.smanggin@gmail.com', '2016-02-16 11:34:03', 'Case ID # IT/1602/00002: Record your request', 0, NULL, '', 1, NULL),
(3, 'email', '2016-02-16 11:55:49', '2016-02-16 11:55:49', 'Dear Customer,\r\n\r\nCompnet Case ID #: IT/1602/00002 \r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: pelapor \r\nCaller Email: mulyadigunawan02@gmail.com \r\nCaller Phone: +6285727095949 \r\nProblem Description: Internet Lambat \r\nSTATUS: CASE IS DONE\r\n\r\nYour support request has been handled and solved by our engineer Mukti. Please supply this keycode: 4GRX1C to our engineer''s mobile to close your issue.\r\n\r\nShould you have any complaint, do not hesitate to contact our Call Center at +62 21 53650840\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadigunawan02@gmail.com,mulyadigunawan02@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-16 11:55:49', 'Case ID # IT/1602/00002: Confirmation of your request', 0, NULL, NULL, 1, NULL),
(4, 'email', '2016-02-16 11:56:49', '2016-02-16 11:56:49', 'Dear Customer,\r\n\r\nCase ID #:  IT/1602/00002\r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: pelapor \r\nCaller Email: mulyadigunawan02@gmail.com \r\nCaller Phone: +6285727095949 \r\nProblem Description: Internet Lambat\r\nSTATUS: CASE IS CLOSED\r\n\r\nThank you for your trust and confidence in Compnet to provide excellent support for your company.\r\n\r\nIf you have any concerns regarding the closing of the support request in our systems, please do not hesitate to contact our call center: +62 21  53650840\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadigunawan02@gmail.com,mulyadigunawan02@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-16 11:56:49', 'Case ID # IT/1602/00002: Completing your request', 0, NULL, NULL, 1, NULL),
(5, 'email', '2016-02-16 11:57:49', '2016-02-16 11:57:49', 'Dear Customer,\r\n\r\nCompnet Case ID #: IT/1602/00002 \r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: MULYADI GUNAWAN \r\nCaller Email: mulyadi.gunawan@smanggin.com \r\nCaller Phone: +6285727095949 \r\nProblem Description: test \r\nSTATUS: CASE IS DONE\r\n\r\nYour support request has been handled and solved by our engineer Mukti. Please supply this keycode: JXSHSI to our engineer''s mobile to close your issue.\r\n\r\nShould you have any complaint, do not hesitate to contact our Call Center at +62 21 53650840\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadigunawan02@gmail.com,mulyadi.gunawan@smanggin.com', 'amatra.smanggin@gmail.com', '2016-02-16 11:57:49', 'Case ID # IT/1602/00002: Confirmation of your request', 0, NULL, NULL, 1, NULL),
(6, 'email', '2016-02-16 11:57:52', '2016-02-16 11:57:52', 'Dear Customer,\r\n\r\nCase ID #:  IT/1602/00002\r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: MULYADI GUNAWAN \r\nCaller Email: mulyadi.gunawan@smanggin.com \r\nCaller Phone: +6285727095949 \r\nProblem Description: test\r\nSTATUS: CASE IS CLOSED\r\n\r\nThank you for your trust and confidence in Compnet to provide excellent support for your company.\r\n\r\nIf you have any concerns regarding the closing of the support request in our systems, please do not hesitate to contact our call center: +62 21  53650840\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadigunawan02@gmail.com,mulyadi.gunawan@smanggin.com', 'amatra.smanggin@gmail.com', '2016-02-16 11:57:52', 'Case ID # IT/1602/00002: Completing your request', 0, NULL, NULL, 1, NULL),
(7, 'email', '2016-02-16 11:57:55', '2016-02-16 11:57:55', 'Dear Customer,\r\n\r\nCompnet Case ID #: IT/1602/00002 \r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: caroline \r\nCaller Email: caroline@smanggin.com \r\nCaller Phone: 085727095949 \r\nProblem Description: internet lambat \r\nSTATUS: CASE IS OPEN AND IN PROGRESS\r\n\r\nOur engineer Mukti (08273847294) will visit you shortly for Corrective Maintenance.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet. The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'caroline@smanggin.com,mulyadigunawan02@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-16 11:57:55', 'Case ID # IT/1602/00002: Handling of your request', 0, NULL, NULL, 1, NULL),
(8, 'email', '2016-02-16 11:58:49', '2016-02-16 11:58:49', 'Dear Customer,\r\n\r\nCompnet Case ID #: IT/1602/00002 \r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: caroline \r\nCaller Email: caroline@smanggin.com \r\nCaller Phone: 085727095949 \r\nProblem Description: internet lambat \r\nSTATUS: CASE IS DONE\r\n\r\nYour support request has been handled and solved by our engineer Mukti. Please supply this keycode: KITTYB to our engineer''s mobile to close your issue.\r\n\r\nShould you have any complaint, do not hesitate to contact our Call Center at +62 21 53650840\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadigunawan02@gmail.com,caroline@smanggin.com', 'amatra.smanggin@gmail.com', '2016-02-16 11:58:49', 'Case ID # IT/1602/00002: Confirmation of your request', 0, NULL, NULL, 1, NULL),
(9, 'email', '2016-02-16 11:58:52', '2016-02-16 11:58:52', 'Dear Customer,\r\n\r\nCase ID #:  IT/1602/00002\r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: caroline \r\nCaller Email: caroline@smanggin.com \r\nCaller Phone: 085727095949 \r\nProblem Description: internet lambat\r\nSTATUS: CASE IS CLOSED\r\n\r\nThank you for your trust and confidence in Compnet to provide excellent support for your company.\r\n\r\nIf you have any concerns regarding the closing of the support request in our systems, please do not hesitate to contact our call center: +62 21  53650840\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadigunawan02@gmail.com,caroline@smanggin.com', 'amatra.smanggin@gmail.com', '2016-02-16 11:58:52', 'Case ID # IT/1602/00002: Completing your request', 0, NULL, NULL, 1, NULL),
(10, 'email', '2016-02-16 12:10:04', '2016-02-16 12:10:04', 'Dear Customer,\r\n\r\nThank you for contacting maintenance team for your support request. This email confirms your request for support and the details are below.\r\n\r\nYour request has been recorded in our system on under Case ID number IT/1602/00006 \r\n\r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: Duma \r\nCaller Email: dumanurhayatisimanjuntak@gmail.com\r\nCaller Phone: 089283\r\nProblem Description: test masalah \r\n\r\nOur engineer will contact you shortly. \r\nPlease supply this keycode: QXLKKC to our engineer''s mobile to close your issue.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'dumanurhayatisimanjuntak@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-16 12:10:04', 'Case ID # IT/1602/00006: Record your request', 0, NULL, '', 1, NULL),
(11, 'email', '2016-02-16 12:14:04', '2016-02-16 12:14:04', 'Dear Customer,\r\n\r\nCompnet Case ID #: IT/1602/00006 \r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: Duma \r\nCaller Email: dumanurhayatisimanjuntak@gmail.com \r\nCaller Phone: 089283 \r\nProblem Description: test masalah \r\nSTATUS: CASE IS OPEN AND IN PROGRESS\r\n\r\nOur engineer Mukti (08273847294) will visit you shortly for Corrective Maintenance.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet. The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'dumanurhayatisimanjuntak@gmail.com,mulyadigunawan02@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-16 12:14:04', 'Case ID # IT/1602/00006: Handling of your request', 0, NULL, NULL, 1, NULL),
(12, 'email', '2016-02-16 12:18:04', '2016-02-16 12:18:04', 'Dear Customer,\r\n\r\nCompnet Case ID #: IT/1602/00006 \r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: Duma \r\nCaller Email: dumanurhayatisimanjuntak@gmail.com \r\nCaller Phone: 089283 \r\nProblem Description: test masalah \r\nSTATUS: CASE IS DONE\r\n\r\nYour support request has been handled and solved by our engineer Mukti. Please supply this keycode: QXLKKC to our engineer''s mobile to close your issue.\r\n\r\nShould you have any complaint, do not hesitate to contact our Call Center at +62 21 53650840\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadigunawan02@gmail.com,dumanurhayatisimanjuntak@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-16 12:18:04', 'Case ID # IT/1602/00006: Confirmation of your request', 0, NULL, NULL, 1, NULL),
(13, 'email', '2016-02-16 12:21:04', '2016-02-16 12:21:04', 'Dear Customer,\r\n\r\nCase ID #:  IT/1602/00006\r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: Duma \r\nCaller Email: dumanurhayatisimanjuntak@gmail.com \r\nCaller Phone: 089283 \r\nProblem Description: test masalah\r\nSTATUS: CASE IS CLOSED\r\n\r\nThank you for your trust and confidence in Compnet to provide excellent support for your company.\r\n\r\nIf you have any concerns regarding the closing of the support request in our systems, please do not hesitate to contact our call center: +62 21  53650840\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadigunawan02@gmail.com,dumanurhayatisimanjuntak@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-16 12:21:04', 'Case ID # IT/1602/00006: Completing your request', 0, NULL, NULL, 1, NULL),
(14, 'email', '2016-02-16 12:27:15', '2016-02-16 12:27:15', 'test', 'mulyadigunawan02@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-16 12:27:15', 'test email', 0, NULL, NULL, 2, NULL),
(15, 'email', '2016-02-16 12:31:11', '2016-02-16 12:31:11', 'test', 'mulyadigunawan02@gmail.com', 'helpdeskamatra@gmail.com', '2016-02-16 12:31:11', 'test email', 0, NULL, NULL, 1, NULL),
(16, 'email', '2016-02-16 14:12:24', '2016-02-16 14:12:24', 'Dear Mr. Mulyadi,\r\n\r\nSubject: Termination of Maintenance Contract no. CO/1602/00002\r\n\r\nThank you for your trust and confidence in Compnet to provide excellent support for your company. We regret to inform you that your Maintenance Contract: CO/1602/00002 has been terminated. Because expired\r\n\r\n\r\nRegards, \r\n\r\nContract Management Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadi.gunawan@smanggin.com', 'amatra.smanggin@gmail.com', '2016-02-16 14:12:24', 'Termination of Maintenance Contract no. CO/1602/00002', 0, NULL, NULL, 2, NULL),
(17, 'email', '2016-02-16 14:12:24', '2016-02-16 14:12:24', 'Dear Mr. Mulyadi,\r\n\r\nSubject: Termination of Maintenance Contract no. CO/1602/00002\r\n\r\nThank you for your trust and confidence in Compnet to provide excellent support for your company. We regret to inform you that your Maintenance Contract: CO/1602/00002 has been terminated. Because expired\r\n\r\n\r\nRegards, \r\n\r\nContract Management Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadi.gunawan@smanggin.com', 'amatra.smanggin@gmail.com', '2016-02-16 14:12:24', 'Termination of Maintenance Contract no. CO/1602/00002', 0, NULL, NULL, 1, NULL),
(18, 'email', '2016-02-16 14:17:22', '2016-02-16 14:17:22', 'Dear Customer,\r\n\r\nThank you for contacting maintenance team for your support request. This email confirms your request for support and the details are below.\r\n\r\nYour request has been recorded in our system on under Case ID number IT/1602/00010 \r\n\r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: Toto \r\nCaller Email: cs_yanuar@yahoo.com\r\nCaller Phone: 08267\r\nProblem Description: masalah jaringan \r\n\r\nOur engineer will contact you shortly. \r\nPlease supply this keycode: OX647U to our engineer''s mobile to close your issue.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'cs_yanuar@yahoo.com', 'amatra.smanggin@gmail.com', '2016-02-16 14:17:22', 'Case ID # IT/1602/00010: Record your request', 0, NULL, '', 1, NULL),
(19, 'email', '2016-02-16 14:17:24', '2016-02-16 14:17:24', 'Dear Customer,\r\n\r\nThank you for contacting maintenance team for your support request. This email confirms your request for support and the details are below.\r\n\r\nYour request has been recorded in our system on under Case ID number IT/1602/00010 \r\n\r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: Toto \r\nCaller Email: cs_yanuar@yahoo.com\r\nCaller Phone: 08267\r\nProblem Description: masalah jaringan \r\n\r\nOur engineer will contact you shortly. \r\nPlease supply this keycode: OX647U to our engineer''s mobile to close your issue.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'cs_yanuar@yahoo.com', 'amatra.smanggin@gmail.com', '2016-02-16 14:17:24', 'Case ID # IT/1602/00010: Record your request', 0, NULL, '', 2, NULL),
(20, 'email', '2016-02-16 14:21:20', '2016-02-16 14:21:20', 'Dear Customer,\r\n\r\nCompnet Case ID #: IT/1602/00010 \r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: Toto \r\nCaller Email: cs_yanuar@yahoo.com \r\nCaller Phone: 08267 \r\nProblem Description: masalah jaringan \r\nSTATUS: CASE IS OPEN AND IN PROGRESS\r\n\r\nOur engineer Mukti (08273847294) will visit you shortly for Corrective Maintenance.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet. The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'cs_yanuar@yahoo.com,mulyadigunawan02@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-16 14:21:20', 'Case ID # IT/1602/00010: Handling of your request', 0, NULL, NULL, 1, NULL),
(21, 'email', '2016-02-16 14:21:23', '2016-02-16 14:21:23', 'Dear Customer,\r\n\r\nCompnet Case ID #: IT/1602/00010 \r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: Toto \r\nCaller Email: cs_yanuar@yahoo.com \r\nCaller Phone: 08267 \r\nProblem Description: masalah jaringan \r\nSTATUS: CASE IS OPEN AND IN PROGRESS\r\n\r\nOur engineer Mukti (08273847294) will visit you shortly for Corrective Maintenance.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet. The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'cs_yanuar@yahoo.com,mulyadigunawan02@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-16 14:21:23', 'Case ID # IT/1602/00010: Handling of your request', 0, NULL, NULL, 2, NULL),
(22, 'email', '2016-02-16 14:28:20', '2016-02-16 14:28:20', 'Dear Customer,\r\n\r\nCompnet Case ID #: IT/1602/00010 \r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: Toto \r\nCaller Email: cs_yanuar@yahoo.com \r\nCaller Phone: 08267 \r\nProblem Description: masalah jaringan \r\nSTATUS: CASE IS DONE\r\n\r\nYour support request has been handled and solved by our engineer Mukti. Please supply this keycode: OX647U to our engineer''s mobile to close your issue.\r\n\r\nShould you have any complaint, do not hesitate to contact our Call Center at +62 21 53650840\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadigunawan02@gmail.com,cs_yanuar@yahoo.com', 'amatra.smanggin@gmail.com', '2016-02-16 14:28:20', 'Case ID # IT/1602/00010: Confirmation of your request', 0, NULL, NULL, 1, NULL),
(23, 'email', '2016-02-16 14:28:23', '2016-02-16 14:28:23', 'Dear Customer,\r\n\r\nCompnet Case ID #: IT/1602/00010 \r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: Toto \r\nCaller Email: cs_yanuar@yahoo.com \r\nCaller Phone: 08267 \r\nProblem Description: masalah jaringan \r\nSTATUS: CASE IS DONE\r\n\r\nYour support request has been handled and solved by our engineer Mukti. Please supply this keycode: OX647U to our engineer''s mobile to close your issue.\r\n\r\nShould you have any complaint, do not hesitate to contact our Call Center at +62 21 53650840\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadigunawan02@gmail.com,cs_yanuar@yahoo.com', 'amatra.smanggin@gmail.com', '2016-02-16 14:28:23', 'Case ID # IT/1602/00010: Confirmation of your request', 0, NULL, NULL, 2, NULL),
(24, 'email', '2016-02-16 14:29:20', '2016-02-16 14:29:20', 'Dear Customer,\r\n\r\nCase ID #:  IT/1602/00010\r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: Toto \r\nCaller Email: cs_yanuar@yahoo.com \r\nCaller Phone: 08267 \r\nProblem Description: masalah jaringan\r\nSTATUS: CASE IS CLOSED\r\n\r\nThank you for your trust and confidence in Compnet to provide excellent support for your company.\r\n\r\nIf you have any concerns regarding the closing of the support request in our systems, please do not hesitate to contact our call center: +62 21  53650840\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadigunawan02@gmail.com,cs_yanuar@yahoo.com', 'amatra.smanggin@gmail.com', '2016-02-16 14:29:20', 'Case ID # IT/1602/00010: Completing your request', 0, NULL, NULL, 1, NULL),
(25, 'email', '2016-02-16 14:29:23', '2016-02-16 14:29:23', 'Dear Customer,\r\n\r\nCase ID #:  IT/1602/00010\r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: Toto \r\nCaller Email: cs_yanuar@yahoo.com \r\nCaller Phone: 08267 \r\nProblem Description: masalah jaringan\r\nSTATUS: CASE IS CLOSED\r\n\r\nThank you for your trust and confidence in Compnet to provide excellent support for your company.\r\n\r\nIf you have any concerns regarding the closing of the support request in our systems, please do not hesitate to contact our call center: +62 21  53650840\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'mulyadigunawan02@gmail.com,cs_yanuar@yahoo.com', 'amatra.smanggin@gmail.com', '2016-02-16 14:29:23', 'Case ID # IT/1602/00010: Completing your request', 0, NULL, NULL, 2, NULL),
(26, 'email', '2016-02-16 14:32:20', '2016-02-16 14:32:20', 'Dear Engineer,\r\n\r\nYour order has approved by supervisor\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'asev.setiawan@smanggin.com', 'supervisor@gmail.com', '2016-02-16 14:32:20', 'SRR Approved By Supervisor Notification @SRR-IT/1602/00003', 0, NULL, NULL, 1, NULL),
(27, 'email', '2016-02-16 14:32:23', '2016-02-16 14:32:23', 'Dear Engineer,\r\n\r\nYour order has approved by supervisor\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'asev.setiawan@smanggin.com', 'supervisor@gmail.com', '2016-02-16 14:32:23', 'SRR Approved By Supervisor Notification @SRR-IT/1602/00003', 0, NULL, NULL, 2, NULL),
(28, 'email', '2016-02-18 08:58:05', '2016-02-18 08:58:05', 'Dear Customer,\r\n\r\nThank you for contacting maintenance team for your support request. This email confirms your request for support and the details are below.\r\n\r\nYour request has been recorded in our system on under Case ID number IT/1602/00012 \r\n\r\nCustomer Name: Partner Dummy \r\nCustomer Location: Cabang Utama \r\nCaller Name: Duma \r\nCaller Email: dumanurhayatisimanjuntak@gmail.com\r\nCaller Phone: 085727095949\r\nProblem Description: test \r\n\r\nOur engineer will contact you shortly. \r\nPlease supply this keycode: OOX35T to our engineer''s mobile to close your issue.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'dumanurhayatisimanjuntak@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-18 08:58:05', 'Case ID # IT/1602/00012: Record your request', 0, NULL, '', 1, NULL),
(29, 'email', '2016-02-18 09:19:00', '2016-02-18 09:19:00', 'Dear Customer,\r\n\r\nThank you for contacting maintenance team for your support request. This email confirms your request for support and the details are below.\r\n\r\nYour request has been recorded in our system on under Case ID number IT/1602/00013 \r\n\r\nCustomer Name: Partner Dummy \r\nCustomer Location: Cabang Utama \r\nCaller Name: Duma \r\nCaller Email: dumanurhayatisimanjuntak@gmail.com\r\nCaller Phone: 018289\r\nProblem Description: test \r\n\r\nOur engineer will contact you shortly. \r\nPlease supply this keycode: AYTK8N to our engineer''s mobile to close your issue.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'dumanurhayatisimanjuntak@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-18 09:19:00', 'Case ID # IT/1602/00013: Record your request', 0, NULL, '', 1, NULL),
(30, 'email', '2016-02-18 09:22:37', '2016-02-18 09:22:37', 'Subject: Escalation Solving Response Time\r\n\r\nDear Manager/Supervisor, \r\n\r\nCurrently there are outstanding issues awaiting for escalation.\r\n\r\nCustomer: Partner Dummy\r\nLocation: Cabang Utama\r\nPIC: [Mulyadi]\r\nSLA: Gold type 1\r\nReported an issue which has not solved by your team, with detail as below:\r\n\r\nTicket No.: IT/1602/00012\r\nPriority: p cek\r\nProblem: test\r\nRunning Time: 3.4243858\r\nSolving SLA: 2\r\nDeadline: 18-Feb-2016 05:56:30\r\n\r\nPlease escalate Heru (085727374839) to provide best solution to Customer''s Request. Thank you for your kind attention.\r\n\r\n\r\nRegards, \r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'supervisor@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-18 09:22:37', 'Solving Time Escalation for Assignment #AS1/1602/00010 2016-02-18 05:56:30.0-2016-02-18 10:56:00.0 Heru/[]', 0, NULL, NULL, 1, 15211),
(31, 'email', '2016-02-18 09:22:40', '2016-02-18 09:22:40', 'Subject: Issue will reach the escalation time [Timestamp] \r\n\r\nDear Partner, \r\n\r\nCurrently there are some outstanding issues reach critical period.f \r\n\r\nRED ALERT: [redList] \r\n\r\nYELLOW ALERT: [yellowList] \r\n\r\nPlease take any necessary action.\r\n\r\n\r\nRegards,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'supervisor@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-18 09:22:40', 'Ticket Issue Alert', 0, NULL, NULL, 1, NULL),
(32, 'email', '2016-02-18 10:47:03', '2016-02-18 10:47:03', 'Subject: Escalation Solving Response Time\r\n\r\nDear Manager/Supervisor, \r\n\r\nCurrently there are outstanding issues awaiting for escalation.\r\n\r\nCustomer: Partner Dummy\r\nLocation: Cabang Utama\r\nPIC: [Mulyadi]\r\nSLA: Gold type 1\r\nReported an issue which has not solved by your team, with detail as below:\r\n\r\nTicket No.: IT/1602/00012\r\nPriority: p cek\r\nProblem: test\r\nRunning Time: 4.839019\r\nSolving SLA: 2\r\nDeadline: 18-Feb-2016 05:56:30\r\n\r\nPlease escalate Heru (085727374839) to provide best solution to Customer''s Request. Thank you for your kind attention.\r\n\r\n\r\nRegards, \r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'daniel@vitraining.com', 'amatra.smanggin@gmail.com', '2016-02-18 10:47:03', 'Solving Time Escalation for Assignment #AS1/1602/00010 2016-02-18 05:56:30.0-2016-02-18 10:56:00.0 Heru/[]', 0, NULL, NULL, 1, 15211),
(33, 'email', '2016-02-18 10:47:07', '2016-02-18 10:47:07', 'Subject: Issue will reach the escalation time [Timestamp] \r\n\r\nDear Partner, \r\n\r\nCurrently there are some outstanding issues reach critical period.f \r\n\r\nRED ALERT: [redList] \r\n\r\nYELLOW ALERT: [yellowList] \r\n\r\nPlease take any necessary action.\r\n\r\n\r\nRegards,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'supervisor@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-18 10:47:07', 'Ticket Issue Alert', 0, NULL, NULL, 1, NULL),
(34, 'email', '2016-02-18 10:57:00', '2016-02-18 10:57:00', 'Subject: Escalation Solving Response Time\r\n\r\nDear Manager/Supervisor, \r\n\r\nCurrently there are outstanding issues awaiting for escalation.\r\n\r\nCustomer: Partner Dummy\r\nLocation: Cabang Utama\r\nPIC: [Mulyadi]\r\nSLA: Gold type 1\r\nReported an issue which has not solved by your team, with detail as below:\r\n\r\nTicket No.: IT/1602/00013\r\nPriority: p cek\r\nProblem: test\r\nRunning Time: 1.651997\r\nSolving SLA: 2\r\nDeadline: 18-Feb-2016 09:17:43\r\n\r\nPlease escalate Mukti (08273847294) to provide best solution to Customer''s Request. Thank you for your kind attention.\r\n\r\n\r\nRegards, \r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'supervisor@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-18 10:57:00', 'Solving Time Escalation for Assignment #AS1/1602/00011 2016-02-18 09:17:43.0-2016-02-18 11:17:00.0 Mukti/[CCNA Routing and Switching]', 0, NULL, NULL, 1, 15212),
(35, 'email', '2016-02-18 10:57:04', '2016-02-18 10:57:04', 'Subject: Issue will reach the escalation time [Timestamp] \r\n\r\nDear Partner, \r\n\r\nCurrently there are some outstanding issues reach critical period.f \r\n\r\nRED ALERT: [redList] \r\n\r\nYELLOW ALERT: [yellowList] \r\n\r\nPlease take any necessary action.\r\n\r\n\r\nRegards,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'supervisor@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-18 10:57:04', 'Ticket Issue Alert', 0, NULL, NULL, 1, NULL),
(36, 'email', '2016-02-18 11:07:00', '2016-02-18 11:07:00', 'Dear Customer,\r\n\r\nThank you for contacting maintenance team for your support request. This email confirms your request for support and the details are below.\r\n\r\nYour request has been recorded in our system on under Case ID number IT/1602/00015 \r\n\r\nCustomer Name: Partner Dummy \r\nCustomer Location: Cabang Utama \r\nCaller Name: Hady \r\nCaller Email: jhadyTj@deltasindo.com\r\nCaller Phone: 08551886698\r\nProblem Description: Tidak bisa upp \r\n\r\nOur engineer will contact you shortly. \r\nPlease supply this keycode: ZEQYIP to our engineer''s mobile to close your issue.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'jhadyTj@deltasindo.com', 'amatra.smanggin@gmail.com', '2016-02-18 11:07:00', 'Case ID # IT/1602/00015: Record your request', 0, NULL, '', 2, NULL),
(37, 'email', '2016-02-18 11:07:00', '2016-02-18 11:07:00', 'Dear Customer,\r\n\r\nThank you for contacting maintenance team for your support request. This email confirms your request for support and the details are below.\r\n\r\nYour request has been recorded in our system on under Case ID number IT/1602/00015 \r\n\r\nCustomer Name: Partner Dummy \r\nCustomer Location: Cabang Utama \r\nCaller Name: Hady \r\nCaller Email: jhadyTj@deltasindo.com\r\nCaller Phone: 08551886698\r\nProblem Description: Tidak bisa upp \r\n\r\nOur engineer will contact you shortly. \r\nPlease supply this keycode: ZEQYIP to our engineer''s mobile to close your issue.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'jhadyTj@deltasindo.com', 'amatra.smanggin@gmail.com', '2016-02-18 11:07:00', 'Case ID # IT/1602/00015: Record your request', 0, NULL, '', 1, NULL),
(38, 'email', '2016-02-18 11:21:54', '2016-02-18 11:21:54', 'Dear Engineer,\r\n\r\nYour order has approved by supervisor\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'asev.setiawan@smanggin.com', 'supervisor@gmail.com', '2016-02-18 11:21:54', 'SRR Approved By Supervisor Notification @SRR-IT/1602/00004', 0, NULL, NULL, 1, NULL);
INSERT INTO `sent` (`id`, `channel`, `date_created`, `last_updated`, `message`, `receiver`, `sender`, `sent_date`, `subject`, `version`, `bcc`, `cc`, `retry`, `assignment_id`) VALUES
(39, 'email', '2016-02-18 11:27:02', '2016-02-18 11:27:02', 'Subject: Escalation Solving Response Time\r\n\r\nDear Manager/Supervisor, \r\n\r\nCurrently there are outstanding issues awaiting for escalation.\r\n\r\nCustomer: Partner Dummy\r\nLocation: Cabang Utama\r\nPIC: [Mulyadi]\r\nSLA: Gold type 1\r\nReported an issue which has not solved by your team, with detail as below:\r\n\r\nTicket No.: IT/1602/00013\r\nPriority: p cek\r\nProblem: test\r\nRunning Time: 2.1519687\r\nSolving SLA: 2\r\nDeadline: 18-Feb-2016 09:17:43\r\n\r\nPlease escalate Mukti (08273847294) to provide best solution to Customer''s Request. Thank you for your kind attention.\r\n\r\n\r\nRegards, \r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'daniel@vitraining.com', 'amatra.smanggin@gmail.com', '2016-02-18 11:27:02', 'Solving Time Escalation for Assignment #AS1/1602/00011 2016-02-18 09:17:43.0-2016-02-18 11:17:00.0 Mukti/[CCNA Routing and Switching]', 0, NULL, NULL, 1, 15212),
(40, 'email', '2016-02-18 11:27:07', '2016-02-18 11:27:07', 'Subject: Issue will reach the escalation time [Timestamp] \r\n\r\nDear Partner, \r\n\r\nCurrently there are some outstanding issues reach critical period.f \r\n\r\nRED ALERT: [redList] \r\n\r\nYELLOW ALERT: [yellowList] \r\n\r\nPlease take any necessary action.\r\n\r\n\r\nRegards,\r\n\r\nManage Service\r\nPT Nusantara Compnet Integrator\r\n\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'supervisor@gmail.com', 'amatra.smanggin@gmail.com', '2016-02-18 11:27:07', 'Ticket Issue Alert', 0, NULL, NULL, 1, NULL),
(41, 'email', '2016-02-18 14:22:09', '2016-02-18 14:22:09', 'Dear Customer,\r\n\r\nThank you for contacting maintenance team for your support request. This email confirms your request for support and the details are below.\r\n\r\nYour request has been recorded in our system on under Case ID number IT/1602/00016 \r\n\r\nCustomer Name: Partner Dummy \r\nCustomer Location: Kantor Pusat \r\nCaller Name: Sutejo \r\nCaller Email: sutejo@artapala.com\r\nCaller Phone: 08161675148\r\nProblem Description: Masalah jaringan \r\n\r\nOur engineer will contact you shortly. \r\nPlease supply this keycode: S2IRC9 to our engineer''s mobile to close your issue.\r\n\r\n\r\nYours sincerely,\r\n\r\nManage Service\r\n---\r\nTHIS NOTIFICATION HAS BEEN SENT AUTOMATICALLY. REPLYING TO THIS E-MAIL THEREFORE IS NOT POSSIBLE.\r\n\r\nThis is an e-mail message from Compnet.  The information contained in this communication is intended solely for use by the individual or entity to whom it is addressed. Use of this communication by others is prohibited. If the e-mail message was sent to you by mistake, please destroy it without reading, using, copying or disclosing its contents to any other person. We accept no liability for damage related to data and/or documents which are communicated by electronic mail.', 'sutejo@artapala.com', 'amatra.smanggin@gmail.com', '2016-02-18 14:22:09', 'Case ID # IT/1602/00016: Record your request', 0, NULL, '', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_days`
--

CREATE TABLE `service_days` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_days`
--

INSERT INTO `service_days` (`id`, `date_created`, `last_updated`, `code`, `name`, `rating`, `version`) VALUES
(1, '2013-07-30 11:37:34', '2013-08-15 10:37:07', 'WDS', 'Working days + Saturday', 50, 0),
(2, '2013-07-30 11:37:50', '2013-07-31 08:45:42', 'WD', 'Working Days Only', 0, 0),
(3, '2013-07-30 11:38:03', '2013-08-15 10:36:52', 'FULL', 'Full day', 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sla`
--

CREATE TABLE `sla` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `backup_unit_time` int(11) DEFAULT NULL,
  `notes` longtext,
  `regular_visit_count` int(11) DEFAULT NULL,
  `regular_visit_interval` varchar(50) DEFAULT NULL,
  `response_time` int(11) DEFAULT NULL,
  `solving_time` int(11) DEFAULT NULL,
  `non_working_day_service_hour_per_day_end` int(11) DEFAULT NULL,
  `non_working_day_service_hour_per_day_start` int(11) DEFAULT NULL,
  `normal_service_hour_per_day_end` int(11) DEFAULT NULL,
  `normal_service_hour_per_day_start` int(11) DEFAULT NULL,
  `use_backup_unit` bit(1) DEFAULT NULL,
  `service_days_id` bigint(20) NOT NULL,
  `onsite_response_time` int(11) DEFAULT NULL,
  `ignore_holiday` int(11) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sla`
--

INSERT INTO `sla` (`id`, `date_created`, `last_updated`, `name`, `backup_unit_time`, `notes`, `regular_visit_count`, `regular_visit_interval`, `response_time`, `solving_time`, `non_working_day_service_hour_per_day_end`, `non_working_day_service_hour_per_day_start`, `normal_service_hour_per_day_end`, `normal_service_hour_per_day_start`, `use_backup_unit`, `service_days_id`, `onsite_response_time`, `ignore_holiday`, `version`) VALUES
(1, '2013-12-09 10:47:19', '2014-02-12 16:05:47', 'Gold type 1', NULL, NULL, 0, NULL, 1, 24, 24, 0, 24, 0, NULL, 3, 4, 1, 9),
(2, '2013-12-09 10:48:41', '2013-12-09 10:53:50', 'Gold type 2', NULL, NULL, 1, 'Month', 1, 24, 24, 0, 24, 0, NULL, 3, 4, 1, 0),
(3, '2013-12-09 10:53:04', '2013-12-09 10:53:04', 'Gold type 3', NULL, NULL, 1, 'Quarter', 1, 24, 24, 0, 24, 0, NULL, 3, 4, 1, 0),
(4, '2013-12-09 10:56:33', '2013-12-09 10:57:35', 'Gold type 4', NULL, NULL, 1, 'Week', 1, 24, 24, 0, 24, 0, NULL, 3, 4, 1, 0),
(5, '2013-12-09 11:06:52', '2013-12-09 11:06:52', 'Silver type 1', NULL, NULL, 0, NULL, 1, 24, 17, 8, 20, 8, NULL, 1, 4, 0, 0),
(6, '2013-12-09 11:07:59', '2013-12-09 11:07:59', 'Silver type 2', NULL, NULL, 1, 'Month', 1, 24, 17, 8, 20, 8, NULL, 1, 4, 0, 0),
(7, '2013-12-09 11:08:47', '2013-12-09 11:08:47', 'Silver type 3', NULL, NULL, 1, 'Quarter', 1, 24, 17, 8, 20, 8, NULL, 1, 4, 0, 0),
(8, '2013-12-09 11:12:39', '2015-01-30 15:05:42', 'Bronze type 1', NULL, 'Type1', 0, NULL, 1, 24, 0, 0, 17, 8, NULL, 2, 4, 1, 1),
(9, '2013-12-09 11:15:13', '2013-12-09 11:15:13', 'Bronze type 2', NULL, NULL, 1, 'Month', 1, 24, 0, 0, 17, 8, NULL, 2, 4, 0, 0),
(10, '2013-12-09 11:15:51', '2016-02-18 08:22:22', 'Bronze type 3', NULL, NULL, 1, 'Quarter', 1, 24, 9, 8, 9, 8, NULL, 2, 4, 1, 2),
(11, '2013-12-09 11:22:36', '2013-12-09 11:22:36', 'Platinum type 1', NULL, NULL, 1, 'Month', 0, 24, 24, 0, 24, 0, NULL, 3, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sla_escalation_response_time_target`
--

CREATE TABLE `sla_escalation_response_time_target` (
  `sla_escalation_response_time_targets_id` bigint(20) DEFAULT NULL,
  `escalation_response_time_target_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sla_escalation_solving_time_target`
--

CREATE TABLE `sla_escalation_solving_time_target` (
  `sla_escalation_solving_time_targets_id` bigint(20) DEFAULT NULL,
  `escalation_solving_time_target_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sla_supplier`
--

CREATE TABLE `sla_supplier` (
  `id` bigint(20) NOT NULL,
  `contract_number` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `sla_id` bigint(20) DEFAULT NULL,
  `supplier_address1` varchar(200) DEFAULT NULL,
  `supplier_address2` varchar(200) DEFAULT NULL,
  `supplier_city` varchar(200) DEFAULT NULL,
  `supplier_country` varchar(100) DEFAULT NULL,
  `supplier_email` varchar(100) DEFAULT NULL,
  `supplier_fax` varchar(45) DEFAULT NULL,
  `supplier_name` varchar(45) DEFAULT NULL,
  `supplier_postal_code` varchar(45) DEFAULT NULL,
  `supplier_telp` varchar(45) DEFAULT NULL,
  `supplier_website` varchar(100) DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  `backup_unit_time` int(11) DEFAULT NULL,
  `response_time` int(11) DEFAULT NULL,
  `service_days` int(11) DEFAULT NULL,
  `service_hour_per_day` int(11) DEFAULT NULL,
  `solving_time` int(11) DEFAULT NULL,
  `non_working_day_service_hour_per_day_end` int(11) DEFAULT NULL,
  `non_working_day_service_hour_per_day_start` int(11) DEFAULT NULL,
  `normal_service_hour_per_day_end` int(11) DEFAULT NULL,
  `normal_service_hour_per_day_start` int(11) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `service_days_id` bigint(20) DEFAULT NULL,
  `use_backup_unit` bit(1) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sla_supplier_contact`
--

CREATE TABLE `sla_supplier_contact` (
  `id` bigint(20) NOT NULL,
  `backup_unit_time` int(11) NOT NULL,
  `contract_number` varchar(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `partner_name` varchar(20) DEFAULT NULL,
  `response_time` int(11) NOT NULL,
  `sla_id` bigint(20) NOT NULL,
  `sla_supplier_id` bigint(20) NOT NULL,
  `solving_time` int(11) NOT NULL,
  `supplier_contact_dept` varchar(100) DEFAULT NULL,
  `supplier_contact_email` varchar(100) DEFAULT NULL,
  `supplier_contact_id` varchar(20) DEFAULT NULL,
  `supplier_contact_mobile` varchar(100) DEFAULT NULL,
  `supplier_contact_name_first` varchar(100) DEFAULT NULL,
  `supplier_contact_name_last` varchar(100) DEFAULT NULL,
  `supplier_contact_position` varchar(100) DEFAULT NULL,
  `supplier_contact_salutation` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sla_type`
--

CREATE TABLE `sla_type` (
  `id` bigint(20) NOT NULL,
  `backup_unit_time` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `escalation_response_time_targets` int(11) NOT NULL,
  `escalation_solving_time_targets` int(11) NOT NULL,
  `last_updated` datetime NOT NULL,
  `notes` longtext,
  `regular_visit_count` int(11) NOT NULL,
  `regular_visit_interval` int(11) NOT NULL,
  `response_time` int(11) NOT NULL,
  `service_days` varchar(255) NOT NULL,
  `service_hour_per_day` int(11) NOT NULL,
  `sla_supplier_id` bigint(20) DEFAULT NULL,
  `sla_type_name` varchar(255) NOT NULL,
  `solving_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sla_type_sla`
--

CREATE TABLE `sla_type_sla` (
  `sla_type_slas_id` bigint(20) DEFAULT NULL,
  `sla_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `start_from`
--

CREATE TABLE `start_from` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `start_from`
--

INSERT INTO `start_from` (`id`, `date_created`, `last_updated`, `name`) VALUES
(1, '2013-10-14 00:00:00', '2013-10-14 00:00:00', 'Order'),
(2, '2013-10-14 00:00:00', '2013-10-14 00:00:00', 'Checkin'),
(3, '2013-10-14 00:00:00', '2013-10-14 00:00:00', 'Call Response');

-- --------------------------------------------------------

--
-- Table structure for table `substitute_certificate`
--

CREATE TABLE `substitute_certificate` (
  `id` bigint(20) NOT NULL,
  `certificate1_id` bigint(20) DEFAULT NULL,
  `certificate2_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `certificate_id` bigint(20) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `certificate_sub_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `substitute_certificate`
--

INSERT INTO `substitute_certificate` (`id`, `certificate1_id`, `certificate2_id`, `date_created`, `last_updated`, `certificate_id`, `notes`, `certificate_sub_id`, `version`) VALUES
(1, NULL, NULL, '2013-12-09 07:42:32', '2013-12-09 07:42:32', 1, NULL, 7, NULL),
(2, NULL, NULL, '2013-12-09 07:42:41', '2013-12-09 07:42:41', 1, NULL, 4, NULL),
(3, NULL, NULL, '2013-12-09 07:42:59', '2013-12-09 07:42:59', 1, NULL, 10, NULL),
(4, NULL, NULL, '2013-12-09 07:43:56', '2013-12-09 07:43:56', 2, NULL, 8, NULL),
(5, NULL, NULL, '2013-12-09 07:44:03', '2013-12-09 07:44:03', 2, NULL, 5, NULL),
(6, NULL, NULL, '2013-12-09 07:44:03', '2013-12-09 07:44:03', 2, NULL, 11, NULL),
(7, NULL, NULL, '2014-02-12 10:24:24', '2014-02-12 10:24:24', 4, NULL, 1, NULL),
(8, NULL, NULL, '2014-02-12 10:24:32', '2014-02-12 10:24:32', 4, NULL, 23, NULL),
(9, NULL, NULL, '2014-02-12 10:24:38', '2014-02-12 10:24:38', 4, NULL, 25, NULL),
(10, NULL, NULL, '2014-02-12 10:24:45', '2014-02-12 10:24:45', 4, NULL, 24, NULL),
(11, NULL, NULL, '2014-02-12 10:25:01', '2014-02-12 10:25:01', 4, NULL, 7, NULL),
(12, NULL, NULL, '2014-02-12 10:25:38', '2014-02-12 10:25:38', 4, NULL, 19, NULL),
(13, NULL, NULL, '2014-02-12 10:25:59', '2014-02-12 10:25:59', 3, NULL, 6, NULL),
(14, NULL, NULL, '2014-02-12 10:26:04', '2014-02-12 10:26:04', 3, NULL, 9, NULL),
(15, NULL, NULL, '2014-02-12 10:27:05', '2014-02-12 10:27:05', 5, NULL, 2, NULL),
(16, NULL, NULL, '2014-02-12 10:27:10', '2014-02-12 10:27:10', 5, NULL, 8, NULL),
(17, NULL, NULL, '2014-02-12 10:27:16', '2014-02-12 10:27:16', 5, NULL, 11, NULL),
(18, NULL, NULL, '2014-02-12 10:27:38', '2014-02-12 10:27:38', 6, NULL, 3, NULL),
(19, NULL, NULL, '2014-02-12 10:27:47', '2014-02-12 10:27:47', 6, NULL, 9, NULL),
(20, NULL, NULL, '2014-02-12 10:28:15', '2014-02-12 10:28:15', 7, NULL, 1, NULL),
(21, NULL, NULL, '2014-02-12 10:28:20', '2014-02-12 10:28:20', 7, NULL, 23, NULL),
(22, NULL, NULL, '2014-02-12 10:28:26', '2014-02-12 10:28:26', 7, NULL, 25, NULL),
(23, NULL, NULL, '2014-02-12 10:28:35', '2014-02-12 10:28:35', 7, NULL, 24, NULL),
(24, NULL, NULL, '2014-02-12 10:28:52', '2014-02-12 10:28:52', 7, NULL, 4, NULL),
(25, NULL, NULL, '2014-02-12 10:28:58', '2014-02-12 10:28:58', 7, NULL, 10, NULL),
(26, NULL, NULL, '2014-02-12 10:29:15', '2014-02-12 10:29:15', 7, NULL, 19, NULL),
(27, NULL, NULL, '2014-02-12 10:29:35', '2014-02-12 10:29:35', 4, NULL, 10, NULL),
(28, NULL, NULL, '2014-02-12 10:29:57', '2014-02-12 10:29:57', 8, NULL, 2, NULL),
(29, NULL, NULL, '2014-02-12 10:30:04', '2014-02-12 10:30:04', 8, NULL, 5, NULL),
(30, NULL, NULL, '2014-02-12 10:30:09', '2014-02-12 10:30:09', 8, NULL, 11, NULL),
(31, NULL, NULL, '2014-02-12 10:30:26', '2014-02-12 10:30:26', 9, NULL, 3, NULL),
(32, NULL, NULL, '2014-02-12 10:30:34', '2014-02-12 10:30:34', 9, NULL, 6, NULL),
(33, NULL, NULL, '2014-02-12 10:30:55', '2014-02-12 10:30:55', 10, NULL, 1, NULL),
(34, NULL, NULL, '2014-02-12 10:31:00', '2014-02-12 10:31:00', 10, NULL, 23, NULL),
(35, NULL, NULL, '2014-02-12 10:31:05', '2014-02-12 10:31:05', 10, NULL, 25, NULL),
(36, NULL, NULL, '2014-02-12 10:31:11', '2014-02-12 10:31:11', 10, NULL, 24, NULL),
(37, NULL, NULL, '2014-02-12 10:31:16', '2014-02-12 10:31:16', 10, NULL, 4, NULL),
(38, NULL, NULL, '2014-02-12 10:31:22', '2014-02-12 10:31:22', 10, NULL, 7, NULL),
(39, NULL, NULL, '2014-02-12 10:31:54', '2014-02-12 10:31:54', 11, NULL, 2, NULL),
(40, NULL, NULL, '2014-02-12 10:31:59', '2014-02-12 10:31:59', 11, NULL, 5, NULL),
(41, NULL, NULL, '2014-02-12 10:32:06', '2014-02-12 10:32:06', 11, NULL, 8, NULL),
(42, NULL, NULL, '2014-02-12 10:32:14', '2014-02-12 10:32:14', 11, NULL, 20, NULL),
(43, NULL, NULL, '2014-02-12 10:32:22', '2014-02-12 10:32:22', 11, NULL, 21, NULL),
(44, NULL, NULL, '2014-02-12 10:32:26', '2014-02-12 10:32:26', 11, NULL, 22, NULL),
(45, NULL, NULL, '2014-02-12 10:33:01', '2014-02-12 10:33:01', 12, NULL, 11, NULL),
(46, NULL, NULL, '2014-02-12 10:33:10', '2014-02-12 10:33:10', 12, NULL, 2, NULL),
(47, NULL, NULL, '2014-02-12 10:33:16', '2014-02-12 10:33:16', 12, NULL, 8, NULL),
(48, NULL, NULL, '2014-02-12 10:33:20', '2014-02-12 10:33:20', 12, NULL, 5, NULL),
(49, NULL, NULL, '2014-02-12 10:33:25', '2014-02-12 10:33:25', 12, NULL, 20, NULL),
(50, NULL, NULL, '2014-02-12 10:33:29', '2014-02-12 10:33:29', 12, NULL, 21, NULL),
(51, NULL, NULL, '2014-02-12 10:33:34', '2014-02-12 10:33:34', 12, NULL, 22, NULL),
(52, NULL, NULL, '2014-02-12 10:35:51', '2014-02-12 10:35:51', 14, NULL, 23, NULL),
(53, NULL, NULL, '2014-02-12 10:35:56', '2014-02-12 10:35:56', 14, NULL, 1, NULL),
(54, NULL, NULL, '2014-02-12 10:36:00', '2014-02-12 10:36:00', 14, NULL, 24, NULL),
(55, NULL, NULL, '2014-02-12 10:36:06', '2014-02-12 10:36:06', 14, NULL, 25, NULL),
(56, NULL, NULL, '2014-02-12 10:36:13', '2014-02-12 10:36:13', 14, NULL, 4, NULL),
(57, NULL, NULL, '2014-02-12 10:36:18', '2014-02-12 10:36:18', 14, NULL, 7, NULL),
(58, NULL, NULL, '2014-02-12 10:36:24', '2014-02-12 10:36:24', 14, NULL, 19, NULL),
(59, NULL, NULL, '2014-02-12 10:36:53', '2014-02-12 10:36:53', 19, NULL, 1, NULL),
(60, NULL, NULL, '2014-02-12 10:36:58', '2014-02-12 10:36:58', 19, NULL, 23, NULL),
(61, NULL, NULL, '2014-02-12 10:37:03', '2014-02-12 10:37:03', 19, NULL, 24, NULL),
(62, NULL, NULL, '2014-02-12 10:37:15', '2014-02-12 10:37:15', 19, NULL, 25, NULL),
(63, NULL, NULL, '2014-02-12 10:37:20', '2014-02-12 10:37:20', 19, NULL, 4, NULL),
(64, NULL, NULL, '2014-02-12 10:37:41', '2014-02-12 10:37:41', 19, NULL, 7, NULL),
(65, NULL, NULL, '2014-02-17 12:22:40', '2014-02-17 12:22:40', 27, NULL, 2, NULL),
(66, NULL, NULL, '2014-02-17 12:22:46', '2014-02-17 12:22:46', 27, NULL, 5, NULL),
(67, NULL, NULL, '2014-02-17 12:22:53', '2014-02-17 12:22:53', 27, NULL, 8, NULL),
(68, NULL, NULL, '2014-02-17 12:23:23', '2014-02-17 12:23:23', 27, NULL, 11, NULL),
(69, NULL, NULL, '2014-02-17 12:24:27', '2014-02-17 12:24:27', 28, NULL, 2, NULL),
(70, NULL, NULL, '2014-02-17 12:24:31', '2014-02-17 12:24:31', 28, NULL, 28, NULL),
(71, NULL, NULL, '2014-02-17 12:24:47', '2014-02-17 12:24:47', 28, NULL, 5, NULL),
(72, NULL, NULL, '2014-02-17 12:24:55', '2014-02-17 12:24:55', 28, NULL, 8, NULL),
(73, NULL, NULL, '2014-02-17 12:25:00', '2014-02-17 12:25:00', 28, NULL, 11, NULL),
(74, NULL, NULL, '2014-04-07 08:27:16', '2014-04-07 08:27:16', 25, NULL, 1, NULL),
(75, NULL, NULL, '2014-04-07 08:27:25', '2014-04-07 08:27:25', 25, NULL, 23, NULL),
(76, NULL, NULL, '2014-04-07 08:27:32', '2014-04-07 08:27:32', 25, NULL, 24, NULL),
(77, NULL, NULL, '2014-04-07 08:27:38', '2014-04-07 08:27:38', 25, NULL, 4, NULL),
(78, NULL, NULL, '2014-04-07 08:27:46', '2014-04-07 08:27:46', 25, NULL, 7, NULL),
(79, NULL, NULL, '2014-04-07 08:27:57', '2014-04-07 08:27:57', 25, NULL, 19, NULL),
(80, NULL, NULL, '2014-04-07 08:28:10', '2014-04-07 08:28:10', 25, NULL, 10, NULL),
(81, NULL, NULL, '2014-04-07 08:28:30', '2014-04-07 08:28:30', 24, NULL, 1, NULL),
(82, NULL, NULL, '2014-04-07 08:28:36', '2014-04-07 08:28:36', 24, NULL, 23, NULL),
(83, NULL, NULL, '2014-04-07 08:28:41', '2014-04-07 08:28:41', 24, NULL, 25, NULL),
(84, NULL, NULL, '2014-04-07 08:28:45', '2014-04-07 08:28:45', 24, NULL, 4, NULL),
(85, NULL, NULL, '2014-04-07 08:28:48', '2014-04-07 08:28:48', 24, NULL, 7, NULL),
(86, NULL, NULL, '2014-04-07 08:28:53', '2014-04-07 08:28:53', 24, NULL, 10, NULL),
(87, NULL, NULL, '2014-04-07 08:29:00', '2014-04-07 08:29:00', 24, NULL, 19, NULL),
(88, NULL, NULL, '2014-04-07 08:29:32', '2014-04-07 08:29:32', 23, NULL, 1, NULL),
(89, NULL, NULL, '2014-04-07 08:29:35', '2014-04-07 08:29:35', 23, NULL, 4, NULL),
(90, NULL, NULL, '2014-04-07 08:29:40', '2014-04-07 08:29:40', 23, NULL, 7, NULL),
(91, NULL, NULL, '2014-04-07 08:29:46', '2014-04-07 08:29:46', 23, NULL, 10, NULL),
(92, NULL, NULL, '2014-04-07 08:29:54', '2014-04-07 08:29:54', 23, NULL, 19, NULL),
(93, NULL, NULL, '2014-04-07 08:30:07', '2014-04-07 08:30:07', 23, NULL, 24, NULL),
(94, NULL, NULL, '2014-04-07 08:30:12', '2014-04-07 08:30:12', 23, NULL, 25, NULL),
(95, NULL, NULL, '2014-04-07 08:30:26', '2014-04-07 08:30:26', 22, NULL, 2, NULL),
(96, NULL, NULL, '2014-04-07 08:30:31', '2014-04-07 08:30:31', 22, NULL, 5, NULL),
(97, NULL, NULL, '2014-04-07 08:30:35', '2014-04-07 08:30:35', 22, NULL, 8, NULL),
(98, NULL, NULL, '2014-04-07 08:30:40', '2014-04-07 08:30:40', 22, NULL, 11, NULL),
(99, NULL, NULL, '2014-04-07 08:30:47', '2014-04-07 08:30:47', 22, NULL, 27, NULL),
(100, NULL, NULL, '2014-04-07 08:30:52', '2014-04-07 08:30:52', 22, NULL, 28, NULL),
(101, NULL, NULL, '2014-04-07 08:31:09', '2014-04-07 08:31:09', 21, NULL, 2, NULL),
(102, NULL, NULL, '2014-04-07 08:31:13', '2014-04-07 08:31:13', 21, NULL, 5, NULL),
(103, NULL, NULL, '2014-04-07 08:31:16', '2014-04-07 08:31:16', 21, NULL, 8, NULL),
(104, NULL, NULL, '2014-04-07 08:31:21', '2014-04-07 08:31:21', 21, NULL, 11, NULL),
(105, NULL, NULL, '2014-04-07 08:31:31', '2014-04-07 08:31:31', 21, NULL, 27, NULL),
(106, NULL, NULL, '2014-04-07 08:31:36', '2014-04-07 08:31:36', 21, NULL, 28, NULL),
(107, NULL, NULL, '2014-04-07 08:31:59', '2014-04-07 08:31:59', 20, NULL, 1, NULL),
(108, NULL, NULL, '2014-04-07 08:32:02', '2014-04-07 08:32:02', 20, NULL, 2, NULL),
(109, NULL, NULL, '2014-04-07 08:32:05', '2014-04-07 08:32:05', 20, NULL, 4, NULL),
(110, NULL, NULL, '2014-04-07 08:32:09', '2014-04-07 08:32:09', 20, NULL, 5, NULL),
(111, NULL, NULL, '2014-04-07 08:32:13', '2014-04-07 08:32:13', 20, NULL, 7, NULL),
(112, NULL, NULL, '2014-04-07 08:32:16', '2014-04-07 08:32:16', 20, NULL, 8, NULL),
(113, NULL, NULL, '2014-04-07 08:32:22', '2014-04-07 08:32:22', 20, NULL, 10, NULL),
(114, NULL, NULL, '2014-04-07 08:32:28', '2014-04-07 08:32:28', 20, NULL, 11, NULL),
(115, NULL, NULL, '2014-04-07 08:32:36', '2014-04-07 08:32:36', 20, NULL, 19, NULL),
(116, NULL, NULL, '2014-04-07 08:32:43', '2014-04-07 08:32:43', 20, NULL, 27, NULL),
(117, NULL, NULL, '2014-04-07 08:32:48', '2014-04-07 08:32:48', 20, NULL, 28, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `survey_detail`
--

CREATE TABLE `survey_detail` (
  `id` bigint(20) NOT NULL,
  `answer_data_type` varchar(20) DEFAULT NULL,
  `answer_weight` int(11) DEFAULT NULL,
  `calculated` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `line_no` int(11) DEFAULT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `survey_header_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `survey_detail_answer`
--

CREATE TABLE `survey_detail_answer` (
  `survey_detail_answers_id` bigint(20) DEFAULT NULL,
  `answer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `survey_detail_option`
--

CREATE TABLE `survey_detail_option` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `line_no` int(11) DEFAULT NULL,
  `option_description` varchar(100) DEFAULT NULL,
  `option_no` int(11) DEFAULT NULL,
  `option_score` int(11) DEFAULT NULL,
  `survey_detail_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `survey_detail_option_answer`
--

CREATE TABLE `survey_detail_option_answer` (
  `survey_detail_option_answers_id` bigint(20) DEFAULT NULL,
  `answer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `survey_header`
--

CREATE TABLE `survey_header` (
  `id` bigint(20) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `from_date` datetime DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `survey_description` varchar(100) DEFAULT NULL,
  `survey_goal` varchar(1000) DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `technical_visit`
--

CREATE TABLE `technical_visit` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `location_id` bigint(20) NOT NULL,
  `maintenance_order_id` bigint(20) NOT NULL,
  `number` varchar(45) DEFAULT NULL,
  `time_visit` datetime DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `person_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`id`, `date_created`, `last_updated`, `latitude`, `longitude`, `person_id`) VALUES
(1, '2016-02-12 23:23:29', '2016-02-12 23:23:29', 0, 0, 234),
(2, '2016-02-12 23:23:31', '2016-02-12 23:23:31', 0, 0, 234),
(3, '2016-02-12 23:23:38', '2016-02-12 23:23:38', 0, 0, 234),
(4, '2016-02-12 23:23:39', '2016-02-12 23:23:39', -6.16799, 106.721, 234),
(5, '2016-02-12 23:23:40', '2016-02-12 23:23:40', -6.16799, 106.721, 234),
(6, '2016-02-15 14:26:35', '2016-02-15 14:26:35', 0, 0, 232),
(7, '2016-02-15 14:26:37', '2016-02-15 14:26:37', 0, 0, 232),
(8, '2016-02-15 14:30:07', '2016-02-15 14:30:07', 0, 0, 232),
(9, '2016-02-15 14:30:08', '2016-02-15 14:30:08', -6.13998, 106.863, 232),
(10, '2016-02-15 14:30:09', '2016-02-15 14:30:09', -6.13998, 106.863, 232),
(11, '2016-02-15 14:40:09', '2016-02-15 14:40:09', -6.14047, 106.862, 232),
(12, '2016-02-15 15:52:04', '2016-02-15 15:52:04', 0, 0, 232),
(13, '2016-02-15 15:57:05', '2016-02-15 15:57:05', -6.18566, 106.791, 232),
(14, '2016-02-15 15:59:13', '2016-02-15 15:59:13', 0, 0, 232),
(15, '2016-02-15 15:59:15', '2016-02-15 15:59:15', 0, 0, 232),
(16, '2016-02-15 16:04:15', '2016-02-15 16:04:15', -6.18945, 106.792, 232),
(17, '2016-02-15 16:18:54', '2016-02-15 16:18:54', 0, 0, 232),
(18, '2016-02-15 16:26:09', '2016-02-15 16:26:09', 0, 0, 232),
(19, '2016-02-15 16:31:23', '2016-02-15 16:31:23', 0, 0, 232),
(20, '2016-02-15 16:37:18', '2016-02-15 16:37:18', 0, 0, 232),
(21, '2016-02-15 16:42:18', '2016-02-15 16:42:18', -6.18566, 106.791, 232),
(22, '2016-02-15 16:49:05', '2016-02-15 16:49:05', 0, 0, 232),
(23, '2016-02-15 16:54:05', '2016-02-15 16:54:05', -6.18945, 106.792, 232),
(24, '2016-02-16 07:46:31', '2016-02-16 07:46:31', 0, 0, 234),
(25, '2016-02-16 07:46:34', '2016-02-16 07:46:34', 0, 0, 234),
(26, '2016-02-16 07:51:33', '2016-02-16 07:51:33', -6.18566, 106.791, 234),
(27, '2016-02-16 08:11:33', '2016-02-16 08:11:33', -6.18945, 106.792, 234),
(28, '2016-02-16 08:16:33', '2016-02-16 08:16:33', -6.18566, 106.791, 234),
(29, '2016-02-16 08:17:16', '2016-02-16 08:17:16', 0, 0, 233),
(30, '2016-02-16 08:17:18', '2016-02-16 08:17:18', 0, 0, 233),
(31, '2016-02-16 11:54:04', '2016-02-16 11:54:04', 0, 0, 234),
(32, '2016-02-16 11:54:06', '2016-02-16 11:54:06', 0, 0, 234),
(33, '2016-02-16 11:58:45', '2016-02-16 11:58:45', 0, 0, 234),
(34, '2016-02-16 12:08:02', '2016-02-16 12:08:02', -6.18946, 106.792, 234),
(35, '2016-02-16 12:08:04', '2016-02-16 12:08:04', -6.18946, 106.792, 234),
(36, '2016-02-16 12:13:04', '2016-02-16 12:13:04', -6.18566, 106.791, 234),
(37, '2016-02-15 11:00:00', '2016-02-15 12:00:00', -6.19064, 106.79, 234),
(38, '2016-02-15 12:00:00', '2016-02-15 13:00:00', -6.19676, 106.802, 234),
(39, '2016-02-15 13:20:00', '2016-02-15 14:00:00', -6.19401, 106.804, 234),
(40, '2016-02-15 14:00:00', '2016-02-15 15:26:00', -6.1918, 106.807, 234),
(41, '2016-02-15 15:47:00', '2016-02-15 16:16:00', -6.1754, 106.825, 234),
(42, '2016-02-16 13:46:03', '2016-02-16 13:46:03', 0, 0, 235),
(43, '2016-02-16 13:46:10', '2016-02-16 13:46:10', 0, 0, 235),
(44, '2016-02-16 13:46:11', '2016-02-16 13:46:11', 0, 0, 235),
(45, '2016-02-16 13:46:13', '2016-02-16 13:46:13', 0, 0, 235),
(46, '2016-02-16 13:51:13', '2016-02-16 13:51:13', -6.19462, 106.821, 235),
(47, '2016-02-16 14:17:55', '2016-02-16 14:17:55', 0, 0, 235),
(48, '2016-02-16 14:17:57', '2016-02-16 14:17:57', -6.19462, 106.821, 235),
(49, '2016-02-16 14:17:59', '2016-02-16 14:17:59', -6.19462, 106.821, 235),
(50, '2016-02-16 14:18:47', '2016-02-16 14:18:47', 0, 0, 233),
(51, '2016-02-16 14:19:12', '2016-02-16 14:19:12', 0, 0, 233),
(52, '2016-02-16 14:19:19', '2016-02-16 14:19:19', 0, 0, 235),
(53, '2016-02-16 14:19:23', '2016-02-16 14:19:23', -6.19462, 106.821, 234),
(54, '2016-02-16 14:19:24', '2016-02-16 14:19:24', 0, 0, 233),
(55, '2016-02-16 14:19:27', '2016-02-16 14:19:27', 0, 0, 233),
(56, '2016-02-16 14:30:21', '2016-02-16 14:30:21', 0, 0, 233),
(57, '2016-02-16 14:45:03', '2016-02-16 14:45:03', 0, 0, 234),
(58, '2016-02-18 08:38:51', '2016-02-18 08:38:51', 0, 0, 232),
(59, '2016-02-18 08:55:59', '2016-02-18 08:55:59', 0, 0, 234),
(60, '2016-02-18 08:56:01', '2016-02-18 08:56:01', 0, 0, 234),
(61, '2016-02-18 08:58:52', '2016-02-18 08:58:52', 0, 0, 234),
(62, '2016-02-18 08:58:56', '2016-02-18 08:58:56', -6.18566, 106.791, 235),
(63, '2016-02-18 08:58:57', '2016-02-18 08:58:57', -6.18566, 106.791, 235),
(64, '2016-02-18 09:01:13', '2016-02-18 09:01:13', 0, 0, 234),
(65, '2016-02-18 09:01:15', '2016-02-18 09:01:15', 0, 0, 234),
(66, '2016-02-18 09:01:24', '2016-02-18 09:01:24', 0, 0, 234),
(67, '2016-02-18 09:17:27', '2016-02-18 09:17:27', -6.18955, 106.792, 234),
(68, '2016-02-18 09:17:28', '2016-02-18 09:17:28', -6.18955, 106.792, 234),
(69, '2016-02-18 10:51:55', '2016-02-18 10:51:55', 0, 0, 232),
(70, '2016-02-18 10:52:01', '2016-02-18 10:52:01', 0, 0, 232),
(71, '2016-02-18 10:52:01', '2016-02-18 10:52:01', 0, 0, 232),
(72, '2016-02-18 10:52:03', '2016-02-18 10:52:03', 0, 0, 232),
(73, '2016-02-18 10:52:24', '2016-02-18 10:52:24', 0, 0, 232),
(74, '2016-02-18 10:52:25', '2016-02-18 10:52:25', -6.17695, 106.792, 232),
(75, '2016-02-18 10:52:26', '2016-02-18 10:52:26', -6.17695, 106.792, 232),
(76, '2016-02-18 10:55:53', '2016-02-18 10:55:53', 0, 0, 232),
(77, '2016-02-18 10:56:07', '2016-02-18 10:56:07', -6.17692, 106.791, 232),
(78, '2016-02-18 10:56:08', '2016-02-18 10:56:08', -6.17692, 106.791, 232),
(79, '2016-02-18 11:06:08', '2016-02-18 11:06:08', -6.17702, 106.792, 232),
(80, '2016-02-18 11:14:05', '2016-02-18 11:14:05', 0, 0, 232),
(81, '2016-02-18 11:24:06', '2016-02-18 11:24:06', -6.17684, 106.792, 232),
(82, '2016-02-18 11:52:46', '2016-02-18 11:52:46', 0, 0, 232),
(83, '2016-02-18 14:12:08', '2016-02-18 14:12:08', 0, 0, 232),
(84, '2016-02-18 14:12:12', '2016-02-18 14:12:12', 0, 0, 232),
(85, '2016-02-18 14:12:22', '2016-02-18 14:12:22', 0, 0, 232),
(86, '2016-02-18 14:12:24', '2016-02-18 14:12:24', -6.21286, 106.818, 232),
(87, '2016-02-18 14:12:30', '2016-02-18 14:12:30', -6.21286, 106.818, 232),
(88, '2016-02-18 14:17:50', '2016-02-18 14:17:50', -6.20994, 106.819, 232),
(89, '2016-02-18 14:22:35', '2016-02-18 14:22:35', 0, 0, 232),
(90, '2016-02-29 09:56:09', '2016-02-29 09:56:09', 0, 0, 232),
(91, '2016-02-29 09:56:11', '2016-02-29 09:56:11', 0, 0, 232),
(92, '2016-02-29 09:56:55', '2016-02-29 09:56:55', 0, 0, 232),
(93, '2016-02-29 09:56:57', '2016-02-29 09:56:57', 36.575, -95.7656, 232),
(94, '2016-02-29 09:56:58', '2016-02-29 09:56:58', 36.575, -95.7656, 232),
(95, '2016-02-29 09:57:32', '2016-02-29 09:57:32', 0, 0, 232),
(96, '2016-02-29 09:57:33', '2016-02-29 09:57:33', 36.575, -95.7656, 232),
(97, '2016-02-29 09:57:34', '2016-02-29 09:57:34', 36.575, -95.7656, 232),
(98, '2016-02-29 10:14:42', '2016-02-29 10:14:42', 0, 0, 232),
(99, '2016-02-29 10:15:07', '2016-02-29 10:15:07', 36.575, -95.7656, 232),
(100, '2016-02-29 10:15:08', '2016-02-29 10:15:08', 36.575, -95.7656, 232),
(101, '2016-02-29 10:16:39', '2016-02-29 10:16:39', 0, 0, 232),
(102, '2016-02-29 10:16:48', '2016-02-29 10:16:48', 0, 0, 232),
(103, '2016-02-29 10:16:49', '2016-02-29 10:16:49', 0, 0, 232),
(104, '2016-02-29 10:16:50', '2016-02-29 10:16:50', 0, 0, 232),
(105, '2016-02-29 10:17:37', '2016-02-29 10:17:37', 0, 0, 232),
(106, '2016-02-29 10:17:38', '2016-02-29 10:17:38', 0, 0, 232),
(107, '2016-02-29 10:17:39', '2016-02-29 10:17:39', 0, 0, 232),
(108, '2016-02-29 10:18:01', '2016-02-29 10:18:01', 0, 0, 232),
(109, '2016-02-29 10:18:03', '2016-02-29 10:18:03', 0, 0, 232),
(110, '2016-02-29 10:18:04', '2016-02-29 10:18:04', 0, 0, 232),
(111, '2016-02-29 10:18:59', '2016-02-29 10:18:59', 0, 0, 232),
(112, '2016-02-29 10:18:59', '2016-02-29 10:18:59', 0, 0, 232),
(113, '2016-02-29 10:19:01', '2016-02-29 10:19:01', 0, 0, 232),
(114, '2016-02-29 10:32:52', '2016-02-29 10:32:52', 0, 0, 232),
(115, '2016-02-29 10:32:53', '2016-02-29 10:32:53', 0, 0, 232),
(116, '2016-02-29 10:32:54', '2016-02-29 10:32:54', 0, 0, 232),
(117, '2016-02-29 10:33:03', '2016-02-29 10:33:03', 0, 0, 232),
(118, '2016-02-29 10:33:04', '2016-02-29 10:33:04', 0, 0, 232),
(119, '2016-02-29 10:33:05', '2016-02-29 10:33:05', 0, 0, 232),
(120, '2016-02-29 10:35:02', '2016-02-29 10:35:02', 0, 0, 232),
(121, '2016-02-29 10:35:03', '2016-02-29 10:35:03', 0, 0, 232),
(122, '2016-02-29 10:35:04', '2016-02-29 10:35:04', 0, 0, 232),
(123, '2016-02-29 10:35:37', '2016-02-29 10:35:37', 0, 0, 232),
(124, '2016-02-29 10:35:38', '2016-02-29 10:35:38', 0, 0, 232),
(125, '2016-02-29 10:35:39', '2016-02-29 10:35:39', 0, 0, 232),
(126, '2016-02-29 10:36:18', '2016-02-29 10:36:18', 0, 0, 232),
(127, '2016-02-29 10:36:19', '2016-02-29 10:36:19', 0, 0, 232),
(128, '2016-02-29 10:36:20', '2016-02-29 10:36:20', 0, 0, 232);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_group`
--

CREATE TABLE `transaction_group` (
  `id` int(11) NOT NULL,
  `version` double DEFAULT NULL,
  `code` varchar(765) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `name` varchar(765) DEFAULT NULL,
  `transaction_type_id` double DEFAULT NULL,
  `width` double DEFAULT NULL,
  `transaction_group_numbering_id` double DEFAULT NULL,
  `trigger_id` double DEFAULT NULL,
  `alert_when_not_created` bit(1) DEFAULT NULL,
  `trigger_group_access_id` double DEFAULT NULL,
  `approver1_id` double DEFAULT NULL,
  `approver2_id` double DEFAULT NULL,
  `creator_id` double DEFAULT NULL,
  `approved1action` varchar(765) DEFAULT NULL,
  `approved2action` varchar(765) DEFAULT NULL,
  `created_action` varchar(765) DEFAULT NULL,
  `done_action` varchar(765) DEFAULT NULL,
  `approved_action` varchar(765) DEFAULT NULL,
  `archived_action` varchar(765) DEFAULT NULL,
  `cancelled_action` varchar(765) DEFAULT NULL,
  `open_action` varchar(765) DEFAULT NULL,
  `rejected_action` varchar(765) DEFAULT NULL,
  `add_field_detail_data_type1` varchar(255) DEFAULT NULL,
  `add_field_detail_data_type10` varchar(255) DEFAULT NULL,
  `add_field_detail_data_type2` varchar(255) DEFAULT NULL,
  `add_field_detail_data_type3` varchar(255) DEFAULT NULL,
  `add_field_detail_data_type4` varchar(255) DEFAULT NULL,
  `add_field_detail_data_type5` varchar(255) DEFAULT NULL,
  `add_field_detail_data_type6` varchar(255) DEFAULT NULL,
  `add_field_detail_data_type7` varchar(255) DEFAULT NULL,
  `add_field_detail_data_type8` varchar(255) DEFAULT NULL,
  `add_field_detail_data_type9` varchar(255) DEFAULT NULL,
  `add_field_detail_label1` varchar(255) DEFAULT NULL,
  `add_field_detail_label10` varchar(255) DEFAULT NULL,
  `add_field_detail_label2` varchar(255) DEFAULT NULL,
  `add_field_detail_label3` varchar(255) DEFAULT NULL,
  `add_field_detail_label4` varchar(255) DEFAULT NULL,
  `add_field_detail_label5` varchar(255) DEFAULT NULL,
  `add_field_detail_label6` varchar(255) DEFAULT NULL,
  `add_field_detail_label7` varchar(255) DEFAULT NULL,
  `add_field_detail_label8` varchar(255) DEFAULT NULL,
  `add_field_detail_label9` varchar(255) DEFAULT NULL,
  `add_field_head_data_type1` varchar(255) DEFAULT NULL,
  `add_field_head_data_type10` varchar(255) DEFAULT NULL,
  `add_field_head_data_type2` varchar(255) DEFAULT NULL,
  `add_field_head_data_type3` varchar(255) DEFAULT NULL,
  `add_field_head_data_type4` varchar(255) DEFAULT NULL,
  `add_field_head_data_type5` varchar(255) DEFAULT NULL,
  `add_field_head_data_type6` varchar(255) DEFAULT NULL,
  `add_field_head_data_type7` varchar(255) DEFAULT NULL,
  `add_field_head_data_type8` varchar(255) DEFAULT NULL,
  `add_field_head_data_type9` varchar(255) DEFAULT NULL,
  `add_field_head_label1` varchar(255) DEFAULT NULL,
  `add_field_head_label10` varchar(255) DEFAULT NULL,
  `add_field_head_label2` varchar(255) DEFAULT NULL,
  `add_field_head_label3` varchar(255) DEFAULT NULL,
  `add_field_head_label4` varchar(255) DEFAULT NULL,
  `add_field_head_label5` varchar(255) DEFAULT NULL,
  `add_field_head_label6` varchar(255) DEFAULT NULL,
  `add_field_head_label7` varchar(255) DEFAULT NULL,
  `add_field_head_label8` varchar(255) DEFAULT NULL,
  `add_field_head_label9` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_group`
--

INSERT INTO `transaction_group` (`id`, `version`, `code`, `date_created`, `last_updated`, `name`, `transaction_type_id`, `width`, `transaction_group_numbering_id`, `trigger_id`, `alert_when_not_created`, `trigger_group_access_id`, `approver1_id`, `approver2_id`, `creator_id`, `approved1action`, `approved2action`, `created_action`, `done_action`, `approved_action`, `archived_action`, `cancelled_action`, `open_action`, `rejected_action`, `add_field_detail_data_type1`, `add_field_detail_data_type10`, `add_field_detail_data_type2`, `add_field_detail_data_type3`, `add_field_detail_data_type4`, `add_field_detail_data_type5`, `add_field_detail_data_type6`, `add_field_detail_data_type7`, `add_field_detail_data_type8`, `add_field_detail_data_type9`, `add_field_detail_label1`, `add_field_detail_label10`, `add_field_detail_label2`, `add_field_detail_label3`, `add_field_detail_label4`, `add_field_detail_label5`, `add_field_detail_label6`, `add_field_detail_label7`, `add_field_detail_label8`, `add_field_detail_label9`, `add_field_head_data_type1`, `add_field_head_data_type10`, `add_field_head_data_type2`, `add_field_head_data_type3`, `add_field_head_data_type4`, `add_field_head_data_type5`, `add_field_head_data_type6`, `add_field_head_data_type7`, `add_field_head_data_type8`, `add_field_head_data_type9`, `add_field_head_label1`, `add_field_head_label10`, `add_field_head_label2`, `add_field_head_label3`, `add_field_head_label4`, `add_field_head_label5`, `add_field_head_label6`, `add_field_head_label7`, `add_field_head_label8`, `add_field_head_label9`) VALUES
(3, 2, 'LT', '2013-07-21 11:19:48', '2014-02-13 10:19:09', 'Location Transfer', 3, 3, 1, NULL, b'0', NULL, 2, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 'SR', '2013-07-21 11:20:08', '2013-10-09 05:37:28', 'Sales Return', 2, 4, 1, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 'RC3', '2013-08-27 11:31:21', '2014-08-12 15:42:57', 'Receiving 3', 4, 4, 1, 11, b'0', NULL, 4, NULL, 4, NULL, NULL, NULL, 'doneActionReceiving', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 2, 'SO', '2013-09-23 17:11:33', '2013-10-10 21:12:13', 'Sales Order Normal', 6, 5, 1, NULL, b'0', NULL, 4, NULL, 4, NULL, NULL, NULL, 'executeDone', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 3, 'AS1', '2013-09-24 08:18:47', '2014-02-13 10:16:18', 'Corrective Maintenance', 7, 5, 1, 15, b'1', NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 6, 'SRR-IT', '2013-09-25 05:22:12', '2013-10-10 13:47:47', 'Sales Return Request - Issue Ticket', 8, 5, 1, 15, b'0', 2, 5, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 3, 'SR2', '2013-09-27 03:19:40', '2014-08-06 12:09:22', 'Sales Return from SRR', 2, 4, 1, 9, b'1', 2, 4, NULL, 2, NULL, NULL, NULL, 'doneActionSalesReturnFromSrr', NULL, NULL, NULL, 'openActionSalesReturnFromSrr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 3, 'DN2', '2013-09-27 13:32:04', '2014-08-12 15:28:45', 'delivery notes from SR', 1, 5, 1, 4, b'1', NULL, 4, NULL, 4, NULL, NULL, NULL, 'doneActionDNFromSR', NULL, NULL, NULL, 'openActionDN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 7, 'LT-TEMP', '2013-09-27 14:44:14', '2014-03-20 11:18:02', 'temporary backup unit', 3, 4, 1, 9, b'1', 4, 4, 2, 4, NULL, NULL, NULL, 'doneActionLTTempUnit', NULL, NULL, NULL, 'openActionLocation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 4, 'LT-TEMP-RETURN', '2013-09-27 14:48:13', '2014-05-25 22:16:34', 'return temporary backup unit', 3, 4, 1, 12, b'1', 2, 4, NULL, 2, NULL, NULL, NULL, 'doneActionLTTempUnit', NULL, NULL, NULL, 'openActionLocation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 5, 'SR-BROKEN-ITEM', '2013-09-27 14:52:30', '2014-08-06 12:11:34', 'Sales Return Broken Item', 2, 4, 1, 17, b'1', 2, 4, NULL, 2, NULL, NULL, NULL, 'disableContractItem', NULL, NULL, NULL, 'openActionLocation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 1, 'IT', '2013-09-28 14:50:32', '2013-10-09 05:32:22', 'Issue Ticket', 5, 4, 1, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 1, 'AS2', '2013-10-01 08:32:05', '2013-10-09 05:36:41', 'Assignment Manual', 7, 2, 1, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 6, 'DN3', '2013-10-01 08:52:46', '2014-03-20 11:21:52', 'DN From SRR', 1, 4, 1, 9, b'1', 4, 4, 2, 4, NULL, NULL, NULL, 'addNewContractItem', NULL, NULL, NULL, 'openActionLocation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 1, 'CO', '2013-10-08 05:22:34', '2013-10-21 10:43:21', 'Contract', 9, 5, 1, NULL, b'0', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 2, 'AS3', '2013-10-01 08:32:05', '2014-02-13 10:15:11', 'Preventive Maintenance', 7, 2, 1, 18, b'0', NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 1, 'DC', '2013-10-17 14:53:02', '2013-10-31 09:50:08', 'Dummy Contract', 9, 4, 1, 15, b'0', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 0, 'SRR-AS2', '2014-01-29 17:29:31', '2014-01-29 17:29:31', 'Sales Return Request - Assignment Manual', 8, 5, 1, 16, b'0', 2, 5, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 0, 'ITP', '2015-11-11 17:13:57', '2015-11-11 17:13:57', 'Issue Ticket Problem', 10, 5, 1, NULL, b'0', NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 0, 'AS4', '2015-11-11 17:14:47', '2015-11-11 17:14:47', 'Problem Assignment', 7, 5, 1, 22, b'0', NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_group_add_detail`
--

CREATE TABLE `transaction_group_add_detail` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `data_type` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `detail_text` varchar(255) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `last_updated` datetime NOT NULL,
  `master_field` varchar(255) DEFAULT NULL,
  `master_table` varchar(255) DEFAULT NULL,
  `sequence` bigint(20) NOT NULL,
  `transaction_group_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_group_add_header`
--

CREATE TABLE `transaction_group_add_header` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `data_type` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `header_text` varchar(255) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `last_updated` datetime NOT NULL,
  `master_field` varchar(255) NOT NULL,
  `master_table` varchar(255) NOT NULL,
  `sequence` bigint(20) NOT NULL,
  `transaction_group_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_group_add_header`
--

INSERT INTO `transaction_group_add_header` (`id`, `version`, `data_type`, `date_created`, `header_text`, `is_active`, `last_updated`, `master_field`, `master_table`, `sequence`, `transaction_group_id`) VALUES
(1, 0, 'varchar', '2015-11-05 18:32:40', 'TAC Number', b'1', '2015-11-05 18:32:40', '', '', 1, 8),
(2, 0, 'varchar', '2015-11-05 18:33:02', 'TAC URL', b'1', '2015-11-05 18:33:02', '', '', 2, 8),
(3, 0, 'varchar', '2015-11-05 18:33:33', 'RMA Shipment', b'1', '2015-11-05 18:33:33', '', '', 3, 8),
(4, 1, 'varchar', '2015-11-05 00:00:00', 'Work Around', b'0', '2015-11-27 16:49:08', '', '', 4, 8),
(5, 1, 'varchar', '2015-11-05 00:00:00', 'Root Cause', b'0', '2015-11-27 16:49:00', '', '', 5, 8),
(6, 1, 'varchar', '2015-12-03 00:00:00', 'Knowledge Base URL', b'0', '2015-12-07 15:28:15', '', '', 1, 23),
(7, 1, 'varchar', '2015-12-03 00:00:00', 'Knowledge Base Number', b'0', '2015-12-07 15:28:19', '', '', 2, 23),
(8, 0, 'varchar', '2015-12-03 17:07:18', 'TAC ID', b'1', '2015-12-03 17:07:18', '', '', 3, 23),
(9, 0, 'varchar', '2015-12-03 17:07:33', 'TAC URL', b'1', '2015-12-03 17:07:33', '', '', 4, 23),
(10, 0, 'varchar', '2015-12-03 17:07:53', 'RMA Shipment', b'1', '2015-12-03 17:07:53', '', '', 5, 23);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_group_approval`
--

CREATE TABLE `transaction_group_approval` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `document_status_id` bigint(20) NOT NULL,
  `transaction_group_id` bigint(20) NOT NULL,
  `user_group_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_group_destination_role`
--

CREATE TABLE `transaction_group_destination_role` (
  `transaction_group_destination_roles_id` bigint(20) DEFAULT NULL,
  `destination_role_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_group_numbering`
--

CREATE TABLE `transaction_group_numbering` (
  `id` int(11) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_group_numbering`
--

INSERT INTO `transaction_group_numbering` (`id`, `version`, `date_created`, `last_updated`, `name`, `code`) VALUES
(1, 1, '2013-07-21 11:13:31', '2013-07-21 11:14:44', 'Monthly', 'monthly'),
(2, 0, '2013-07-21 11:14:51', '2013-07-21 11:14:51', 'Yearly', 'yearly'),
(3, 0, '2013-07-21 11:14:57', '2013-07-21 11:14:57', 'Manual', 'manual');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_group_transaction_group_approval`
--

CREATE TABLE `transaction_group_transaction_group_approval` (
  `transaction_group_transaction_group_approvals_id` bigint(20) DEFAULT NULL,
  `transaction_group_approval_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_master`
--

CREATE TABLE `transaction_master` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `numbering` varchar(255) NOT NULL,
  `transfer_type_id` bigint(20) NOT NULL,
  `width` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_master`
--

INSERT INTO `transaction_master` (`id`, `version`, `code`, `date_created`, `last_updated`, `name`, `numbering`, `transfer_type_id`, `width`) VALUES
(1, 0, 'DN', '2013-07-16 05:53:55', '2013-07-16 05:53:55', 'delivery', 'monthly', 1, 5),
(2, 1, 'CV', '2013-07-16 05:54:17', '2013-07-16 05:55:13', 'canvasing delivery', 'monthly', 1, 4),
(3, 0, 'LD', '2013-07-16 05:54:36', '2013-07-16 05:54:36', 'loading', 'monthly', 2, 4),
(4, 0, 'SR', '2013-07-16 05:54:54', '2013-07-16 05:54:54', 'Sales Return', 'monthly', 3, 4),
(5, 0, 'RC1', '2013-07-16 09:14:48', '2013-07-16 09:14:48', 'receiving type1', 'monthly', 4, 5),
(6, 1, 'RC2', '2013-07-16 09:16:08', '2013-07-16 09:16:26', 'receiving type2', 'monthly', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_master_transfer`
--

CREATE TABLE `transaction_master_transfer` (
  `transaction_master_transfers_id` bigint(20) DEFAULT NULL,
  `transfer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_type`
--

CREATE TABLE `transaction_type` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `dest_warehouse_dir` int(11) NOT NULL,
  `source_warehouse_dir` int(11) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `show_partner` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_type`
--

INSERT INTO `transaction_type` (`id`, `date_created`, `description`, `last_updated`, `name`, `dest_warehouse_dir`, `source_warehouse_dir`, `domain`, `version`, `show_partner`) VALUES
(1, '2013-07-20 14:08:31', 'Delivery', '2014-08-12 15:26:41', 'delivery', 0, -1, 'Transfer', 1, b'1'),
(2, '2013-07-20 14:32:10', 'sales return', '2014-08-07 11:10:09', 'sales_return', 1, 0, 'Transfer', 1, b'1'),
(3, '2013-07-21 11:18:25', 'Location Transfer', '2013-10-09 14:28:45', 'loc_transfer', 1, -1, 'Transfer', 0, b'0'),
(4, '2013-07-21 11:18:53', 'Receive product', '2014-08-12 15:41:23', 'receiving', 1, 0, 'Transfer', 1, b'1'),
(5, '2013-09-03 09:22:38', 'issue ticket', '2013-10-04 14:20:26', 'issue_ticket', 0, 0, 'MaintenanceOrder', 0, b'0'),
(6, '2013-09-23 17:11:12', 'Sales ORder', '2013-10-02 11:43:27', 'sales_order', 0, 0, 'SalesOrder', 0, b'0'),
(7, '2013-09-24 08:18:41', 'Assignment', '2013-10-09 14:28:54', 'assignment', 0, 0, 'Assignment', 0, b'0'),
(8, '2013-09-25 08:46:22', 'Sales Return Request', '2013-10-02 11:45:00', 'sales_return_request', 0, 0, 'SalesOrder', 0, b'0'),
(9, '2013-10-08 05:22:04', 'contract transactiontype', '2013-10-08 05:22:04', 'contract', 0, 0, 'Contract', 0, b'0'),
(10, '2015-11-11 17:12:14', 'issue ticket problem', '2015-11-11 17:12:14', 'issue_ticket_problem', -1, -1, 'ProblemManagement', 0, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_type_state`
--

CREATE TABLE `transaction_type_state` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `transaction_type_id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `latitude` float NOT NULL DEFAULT '-6',
  `longitude` float NOT NULL DEFAULT '107',
  `number` varchar(45) DEFAULT NULL,
  `reff_no` varchar(255) DEFAULT NULL,
  `transfer_date` datetime DEFAULT NULL,
  `warehouse_dest_id` bigint(20) DEFAULT NULL,
  `warehouse_source_id` bigint(20) DEFAULT NULL,
  `transaction_group_id` bigint(20) NOT NULL,
  `trigger_doc` varchar(255) DEFAULT NULL,
  `duration` int(11) DEFAULT '0',
  `is_temporary` bit(1) NOT NULL,
  `partner_id` bigint(20) NOT NULL,
  `trigger_doc_class` varchar(255) DEFAULT NULL,
  `trigger_doc_id` bigint(20) DEFAULT NULL,
  `trigger_doc_no` varchar(255) DEFAULT NULL,
  `state` varchar(21) DEFAULT NULL,
  `cancel_date` datetime DEFAULT NULL,
  `cancel_notes` varchar(255) DEFAULT NULL,
  `reject_date` datetime DEFAULT NULL,
  `reject_notes` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `version` int(11) DEFAULT '0',
  `approver_id` bigint(20) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `is_checkin` bit(1) DEFAULT b'0',
  `due_date` datetime DEFAULT NULL,
  `approve_time` datetime DEFAULT NULL,
  `done_time` datetime DEFAULT NULL,
  `open_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`id`, `date_created`, `last_updated`, `latitude`, `longitude`, `number`, `reff_no`, `transfer_date`, `warehouse_dest_id`, `warehouse_source_id`, `transaction_group_id`, `trigger_doc`, `duration`, `is_temporary`, `partner_id`, `trigger_doc_class`, `trigger_doc_id`, `trigger_doc_no`, `state`, `cancel_date`, `cancel_notes`, `reject_date`, `reject_notes`, `created_by`, `version`, `approver_id`, `notes`, `is_checkin`, `due_date`, `approve_time`, `done_time`, `open_time`) VALUES
(1, '2016-02-15 15:56:22', '2016-02-15 16:49:47', -6.22, 107.32, 'DN3/1602/0001', NULL, '2016-02-15 15:56:00', NULL, 7, 17, NULL, NULL, b'0', 1, 'SalesOrder', 1, NULL, 'Done', NULL, NULL, NULL, NULL, 'asep', 5, NULL, NULL, NULL, '2016-02-15 15:56:07', '2016-02-15 15:56:53', '2016-02-15 16:49:46', '2016-02-15 15:56:47'),
(2, '2016-02-16 14:33:56', '2016-02-16 14:35:54', -6.22, 107.32, 'DN3/1602/0002', NULL, '2016-02-16 14:33:00', NULL, 7, 17, NULL, NULL, b'0', 1, 'SalesOrder', 3, NULL, 'Done', NULL, NULL, NULL, NULL, 'asep', 3, NULL, NULL, NULL, '2016-02-16 14:33:49', '2016-02-16 14:34:48', '2016-02-16 14:35:54', '2016-02-16 14:34:37'),
(3, '2016-02-16 14:38:25', '2016-02-16 14:39:03', -6.22, 107.32, 'SR2/1602/0001', NULL, '2016-02-16 14:37:44', 7, NULL, 10, NULL, NULL, b'0', 1, 'SalesOrder', 3, NULL, 'Done', NULL, NULL, NULL, NULL, 'Engineer2', 2, 250, NULL, NULL, NULL, NULL, '2016-02-16 14:39:03', '2016-02-16 14:38:31'),
(4, '2016-02-18 11:23:56', '2016-02-18 11:25:13', -6.22, 107.32, 'DN3/1602/0003', NULL, '2016-02-18 11:23:00', NULL, 7, 17, NULL, NULL, b'0', 1, 'SalesOrder', 4, NULL, 'Done', NULL, NULL, NULL, NULL, 'asep', 3, NULL, NULL, NULL, '2016-02-18 11:23:58', '2016-02-18 11:24:47', '2016-02-18 11:25:12', '2016-02-18 11:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_item`
--

CREATE TABLE `transfer_item` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `transfer_id` bigint(20) NOT NULL,
  `batch_id` bigint(20) DEFAULT NULL,
  `qty2` int(11) NOT NULL,
  `warehouse_dest_id` bigint(20) DEFAULT NULL,
  `warehouse_source_id` bigint(20) DEFAULT NULL,
  `version` bigint(20) DEFAULT '0',
  `serial_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_item`
--

INSERT INTO `transfer_item` (`id`, `date_created`, `item_id`, `last_updated`, `notes`, `qty`, `transfer_id`, `batch_id`, `qty2`, `warehouse_dest_id`, `warehouse_source_id`, `version`, `serial_number`) VALUES
(1, '2016-02-15 15:56:45', 1211, '2016-02-15 15:56:45', NULL, 1, 1, 1, 1, NULL, 7, 0, NULL),
(2, '2016-02-16 14:34:31', 1211, '2016-02-16 14:34:31', NULL, 1, 2, 2, 1, NULL, 7, 0, NULL),
(3, '2016-02-16 14:38:25', 1211, '2016-02-16 14:38:25', 'notes', 1, 3, 1, 1, 7, NULL, 0, 'RO01'),
(4, '2016-02-18 11:24:37', 1214, '2016-02-18 11:24:37', NULL, 1, 4, 4, 1, NULL, 7, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_item_item_balance`
--

CREATE TABLE `transfer_item_item_balance` (
  `transfer_item_item_balances_id` bigint(20) DEFAULT NULL,
  `item_balance_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_type`
--

CREATE TABLE `transfer_type` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_type`
--

INSERT INTO `transfer_type` (`id`, `date_created`, `description`, `last_updated`, `name`) VALUES
(1, '2013-07-16 05:52:44', 'all delivery transfer', '2013-07-16 05:52:44', 'delivery'),
(2, '2013-07-16 05:52:58', 'internal warehouse transfer', '2013-07-16 05:52:58', 'loc_transfer'),
(3, '2013-07-16 05:53:08', 'return from customer', '2013-07-16 05:53:08', 'sales_return'),
(4, '2013-07-16 09:14:05', 'receive product', '2013-07-16 09:14:05', 'receiving');

-- --------------------------------------------------------

--
-- Table structure for table `transform`
--

CREATE TABLE `transform` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `number` varchar(255) NOT NULL,
  `number_of_batch` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `qty2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transform_source_batch`
--

CREATE TABLE `transform_source_batch` (
  `id` bigint(20) NOT NULL,
  `batch_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `qty` int(11) NOT NULL,
  `qty2` int(11) NOT NULL,
  `transform_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uom`
--

CREATE TABLE `uom` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom`
--

INSERT INTO `uom` (`id`, `code`, `date_created`, `last_updated`, `name`, `version`) VALUES
(2, 'krat', '2013-09-10 00:00:00', '2013-09-10 00:00:00', 'krat', 0),
(3, 'kg', '2013-09-10 13:23:51', '2013-09-10 13:23:51', 'Kilograms', 0),
(4, 'm', '2013-09-10 13:24:00', '2013-09-10 13:24:00', 'meters', 0),
(5, 'cm', '2013-09-10 13:24:08', '2013-09-10 13:24:08', 'Centimeters', 0),
(6, 'dus', '2013-09-10 13:24:19', '2013-09-10 13:24:19', 'Duz', 0),
(7, 'unit', '2013-09-10 00:00:00', '2013-09-10 00:00:00', 'unit', 0);

-- --------------------------------------------------------

--
-- Table structure for table `update_tracker`
--

CREATE TABLE `update_tracker` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `last_updated_by` bigint(20) NOT NULL,
  `class` varchar(255) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `pack_no_level1` varchar(45) DEFAULT NULL,
  `pack_no_level2` varchar(45) DEFAULT NULL,
  `prod_date` datetime DEFAULT NULL,
  `qty` bigint(20) DEFAULT NULL,
  `qty2` bigint(20) DEFAULT NULL,
  `running_no` varchar(255) DEFAULT NULL,
  `warehouse_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `version` int(11) DEFAULT '0',
  `date_created` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `last_updated` datetime NOT NULL,
  `login` varchar(255) NOT NULL,
  `name_first` varchar(255) DEFAULT NULL,
  `name_last` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `user_group_id` bigint(20) DEFAULT NULL,
  `last_seen` datetime DEFAULT NULL,
  `latitude` float(10,7) DEFAULT NULL,
  `longitude` float(10,7) DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `as_approver` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `version`, `date_created`, `email`, `last_updated`, `login`, `name_first`, `name_last`, `password`, `status`, `user_group_id`, `last_seen`, `latitude`, `longitude`, `active`, `as_approver`) VALUES
(1, 15, '2013-07-20 00:00:00', 'daniel@vitraining.com', '2014-09-05 09:26:50', 'administrator', 'Admin', 'Amatra', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0, 1, '2014-04-29 10:02:02', -6.1894002, 106.7890015, b'1', NULL),
(120, 13, '2013-12-10 14:19:17', 'Operator@compnet.co.id', '2015-11-18 23:47:19', 'operator', 'Adam', 'Nughraha', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0, 6, '2015-11-18 23:46:24', 0.0000000, 0.0000000, b'1', NULL),
(249, 94, '2016-02-12 17:47:14', 'engineer@gmail.com', '2016-02-29 10:36:20', 'Engineer', 'Engineer', 'Dummy', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 2, '2016-02-29 10:35:52', 0.0000000, 0.0000000, b'1', b'0'),
(250, 7, '2016-02-12 17:47:50', 'supervisor@gmail.com', '2016-02-16 14:30:21', 'supervisor', 'supervisor', NULL, '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 5, '2016-02-16 14:30:21', 0.0000000, 0.0000000, b'1', b'0'),
(251, 55, '2016-02-12 22:50:31', 'engineer2@gmail.com', '2016-02-18 09:19:03', 'engineer2', 'engineer', 'dua', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0, 2, '2016-02-18 09:19:03', -6.1895361, 106.7917786, b'1', b'0'),
(252, 13, '2016-02-12 23:06:28', 'engineer3@gmail.com', '2016-02-18 08:59:23', 'Engineer3', 'engineer', '3', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0, 2, '2016-02-18 08:59:23', -6.1895332, 106.7917786, b'1', b'0'),
(253, 0, '2016-02-15 15:53:51', 'asev.setiawan@smanggin.com', '2016-02-15 15:53:51', 'Asep', 'Asep', 'Setiawan', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0, 4, NULL, NULL, NULL, b'1', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `user_domain_access`
--

CREATE TABLE `user_domain_access` (
  `id` bigint(20) NOT NULL,
  `access` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `domain` varchar(255) NOT NULL,
  `last_updated` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `val` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_employee`
--

CREATE TABLE `user_employee` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `last_updated` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `user_group_name` varchar(100) DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `date_created`, `last_updated`, `user_group_name`, `code`, `version`) VALUES
(1, '2013-07-20 09:19:39', '2013-07-20 09:19:46', 'Administrator', 'administrator', 0),
(2, '2013-07-20 12:30:00', '2013-07-20 12:30:00', 'Engineer', 'engineer', 0),
(3, '2013-07-30 14:20:37', '2013-07-30 14:20:37', 'Salesman', 'salesman', 0),
(4, '2013-07-30 14:20:43', '2015-02-23 21:25:47', 'Logistic', 'logistic', 2),
(5, '2013-07-30 14:20:52', '2015-05-21 14:06:29', 'Supervisor', 'supervisor', 1),
(6, '2013-07-30 14:21:05', '2013-11-28 13:56:34', 'Call Center', 'operator', 0),
(7, '2013-10-13 11:56:27', '2013-10-13 11:56:27', 'Driver', 'driver', 0),
(8, '2013-11-28 13:55:52', '2014-08-27 08:35:50', 'Pre Sales', 'administrator', 1),
(9, '2013-11-28 13:57:59', '2014-08-27 09:52:11', 'Legal', 'administrator', 2),
(10, '2013-11-28 15:35:44', '2015-05-21 14:08:10', 'Customer Engineer', 'supervisor', 8),
(11, '2014-03-05 00:00:00', '2014-03-05 00:00:00', 'Manager', 'supervisor', 0),
(12, '2014-05-09 15:13:29', '2014-05-09 15:13:29', 'Direktur', 'supervisor', 0),
(13, '2014-05-09 15:19:17', '2014-05-09 15:19:17', 'General Manager', 'supervisor', 0),
(15, '2014-06-06 20:30:47', '2014-06-06 20:30:47', 'Sekretaris', 'supervisor', 0),
(16, '2014-11-11 15:12:44', '2014-11-11 15:12:44', 'HR', 'engineer', 0),
(17, '2015-01-15 13:44:20', '2015-01-15 13:44:20', 'Admin', 'administrator', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_group_code`
--

CREATE TABLE `user_group_code` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_group_code`
--

INSERT INTO `user_group_code` (`id`, `date_created`, `last_updated`, `name`) VALUES
(1, '2014-01-22 16:25:42', '2014-01-22 16:25:42', 'engineer'),
(2, '2014-01-22 16:25:53', '2014-01-22 16:25:53', 'administrator'),
(3, '2014-01-22 16:25:59', '2014-01-22 16:25:59', 'supervisor'),
(4, '2014-01-22 16:26:07', '2014-01-22 16:26:07', 'operator'),
(5, '2015-02-23 00:00:00', '2015-02-23 00:00:00', 'Logistic');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `id` bigint(20) NOT NULL,
  `as_storage` bit(1) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  `is_mobile` bit(1) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `vehicle_id` bigint(20) DEFAULT NULL,
  `warehouse_id` bigint(20) DEFAULT NULL,
  `third_party_location` bit(1) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `allow_negative` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`id`, `as_storage`, `code`, `date_created`, `employee_id`, `is_mobile`, `last_updated`, `name`, `vehicle_id`, `warehouse_id`, `third_party_location`, `version`, `allow_negative`) VALUES
(7, b'1', '001', '2016-02-12 17:43:52', 162, b'0', '2016-02-12 17:43:52', 'Gudang Utama', NULL, NULL, b'0', 0, b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_time`
--
ALTER TABLE `activity_time`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKC23DA9FDB053F86E` (`user_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKABCA3FBE26495C2` (`respondent_survey_header_id`),
  ADD KEY `FKABCA3FBEB546F130` (`survey_detail_option_id`),
  ADD KEY `FKABCA3FBE114A7003` (`survey_detail_id`);

--
-- Indexes for table `app_setting`
--
ALTER TABLE `app_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number_6` (`number`),
  ADD KEY `FK3D2B86CD946D7BE7` (`maintenance_order_id`),
  ADD KEY `FK3D2B86CDF903DBEE` (`engineer_id`),
  ADD KEY `FK3D2B86CD945C27E2` (`prev_engineer_id`),
  ADD KEY `FK3D2B86CDFBEFB173` (`contract_item_id`),
  ADD KEY `FK3D2B86CD1FD85DF1` (`transaction_group_id`),
  ADD KEY `FK3D2B86CD4BBE4209` (`assignment_type_id`),
  ADD KEY `FK3D2B86CD866CB50E` (`contract_id`),
  ADD KEY `FK3D2B86CD2D70904B` (`created_by_id`),
  ADD KEY `FK3D2B86CDE30CE334` (`approver_id`),
  ADD KEY `FK3D2B86CDECA345A6` (`partner_id`),
  ADD KEY `number` (`number`),
  ADD KEY `number_2` (`number`),
  ADD KEY `number_3` (`number`),
  ADD KEY `number_4` (`number`),
  ADD KEY `number_5` (`number`),
  ADD KEY `number_7` (`number`),
  ADD KEY `FK3D2B86CD29A94F25` (`problem_management_id`);

--
-- Indexes for table `assignment_activity_time`
--
ALTER TABLE `assignment_activity_time`
  ADD KEY `FKB7C8980BC726B953` (`assignment_activity_times_id`),
  ADD KEY `FKB7C8980BDA740FAD` (`activity_time_id`);

--
-- Indexes for table `assignment_minute_of_meeting_additional_value`
--
ALTER TABLE `assignment_minute_of_meeting_additional_value`
  ADD KEY `FKAE68A14CB0715D2E` (`minute_of_meeting_additional_value_id`),
  ADD KEY `FKAE68A14CF02E3A14` (`assignment_minute_of_meeting_additional_values_id`);

--
-- Indexes for table `assignment_type`
--
ALTER TABLE `assignment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8AF75923FB659A6E` (`transfer_id`),
  ADD KEY `FK8AF75923A1EA204D` (`file_types_id`),
  ADD KEY `FK8AF7592340D6C22E` (`assignment_id`),
  ADD KEY `FK8AF75923DC624AB5` (`sales_order_id`);

--
-- Indexes for table `audit_log`
--
ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_log_event`
--
ALTER TABLE `audit_log_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authentication_user`
--
ALTER TABLE `authentication_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- Indexes for table `bacth_item`
--
ALTER TABLE `bacth_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8D56C57A3FA2366` (`batch_id`),
  ADD KEY `FK8D56C57A3736536E` (`item_id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK592D73A3736536E` (`item_id`),
  ADD KEY `FK592D73A72A5B4C6` (`warehouse_id`),
  ADD KEY `FK592D73A30F7A0EE` (`batchbalance_id`);

--
-- Indexes for table `batch_balance`
--
ALTER TABLE `batch_balance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKDCA512D73FA2366` (`batch_id`),
  ADD KEY `FKDCA512D772A5B4C6` (`warehouse_id`),
  ADD KEY `FKDCA512D7222545F2` (`warehouse_source_id`),
  ADD KEY `FKDCA512D74893193F` (`item_balance_id`),
  ADD KEY `FKDCA512D7BFD5DF0B` (`warehouse_dest_id`),
  ADD KEY `FKDCA512D7ECA345A6` (`partner_id`);

--
-- Indexes for table `c2dm`
--
ALTER TABLE `c2dm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK745F419747376AF4` (`substitute_cert_id`),
  ADD KEY `FK745F419723C08946` (`certificate_id`),
  ADD KEY `FK745F419729BB4B8B` (`substitute_certificate_id`);

--
-- Indexes for table `certificate_certificate`
--
ALTER TABLE `certificate_certificate`
  ADD KEY `FK211A36EF23C08946` (`certificate_id`),
  ADD KEY `FK211A36EFD51A3459` (`certificate_certificates_id`),
  ADD KEY `FK211A36EFA7EB1C6B` (`certificate_substitute_certs_id`);

--
-- Indexes for table `certificate_substitute_certificate`
--
ALTER TABLE `certificate_substitute_certificate`
  ADD KEY `FK1376F11A89859391` (`substitute_certificate_id`),
  ADD KEY `FK1376F11A78E7E104` (`certificate_substitute_certificates_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `compact_transaction`
--
ALTER TABLE `compact_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compact_transaction_details`
--
ALTER TABLE `compact_transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKCD2386C5474E7A07` (`compact_transaction_id`),
  ADD KEY `FKCD2386C5D40BFBCC` (`final_status_id`);

--
-- Indexes for table `contact_role`
--
ALTER TABLE `contact_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `FKDE3511124C343FA6` (`sla_id`),
  ADD KEY `FKDE351112ECA345A6` (`partner_id`),
  ADD KEY `FKDE3511121FD85DF1` (`transaction_group_id`),
  ADD KEY `FKDE351112EC263405` (`salesname_id`),
  ADD KEY `FKDE3511126C0BE0AE` (`currency_id`);

--
-- Indexes for table `contract_contract_internal_cc`
--
ALTER TABLE `contract_contract_internal_cc`
  ADD KEY `FK96BA0282D2446F8F` (`contract_contract_internal_ccs_id`),
  ADD KEY `FK96BA0282B2722668` (`contract_internal_cc_id`);

--
-- Indexes for table `contract_internal_cc`
--
ALTER TABLE `contract_internal_cc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKE403975B053F86E` (`user_id`),
  ADD KEY `FKE403975866CB50E` (`contract_id`);

--
-- Indexes for table `contract_item`
--
ALTER TABLE `contract_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKE170FE204C343FA6` (`sla_id`),
  ADD KEY `FKE170FE203736536E` (`item_id`),
  ADD KEY `FKE170FE20866CB50E` (`contract_id`),
  ADD KEY `FKE170FE20B9040E2E` (`location_id`),
  ADD KEY `FKE170FE20ECA345A6` (`partner_id`),
  ADD KEY `FKE170FE2078E1C2D0` (`customer_id`),
  ADD KEY `FKE170FE20347A4A77` (`parent_id`);

--
-- Indexes for table `contract_partner`
--
ALTER TABLE `contract_partner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2EB0629BC96B1B28` (`contract_partners_id`),
  ADD KEY `FK2EB0629BECA345A6` (`partner_id`),
  ADD KEY `FK2EB0629B866CB50E` (`contract_id`);

--
-- Indexes for table `contract_partner_contact`
--
ALTER TABLE `contract_partner_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3BE4627C1AEA4289` (`contract_partner_contacts_id`),
  ADD KEY `FK3BE4627C6999E93D` (`partner_contact_id`),
  ADD KEY `FK3BE4627C866CB50E` (`contract_id`),
  ADD KEY `FK3BE4627CB9040E2E` (`location_id`);

--
-- Indexes for table `contract_summary_list`
--
ALTER TABLE `contract_summary_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2301BFA4866CB50E` (`contract_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK24217FDE9AA07AD9` (`price_list_id`);

--
-- Indexes for table `customer_contact`
--
ALTER TABLE `customer_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKBED18CBFE14AB18E` (`customer_id`);

--
-- Indexes for table `customer_contact_minute_of_meeting_attendee`
--
ALTER TABLE `customer_contact_minute_of_meeting_attendee`
  ADD KEY `FK8A51F07B4BFDF6B0` (`customer_contact_minute_of_meeting_attendees_id`),
  ADD KEY `FK8A51F07B18564D55` (`minute_of_meeting_attendee_id`);

--
-- Indexes for table `customer_location`
--
ALTER TABLE `customer_location`
  ADD KEY `FKAE824AF68F7CCCF` (`customer_locations_id`),
  ADD KEY `FKAE824AF6B9040E2E` (`location_id`);

--
-- Indexes for table `customer_minute_of_meeting`
--
ALTER TABLE `customer_minute_of_meeting`
  ADD KEY `FK653580BDC006BBB8` (`minute_of_meeting_id`),
  ADD KEY `FK653580BD23FCC716` (`customer_minute_of_meetings_id`);

--
-- Indexes for table `customer_schedule_visit`
--
ALTER TABLE `customer_schedule_visit`
  ADD KEY `FK64062C2435365788` (`customer_schedule_visit_id`),
  ADD KEY `FK64062C24B89B8E17` (`schedule_visit_id`);

--
-- Indexes for table `customer_sla`
--
ALTER TABLE `customer_sla`
  ADD KEY `FK35AF4D474C343FA6` (`sla_id`),
  ADD KEY `FK35AF4D4752493EA0` (`customer_slas_id`);

--
-- Indexes for table `databasechangeloglock`
--
ALTER TABLE `databasechangeloglock`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK31151BF4B9040E2E` (`location_id`),
  ADD KEY `FK31151BF4DC624AB5` (`sales_order_id`);

--
-- Indexes for table `delivery_item`
--
ALTER TABLE `delivery_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKECAE707E1F5F31CE` (`delivery_id`),
  ADD KEY `FKECAE707E3736536E` (`item_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination_role`
--
ALTER TABLE `destination_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK47D84E071FD85DF1` (`transaction_group_id`),
  ADD KEY `FK47D84E07F13F5C07` (`contact_role_id`);

--
-- Indexes for table `document_status`
--
ALTER TABLE `document_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4722E6AE349B80E` (`department_id`),
  ADD KEY `FK4722E6AEB053F86E` (`user_id`),
  ADD KEY `FK4722E6AE84A339AC` (`super_ordinate_id`);

--
-- Indexes for table `encrypted_data`
--
ALTER TABLE `encrypted_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engineer`
--
ALTER TABLE `engineer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6C827E6FA4677F8E` (`employee_id`);

--
-- Indexes for table `engineer_certificate`
--
ALTER TABLE `engineer_certificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKF0D0EFC723C08946` (`certificate_id`),
  ADD KEY `FKF0D0EFC7F903DBEE` (`engineer_id`);

--
-- Indexes for table `engineer_expertise`
--
ALTER TABLE `engineer_expertise`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK847C41E21FCA06` (`expertise_id`),
  ADD KEY `FK847C41F903DBEE` (`engineer_id`);

--
-- Indexes for table `engineer_level`
--
ALTER TABLE `engineer_level`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `engineer_maintenance_order`
--
ALTER TABLE `engineer_maintenance_order`
  ADD KEY `FKD3534D52C6E93FBC` (`engineer_maintenance_orders_id`),
  ADD KEY `FKD3534D52946D7BE7` (`maintenance_order_id`);

--
-- Indexes for table `entity`
--
ALTER TABLE `entity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entity_user`
--
ALTER TABLE `entity_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4C65B6A78F4E8C6E` (`entity_id`),
  ADD KEY `FK4C65B6A7B053F86E` (`user_id`);

--
-- Indexes for table `escalate`
--
ALTER TABLE `escalate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6DBC9232B053F86E` (`user_id`),
  ADD KEY `FK6DBC9232C57F197` (`sla_type_id`),
  ADD KEY `FK6DBC92324C343FA6` (`sla_id`);

--
-- Indexes for table `escalate_escalation_response_time_target`
--
ALTER TABLE `escalate_escalation_response_time_target`
  ADD KEY `FK20DFF1A2411ECB9E` (`escalate_escalation_response_time_target_id`),
  ADD KEY `FK20DFF1A24CA7CF93` (`escalation_response_time_target_id`);

--
-- Indexes for table `escalate_escalation_solving_time_target`
--
ALTER TABLE `escalate_escalation_solving_time_target`
  ADD KEY `FK23A633C3C91F77D5` (`escalation_solving_time_target_id`),
  ADD KEY `FK23A633C31EA849DD` (`escalate_escalation_solving_time_target_id`);

--
-- Indexes for table `escalation_onsite_response_time`
--
ALTER TABLE `escalation_onsite_response_time`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKA0CD649C4C343FA6` (`sla_id`),
  ADD KEY `FKA0CD649C6999E93D` (`partner_contact_id`),
  ADD KEY `FKA0CD649CB053F86E` (`user_id`),
  ADD KEY `FKA0CD649CF11613CE` (`priority_id`);

--
-- Indexes for table `escalation_onsite_response_time_target`
--
ALTER TABLE `escalation_onsite_response_time_target`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKFE3FE2944C343FA6` (`sla_id`),
  ADD KEY `FKFE3FE294F11613CE` (`priority_id`),
  ADD KEY `FKFE3FE2946999E93D` (`partner_contact_id`),
  ADD KEY `FKFE3FE294B053F86E` (`user_id`);

--
-- Indexes for table `escalation_response_time_target`
--
ALTER TABLE `escalation_response_time_target`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7BE0F3AF6999E93D` (`partner_contact_id`),
  ADD KEY `FK7BE0F3AFB053F86E` (`user_id`),
  ADD KEY `FK7BE0F3AF4C343FA6` (`sla_id`),
  ADD KEY `FK7BE0F3AFF11613CE` (`priority_id`);

--
-- Indexes for table `escalation_solving_time_target`
--
ALTER TABLE `escalation_solving_time_target`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK68A63C166999E93D` (`partner_contact_id`),
  ADD KEY `FK68A63C16B053F86E` (`user_id`),
  ADD KEY `FK68A63C164C343FA6` (`sla_id`),
  ADD KEY `FK68A63C16F11613CE` (`priority_id`);

--
-- Indexes for table `expertise`
--
ALTER TABLE `expertise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_types`
--
ALTER TABLE `file_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_module`
--
ALTER TABLE `group_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKE9AF302C6C9D93CE` (`module_id`),
  ADD KEY `FKE9AF302CE669702F` (`user_group_id`);

--
-- Indexes for table `incident_to_problem`
--
ALTER TABLE `incident_to_problem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `maintenance_order_id` (`maintenance_order_id`),
  ADD KEY `FK6D060668E30CE334` (`approver_id`),
  ADD KEY `FK6D060668946D7BE7` (`maintenance_order_id`),
  ADD KEY `FK6D060668F903DBEE` (`engineer_id`);

--
-- Indexes for table `interval_visit`
--
ALTER TABLE `interval_visit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_type`
--
ALTER TABLE `issue_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK317B13E849B095` (`item_type_id`),
  ADD KEY `FK317B136CE9139F` (`item_lot_id`),
  ADD KEY `FK317B137292B3DA` (`uom2_id`),
  ADD KEY `FK317B1372923F7B` (`uom1_id`),
  ADD KEY `FK317B1366AB4F9F` (`item_group_id`),
  ADD KEY `FK317B1346B2D29F` (`item_brand_id`),
  ADD KEY `FK317B13718740FF` (`item_class_id`);

--
-- Indexes for table `item_balance`
--
ALTER TABLE `item_balance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK99F2CDB03736536E` (`item_id`),
  ADD KEY `FK99F2CDB072A5B4C6` (`warehouse_id`),
  ADD KEY `FK99F2CDB078E201A5` (`transfer_item_id`),
  ADD KEY `FK99F2CDB0222545F2` (`warehouse_source_id`),
  ADD KEY `FK99F2CDB0BFD5DF0B` (`warehouse_dest_id`),
  ADD KEY `FK99F2CDB0ECA345A6` (`partner_id`);

--
-- Indexes for table `item_brand`
--
ALTER TABLE `item_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8AB64F5B46B2D29F` (`item_brand_id`);

--
-- Indexes for table `item_class`
--
ALTER TABLE `item_class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8AC1AD4C718740FF` (`item_class_id`);

--
-- Indexes for table `item_contract`
--
ALTER TABLE `item_contract`
  ADD KEY `FKF5568CBEE8829A0A` (`item_slas_id`),
  ADD KEY `FKF5568CBE866CB50E` (`contract_id`);

--
-- Indexes for table `item_group`
--
ALTER TABLE `item_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8AFCFA5366AB4F9F` (`item_group_id`);

--
-- Indexes for table `item_lot`
--
ALTER TABLE `item_lot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_type`
--
ALTER TABLE `item_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knowledge_base`
--
ALTER TABLE `knowledge_base`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8CAAF5F266DFBC79` (`issue_type_id`),
  ADD KEY `FK8CAAF5F22D70904B` (`created_by_id`);

--
-- Indexes for table `knowledge_tag`
--
ALTER TABLE `knowledge_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK489E859AA75DAE3` (`knowledge_base_id`),
  ADD KEY `FK489E8594D50D266` (`tag_id`);

--
-- Indexes for table `knowlege_base`
--
ALTER TABLE `knowlege_base`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9F7F73CE66DFBC79` (`issue_type_id`);

--
-- Indexes for table `loading`
--
ALTER TABLE `loading`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loading_delivery`
--
ALTER TABLE `loading_delivery`
  ADD KEY `FK820D0F9768BCD54D` (`loading_deliveries_id`),
  ADD KEY `FK820D0F971F5F31CE` (`delivery_id`);

--
-- Indexes for table `loading_item`
--
ALTER TABLE `loading_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5422B8363E298126` (`loading_id`),
  ADD KEY `FK5422B8363736536E` (`item_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK714F9FB5ECA345A6` (`partner_id`),
  ADD KEY `FK714F9FB51C79AA3B` (`interval_visit_id`),
  ADD KEY `FK714F9FB5FB17E93F` (`sales_person_id`);

--
-- Indexes for table `maintenance_order`
--
ALTER TABLE `maintenance_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKC831032266DFBC79` (`issue_type_id`),
  ADD KEY `FKC8310322866CB50E` (`contract_id`),
  ADD KEY `FKC8310322F11613CE` (`priority_id`),
  ADD KEY `FKC8310322FBEFB173` (`contract_item_id`),
  ADD KEY `FKC8310322945C27E2` (`prev_engineer_id`),
  ADD KEY `FKC8310322ECA345A6` (`partner_id`),
  ADD KEY `FKC83103221FD85DF1` (`transaction_group_id`),
  ADD KEY `FKC8310322E30CE334` (`approver_id`),
  ADD KEY `FKC8310322AF26E48C` (`maintenance_order_type_id`),
  ADD KEY `FKC8310322AEFB60CE` (`satisfaction_id`),
  ADD KEY `number` (`number`);

--
-- Indexes for table `maintenance_order_activity_time`
--
ALTER TABLE `maintenance_order_activity_time`
  ADD KEY `FK335F5BA08C0EBC96` (`maintenance_order_activity_times_id`),
  ADD KEY `FK335F5BA0DA740FAD` (`activity_time_id`);

--
-- Indexes for table `maintenance_order_minute_of_meeting_additional_value`
--
ALTER TABLE `maintenance_order_minute_of_meeting_additional_value`
  ADD KEY `FK958F5CD7675D4A4D` (`maintenance_order_minute_of_meeting_additional_values_id`),
  ADD KEY `FK958F5CD7B0715D2E` (`minute_of_meeting_additional_value_id`);

--
-- Indexes for table `maintenance_order_type`
--
ALTER TABLE `maintenance_order_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_additional`
--
ALTER TABLE `master_additional`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `master_additional_field`
--
ALTER TABLE `master_additional_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKEF530B1F23BC29D3` (`master_additional_id`);

--
-- Indexes for table `master_additional_value`
--
ALTER TABLE `master_additional_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKF030FB9623BC29D3` (`master_additional_id`),
  ADD KEY `FKF030FB96AE46F078` (`master_additional_field_id`);

--
-- Indexes for table `master_data_template`
--
ALTER TABLE `master_data_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `minute_of_meeting`
--
ALTER TABLE `minute_of_meeting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKD4F212DE89E95806` (`project_id`),
  ADD KEY `FKD4F212DEB053F86E` (`user_id`),
  ADD KEY `FKD4F212DEECA345A6` (`partner_id`);

--
-- Indexes for table `minute_of_meeting_additional_value`
--
ALTER TABLE `minute_of_meeting_additional_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3AE29A9AB1D51027` (`tr_group_add_header_id`);

--
-- Indexes for table `minute_of_meeting_attendee`
--
ALTER TABLE `minute_of_meeting_attendee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKC2B144FBC006BBB8` (`minute_of_meeting_id`),
  ADD KEY `FKC2B144FB6999E93D` (`partner_contact_id`);

--
-- Indexes for table `minute_of_meeting_item`
--
ALTER TABLE `minute_of_meeting_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKA9C93BD4C006BBB8` (`minute_of_meeting_id`),
  ADD KEY `FKA9C93BD43736536E` (`item_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKC04BA66C6C9D93CE` (`module_id`);

--
-- Indexes for table `mo_call`
--
ALTER TABLE `mo_call`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK48DA5ADB40D6C22E` (`assignment_id`);

--
-- Indexes for table `mo_onsite_response_time_escalated`
--
ALTER TABLE `mo_onsite_response_time_escalated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1703BBE2C356E91B` (`escalation_onsite_response_time_id`),
  ADD KEY `FK1703BBE240D6C22E` (`assignment_id`),
  ADD KEY `FK1703BBE29EDD9414` (`escalation_onsite_response_time_target_id`);

--
-- Indexes for table `mo_priority_onsite_response_time_escalated`
--
ALTER TABLE `mo_priority_onsite_response_time_escalated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKEA74F603C356E91B` (`escalation_onsite_response_time_id`),
  ADD KEY `FKEA74F603946D7BE7` (`maintenance_order_id`);

--
-- Indexes for table `mo_priority_response_time_escalated`
--
ALTER TABLE `mo_priority_response_time_escalated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1DF71AA04CA7CF93` (`escalation_response_time_target_id`),
  ADD KEY `FK1DF71AA0946D7BE7` (`maintenance_order_id`);

--
-- Indexes for table `mo_priority_solving_time_escalated`
--
ALTER TABLE `mo_priority_solving_time_escalated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKB1B5C941C91F77D5` (`escalation_solving_time_target_id`),
  ADD KEY `FKB1B5C941946D7BE7` (`maintenance_order_id`);

--
-- Indexes for table `mo_reschedule_history`
--
ALTER TABLE `mo_reschedule_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKCA63A0DC946D7BE7` (`maintenance_order_id`),
  ADD KEY `FKCA63A0DCF903DBEE` (`engineer_id`);

--
-- Indexes for table `mo_response_time_escalated`
--
ALTER TABLE `mo_response_time_escalated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1473A1A14CA7CF93` (`escalation_response_time_target_id`),
  ADD KEY `FK1473A1A140D6C22E` (`assignment_id`);

--
-- Indexes for table `mo_solving_time_escalated`
--
ALTER TABLE `mo_solving_time_escalated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3FBDE20C91F77D5` (`escalation_solving_time_target_id`),
  ADD KEY `FK3FBDE2040D6C22E` (`assignment_id`);

--
-- Indexes for table `mo_state`
--
ALTER TABLE `mo_state`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `mo_status`
--
ALTER TABLE `mo_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `non_working_day`
--
ALTER TABLE `non_working_day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `non_working_days`
--
ALTER TABLE `non_working_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK623E48D737DC38C1` (`non_working_days_engineer_id`);

--
-- Indexes for table `non_working_days_engineer`
--
ALTER TABLE `non_working_days_engineer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK86E868D747349532` (`non_working_days_id`),
  ADD KEY `FK86E868D7F903DBEE` (`engineer_id`);

--
-- Indexes for table `non_working_day_engineer`
--
ALTER TABLE `non_working_day_engineer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKE0195432FA09AA62` (`non_working_day_id`),
  ADD KEY `FKE0195432F903DBEE` (`engineer_id`);

--
-- Indexes for table `outbox`
--
ALTER TABLE `outbox`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKC410E3BD40D6C22E` (`assignment_id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reff_no` (`reff_no`),
  ADD KEY `FKD0BCDCC89AA07AD9` (`price_list_id`),
  ADD KEY `FKD0BCDCC8EC28816E` (`salesman_id`),
  ADD KEY `FKD0BCDCC8D8B6DD9D` (`partner_group_id`),
  ADD KEY `FKD0BCDCC8E392CEFD` (`partner_class_id`),
  ADD KEY `FKD0BCDCC8EE73C1D7` (`partner_industry_id`),
  ADD KEY `FKD0BCDCC82D70904B` (`created_by_id`);

--
-- Indexes for table `partner_class`
--
ALTER TABLE `partner_class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2A483341E392CEFD` (`partner_class_id`);

--
-- Indexes for table `partner_contact`
--
ALTER TABLE `partner_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKBEDE5FA9ECA345A6` (`partner_id`),
  ADD KEY `FKBEDE5FA9B9040E2E` (`location_id`),
  ADD KEY `FKBEDE5FA9AACEB126` (`role_id`);

--
-- Indexes for table `partner_group`
--
ALTER TABLE `partner_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2A838048D8B6DD9D` (`partner_group_id`);

--
-- Indexes for table `partner_industry`
--
ALTER TABLE `partner_industry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK46547775EE73C1D7` (`partner_industry_id`);

--
-- Indexes for table `partner_sales_order`
--
ALTER TABLE `partner_sales_order`
  ADD KEY `FKC8BC89647D88357F` (`partner_sales_orders_id`),
  ADD KEY `FKC8BC8964DC624AB5` (`sales_order_id`);

--
-- Indexes for table `price_list`
--
ALTER TABLE `price_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_list_item`
--
ALTER TABLE `price_list_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKCEB39A9E9AA07AD9` (`price_list_id`),
  ADD KEY `FKCEB39A9E3736536E` (`item_id`);

--
-- Indexes for table `priority`
--
ALTER TABLE `priority`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKBA8879A451F432D7` (`response_time_start_from_id`),
  ADD KEY `FKBA8879A4DBFB45FC` (`solving_time_start_from_id`),
  ADD KEY `FKBA8879A49EE87FBE` (`onsite_response_time_start_from_id`);

--
-- Indexes for table `priority_escalation_onsite_response_time`
--
ALTER TABLE `priority_escalation_onsite_response_time`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5B4E02014C343FA6` (`sla_id`),
  ADD KEY `FK5B4E0201F11613CE` (`priority_id`),
  ADD KEY `FK5B4E02016999E93D` (`partner_contact_id`),
  ADD KEY `FK5B4E0201B053F86E` (`user_id`);

--
-- Indexes for table `problem_item`
--
ALTER TABLE `problem_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKCADB3CB33736536E` (`item_id`),
  ADD KEY `FKCADB3CB329A94F25` (`problem_management_id`),
  ADD KEY `FKCADB3CB32D70904B` (`created_by_id`);

--
-- Indexes for table `problem_management`
--
ALTER TABLE `problem_management`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9F3081E3AF26E48C` (`maintenance_order_type_id`),
  ADD KEY `FK9F3081E3945C27E2` (`prev_engineer_id`),
  ADD KEY `FK9F3081E3866CB50E` (`contract_id`),
  ADD KEY `FK9F3081E3F11613CE` (`priority_id`),
  ADD KEY `FK9F3081E366DFBC79` (`issue_type_id`),
  ADD KEY `FK9F3081E3E30CE334` (`approver_id`),
  ADD KEY `FK9F3081E32D70904B` (`created_by_id`),
  ADD KEY `FK9F3081E3ECA345A6` (`partner_id`),
  ADD KEY `FK9F3081E3AEFB60CE` (`satisfaction_id`),
  ADD KEY `FK9F3081E3FBEFB173` (`contract_item_id`);

--
-- Indexes for table `problem_management_item`
--
ALTER TABLE `problem_management_item`
  ADD KEY `FK8C067EF8A4D1D99` (`problem_management_item_id`),
  ADD KEY `FK8C067EF3736536E` (`item_id`);

--
-- Indexes for table `problem_management_maintenance_order`
--
ALTER TABLE `problem_management_maintenance_order`
  ADD KEY `FK26DADBC6946D7BE7` (`maintenance_order_id`),
  ADD KEY `FK26DADBC62A1A157A` (`problem_management_incident_id`);

--
-- Indexes for table `problem_management_minute_of_meeting_additional_value`
--
ALTER TABLE `problem_management_minute_of_meeting_additional_value`
  ADD KEY `FKE7989E76B0715D2E` (`minute_of_meeting_additional_value_id`),
  ADD KEY `FKE7989E76309AFA0B` (`problem_management_minute_of_meeting_additional_values_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `reff`
--
ALTER TABLE `reff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK355A3329A94F25` (`problem_management_id`),
  ADD KEY `FK355A336C8B9C37` (`incident_id`);

--
-- Indexes for table `respondent`
--
ALTER TABLE `respondent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `respondent_survey_header`
--
ALTER TABLE `respondent_survey_header`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKD0DC9EC9BCF15D8E` (`respondent_id`),
  ADD KEY `FKD0DC9EC980F97683` (`survey_header_id`);

--
-- Indexes for table `respondent_survey_header_answer`
--
ALTER TABLE `respondent_survey_header_answer`
  ADD KEY `FK965C19F419903A8E` (`answer_id`),
  ADD KEY `FK965C19F4FEDCDBCC` (`respondent_survey_header_answers_id`);

--
-- Indexes for table `s`
--
ALTER TABLE `s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKABE00DDEC4F89003` (`transaction_type_id`),
  ADD KEY `FKABE00DDE22AECFD7` (`trigger_id`),
  ADD KEY `FKABE00DDE8E440AEF` (`trigger_group_access_id`),
  ADD KEY `FKABE00DDED9AA47ED` (`approver2_id`),
  ADD KEY `FKABE00DDE176E916E` (`creator_id`),
  ADD KEY `FKABE00DDED9A9D38E` (`approver1_id`);

--
-- Indexes for table `sales_group`
--
ALTER TABLE `sales_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_group_detail`
--
ALTER TABLE `sales_group_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4E0ED664B08E3115` (`sales_group_id`),
  ADD KEY `FK4E0ED66450C5BB1C` (`team_leader_id`),
  ADD KEY `FK4E0ED664FB17E93F` (`sales_person_id`);

--
-- Indexes for table `sales_group_scope`
--
ALTER TABLE `sales_group_scope`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKFB14F1E1B08E3115` (`sales_group_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`),
  ADD KEY `FK67203A5BB9040E2E` (`location_id`),
  ADD KEY `FK67203A5B89E95806` (`project_id`),
  ADD KEY `FK67203A5B1FD85DF1` (`transaction_group_id`),
  ADD KEY `FK67203A5BECA345A6` (`partner_id`),
  ADD KEY `FK67203A5BA917FDAA` (`truck_id`),
  ADD KEY `FK67203A5BE30CE334` (`approver_id`);

--
-- Indexes for table `sales_order_item`
--
ALTER TABLE `sales_order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKA6A93A773736536E` (`item_id`),
  ADD KEY `FKA6A93A77DC624AB5` (`sales_order_id`);

--
-- Indexes for table `sales_order_minute_of_meeting_additional_value`
--
ALTER TABLE `sales_order_minute_of_meeting_additional_value`
  ADD KEY `FK4F7052FEA622519B` (`sales_order_minute_of_meeting_additional_values_id`),
  ADD KEY `FK4F7052FEB0715D2E` (`minute_of_meeting_additional_value_id`);

--
-- Indexes for table `sales_order_transfer`
--
ALTER TABLE `sales_order_transfer`
  ADD KEY `FK685A254FFB659A6E` (`transfer_id`),
  ADD KEY `FK685A254FB648936C` (`sales_order_transfers_id`);

--
-- Indexes for table `sales_person`
--
ALTER TABLE `sales_person`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7DEB49E8E269C85F` (`sales_type_id`),
  ADD KEY `FK7DEB49E8A4677F8E` (`employee_id`);

--
-- Indexes for table `sales_return`
--
ALTER TABLE `sales_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_return_item`
--
ALTER TABLE `sales_return_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK60D22A0F946BD75F` (`sales_return_id`),
  ADD KEY `FK60D22A0F3736536E` (`item_id`);

--
-- Indexes for table `sales_type`
--
ALTER TABLE `sales_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `satisfaction`
--
ALTER TABLE `satisfaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_visit`
--
ALTER TABLE `schedule_visit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1C4AB5A3B9040E2E` (`location_id`),
  ADD KEY `FK1C4AB5A3ECA345A6` (`partner_id`),
  ADD KEY `FK1C4AB5A3946D7BE7` (`maintenance_order_id`),
  ADD KEY `FK1C4AB5A3A4677F8E` (`employee_id`);

--
-- Indexes for table `sent`
--
ALTER TABLE `sent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK35CF9840D6C22E` (`assignment_id`);

--
-- Indexes for table `service_days`
--
ALTER TABLE `service_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sla`
--
ALTER TABLE `sla`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1BD28BB9D211` (`service_days_id`);

--
-- Indexes for table `sla_escalation_response_time_target`
--
ALTER TABLE `sla_escalation_response_time_target`
  ADD KEY `FKB14BC4986834ED13` (`sla_escalation_response_time_targets_id`),
  ADD KEY `FKB14BC4984CA7CF93` (`escalation_response_time_target_id`);

--
-- Indexes for table `sla_escalation_solving_time_target`
--
ALTER TABLE `sla_escalation_solving_time_target`
  ADD KEY `FK51992A0DC91F77D5` (`escalation_solving_time_target_id`),
  ADD KEY `FK51992A0DAFB89008` (`sla_escalation_solving_time_targets_id`);

--
-- Indexes for table `sla_supplier`
--
ALTER TABLE `sla_supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK775DBB034C343FA6` (`sla_id`),
  ADD KEY `FK775DBB03ECA345A6` (`partner_id`),
  ADD KEY `FK775DBB03BB9D211` (`service_days_id`);

--
-- Indexes for table `sla_supplier_contact`
--
ALTER TABLE `sla_supplier_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4986D2E44C343FA6` (`sla_id`),
  ADD KEY `FK4986D2E4DB31B9D7` (`sla_supplier_id`);

--
-- Indexes for table `sla_type`
--
ALTER TABLE `sla_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKA63F83F1DB31B9D7` (`sla_supplier_id`);

--
-- Indexes for table `sla_type_sla`
--
ALTER TABLE `sla_type_sla`
  ADD KEY `FKB2370FDA4C343FA6` (`sla_id`),
  ADD KEY `FKB2370FDA3148A0AF` (`sla_type_slas_id`);

--
-- Indexes for table `start_from`
--
ALTER TABLE `start_from`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `substitute_certificate`
--
ALTER TABLE `substitute_certificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK701C2D7293EBAA83` (`certificate1_id`),
  ADD KEY `FK701C2D7293EC1EE2` (`certificate2_id`),
  ADD KEY `FK701C2D7223C08946` (`certificate_id`),
  ADD KEY `FK701C2D725BF073A5` (`certificate_sub_id`);

--
-- Indexes for table `survey_detail`
--
ALTER TABLE `survey_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7B0654D680F97683` (`survey_header_id`);

--
-- Indexes for table `survey_detail_answer`
--
ALTER TABLE `survey_detail_answer`
  ADD KEY `FK3868EB4719903A8E` (`answer_id`),
  ADD KEY `FK3868EB474398330D` (`survey_detail_answers_id`);

--
-- Indexes for table `survey_detail_option`
--
ALTER TABLE `survey_detail_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK506933FE114A7003` (`survey_detail_id`);

--
-- Indexes for table `survey_detail_option_answer`
--
ALTER TABLE `survey_detail_option_answer`
  ADD KEY `FK520C2F1F19903A8E` (`answer_id`),
  ADD KEY `FK520C2F1F36F35C3A` (`survey_detail_option_answers_id`);

--
-- Indexes for table `survey_header`
--
ALTER TABLE `survey_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical_visit`
--
ALTER TABLE `technical_visit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9DE35E9B9040E2E` (`location_id`),
  ADD KEY `FK9DE35E9946D7BE7` (`maintenance_order_id`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK697F14BA0C63587` (`person_id`);

--
-- Indexes for table `transaction_group`
--
ALTER TABLE `transaction_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_group_add_detail`
--
ALTER TABLE `transaction_group_add_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_group_add_header`
--
ALTER TABLE `transaction_group_add_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_group_approval`
--
ALTER TABLE `transaction_group_approval`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8E9943841FD85DF1` (`transaction_group_id`),
  ADD KEY `FK8E994384E669702F` (`user_group_id`);

--
-- Indexes for table `transaction_group_destination_role`
--
ALTER TABLE `transaction_group_destination_role`
  ADD KEY `FKA5FF5A485857DD84` (`transaction_group_destination_roles_id`),
  ADD KEY `FKA5FF5A48CD84D0E3` (`destination_role_id`);

--
-- Indexes for table `transaction_group_numbering`
--
ALTER TABLE `transaction_group_numbering`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_group_transaction_group_approval`
--
ALTER TABLE `transaction_group_transaction_group_approval`
  ADD KEY `FK2E72B2854ABACF41` (`transaction_group_transaction_group_approvals_id`),
  ADD KEY `FK2E72B285A944A3EE` (`transaction_group_approval_id`);

--
-- Indexes for table `transaction_master`
--
ALTER TABLE `transaction_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKD970FEE3C7EB3C45` (`transfer_type_id`);

--
-- Indexes for table `transaction_master_transfer`
--
ALTER TABLE `transaction_master_transfer`
  ADD KEY `FK91A9F9C7FB659A6E` (`transfer_id`),
  ADD KEY `FK91A9F9C7BA3B737A` (`transaction_master_transfers_id`);

--
-- Indexes for table `transaction_type`
--
ALTER TABLE `transaction_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_type_state`
--
ALTER TABLE `transaction_type_state`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKE2938F4DC4F89003` (`transaction_type_id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`),
  ADD KEY `FK4C58B7EB222545F2` (`warehouse_source_id`),
  ADD KEY `FK4C58B7EBBFD5DF0B` (`warehouse_dest_id`),
  ADD KEY `FK4C58B7EB1FD85DF1` (`transaction_group_id`),
  ADD KEY `FK4C58B7EBECA345A6` (`partner_id`),
  ADD KEY `FK4C58B7EBE30CE334` (`approver_id`);

--
-- Indexes for table `transfer_item`
--
ALTER TABLE `transfer_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK87F0B6E7FB659A6E` (`transfer_id`),
  ADD KEY `FK87F0B6E73736536E` (`item_id`),
  ADD KEY `FK87F0B6E73FA2366` (`batch_id`),
  ADD KEY `FK87F0B6E7222545F2` (`warehouse_source_id`),
  ADD KEY `FK87F0B6E7BFD5DF0B` (`warehouse_dest_id`);

--
-- Indexes for table `transfer_item_item_balance`
--
ALTER TABLE `transfer_item_item_balance`
  ADD KEY `FK771A3008F2D4A8A1` (`transfer_item_item_balances_id`),
  ADD KEY `FK771A30084893193F` (`item_balance_id`);

--
-- Indexes for table `transfer_type`
--
ALTER TABLE `transfer_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transform`
--
ALTER TABLE `transform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transform_source_batch`
--
ALTER TABLE `transform_source_batch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK811D0093FA2366` (`batch_id`),
  ADD KEY `FK811D00982648826` (`transform_id`);

--
-- Indexes for table `uom`
--
ALTER TABLE `uom`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `update_tracker`
--
ALTER TABLE `update_tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7CF3DDC23736536E` (`item_id`),
  ADD KEY `FK7CF3DDC272A5B4C6` (`warehouse_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK36EBCBE669702F` (`user_group_id`);

--
-- Indexes for table `user_domain_access`
--
ALTER TABLE `user_domain_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1C5E77CBB053F86E` (`user_id`);

--
-- Indexes for table `user_employee`
--
ALTER TABLE `user_employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4A2640A2B053F86E` (`user_id`),
  ADD KEY `FK4A2640A2A4677F8E` (`employee_id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group_code`
--
ALTER TABLE `user_group_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK88EF3AC372A5B4C6` (`warehouse_id`),
  ADD KEY `FK88EF3AC3D3FB7B26` (`vehicle_id`),
  ADD KEY `FK88EF3AC3A4677F8E` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_time`
--
ALTER TABLE `activity_time`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111045;
--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `app_setting`
--
ALTER TABLE `app_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15217;
--
-- AUTO_INCREMENT for table `assignment_type`
--
ALTER TABLE `assignment_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142705;
--
-- AUTO_INCREMENT for table `audit_log_event`
--
ALTER TABLE `audit_log_event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `authentication_user`
--
ALTER TABLE `authentication_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bacth_item`
--
ALTER TABLE `bacth_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `batch_balance`
--
ALTER TABLE `batch_balance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `c2dm`
--
ALTER TABLE `c2dm`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;
--
-- AUTO_INCREMENT for table `compact_transaction`
--
ALTER TABLE `compact_transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `compact_transaction_details`
--
ALTER TABLE `compact_transaction_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_role`
--
ALTER TABLE `contact_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1502;
--
-- AUTO_INCREMENT for table `contract_internal_cc`
--
ALTER TABLE `contract_internal_cc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contract_item`
--
ALTER TABLE `contract_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21536;
--
-- AUTO_INCREMENT for table `contract_partner`
--
ALTER TABLE `contract_partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contract_partner_contact`
--
ALTER TABLE `contract_partner_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=585;
--
-- AUTO_INCREMENT for table `contract_summary_list`
--
ALTER TABLE `contract_summary_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_contact`
--
ALTER TABLE `customer_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `delivery_item`
--
ALTER TABLE `delivery_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `destination_role`
--
ALTER TABLE `destination_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `document_status`
--
ALTER TABLE `document_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;
--
-- AUTO_INCREMENT for table `engineer`
--
ALTER TABLE `engineer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;
--
-- AUTO_INCREMENT for table `engineer_certificate`
--
ALTER TABLE `engineer_certificate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `engineer_expertise`
--
ALTER TABLE `engineer_expertise`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `engineer_level`
--
ALTER TABLE `engineer_level`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `entity`
--
ALTER TABLE `entity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `entity_user`
--
ALTER TABLE `entity_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `escalate`
--
ALTER TABLE `escalate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `escalation_onsite_response_time`
--
ALTER TABLE `escalation_onsite_response_time`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `escalation_onsite_response_time_target`
--
ALTER TABLE `escalation_onsite_response_time_target`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `escalation_response_time_target`
--
ALTER TABLE `escalation_response_time_target`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `escalation_solving_time_target`
--
ALTER TABLE `escalation_solving_time_target`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `expertise`
--
ALTER TABLE `expertise`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `file_types`
--
ALTER TABLE `file_types`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `group_module`
--
ALTER TABLE `group_module`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `incident_to_problem`
--
ALTER TABLE `incident_to_problem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interval_visit`
--
ALTER TABLE `interval_visit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `issue_type`
--
ALTER TABLE `issue_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1215;
--
-- AUTO_INCREMENT for table `item_balance`
--
ALTER TABLE `item_balance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `item_brand`
--
ALTER TABLE `item_brand`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_class`
--
ALTER TABLE `item_class`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_group`
--
ALTER TABLE `item_group`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_lot`
--
ALTER TABLE `item_lot`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `item_type`
--
ALTER TABLE `item_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `knowledge_base`
--
ALTER TABLE `knowledge_base`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `knowledge_tag`
--
ALTER TABLE `knowledge_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `knowlege_base`
--
ALTER TABLE `knowlege_base`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loading`
--
ALTER TABLE `loading`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loading_item`
--
ALTER TABLE `loading_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2904;
--
-- AUTO_INCREMENT for table `maintenance_order`
--
ALTER TABLE `maintenance_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3794;
--
-- AUTO_INCREMENT for table `maintenance_order_type`
--
ALTER TABLE `maintenance_order_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `master_additional`
--
ALTER TABLE `master_additional`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_additional_field`
--
ALTER TABLE `master_additional_field`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_additional_value`
--
ALTER TABLE `master_additional_value`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_data_template`
--
ALTER TABLE `master_data_template`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `minute_of_meeting`
--
ALTER TABLE `minute_of_meeting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `minute_of_meeting_additional_value`
--
ALTER TABLE `minute_of_meeting_additional_value`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=593;
--
-- AUTO_INCREMENT for table `minute_of_meeting_attendee`
--
ALTER TABLE `minute_of_meeting_attendee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `minute_of_meeting_item`
--
ALTER TABLE `minute_of_meeting_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;
--
-- AUTO_INCREMENT for table `mo_call`
--
ALTER TABLE `mo_call`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mo_onsite_response_time_escalated`
--
ALTER TABLE `mo_onsite_response_time_escalated`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mo_priority_onsite_response_time_escalated`
--
ALTER TABLE `mo_priority_onsite_response_time_escalated`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mo_priority_response_time_escalated`
--
ALTER TABLE `mo_priority_response_time_escalated`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mo_priority_solving_time_escalated`
--
ALTER TABLE `mo_priority_solving_time_escalated`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mo_reschedule_history`
--
ALTER TABLE `mo_reschedule_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mo_response_time_escalated`
--
ALTER TABLE `mo_response_time_escalated`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mo_solving_time_escalated`
--
ALTER TABLE `mo_solving_time_escalated`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mo_state`
--
ALTER TABLE `mo_state`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mo_status`
--
ALTER TABLE `mo_status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `non_working_day`
--
ALTER TABLE `non_working_day`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `non_working_days`
--
ALTER TABLE `non_working_days`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `non_working_days_engineer`
--
ALTER TABLE `non_working_days_engineer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `non_working_day_engineer`
--
ALTER TABLE `non_working_day_engineer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `outbox`
--
ALTER TABLE `outbox`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1242;
--
-- AUTO_INCREMENT for table `partner_class`
--
ALTER TABLE `partner_class`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `partner_contact`
--
ALTER TABLE `partner_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=551;
--
-- AUTO_INCREMENT for table `partner_group`
--
ALTER TABLE `partner_group`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `partner_industry`
--
ALTER TABLE `partner_industry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `price_list`
--
ALTER TABLE `price_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `price_list_item`
--
ALTER TABLE `price_list_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `priority`
--
ALTER TABLE `priority`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `priority_escalation_onsite_response_time`
--
ALTER TABLE `priority_escalation_onsite_response_time`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `problem_item`
--
ALTER TABLE `problem_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `problem_management`
--
ALTER TABLE `problem_management`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `reff`
--
ALTER TABLE `reff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `respondent`
--
ALTER TABLE `respondent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `respondent_survey_header`
--
ALTER TABLE `respondent_survey_header`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `s`
--
ALTER TABLE `s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales_group`
--
ALTER TABLE `sales_group`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales_group_detail`
--
ALTER TABLE `sales_group_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales_group_scope`
--
ALTER TABLE `sales_group_scope`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sales_order_item`
--
ALTER TABLE `sales_order_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sales_person`
--
ALTER TABLE `sales_person`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales_return`
--
ALTER TABLE `sales_return`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales_return_item`
--
ALTER TABLE `sales_return_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales_type`
--
ALTER TABLE `sales_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `satisfaction`
--
ALTER TABLE `satisfaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `schedule_visit`
--
ALTER TABLE `schedule_visit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sent`
--
ALTER TABLE `sent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `service_days`
--
ALTER TABLE `service_days`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sla`
--
ALTER TABLE `sla`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `sla_supplier`
--
ALTER TABLE `sla_supplier`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sla_supplier_contact`
--
ALTER TABLE `sla_supplier_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sla_type`
--
ALTER TABLE `sla_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `start_from`
--
ALTER TABLE `start_from`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `substitute_certificate`
--
ALTER TABLE `substitute_certificate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `survey_detail`
--
ALTER TABLE `survey_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_detail_option`
--
ALTER TABLE `survey_detail_option`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_header`
--
ALTER TABLE `survey_header`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `technical_visit`
--
ALTER TABLE `technical_visit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `transaction_group`
--
ALTER TABLE `transaction_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `transaction_group_add_detail`
--
ALTER TABLE `transaction_group_add_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaction_group_add_header`
--
ALTER TABLE `transaction_group_add_header`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `transaction_group_approval`
--
ALTER TABLE `transaction_group_approval`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaction_group_numbering`
--
ALTER TABLE `transaction_group_numbering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `transaction_master`
--
ALTER TABLE `transaction_master`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `transaction_type`
--
ALTER TABLE `transaction_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `transaction_type_state`
--
ALTER TABLE `transaction_type_state`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transfer_item`
--
ALTER TABLE `transfer_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transfer_type`
--
ALTER TABLE `transfer_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transform`
--
ALTER TABLE `transform`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transform_source_batch`
--
ALTER TABLE `transform_source_batch`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uom`
--
ALTER TABLE `uom`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `update_tracker`
--
ALTER TABLE `update_tracker`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
--
-- AUTO_INCREMENT for table `user_domain_access`
--
ALTER TABLE `user_domain_access`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_employee`
--
ALTER TABLE `user_employee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `user_group_code`
--
ALTER TABLE `user_group_code`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_time`
--
ALTER TABLE `activity_time`
  ADD CONSTRAINT `FKC23DA9FDB053F86E` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `FKABCA3FBE114A7003` FOREIGN KEY (`survey_detail_id`) REFERENCES `survey_detail` (`id`),
  ADD CONSTRAINT `FKABCA3FBE26495C2` FOREIGN KEY (`respondent_survey_header_id`) REFERENCES `respondent_survey_header` (`id`),
  ADD CONSTRAINT `FKABCA3FBEB546F130` FOREIGN KEY (`survey_detail_option_id`) REFERENCES `survey_detail_option` (`id`);

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `FK3D2B86CD29A94F25` FOREIGN KEY (`problem_management_id`) REFERENCES `problem_management` (`id`),
  ADD CONSTRAINT `FK3D2B86CD2D70904B` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK3D2B86CD4BBE4209` FOREIGN KEY (`assignment_type_id`) REFERENCES `assignment_type` (`id`),
  ADD CONSTRAINT `FK3D2B86CD866CB50E` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`id`),
  ADD CONSTRAINT `FK3D2B86CD945C27E2` FOREIGN KEY (`prev_engineer_id`) REFERENCES `engineer` (`id`),
  ADD CONSTRAINT `FK3D2B86CD946D7BE7` FOREIGN KEY (`maintenance_order_id`) REFERENCES `maintenance_order` (`id`),
  ADD CONSTRAINT `FK3D2B86CDE30CE334` FOREIGN KEY (`approver_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK3D2B86CDECA345A6` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`),
  ADD CONSTRAINT `FK3D2B86CDF903DBEE` FOREIGN KEY (`engineer_id`) REFERENCES `engineer` (`id`),
  ADD CONSTRAINT `FK3D2B86CDFBEFB173` FOREIGN KEY (`contract_item_id`) REFERENCES `contract_item` (`id`);

--
-- Constraints for table `assignment_activity_time`
--
ALTER TABLE `assignment_activity_time`
  ADD CONSTRAINT `FKB7C8980BC726B953` FOREIGN KEY (`assignment_activity_times_id`) REFERENCES `assignment` (`id`),
  ADD CONSTRAINT `FKB7C8980BDA740FAD` FOREIGN KEY (`activity_time_id`) REFERENCES `activity_time` (`id`);

--
-- Constraints for table `assignment_minute_of_meeting_additional_value`
--
ALTER TABLE `assignment_minute_of_meeting_additional_value`
  ADD CONSTRAINT `FKAE68A14CB0715D2E` FOREIGN KEY (`minute_of_meeting_additional_value_id`) REFERENCES `minute_of_meeting_additional_value` (`id`),
  ADD CONSTRAINT `FKAE68A14CF02E3A14` FOREIGN KEY (`assignment_minute_of_meeting_additional_values_id`) REFERENCES `assignment` (`id`);

--
-- Constraints for table `attachment`
--
ALTER TABLE `attachment`
  ADD CONSTRAINT `FK8AF7592340D6C22E` FOREIGN KEY (`assignment_id`) REFERENCES `assignment` (`id`),
  ADD CONSTRAINT `FK8AF75923A1EA204D` FOREIGN KEY (`file_types_id`) REFERENCES `file_types` (`id`),
  ADD CONSTRAINT `FK8AF75923DC624AB5` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_order` (`id`),
  ADD CONSTRAINT `FK8AF75923FB659A6E` FOREIGN KEY (`transfer_id`) REFERENCES `transfer` (`id`);

--
-- Constraints for table `bacth_item`
--
ALTER TABLE `bacth_item`
  ADD CONSTRAINT `FK8D56C57A3736536E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK8D56C57A3FA2366` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`id`);

--
-- Constraints for table `batch`
--
ALTER TABLE `batch`
  ADD CONSTRAINT `FK592D73A30F7A0EE` FOREIGN KEY (`batchbalance_id`) REFERENCES `batch_balance` (`id`),
  ADD CONSTRAINT `FK592D73A3736536E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK592D73A72A5B4C6` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`);

--
-- Constraints for table `batch_balance`
--
ALTER TABLE `batch_balance`
  ADD CONSTRAINT `FKDCA512D7222545F2` FOREIGN KEY (`warehouse_source_id`) REFERENCES `warehouse` (`id`),
  ADD CONSTRAINT `FKDCA512D73FA2366` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`id`),
  ADD CONSTRAINT `FKDCA512D74893193F` FOREIGN KEY (`item_balance_id`) REFERENCES `item_balance` (`id`),
  ADD CONSTRAINT `FKDCA512D772A5B4C6` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`),
  ADD CONSTRAINT `FKDCA512D7BFD5DF0B` FOREIGN KEY (`warehouse_dest_id`) REFERENCES `warehouse` (`id`),
  ADD CONSTRAINT `FKDCA512D7ECA345A6` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`);

--
-- Constraints for table `certificate`
--
ALTER TABLE `certificate`
  ADD CONSTRAINT `FK745F419723C08946` FOREIGN KEY (`certificate_id`) REFERENCES `certificate` (`id`),
  ADD CONSTRAINT `FK745F419729BB4B8B` FOREIGN KEY (`substitute_certificate_id`) REFERENCES `certificate` (`id`),
  ADD CONSTRAINT `FK745F419747376AF4` FOREIGN KEY (`substitute_cert_id`) REFERENCES `certificate` (`id`);

--
-- Constraints for table `certificate_certificate`
--
ALTER TABLE `certificate_certificate`
  ADD CONSTRAINT `FK211A36EF23C08946` FOREIGN KEY (`certificate_id`) REFERENCES `certificate` (`id`),
  ADD CONSTRAINT `FK211A36EFA7EB1C6B` FOREIGN KEY (`certificate_substitute_certs_id`) REFERENCES `certificate` (`id`),
  ADD CONSTRAINT `FK211A36EFD51A3459` FOREIGN KEY (`certificate_certificates_id`) REFERENCES `certificate` (`id`);

--
-- Constraints for table `certificate_substitute_certificate`
--
ALTER TABLE `certificate_substitute_certificate`
  ADD CONSTRAINT `FK1376F11A78E7E104` FOREIGN KEY (`certificate_substitute_certificates_id`) REFERENCES `certificate` (`id`),
  ADD CONSTRAINT `FK1376F11A89859391` FOREIGN KEY (`substitute_certificate_id`) REFERENCES `substitute_certificate` (`id`);

--
-- Constraints for table `compact_transaction_details`
--
ALTER TABLE `compact_transaction_details`
  ADD CONSTRAINT `FKCD2386C5474E7A07` FOREIGN KEY (`compact_transaction_id`) REFERENCES `compact_transaction` (`id`),
  ADD CONSTRAINT `FKCD2386C5D40BFBCC` FOREIGN KEY (`final_status_id`) REFERENCES `transaction_type_state` (`id`);

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `FKDE3511124C343FA6` FOREIGN KEY (`sla_id`) REFERENCES `sla` (`id`),
  ADD CONSTRAINT `FKDE3511126C0BE0AE` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  ADD CONSTRAINT `FKDE351112EC263405` FOREIGN KEY (`salesname_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FKDE351112ECA345A6` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`);

--
-- Constraints for table `contract_contract_internal_cc`
--
ALTER TABLE `contract_contract_internal_cc`
  ADD CONSTRAINT `FK96BA0282B2722668` FOREIGN KEY (`contract_internal_cc_id`) REFERENCES `contract_internal_cc` (`id`),
  ADD CONSTRAINT `FK96BA0282D2446F8F` FOREIGN KEY (`contract_contract_internal_ccs_id`) REFERENCES `contract` (`id`);

--
-- Constraints for table `contract_internal_cc`
--
ALTER TABLE `contract_internal_cc`
  ADD CONSTRAINT `FKE403975866CB50E` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`id`),
  ADD CONSTRAINT `FKE403975B053F86E` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `contract_item`
--
ALTER TABLE `contract_item`
  ADD CONSTRAINT `FKE170FE20347A4A77` FOREIGN KEY (`parent_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FKE170FE203736536E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FKE170FE204C343FA6` FOREIGN KEY (`sla_id`) REFERENCES `sla` (`id`),
  ADD CONSTRAINT `FKE170FE2078E1C2D0` FOREIGN KEY (`customer_id`) REFERENCES `partner` (`id`),
  ADD CONSTRAINT `FKE170FE20866CB50E` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`id`),
  ADD CONSTRAINT `FKE170FE20B9040E2E` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `FKE170FE20ECA345A6` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`);

--
-- Constraints for table `contract_partner`
--
ALTER TABLE `contract_partner`
  ADD CONSTRAINT `FK2EB0629B866CB50E` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`id`),
  ADD CONSTRAINT `FK2EB0629BC96B1B28` FOREIGN KEY (`contract_partners_id`) REFERENCES `contract` (`id`),
  ADD CONSTRAINT `FK2EB0629BECA345A6` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`);

--
-- Constraints for table `contract_partner_contact`
--
ALTER TABLE `contract_partner_contact`
  ADD CONSTRAINT `FK3BE4627C1AEA4289` FOREIGN KEY (`contract_partner_contacts_id`) REFERENCES `contract` (`id`),
  ADD CONSTRAINT `FK3BE4627C6999E93D` FOREIGN KEY (`partner_contact_id`) REFERENCES `partner_contact` (`id`),
  ADD CONSTRAINT `FK3BE4627C866CB50E` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`id`),
  ADD CONSTRAINT `FK3BE4627CB9040E2E` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Constraints for table `contract_summary_list`
--
ALTER TABLE `contract_summary_list`
  ADD CONSTRAINT `FK2301BFA4866CB50E` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK24217FDE9AA07AD9` FOREIGN KEY (`price_list_id`) REFERENCES `price_list` (`id`);

--
-- Constraints for table `customer_contact`
--
ALTER TABLE `customer_contact`
  ADD CONSTRAINT `FKBED18CBFE14AB18E` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `customer_contact_minute_of_meeting_attendee`
--
ALTER TABLE `customer_contact_minute_of_meeting_attendee`
  ADD CONSTRAINT `FK8A51F07B18564D55` FOREIGN KEY (`minute_of_meeting_attendee_id`) REFERENCES `minute_of_meeting_attendee` (`id`),
  ADD CONSTRAINT `FK8A51F07B4BFDF6B0` FOREIGN KEY (`customer_contact_minute_of_meeting_attendees_id`) REFERENCES `customer_contact` (`id`);

--
-- Constraints for table `customer_location`
--
ALTER TABLE `customer_location`
  ADD CONSTRAINT `FKAE824AF68F7CCCF` FOREIGN KEY (`customer_locations_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `FKAE824AF6B9040E2E` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Constraints for table `customer_minute_of_meeting`
--
ALTER TABLE `customer_minute_of_meeting`
  ADD CONSTRAINT `FK653580BD23FCC716` FOREIGN KEY (`customer_minute_of_meetings_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `FK653580BDC006BBB8` FOREIGN KEY (`minute_of_meeting_id`) REFERENCES `minute_of_meeting` (`id`);

--
-- Constraints for table `customer_schedule_visit`
--
ALTER TABLE `customer_schedule_visit`
  ADD CONSTRAINT `FK64062C2435365788` FOREIGN KEY (`customer_schedule_visit_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `FK64062C24B89B8E17` FOREIGN KEY (`schedule_visit_id`) REFERENCES `schedule_visit` (`id`);

--
-- Constraints for table `customer_sla`
--
ALTER TABLE `customer_sla`
  ADD CONSTRAINT `FK35AF4D474C343FA6` FOREIGN KEY (`sla_id`) REFERENCES `sla` (`id`),
  ADD CONSTRAINT `FK35AF4D4752493EA0` FOREIGN KEY (`customer_slas_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `FK31151BF4B9040E2E` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `FK31151BF4DC624AB5` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_order` (`id`);

--
-- Constraints for table `delivery_item`
--
ALTER TABLE `delivery_item`
  ADD CONSTRAINT `FKECAE707E1F5F31CE` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`id`),
  ADD CONSTRAINT `FKECAE707E3736536E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`);

--
-- Constraints for table `destination_role`
--
ALTER TABLE `destination_role`
  ADD CONSTRAINT `FK47D84E071FD85DF1` FOREIGN KEY (`transaction_group_id`) REFERENCES `s` (`id`),
  ADD CONSTRAINT `FK47D84E07F13F5C07` FOREIGN KEY (`contact_role_id`) REFERENCES `contact_role` (`id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`super_ordinate_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `engineer`
--
ALTER TABLE `engineer`
  ADD CONSTRAINT `FK6C827E6FA4677F8E` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `engineer_certificate`
--
ALTER TABLE `engineer_certificate`
  ADD CONSTRAINT `FKF0D0EFC723C08946` FOREIGN KEY (`certificate_id`) REFERENCES `certificate` (`id`),
  ADD CONSTRAINT `FKF0D0EFC7F903DBEE` FOREIGN KEY (`engineer_id`) REFERENCES `engineer` (`id`);

--
-- Constraints for table `engineer_expertise`
--
ALTER TABLE `engineer_expertise`
  ADD CONSTRAINT `FK847C41E21FCA06` FOREIGN KEY (`expertise_id`) REFERENCES `expertise` (`id`),
  ADD CONSTRAINT `FK847C41F903DBEE` FOREIGN KEY (`engineer_id`) REFERENCES `engineer` (`id`);

--
-- Constraints for table `engineer_maintenance_order`
--
ALTER TABLE `engineer_maintenance_order`
  ADD CONSTRAINT `FKD3534D52946D7BE7` FOREIGN KEY (`maintenance_order_id`) REFERENCES `maintenance_order` (`id`),
  ADD CONSTRAINT `FKD3534D52C6E93FBC` FOREIGN KEY (`engineer_maintenance_orders_id`) REFERENCES `engineer` (`id`);

--
-- Constraints for table `entity_user`
--
ALTER TABLE `entity_user`
  ADD CONSTRAINT `FK4C65B6A78F4E8C6E` FOREIGN KEY (`entity_id`) REFERENCES `entity` (`id`),
  ADD CONSTRAINT `FK4C65B6A7B053F86E` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `escalate`
--
ALTER TABLE `escalate`
  ADD CONSTRAINT `FK6DBC92324C343FA6` FOREIGN KEY (`sla_id`) REFERENCES `sla` (`id`),
  ADD CONSTRAINT `FK6DBC9232B053F86E` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK6DBC9232C57F197` FOREIGN KEY (`sla_type_id`) REFERENCES `sla_type` (`id`);

--
-- Constraints for table `escalate_escalation_response_time_target`
--
ALTER TABLE `escalate_escalation_response_time_target`
  ADD CONSTRAINT `FK20DFF1A2411ECB9E` FOREIGN KEY (`escalate_escalation_response_time_target_id`) REFERENCES `escalate` (`id`),
  ADD CONSTRAINT `FK20DFF1A24CA7CF93` FOREIGN KEY (`escalation_response_time_target_id`) REFERENCES `escalation_response_time_target` (`id`);

--
-- Constraints for table `escalate_escalation_solving_time_target`
--
ALTER TABLE `escalate_escalation_solving_time_target`
  ADD CONSTRAINT `FK23A633C31EA849DD` FOREIGN KEY (`escalate_escalation_solving_time_target_id`) REFERENCES `escalate` (`id`),
  ADD CONSTRAINT `FK23A633C3C91F77D5` FOREIGN KEY (`escalation_solving_time_target_id`) REFERENCES `escalation_solving_time_target` (`id`);

--
-- Constraints for table `escalation_onsite_response_time`
--
ALTER TABLE `escalation_onsite_response_time`
  ADD CONSTRAINT `FKA0CD649C4C343FA6` FOREIGN KEY (`sla_id`) REFERENCES `sla` (`id`),
  ADD CONSTRAINT `FKA0CD649C6999E93D` FOREIGN KEY (`partner_contact_id`) REFERENCES `partner_contact` (`id`),
  ADD CONSTRAINT `FKA0CD649CB053F86E` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKA0CD649CF11613CE` FOREIGN KEY (`priority_id`) REFERENCES `priority` (`id`);

--
-- Constraints for table `escalation_onsite_response_time_target`
--
ALTER TABLE `escalation_onsite_response_time_target`
  ADD CONSTRAINT `FKFE3FE2944C343FA6` FOREIGN KEY (`sla_id`) REFERENCES `sla` (`id`),
  ADD CONSTRAINT `FKFE3FE2946999E93D` FOREIGN KEY (`partner_contact_id`) REFERENCES `partner_contact` (`id`),
  ADD CONSTRAINT `FKFE3FE294B053F86E` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKFE3FE294F11613CE` FOREIGN KEY (`priority_id`) REFERENCES `priority` (`id`);

--
-- Constraints for table `escalation_response_time_target`
--
ALTER TABLE `escalation_response_time_target`
  ADD CONSTRAINT `FK7BE0F3AFF11613CE` FOREIGN KEY (`priority_id`) REFERENCES `priority` (`id`),
  ADD CONSTRAINT `escalation_response_time_target_ibfk_1` FOREIGN KEY (`partner_contact_id`) REFERENCES `partner_contact` (`id`),
  ADD CONSTRAINT `escalation_response_time_target_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `escalation_response_time_target_ibfk_3` FOREIGN KEY (`sla_id`) REFERENCES `sla` (`id`);

--
-- Constraints for table `escalation_solving_time_target`
--
ALTER TABLE `escalation_solving_time_target`
  ADD CONSTRAINT `FK68A63C16F11613CE` FOREIGN KEY (`priority_id`) REFERENCES `priority` (`id`),
  ADD CONSTRAINT `escalation_solving_time_target_ibfk_1` FOREIGN KEY (`partner_contact_id`) REFERENCES `partner_contact` (`id`),
  ADD CONSTRAINT `escalation_solving_time_target_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `escalation_solving_time_target_ibfk_3` FOREIGN KEY (`sla_id`) REFERENCES `sla` (`id`);

--
-- Constraints for table `group_module`
--
ALTER TABLE `group_module`
  ADD CONSTRAINT `group_module_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`),
  ADD CONSTRAINT `group_module_ibfk_2` FOREIGN KEY (`user_group_id`) REFERENCES `user_group` (`id`);

--
-- Constraints for table `incident_to_problem`
--
ALTER TABLE `incident_to_problem`
  ADD CONSTRAINT `FK6D060668946D7BE7` FOREIGN KEY (`maintenance_order_id`) REFERENCES `maintenance_order` (`id`),
  ADD CONSTRAINT `FK6D060668E30CE334` FOREIGN KEY (`approver_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK6D060668F903DBEE` FOREIGN KEY (`engineer_id`) REFERENCES `engineer` (`id`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK317B1346B2D29F` FOREIGN KEY (`item_brand_id`) REFERENCES `item_brand` (`id`),
  ADD CONSTRAINT `FK317B1366AB4F9F` FOREIGN KEY (`item_group_id`) REFERENCES `item_group` (`id`),
  ADD CONSTRAINT `FK317B136CE9139F` FOREIGN KEY (`item_lot_id`) REFERENCES `item_lot` (`id`),
  ADD CONSTRAINT `FK317B13718740FF` FOREIGN KEY (`item_class_id`) REFERENCES `item_class` (`id`),
  ADD CONSTRAINT `FK317B1372923F7B` FOREIGN KEY (`uom1_id`) REFERENCES `uom` (`id`),
  ADD CONSTRAINT `FK317B137292B3DA` FOREIGN KEY (`uom2_id`) REFERENCES `uom` (`id`),
  ADD CONSTRAINT `FK317B13E849B095` FOREIGN KEY (`item_type_id`) REFERENCES `item_type` (`id`);

--
-- Constraints for table `item_balance`
--
ALTER TABLE `item_balance`
  ADD CONSTRAINT `FK99F2CDB0222545F2` FOREIGN KEY (`warehouse_source_id`) REFERENCES `warehouse` (`id`),
  ADD CONSTRAINT `FK99F2CDB03736536E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK99F2CDB072A5B4C6` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`),
  ADD CONSTRAINT `FK99F2CDB078E201A5` FOREIGN KEY (`transfer_item_id`) REFERENCES `transfer_item` (`id`),
  ADD CONSTRAINT `FK99F2CDB0BFD5DF0B` FOREIGN KEY (`warehouse_dest_id`) REFERENCES `warehouse` (`id`),
  ADD CONSTRAINT `FK99F2CDB0ECA345A6` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`);

--
-- Constraints for table `item_brand`
--
ALTER TABLE `item_brand`
  ADD CONSTRAINT `FK8AB64F5B46B2D29F` FOREIGN KEY (`item_brand_id`) REFERENCES `item_brand` (`id`);

--
-- Constraints for table `item_class`
--
ALTER TABLE `item_class`
  ADD CONSTRAINT `FK8AC1AD4C718740FF` FOREIGN KEY (`item_class_id`) REFERENCES `item_class` (`id`);

--
-- Constraints for table `item_contract`
--
ALTER TABLE `item_contract`
  ADD CONSTRAINT `FKF5568CBE866CB50E` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`id`),
  ADD CONSTRAINT `FKF5568CBEE8829A0A` FOREIGN KEY (`item_slas_id`) REFERENCES `item` (`id`);

--
-- Constraints for table `item_group`
--
ALTER TABLE `item_group`
  ADD CONSTRAINT `FK8AFCFA5366AB4F9F` FOREIGN KEY (`item_group_id`) REFERENCES `item_group` (`id`);

--
-- Constraints for table `knowledge_base`
--
ALTER TABLE `knowledge_base`
  ADD CONSTRAINT `FK8CAAF5F22D70904B` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK8CAAF5F266DFBC79` FOREIGN KEY (`issue_type_id`) REFERENCES `issue_type` (`id`);

--
-- Constraints for table `knowledge_tag`
--
ALTER TABLE `knowledge_tag`
  ADD CONSTRAINT `FK489E8594D50D266` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`),
  ADD CONSTRAINT `FK489E859AA75DAE3` FOREIGN KEY (`knowledge_base_id`) REFERENCES `knowledge_base` (`id`);

--
-- Constraints for table `knowlege_base`
--
ALTER TABLE `knowlege_base`
  ADD CONSTRAINT `FK9F7F73CE66DFBC79` FOREIGN KEY (`issue_type_id`) REFERENCES `issue_type` (`id`);

--
-- Constraints for table `loading_delivery`
--
ALTER TABLE `loading_delivery`
  ADD CONSTRAINT `FK820D0F971F5F31CE` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`id`),
  ADD CONSTRAINT `FK820D0F9768BCD54D` FOREIGN KEY (`loading_deliveries_id`) REFERENCES `loading` (`id`);

--
-- Constraints for table `loading_item`
--
ALTER TABLE `loading_item`
  ADD CONSTRAINT `FK5422B8363736536E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK5422B8363E298126` FOREIGN KEY (`loading_id`) REFERENCES `loading` (`id`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `FK714F9FB51C79AA3B` FOREIGN KEY (`interval_visit_id`) REFERENCES `interval_visit` (`id`),
  ADD CONSTRAINT `FK714F9FB5ECA345A6` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`),
  ADD CONSTRAINT `FK714F9FB5FB17E93F` FOREIGN KEY (`sales_person_id`) REFERENCES `sales_person` (`id`);

--
-- Constraints for table `maintenance_order`
--
ALTER TABLE `maintenance_order`
  ADD CONSTRAINT `FKC8310322945C27E2` FOREIGN KEY (`prev_engineer_id`) REFERENCES `engineer` (`id`),
  ADD CONSTRAINT `FKC8310322AEFB60CE` FOREIGN KEY (`satisfaction_id`) REFERENCES `satisfaction` (`id`),
  ADD CONSTRAINT `FKC8310322AF26E48C` FOREIGN KEY (`maintenance_order_type_id`) REFERENCES `maintenance_order_type` (`id`),
  ADD CONSTRAINT `FKC8310322E30CE334` FOREIGN KEY (`approver_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKC8310322ECA345A6` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`),
  ADD CONSTRAINT `FKC8310322FBEFB173` FOREIGN KEY (`contract_item_id`) REFERENCES `contract_item` (`id`),
  ADD CONSTRAINT `maintenance_order_ibfk_6` FOREIGN KEY (`issue_type_id`) REFERENCES `issue_type` (`id`),
  ADD CONSTRAINT `maintenance_order_ibfk_7` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`id`),
  ADD CONSTRAINT `maintenance_order_ibfk_8` FOREIGN KEY (`priority_id`) REFERENCES `priority` (`id`);

--
-- Constraints for table `maintenance_order_activity_time`
--
ALTER TABLE `maintenance_order_activity_time`
  ADD CONSTRAINT `FK335F5BA08C0EBC96` FOREIGN KEY (`maintenance_order_activity_times_id`) REFERENCES `maintenance_order` (`id`),
  ADD CONSTRAINT `FK335F5BA0DA740FAD` FOREIGN KEY (`activity_time_id`) REFERENCES `activity_time` (`id`);

--
-- Constraints for table `maintenance_order_minute_of_meeting_additional_value`
--
ALTER TABLE `maintenance_order_minute_of_meeting_additional_value`
  ADD CONSTRAINT `FK958F5CD7675D4A4D` FOREIGN KEY (`maintenance_order_minute_of_meeting_additional_values_id`) REFERENCES `maintenance_order` (`id`),
  ADD CONSTRAINT `FK958F5CD7B0715D2E` FOREIGN KEY (`minute_of_meeting_additional_value_id`) REFERENCES `minute_of_meeting_additional_value` (`id`);

--
-- Constraints for table `master_additional_field`
--
ALTER TABLE `master_additional_field`
  ADD CONSTRAINT `FKEF530B1F23BC29D3` FOREIGN KEY (`master_additional_id`) REFERENCES `master_additional` (`id`);

--
-- Constraints for table `master_additional_value`
--
ALTER TABLE `master_additional_value`
  ADD CONSTRAINT `FKF030FB9623BC29D3` FOREIGN KEY (`master_additional_id`) REFERENCES `master_additional` (`id`),
  ADD CONSTRAINT `FKF030FB96AE46F078` FOREIGN KEY (`master_additional_field_id`) REFERENCES `master_additional_field` (`id`);

--
-- Constraints for table `minute_of_meeting`
--
ALTER TABLE `minute_of_meeting`
  ADD CONSTRAINT `FKD4F212DE89E95806` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `FKD4F212DEB053F86E` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKD4F212DEECA345A6` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`);

--
-- Constraints for table `minute_of_meeting_additional_value`
--
ALTER TABLE `minute_of_meeting_additional_value`
  ADD CONSTRAINT `FK3AE29A9AB1D51027` FOREIGN KEY (`tr_group_add_header_id`) REFERENCES `transaction_group_add_header` (`id`);

--
-- Constraints for table `minute_of_meeting_attendee`
--
ALTER TABLE `minute_of_meeting_attendee`
  ADD CONSTRAINT `FKC2B144FB6999E93D` FOREIGN KEY (`partner_contact_id`) REFERENCES `partner_contact` (`id`),
  ADD CONSTRAINT `FKC2B144FBC006BBB8` FOREIGN KEY (`minute_of_meeting_id`) REFERENCES `minute_of_meeting` (`id`);

--
-- Constraints for table `minute_of_meeting_item`
--
ALTER TABLE `minute_of_meeting_item`
  ADD CONSTRAINT `FKA9C93BD43736536E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FKA9C93BD4C006BBB8` FOREIGN KEY (`minute_of_meeting_id`) REFERENCES `minute_of_meeting` (`id`);

--
-- Constraints for table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `FKC04BA66C6C9D93CE` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`);

--
-- Constraints for table `mo_call`
--
ALTER TABLE `mo_call`
  ADD CONSTRAINT `FK48DA5ADB40D6C22E` FOREIGN KEY (`assignment_id`) REFERENCES `assignment` (`id`);

--
-- Constraints for table `mo_onsite_response_time_escalated`
--
ALTER TABLE `mo_onsite_response_time_escalated`
  ADD CONSTRAINT `FK1703BBE240D6C22E` FOREIGN KEY (`assignment_id`) REFERENCES `assignment` (`id`),
  ADD CONSTRAINT `FK1703BBE29EDD9414` FOREIGN KEY (`escalation_onsite_response_time_target_id`) REFERENCES `escalation_onsite_response_time_target` (`id`),
  ADD CONSTRAINT `FK1703BBE2C356E91B` FOREIGN KEY (`escalation_onsite_response_time_id`) REFERENCES `escalation_onsite_response_time` (`id`);

--
-- Constraints for table `mo_priority_onsite_response_time_escalated`
--
ALTER TABLE `mo_priority_onsite_response_time_escalated`
  ADD CONSTRAINT `FKEA74F603946D7BE7` FOREIGN KEY (`maintenance_order_id`) REFERENCES `maintenance_order` (`id`),
  ADD CONSTRAINT `FKEA74F603C356E91B` FOREIGN KEY (`escalation_onsite_response_time_id`) REFERENCES `escalation_onsite_response_time` (`id`);

--
-- Constraints for table `mo_priority_response_time_escalated`
--
ALTER TABLE `mo_priority_response_time_escalated`
  ADD CONSTRAINT `FK1DF71AA04CA7CF93` FOREIGN KEY (`escalation_response_time_target_id`) REFERENCES `escalation_response_time_target` (`id`),
  ADD CONSTRAINT `FK1DF71AA0946D7BE7` FOREIGN KEY (`maintenance_order_id`) REFERENCES `maintenance_order` (`id`);

--
-- Constraints for table `mo_priority_solving_time_escalated`
--
ALTER TABLE `mo_priority_solving_time_escalated`
  ADD CONSTRAINT `FKB1B5C941946D7BE7` FOREIGN KEY (`maintenance_order_id`) REFERENCES `maintenance_order` (`id`),
  ADD CONSTRAINT `FKB1B5C941C91F77D5` FOREIGN KEY (`escalation_solving_time_target_id`) REFERENCES `escalation_solving_time_target` (`id`);

--
-- Constraints for table `mo_reschedule_history`
--
ALTER TABLE `mo_reschedule_history`
  ADD CONSTRAINT `FKCA63A0DC946D7BE7` FOREIGN KEY (`maintenance_order_id`) REFERENCES `maintenance_order` (`id`),
  ADD CONSTRAINT `FKCA63A0DCF903DBEE` FOREIGN KEY (`engineer_id`) REFERENCES `engineer` (`id`);

--
-- Constraints for table `mo_response_time_escalated`
--
ALTER TABLE `mo_response_time_escalated`
  ADD CONSTRAINT `FK1473A1A140D6C22E` FOREIGN KEY (`assignment_id`) REFERENCES `assignment` (`id`),
  ADD CONSTRAINT `FK1473A1A14CA7CF93` FOREIGN KEY (`escalation_response_time_target_id`) REFERENCES `escalation_response_time_target` (`id`);

--
-- Constraints for table `mo_solving_time_escalated`
--
ALTER TABLE `mo_solving_time_escalated`
  ADD CONSTRAINT `FK3FBDE2040D6C22E` FOREIGN KEY (`assignment_id`) REFERENCES `assignment` (`id`),
  ADD CONSTRAINT `FK3FBDE20C91F77D5` FOREIGN KEY (`escalation_solving_time_target_id`) REFERENCES `escalation_solving_time_target` (`id`);

--
-- Constraints for table `non_working_days`
--
ALTER TABLE `non_working_days`
  ADD CONSTRAINT `FK623E48D737DC38C1` FOREIGN KEY (`non_working_days_engineer_id`) REFERENCES `non_working_days_engineer` (`id`);

--
-- Constraints for table `non_working_days_engineer`
--
ALTER TABLE `non_working_days_engineer`
  ADD CONSTRAINT `FK86E868D747349532` FOREIGN KEY (`non_working_days_id`) REFERENCES `non_working_days` (`id`),
  ADD CONSTRAINT `FK86E868D7F903DBEE` FOREIGN KEY (`engineer_id`) REFERENCES `engineer` (`id`);

--
-- Constraints for table `non_working_day_engineer`
--
ALTER TABLE `non_working_day_engineer`
  ADD CONSTRAINT `FKE0195432F903DBEE` FOREIGN KEY (`engineer_id`) REFERENCES `engineer` (`id`),
  ADD CONSTRAINT `FKE0195432FA09AA62` FOREIGN KEY (`non_working_day_id`) REFERENCES `non_working_day` (`id`);

--
-- Constraints for table `outbox`
--
ALTER TABLE `outbox`
  ADD CONSTRAINT `FKC410E3BD40D6C22E` FOREIGN KEY (`assignment_id`) REFERENCES `assignment` (`id`);

--
-- Constraints for table `partner`
--
ALTER TABLE `partner`
  ADD CONSTRAINT `FKD0BCDCC82D70904B` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKD0BCDCC89AA07AD9` FOREIGN KEY (`price_list_id`) REFERENCES `price_list` (`id`),
  ADD CONSTRAINT `FKD0BCDCC8D8B6DD9D` FOREIGN KEY (`partner_group_id`) REFERENCES `partner_group` (`id`),
  ADD CONSTRAINT `FKD0BCDCC8E392CEFD` FOREIGN KEY (`partner_class_id`) REFERENCES `partner_class` (`id`),
  ADD CONSTRAINT `FKD0BCDCC8EC28816E` FOREIGN KEY (`salesman_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FKD0BCDCC8EE73C1D7` FOREIGN KEY (`partner_industry_id`) REFERENCES `partner_industry` (`id`);

--
-- Constraints for table `partner_class`
--
ALTER TABLE `partner_class`
  ADD CONSTRAINT `FK2A483341E392CEFD` FOREIGN KEY (`partner_class_id`) REFERENCES `partner_class` (`id`);

--
-- Constraints for table `partner_contact`
--
ALTER TABLE `partner_contact`
  ADD CONSTRAINT `FKBEDE5FA9AACEB126` FOREIGN KEY (`role_id`) REFERENCES `contact_role` (`id`),
  ADD CONSTRAINT `FKBEDE5FA9B9040E2E` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `FKBEDE5FA9ECA345A6` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`);

--
-- Constraints for table `partner_group`
--
ALTER TABLE `partner_group`
  ADD CONSTRAINT `FK2A838048D8B6DD9D` FOREIGN KEY (`partner_group_id`) REFERENCES `partner_group` (`id`);

--
-- Constraints for table `partner_industry`
--
ALTER TABLE `partner_industry`
  ADD CONSTRAINT `FK46547775EE73C1D7` FOREIGN KEY (`partner_industry_id`) REFERENCES `partner_industry` (`id`);

--
-- Constraints for table `partner_sales_order`
--
ALTER TABLE `partner_sales_order`
  ADD CONSTRAINT `FKC8BC89647D88357F` FOREIGN KEY (`partner_sales_orders_id`) REFERENCES `partner` (`id`),
  ADD CONSTRAINT `FKC8BC8964DC624AB5` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_order` (`id`);

--
-- Constraints for table `price_list_item`
--
ALTER TABLE `price_list_item`
  ADD CONSTRAINT `FKCEB39A9E3736536E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FKCEB39A9E9AA07AD9` FOREIGN KEY (`price_list_id`) REFERENCES `price_list` (`id`);

--
-- Constraints for table `priority`
--
ALTER TABLE `priority`
  ADD CONSTRAINT `FKBA8879A451F432D7` FOREIGN KEY (`response_time_start_from_id`) REFERENCES `start_from` (`id`),
  ADD CONSTRAINT `FKBA8879A49EE87FBE` FOREIGN KEY (`onsite_response_time_start_from_id`) REFERENCES `start_from` (`id`),
  ADD CONSTRAINT `FKBA8879A4DBFB45FC` FOREIGN KEY (`solving_time_start_from_id`) REFERENCES `start_from` (`id`);

--
-- Constraints for table `priority_escalation_onsite_response_time`
--
ALTER TABLE `priority_escalation_onsite_response_time`
  ADD CONSTRAINT `FK5B4E02014C343FA6` FOREIGN KEY (`sla_id`) REFERENCES `sla` (`id`),
  ADD CONSTRAINT `FK5B4E02016999E93D` FOREIGN KEY (`partner_contact_id`) REFERENCES `partner_contact` (`id`),
  ADD CONSTRAINT `FK5B4E0201B053F86E` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK5B4E0201F11613CE` FOREIGN KEY (`priority_id`) REFERENCES `priority` (`id`);

--
-- Constraints for table `problem_item`
--
ALTER TABLE `problem_item`
  ADD CONSTRAINT `FKCADB3CB329A94F25` FOREIGN KEY (`problem_management_id`) REFERENCES `problem_management` (`id`),
  ADD CONSTRAINT `FKCADB3CB32D70904B` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKCADB3CB33736536E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`);

--
-- Constraints for table `problem_management`
--
ALTER TABLE `problem_management`
  ADD CONSTRAINT `FK9F3081E32D70904B` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK9F3081E366DFBC79` FOREIGN KEY (`issue_type_id`) REFERENCES `issue_type` (`id`),
  ADD CONSTRAINT `FK9F3081E3866CB50E` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`id`),
  ADD CONSTRAINT `FK9F3081E3945C27E2` FOREIGN KEY (`prev_engineer_id`) REFERENCES `engineer` (`id`),
  ADD CONSTRAINT `FK9F3081E3AEFB60CE` FOREIGN KEY (`satisfaction_id`) REFERENCES `satisfaction` (`id`),
  ADD CONSTRAINT `FK9F3081E3AF26E48C` FOREIGN KEY (`maintenance_order_type_id`) REFERENCES `maintenance_order_type` (`id`),
  ADD CONSTRAINT `FK9F3081E3E30CE334` FOREIGN KEY (`approver_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK9F3081E3ECA345A6` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`),
  ADD CONSTRAINT `FK9F3081E3F11613CE` FOREIGN KEY (`priority_id`) REFERENCES `priority` (`id`),
  ADD CONSTRAINT `FK9F3081E3FBEFB173` FOREIGN KEY (`contract_item_id`) REFERENCES `contract_item` (`id`);

--
-- Constraints for table `problem_management_item`
--
ALTER TABLE `problem_management_item`
  ADD CONSTRAINT `FK8C067EF3736536E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK8C067EF8A4D1D99` FOREIGN KEY (`problem_management_item_id`) REFERENCES `problem_management` (`id`);

--
-- Constraints for table `problem_management_maintenance_order`
--
ALTER TABLE `problem_management_maintenance_order`
  ADD CONSTRAINT `FK26DADBC62A1A157A` FOREIGN KEY (`problem_management_incident_id`) REFERENCES `problem_management` (`id`),
  ADD CONSTRAINT `FK26DADBC6946D7BE7` FOREIGN KEY (`maintenance_order_id`) REFERENCES `maintenance_order` (`id`);

--
-- Constraints for table `problem_management_minute_of_meeting_additional_value`
--
ALTER TABLE `problem_management_minute_of_meeting_additional_value`
  ADD CONSTRAINT `FKE7989E76309AFA0B` FOREIGN KEY (`problem_management_minute_of_meeting_additional_values_id`) REFERENCES `problem_management` (`id`),
  ADD CONSTRAINT `FKE7989E76B0715D2E` FOREIGN KEY (`minute_of_meeting_additional_value_id`) REFERENCES `minute_of_meeting_additional_value` (`id`);

--
-- Constraints for table `reff`
--
ALTER TABLE `reff`
  ADD CONSTRAINT `FK355A3329A94F25` FOREIGN KEY (`problem_management_id`) REFERENCES `problem_management` (`id`),
  ADD CONSTRAINT `FK355A336C8B9C37` FOREIGN KEY (`incident_id`) REFERENCES `maintenance_order` (`id`);

--
-- Constraints for table `respondent_survey_header`
--
ALTER TABLE `respondent_survey_header`
  ADD CONSTRAINT `FKD0DC9EC980F97683` FOREIGN KEY (`survey_header_id`) REFERENCES `survey_header` (`id`),
  ADD CONSTRAINT `FKD0DC9EC9BCF15D8E` FOREIGN KEY (`respondent_id`) REFERENCES `respondent` (`id`);

--
-- Constraints for table `respondent_survey_header_answer`
--
ALTER TABLE `respondent_survey_header_answer`
  ADD CONSTRAINT `FK965C19F419903A8E` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`),
  ADD CONSTRAINT `FK965C19F4FEDCDBCC` FOREIGN KEY (`respondent_survey_header_answers_id`) REFERENCES `respondent_survey_header` (`id`);

--
-- Constraints for table `s`
--
ALTER TABLE `s`
  ADD CONSTRAINT `FKABE00DDE176E916E` FOREIGN KEY (`creator_id`) REFERENCES `user_group` (`id`),
  ADD CONSTRAINT `FKABE00DDE22AECFD7` FOREIGN KEY (`trigger_id`) REFERENCES `s` (`id`),
  ADD CONSTRAINT `FKABE00DDE8E440AEF` FOREIGN KEY (`trigger_group_access_id`) REFERENCES `user_group` (`id`),
  ADD CONSTRAINT `FKABE00DDEC4F89003` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_type` (`id`),
  ADD CONSTRAINT `FKABE00DDED9A9D38E` FOREIGN KEY (`approver1_id`) REFERENCES `user_group` (`id`),
  ADD CONSTRAINT `FKABE00DDED9AA47ED` FOREIGN KEY (`approver2_id`) REFERENCES `user_group` (`id`);

--
-- Constraints for table `sales_group_detail`
--
ALTER TABLE `sales_group_detail`
  ADD CONSTRAINT `FK4E0ED66450C5BB1C` FOREIGN KEY (`team_leader_id`) REFERENCES `sales_person` (`id`),
  ADD CONSTRAINT `FK4E0ED664B08E3115` FOREIGN KEY (`sales_group_id`) REFERENCES `sales_group` (`id`),
  ADD CONSTRAINT `FK4E0ED664FB17E93F` FOREIGN KEY (`sales_person_id`) REFERENCES `sales_person` (`id`);

--
-- Constraints for table `sales_group_scope`
--
ALTER TABLE `sales_group_scope`
  ADD CONSTRAINT `FKFB14F1E1B08E3115` FOREIGN KEY (`sales_group_id`) REFERENCES `sales_group` (`id`);

--
-- Constraints for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD CONSTRAINT `FK67203A5BA917FDAA` FOREIGN KEY (`truck_id`) REFERENCES `warehouse` (`id`),
  ADD CONSTRAINT `FK67203A5BE30CE334` FOREIGN KEY (`approver_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK67203A5BECA345A6` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`);

--
-- Constraints for table `sales_order_item`
--
ALTER TABLE `sales_order_item`
  ADD CONSTRAINT `FKA6A93A773736536E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FKA6A93A77DC624AB5` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_order` (`id`);

--
-- Constraints for table `sales_order_minute_of_meeting_additional_value`
--
ALTER TABLE `sales_order_minute_of_meeting_additional_value`
  ADD CONSTRAINT `FK4F7052FEA622519B` FOREIGN KEY (`sales_order_minute_of_meeting_additional_values_id`) REFERENCES `sales_order` (`id`),
  ADD CONSTRAINT `FK4F7052FEB0715D2E` FOREIGN KEY (`minute_of_meeting_additional_value_id`) REFERENCES `minute_of_meeting_additional_value` (`id`);

--
-- Constraints for table `sales_order_transfer`
--
ALTER TABLE `sales_order_transfer`
  ADD CONSTRAINT `FK685A254FB648936C` FOREIGN KEY (`sales_order_transfers_id`) REFERENCES `sales_order` (`id`),
  ADD CONSTRAINT `FK685A254FFB659A6E` FOREIGN KEY (`transfer_id`) REFERENCES `transfer` (`id`);

--
-- Constraints for table `sales_person`
--
ALTER TABLE `sales_person`
  ADD CONSTRAINT `FK7DEB49E8A4677F8E` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FK7DEB49E8E269C85F` FOREIGN KEY (`sales_type_id`) REFERENCES `sales_type` (`id`);

--
-- Constraints for table `sales_return_item`
--
ALTER TABLE `sales_return_item`
  ADD CONSTRAINT `FK60D22A0F3736536E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK60D22A0F946BD75F` FOREIGN KEY (`sales_return_id`) REFERENCES `sales_return` (`id`);

--
-- Constraints for table `schedule_visit`
--
ALTER TABLE `schedule_visit`
  ADD CONSTRAINT `FK1C4AB5A3946D7BE7` FOREIGN KEY (`maintenance_order_id`) REFERENCES `maintenance_order` (`id`),
  ADD CONSTRAINT `FK1C4AB5A3A4677F8E` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FK1C4AB5A3B9040E2E` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `FK1C4AB5A3ECA345A6` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`);

--
-- Constraints for table `sent`
--
ALTER TABLE `sent`
  ADD CONSTRAINT `FK35CF9840D6C22E` FOREIGN KEY (`assignment_id`) REFERENCES `assignment` (`id`);

--
-- Constraints for table `sla`
--
ALTER TABLE `sla`
  ADD CONSTRAINT `FK1BD28BB9D211` FOREIGN KEY (`service_days_id`) REFERENCES `service_days` (`id`);

--
-- Constraints for table `sla_escalation_response_time_target`
--
ALTER TABLE `sla_escalation_response_time_target`
  ADD CONSTRAINT `FKB14BC4984CA7CF93` FOREIGN KEY (`escalation_response_time_target_id`) REFERENCES `escalation_response_time_target` (`id`),
  ADD CONSTRAINT `FKB14BC4986834ED13` FOREIGN KEY (`sla_escalation_response_time_targets_id`) REFERENCES `sla` (`id`);

--
-- Constraints for table `sla_escalation_solving_time_target`
--
ALTER TABLE `sla_escalation_solving_time_target`
  ADD CONSTRAINT `FK51992A0DAFB89008` FOREIGN KEY (`sla_escalation_solving_time_targets_id`) REFERENCES `sla` (`id`),
  ADD CONSTRAINT `FK51992A0DC91F77D5` FOREIGN KEY (`escalation_solving_time_target_id`) REFERENCES `escalation_solving_time_target` (`id`);

--
-- Constraints for table `sla_supplier`
--
ALTER TABLE `sla_supplier`
  ADD CONSTRAINT `FK775DBB034C343FA6` FOREIGN KEY (`sla_id`) REFERENCES `sla` (`id`),
  ADD CONSTRAINT `FK775DBB03BB9D211` FOREIGN KEY (`service_days_id`) REFERENCES `service_days` (`id`),
  ADD CONSTRAINT `FK775DBB03ECA345A6` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`);

--
-- Constraints for table `sla_supplier_contact`
--
ALTER TABLE `sla_supplier_contact`
  ADD CONSTRAINT `FK4986D2E44C343FA6` FOREIGN KEY (`sla_id`) REFERENCES `sla` (`id`),
  ADD CONSTRAINT `FK4986D2E4DB31B9D7` FOREIGN KEY (`sla_supplier_id`) REFERENCES `sla_supplier` (`id`);

--
-- Constraints for table `sla_type`
--
ALTER TABLE `sla_type`
  ADD CONSTRAINT `FKA63F83F1DB31B9D7` FOREIGN KEY (`sla_supplier_id`) REFERENCES `sla_supplier` (`id`);

--
-- Constraints for table `sla_type_sla`
--
ALTER TABLE `sla_type_sla`
  ADD CONSTRAINT `FKB2370FDA3148A0AF` FOREIGN KEY (`sla_type_slas_id`) REFERENCES `sla_type` (`id`),
  ADD CONSTRAINT `FKB2370FDA4C343FA6` FOREIGN KEY (`sla_id`) REFERENCES `sla` (`id`);

--
-- Constraints for table `substitute_certificate`
--
ALTER TABLE `substitute_certificate`
  ADD CONSTRAINT `FK701C2D725BF073A5` FOREIGN KEY (`certificate_sub_id`) REFERENCES `certificate` (`id`),
  ADD CONSTRAINT `substitute_certificate_ibfk_1` FOREIGN KEY (`certificate1_id`) REFERENCES `certificate` (`id`),
  ADD CONSTRAINT `substitute_certificate_ibfk_2` FOREIGN KEY (`certificate2_id`) REFERENCES `certificate` (`id`),
  ADD CONSTRAINT `substitute_certificate_ibfk_3` FOREIGN KEY (`certificate_id`) REFERENCES `certificate` (`id`);

--
-- Constraints for table `survey_detail`
--
ALTER TABLE `survey_detail`
  ADD CONSTRAINT `FK7B0654D680F97683` FOREIGN KEY (`survey_header_id`) REFERENCES `survey_header` (`id`);

--
-- Constraints for table `survey_detail_answer`
--
ALTER TABLE `survey_detail_answer`
  ADD CONSTRAINT `FK3868EB4719903A8E` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`),
  ADD CONSTRAINT `FK3868EB474398330D` FOREIGN KEY (`survey_detail_answers_id`) REFERENCES `survey_detail` (`id`);

--
-- Constraints for table `survey_detail_option`
--
ALTER TABLE `survey_detail_option`
  ADD CONSTRAINT `FK506933FE114A7003` FOREIGN KEY (`survey_detail_id`) REFERENCES `survey_detail` (`id`);

--
-- Constraints for table `survey_detail_option_answer`
--
ALTER TABLE `survey_detail_option_answer`
  ADD CONSTRAINT `FK520C2F1F19903A8E` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`),
  ADD CONSTRAINT `FK520C2F1F36F35C3A` FOREIGN KEY (`survey_detail_option_answers_id`) REFERENCES `survey_detail_option` (`id`);

--
-- Constraints for table `technical_visit`
--
ALTER TABLE `technical_visit`
  ADD CONSTRAINT `FK9DE35E9946D7BE7` FOREIGN KEY (`maintenance_order_id`) REFERENCES `maintenance_order` (`id`),
  ADD CONSTRAINT `FK9DE35E9B9040E2E` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Constraints for table `track`
--
ALTER TABLE `track`
  ADD CONSTRAINT `FK697F14BA0C63587` FOREIGN KEY (`person_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `transaction_group_approval`
--
ALTER TABLE `transaction_group_approval`
  ADD CONSTRAINT `FK8E9943841FD85DF1` FOREIGN KEY (`transaction_group_id`) REFERENCES `s` (`id`),
  ADD CONSTRAINT `FK8E994384E669702F` FOREIGN KEY (`user_group_id`) REFERENCES `user_group` (`id`);

--
-- Constraints for table `transaction_group_destination_role`
--
ALTER TABLE `transaction_group_destination_role`
  ADD CONSTRAINT `FKA5FF5A485857DD84` FOREIGN KEY (`transaction_group_destination_roles_id`) REFERENCES `s` (`id`),
  ADD CONSTRAINT `FKA5FF5A48CD84D0E3` FOREIGN KEY (`destination_role_id`) REFERENCES `destination_role` (`id`);

--
-- Constraints for table `transaction_group_transaction_group_approval`
--
ALTER TABLE `transaction_group_transaction_group_approval`
  ADD CONSTRAINT `FK2E72B2854ABACF41` FOREIGN KEY (`transaction_group_transaction_group_approvals_id`) REFERENCES `s` (`id`),
  ADD CONSTRAINT `FK2E72B285A944A3EE` FOREIGN KEY (`transaction_group_approval_id`) REFERENCES `transaction_group_approval` (`id`);

--
-- Constraints for table `transaction_master`
--
ALTER TABLE `transaction_master`
  ADD CONSTRAINT `FKD970FEE3C7EB3C45` FOREIGN KEY (`transfer_type_id`) REFERENCES `transfer_type` (`id`);

--
-- Constraints for table `transaction_master_transfer`
--
ALTER TABLE `transaction_master_transfer`
  ADD CONSTRAINT `FK91A9F9C7BA3B737A` FOREIGN KEY (`transaction_master_transfers_id`) REFERENCES `transaction_master` (`id`),
  ADD CONSTRAINT `FK91A9F9C7FB659A6E` FOREIGN KEY (`transfer_id`) REFERENCES `transfer` (`id`);

--
-- Constraints for table `transaction_type_state`
--
ALTER TABLE `transaction_type_state`
  ADD CONSTRAINT `FKE2938F4DC4F89003` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_type` (`id`);

--
-- Constraints for table `transfer`
--
ALTER TABLE `transfer`
  ADD CONSTRAINT `FK4C58B7EBE30CE334` FOREIGN KEY (`approver_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK4C58B7EBECA345A6` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`);

--
-- Constraints for table `transfer_item`
--
ALTER TABLE `transfer_item`
  ADD CONSTRAINT `FK87F0B6E7222545F2` FOREIGN KEY (`warehouse_source_id`) REFERENCES `warehouse` (`id`),
  ADD CONSTRAINT `FK87F0B6E73736536E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK87F0B6E73FA2366` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`id`),
  ADD CONSTRAINT `FK87F0B6E7BFD5DF0B` FOREIGN KEY (`warehouse_dest_id`) REFERENCES `warehouse` (`id`),
  ADD CONSTRAINT `FK87F0B6E7FB659A6E` FOREIGN KEY (`transfer_id`) REFERENCES `transfer` (`id`);

--
-- Constraints for table `transfer_item_item_balance`
--
ALTER TABLE `transfer_item_item_balance`
  ADD CONSTRAINT `FK771A30084893193F` FOREIGN KEY (`item_balance_id`) REFERENCES `item_balance` (`id`),
  ADD CONSTRAINT `FK771A3008F2D4A8A1` FOREIGN KEY (`transfer_item_item_balances_id`) REFERENCES `transfer_item` (`id`);

--
-- Constraints for table `transform_source_batch`
--
ALTER TABLE `transform_source_batch`
  ADD CONSTRAINT `FK811D0093FA2366` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`id`),
  ADD CONSTRAINT `FK811D00982648826` FOREIGN KEY (`transform_id`) REFERENCES `transform` (`id`);

--
-- Constraints for table `update_tracker`
--
ALTER TABLE `update_tracker`
  ADD CONSTRAINT `FK7CF3DDC23736536E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK7CF3DDC272A5B4C6` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK36EBCBE669702F` FOREIGN KEY (`user_group_id`) REFERENCES `user_group` (`id`);

--
-- Constraints for table `user_domain_access`
--
ALTER TABLE `user_domain_access`
  ADD CONSTRAINT `FK1C5E77CBB053F86E` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_employee`
--
ALTER TABLE `user_employee`
  ADD CONSTRAINT `FK4A2640A2A4677F8E` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FK4A2640A2B053F86E` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD CONSTRAINT `FK88EF3AC372A5B4C6` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`),
  ADD CONSTRAINT `FK88EF3AC3A4677F8E` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FK88EF3AC3D3FB7B26` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
