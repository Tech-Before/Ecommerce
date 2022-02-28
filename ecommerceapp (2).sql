-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2022 at 08:30 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerceapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(5, 'Bruno', 'brunoadmin@gmail.com', '$2y$10$qZ0OoyX8bhAVxDFM/fx8leZSZwlyq15c1C/KTnaqDLSx6eCDJ0VpC', '0'),
(8, 'waqas ahmad', 'waqas@gmail.com', '$2y$10$YKSDtra7v2wH6ORYfry8Ue9t49pk1AvQvdJGuq4lDvFLEcx.kP6Mq', '0'),
(9, 'zain', 'zain@gmail.com', '$2y$10$hdfrUSFY.vEktiW..2q0leD6mFlSdxNXk32Caq4ur.njIhOfMtYra', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Gul Ahmad cloths ( Gents)'),
(3, 'Service shoes ( Gents )'),
(4, 'Jolly shoes ( Gents)'),
(5, 'Bata shoes ( Gents)'),
(6, 'Classic cloths ( Gents )'),
(11, 'TIM-TEX cloths( Gents )'),
(12, 'G.M.T cloths( Gents )'),
(13, 'M.T.R cloths( Gents )'),
(14, 'M.M.T cloths( Gents )'),
(15, 'M.T.J cloths( Gents )'),
(16, 'Fancy Fabrics cloths( Gents )'),
(17, 'Shabbir Fabrics cloths ( Gents )'),
(18, 'Nishath cloths ( Ladies )'),
(19, 'Safair cloths ( Ladies )'),
(20, 'Cardi cloths ( Ladies )'),
(21, 'Bonanza cloths ( Ladies )'),
(22, 'Ar.kad cloths ( Ladies )'),
(23, 'Abrish cloths ( Ladies )'),
(24, 'Safwa cloths ( Ladies )'),
(25, 'Gul Ahmad cloths ( Ladies )'),
(26, 'Mizaj cloths ( Ladies )'),
(27, 'service shoes( Ladies )'),
(28, 'Stylo shoes( Ladies )'),
(29, 'Metro shoes( Ladies )'),
(30, 'Borjan shoes( Ladies )'),
(31, 'Hash papiz shoes( Gents)'),
(32, 'Aerosoft shoes( Gents)'),
(33, 'Kat shoes( Gents)');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 4, '::1', 4, 1),
(6, 4, '::1', 7, 1),
(7, 42, '::1', 7, 1),
(8, 41, '::1', -1, 1),
(11, 44, '::1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(6, 'Cloths'),
(16, 'Shoes');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Completed'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Completed'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(43, 6, 1, 'Cloth', 1500, 5, 'Best Collection', '1644859475_malee.jpg', 'cloths'),
(44, 6, 6, 'Cloths', 1300, 5, 'Best Collection', '1644859629_maleeeee.jpg', 'cloths'),
(45, 6, 18, 'Cloths', 2500, 4, 'Best Collection', '1644859772_mtj female.jpg', 'cloths'),
(46, 6, 15, 'Cloths', 2700, 5, 'Best Collection', '1644860242_mtjj.jpg', 'cloths'),
(47, 6, 23, 'Cloths', 3600, 5, 'Best Collection', '1644860459_mtj femle.jpg', 'cloths'),
(48, 6, 16, 'Cloths', 2100, 5, 'Best Collection', '1644860588_fancy malee.jpg', 'cloths'),
(49, 6, 14, 'Cloths', 3200, 3, 'Best Collection', '1644860665_MMT.jpg', 'cloths'),
(50, 6, 11, 'Cloths', 5000, 5, 'Best Collection', '1644860743_time-tex male.jpg', 'cloths'),
(51, 6, 13, 'Cloths', 4300, 2, 'Best Collection', '1644860811_MTR MALE.jpg', 'cloths'),
(53, 6, 19, 'Cloths', 3300, 5, 'Best Collection', '1645002461_IMG-20220216-WA0057.jpg', 'cloths'),
(54, 6, 20, 'Cloths', 3000, 5, 'Best Collection', '1645002519_IMG-20220216-WA0039.jpg', 'cloths'),
(55, 6, 21, 'cloths', 7000, 5, 'Best Collection', '1645002584_IMG-20220216-WA0064.jpg', 'cloths'),
(56, 6, 22, 'Cloths', 3500, 5, 'Best Collection', '1645002657_IMG-20220216-WA0046.jpg', 'cloths'),
(57, 6, 24, 'Cloths', 2700, 5, 'Best Collection', '1645002758_IMG-20220216-WA0059.jpg', 'cloths'),
(58, 6, 26, 'Cloths', 3300, 5, 'Best Collection', '1645002880_IMG-20220216-WA0023.jpg', 'cloths'),
(59, 16, 3, 'Shoes', 3300, 5, 'Best Collection', '1645006009_SERVICE.jpg', 'shoes'),
(60, 16, 5, 'Shoes', 4300, 5, 'Best Collection', '1645005943_batta mALE.jpg', 'shoes'),
(61, 16, 27, 'shoes', 3200, 5, 'Best Collection', '1645006132_SERVIC.jpg', 'shoes'),
(62, 16, 28, 'shoes', 4800, 5, 'Best Collection', '1645006213_stylooo.jpg', 'shoes'),
(63, 16, 28, 'shoes', 2300, 5, 'Best Collection', '1645006302_stylo.jpg', 'shoes'),
(64, 16, 29, 'shoes', 3600, 5, 'Best Collection', '1645006364_metroo.jpg', 'shoes'),
(65, 16, 29, 'shoes', 4100, 5, 'Best Collection', '1645006413_metro.jpg', 'shoes'),
(66, 16, 31, 'shoes', 9000, 5, 'Best Collection', '1645006464_hashpapiz.jpg', 'shoes'),
(67, 16, 32, 'shoes', 5400, 5, 'Best Collection', '1645006576_aerosoftt.jpg', 'shoes'),
(68, 16, 32, 'shoes', 2900, 5, 'Best Collection', '1645006694_aerosoft.jpg', 'shoes'),
(69, 16, 30, 'shoes', 5100, 5, 'Best Collection', '1645006904_borjn.jpg', 'shoes'),
(70, 16, 33, 'shoes', 7200, 5, 'Best Collection', '1645006944_kat.png', 'shoes');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Christine', 'Randolph', 'randolphc@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', '2133  Hill Haven Drive', 'Terra Stree'),
(2, 'Will', 'Willams', 'willainswill@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', '4567  Orphan Road', 'WI'),
(3, 'Demo', 'Name', 'demo@gmail.com', 'password', '9876543210', 'demo ad1', 'ademo ad2'),
(5, 'Steeve', 'Rogers', 'steeve1@gmail.com', '305e4f55ce823e111a46a9d500bcb86c', '9876547770', '573  Pinewood Avenue', 'MN'),
(6, 'Melissa', 'Gilbert', 'gilbert@gmail.com', '305e4f55ce823e111a46a9d500bcb86c', '7845554582', '1711  McKinley Avenue', 'MA'),
(7, 'zain', 'shah', 'zain208shah@gmail.com', 'd428c0f3860a252c2ae2109130bb009c', '3497290945', '92 boat land', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
