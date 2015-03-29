-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2015 at 04:15 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `mb_posts`
--

CREATE TABLE IF NOT EXISTS `mb_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_title` text CHARACTER SET utf8 NOT NULL,
  `post_content` longtext CHARACTER SET utf8 NOT NULL,
  `post_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mb_posts`
--

INSERT INTO `mb_posts` (`ID`, `post_title`, `post_content`, `post_date`) VALUES
(5, '我的第一篇博文', '<p>Hi, Johnny!</p><p>从现在开始，加油，努力吧！</p>', '2015-03-29'),
(6, 'Johnny‘s 第二篇博文', '<p>Hi，Johnny：</p><p>只有不畏艰难，才能乘舟破浪！</p>', '2015-03-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mb_posts`
--
ALTER TABLE `mb_posts`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mb_posts`
--
ALTER TABLE `mb_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
