-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22 Mar 2016 pada 01.45
-- Versi Server: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kalbe_pas_proxy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_proxy_coa`
--

CREATE TABLE IF NOT EXISTS `m_proxy_coa` (
  `id` int(11) NOT NULL,
  `coa_id_orlansoft` bigint(20) NOT NULL,
  `code` text NOT NULL,
  `description` text NOT NULL,
  `p_date` datetime DEFAULT NULL,
  `p_date_change` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_proxy_supplier`
--

CREATE TABLE IF NOT EXISTS `m_proxy_supplier` (
  `id` int(11) NOT NULL,
  `code` text NOT NULL,
  `name` text NOT NULL,
  `address` text,
  `postcode` varchar(225) DEFAULT NULL,
  `phones` varchar(225) DEFAULT NULL,
  `telex` varchar(225) DEFAULT NULL,
  `fax` varchar(225) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `city` varchar(225) DEFAULT NULL,
  `state` varchar(225) DEFAULT NULL,
  `country` varchar(225) DEFAULT NULL,
  `p_date` datetime DEFAULT NULL,
  `p_date_change` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_proxy_rfp_approver`
--

CREATE TABLE IF NOT EXISTS `t_proxy_rfp_approver` (
  `id` int(11) NOT NULL,
  `rfp_number` varchar(100) NOT NULL,
  `approved_seq` int(11) NOT NULL,
  `approved_by` varchar(120) NOT NULL,
  `approved_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `p_date` datetime NOT NULL,
  `p_date_change` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_proxy_rfp_dtl`
--

CREATE TABLE IF NOT EXISTS `t_proxy_rfp_dtl` (
  `id` int(11) NOT NULL,
  `rfp_number` varchar(225) NOT NULL,
  `coa_code` varchar(100) NOT NULL,
  `coa_desc` varchar(225) NOT NULL,
  `country_code` varchar(20) NOT NULL,
  `total_cost1` float NOT NULL,
  `total_cost2` float NOT NULL,
  `p_date` datetime DEFAULT NULL,
  `p_date_change` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_proxy_rfp_hdr`
--

CREATE TABLE IF NOT EXISTS `t_proxy_rfp_hdr` (
  `id` int(11) NOT NULL,
  `rfp_number` varchar(225) NOT NULL,
  `rfp_date` date NOT NULL,
  `rfp_suppier_code` varchar(225) NOT NULL,
  `rfp_currency1_code` varchar(225) NOT NULL,
  `p_date` datetime DEFAULT NULL,
  `p_date_change` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_proxy_coa`
--
ALTER TABLE `m_proxy_coa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_proxy_supplier`
--
ALTER TABLE `m_proxy_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_proxy_rfp_approver`
--
ALTER TABLE `t_proxy_rfp_approver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_proxy_rfp_dtl`
--
ALTER TABLE `t_proxy_rfp_dtl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_proxy_rfp_hdr`
--
ALTER TABLE `t_proxy_rfp_hdr`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_proxy_coa`
--
ALTER TABLE `m_proxy_coa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `m_proxy_supplier`
--
ALTER TABLE `m_proxy_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_proxy_rfp_approver`
--
ALTER TABLE `t_proxy_rfp_approver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `t_proxy_rfp_dtl`
--
ALTER TABLE `t_proxy_rfp_dtl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `t_proxy_rfp_hdr`
--
ALTER TABLE `t_proxy_rfp_hdr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
