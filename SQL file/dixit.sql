-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 26, 2023 at 01:25 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dixit`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobileno` bigint(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` int(11) DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `mobileno`, `country`, `password`, `otp`, `creationDate`, `updationDate`) VALUES
(13, 'dixt', 'dixit@gmail.com', 7041044048, 'India', 'dixit', NULL, '2020-02-29 22:46:54', '02-03-2020 11:23:19 AM'),
(14, 'dharmik', 'dharmik@gmail.com', 12, 'india', 'dharmik', NULL, '2020-02-29 22:46:58', '02-03-2020 11:23:19 AM'),
(15, 'devang', 'devang@gmail.com', 8980239343, 'india', 'devang', NULL, '2020-03-02 10:55:28', ''),
(16, 'dhrumil', 'dhrumil@gmail.com', 7487084481, 'india', 'dhrumil', NULL, '2020-03-02 10:55:28', '');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `productPrice` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `userId`, `productId`, `quantity`, `productPrice`, `size`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(5, 6, '8', 1, 695, '', '2020-06-07 09:18:11', 'cod', NULL),
(6, 6, '8', 1, 695, '', '2020-06-07 09:21:36', 'cod', NULL),
(7, 6, '8', 1, 695, '', '2020-06-07 09:23:58', 'cod', NULL),
(8, 6, '8', 1, 695, '', '2020-06-07 09:25:58', 'cod', NULL),
(9, 6, '8', 1, 695, '', '2020-06-07 09:26:32', 'cod', NULL),
(10, 6, '8', 1, 695, '', '2020-06-07 09:27:16', 'cod', NULL),
(11, 6, '8', 1, 1345, '', '2020-06-07 09:27:55', NULL, NULL),
(12, 6, '8', 1, 1345, '', '2020-06-07 09:29:50', NULL, NULL),
(13, 6, '8', 1, 1345, '', '2020-06-07 09:32:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(19, 'Electronics', '', '2023-04-14 17:10:28', NULL),
(20, 'Watch', '', '2023-04-15 14:59:46', NULL),
(21, 'Books', '', '2023-04-19 19:04:33', NULL),
(22, 'sd', 'sd', '2023-04-25 18:07:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE IF NOT EXISTS `contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `contactus`
--


-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE IF NOT EXISTS `coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(20) NOT NULL,
  `discount` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `coupon_code`, `discount`, `status`, `add_date`) VALUES
(5, 'PRCO82TXYG', 777, 'Valid', '2020-05-08 11:13:56'),
(6, 'PRS2GI6SRF', 55, 'Valid', '2020-05-08 11:13:56'),
(7, 'PRYRAND474', 122, 'Valid', '2020-05-08 11:13:56'),
(9, 'PRSTLKMCFB', 777, 'Valid', '2020-05-08 11:13:56'),
(10, 'PR0XIBCEQI', 999, 'Valid', '2020-05-08 11:13:56'),
(11, 'PRCLLSR1W6', 999, 'Valid', '2020-05-08 11:13:56'),
(12, 'PRE13IFWQI', 34, 'Valid', '2020-05-08 11:13:56'),
(13, 'PR5DXRS839', 99, 'Valid', '2020-05-08 11:13:56'),
(14, 'welcome', 70, 'Valid', '2020-05-08 11:13:56'),
(15, 'happy', 123, 'Valid', '2020-05-08 11:13:56'),
(16, 'PRPFCKSZSI', 99, 'Valid', '2020-05-08 19:25:58'),
(17, 'PR7R6CFRHH', 150, 'Valid', '2020-05-08 19:39:30'),
(18, 'PRVHYG7N79', 150, 'Valid', '2020-05-08 19:40:06'),
(19, 'wel', 30, 'Valid', '2020-06-28 11:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `productPrice` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `userId`, `productId`, `quantity`, `productPrice`, `size`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(6, 26, '6', 1, 2478, '', '2020-05-21 18:48:38', NULL, NULL),
(7, 26, '6', 1, 2478, '', '2020-05-21 18:49:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_rating`
--

CREATE TABLE IF NOT EXISTS `item_rating` (
  `ratingId` int(11) NOT NULL AUTO_INCREMENT,
  `itemId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `ratingNumber` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Block, 0 = Unblock',
  PRIMARY KEY (`ratingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `item_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `ordercancel`
--

CREATE TABLE IF NOT EXISTS `ordercancel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `productPrice` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=367 ;

--
-- Dumping data for table `ordercancel`
--

INSERT INTO `ordercancel` (`id`, `oid`, `userId`, `productId`, `quantity`, `productPrice`, `size`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(357, 149, 29, '25', 2, 141100, '', '2023-04-03 22:38:29', 'cash On Delivery', 'cancel'),
(358, 150, 29, '28', 2, 10300, '', '2023-04-03 22:48:48', 'cash On Delivery', 'cancel'),
(359, 162, 33, '35', 2, 9800, '', '2023-04-07 14:11:42', 'cash On Delivery', 'cancel'),
(360, 171, 35, '28', 1, 10300, '', '2023-04-07 14:57:26', 'cod', 'cancel'),
(361, 179, 39, '46', 2, 17776, '', '2023-04-08 11:39:15', 'cod', 'cancel'),
(362, 149, 29, '25', 2, 141100, '', '2023-04-03 22:38:29', 'cash On Delivery', 'cancel'),
(363, 150, 29, '28', 2, 10300, '', '2023-04-03 22:48:48', 'cash On Delivery', 'cancel'),
(364, 226, 45, '28', 2, 0, '', '2023-04-10 21:28:36', 'cod', 'cancel'),
(365, 226, 45, '28', 2, 0, '', '2023-04-10 21:28:36', 'cod', 'cancel'),
(366, 236, 58, '67', 1, 0, '', '2023-04-24 19:37:58', 'razorpay', 'cancel');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `productPrice` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=241 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `productPrice`, `size`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(165, 33, '25', 1, 141100, 'S', '2023-04-07 14:24:24', 'razorpay', NULL),
(166, 33, '25', 2, 281000, '', '2023-04-07 14:36:40', 'razorpay', NULL),
(167, 33, '26', 1, 37090, '', '2023-04-07 14:38:34', 'razorpay', NULL),
(168, 33, '27', 2, 22200, '', '2023-04-07 14:39:06', 'cod', NULL),
(169, 33, '28', 2, 20300, '', '2023-04-07 14:47:17', 'razorpay', NULL),
(170, 33, '28', 2, 20300, '', '2023-04-07 14:47:18', 'razorpay', NULL),
(171, 35, '28', 1, 10300, '', '2023-04-07 14:57:26', 'cod', 'cancel'),
(172, 36, '26', 3, 111070, '', '2023-04-07 22:39:04', 'razorpay', NULL),
(173, 37, '40', 1, 3500, '', '2023-04-08 09:50:35', 'razorpay', NULL),
(174, 33, '45', 2, 20050, '', '2023-04-08 09:58:17', 'razorpay', NULL),
(175, 33, '27', 2, 22200, '', '2023-04-08 10:06:11', 'razorpay', NULL),
(176, 33, '38', 2, 600, '', '2023-04-08 10:59:34', 'razorpay', NULL),
(177, 33, '27', 2, 22200, '', '2023-04-08 11:04:02', 'razorpay', NULL),
(178, 33, '25', 2, 281000, '', '2023-04-08 11:16:58', 'razorpay', NULL),
(179, 39, '46', 2, 17776, '', '2023-04-08 11:39:15', 'cod', 'cancel'),
(180, 39, '28', 2, 20300, '', '2023-04-08 11:45:16', 'cod', NULL),
(181, 39, '46', 4, 20300, '', '2023-04-08 11:45:16', 'cod', NULL),
(182, 39, '28', 2, 55852, '', '2023-04-08 11:45:16', 'cod', 'inProcess'),
(183, 39, '46', 4, 55852, '', '2023-04-08 11:45:16', 'cod', NULL),
(184, 39, '26', 2, 74080, '', '2023-04-08 11:46:26', 'cod', NULL),
(185, 39, '27', 1, 74080, '', '2023-04-08 11:46:26', 'cod', NULL),
(186, 39, '26', 2, 85280, '', '2023-04-08 11:46:26', 'cod', NULL),
(187, 39, '27', 1, 85280, '', '2023-04-08 11:46:26', 'cod', NULL),
(188, 40, '28', 1, 10300, '', '2023-04-08 11:55:07', 'cod', NULL),
(189, 40, '25', 1, 141100, '', '2023-04-08 11:57:18', 'cod', NULL),
(190, 40, '28', 2, 141100, '', '2023-04-08 11:57:18', 'cod', NULL),
(191, 40, '25', 1, 161400, '', '2023-04-08 11:57:18', 'cod', NULL),
(192, 40, '28', 2, 161400, '', '2023-04-08 11:57:18', 'cod', NULL),
(193, 33, '25', 1, 0, '', '2023-04-08 15:25:37', 'COD', NULL),
(194, 33, '27', 1, 0, '', '2023-04-08 15:25:37', 'COD', NULL),
(195, 42, '25', 1, 0, '', '2023-04-08 15:27:19', 'COD', NULL),
(196, 42, '27', 2, 0, '', '2023-04-08 15:27:19', 'COD', NULL),
(197, 42, '28', 3, 0, '', '2023-04-08 15:27:19', 'COD', NULL),
(198, 33, '28', 1, 0, '', '2023-04-10 00:20:17', 'razorpay', NULL),
(199, 33, '26', 1, 0, '', '2023-04-10 00:30:41', 'razorpay', NULL),
(200, 43, '28', 1, 0, '', '2023-04-10 00:32:24', 'razorpay', NULL),
(201, 33, '27', 2, 22200, '', '2023-04-10 00:34:52', 'razorpay', NULL),
(202, 43, '27', 1, 0, '', '2023-04-10 00:44:13', 'razorpay', NULL),
(203, 43, '26', 2, 74080, '', '2023-04-10 00:49:16', 'razorpay', NULL),
(204, 43, '27', 1, 74080, '', '2023-04-10 00:49:16', 'razorpay', NULL),
(205, 43, '26', 2, 85280, '', '2023-04-10 00:49:16', 'razorpay', NULL),
(206, 43, '27', 1, 85280, '', '2023-04-10 00:49:16', 'razorpay', NULL),
(207, 33, '28', 1, 0, '', '2023-04-10 17:58:43', 'razorpay', NULL),
(208, 33, '28', 2, 20300, '', '2023-04-10 18:01:06', 'razorpay', NULL),
(209, 33, '28', 1, 0, '', '2023-04-10 18:02:20', 'razorpay', NULL),
(210, 33, '28', 1, 0, '', '2023-04-10 18:03:40', 'razorpay', NULL),
(211, 33, '28', 1, 0, '', '2023-04-10 18:05:34', 'razorpay', NULL),
(212, 33, '28', 1, 0, '', '2023-04-10 18:06:10', 'razorpay', NULL),
(213, 33, '28', 1, 10300, '', '2023-04-10 18:07:28', 'razorpay', NULL),
(214, 33, '27', 2, 22200, '', '2023-04-10 18:12:03', 'razorpay', NULL),
(215, 33, '34', 1, 0, '', '2023-04-10 18:15:17', 'razorpay', NULL),
(216, 33, '26', 3, 111070, '', '2023-04-10 18:55:58', 'razorpay', NULL),
(217, 33, '26', 1, 0, '', '2023-04-10 18:56:23', 'razorpay', NULL),
(218, 33, '26', 5, 0, '', '2023-04-10 18:58:43', 'razorpay', NULL),
(219, 33, '26', 5, 0, '', '2023-04-10 18:59:44', 'razorpay', NULL),
(220, 33, '26', 5, 0, '', '2023-04-10 19:01:08', 'razorpay', NULL),
(221, 33, '27', 1, 0, '', '2023-04-10 19:19:53', 'razorpay', NULL),
(222, 33, '25', 2, 0, '', '2023-04-10 19:22:46', 'razorpay', NULL),
(223, 33, '28', 2, 0, '', '2023-04-10 19:22:46', 'razorpay', NULL),
(224, 33, '27', 1, 0, '', '2023-04-10 19:33:13', 'cod', NULL),
(225, 44, '26', 1, 0, '', '2023-04-10 19:34:22', 'razorpay', NULL),
(226, 45, '28', 2, 0, '', '2023-04-10 21:28:36', 'cod', 'cancel'),
(227, 33, '46', 1, 0, '', '2023-04-12 00:03:10', 'razorpay', NULL),
(228, 33, '28', 1, 0, '', '2023-04-12 17:31:23', 'razorpay', NULL),
(229, 56, '26', 1, 0, '', '2023-04-12 17:35:44', 'cod', 'Delivered'),
(230, 57, '28', 1, 0, '', '2023-04-13 21:46:46', 'cod', NULL),
(231, 57, '69', 1, 0, '', '2023-04-17 11:48:33', 'razorpay', 'Delivered'),
(232, 33, '68', 1, 0, '', '2023-04-21 14:51:30', 'cod', NULL),
(233, 33, '70', 1, 0, '', '2023-04-21 14:51:30', 'cod', NULL),
(234, 33, '67', 1, 0, '', '2023-04-21 14:52:27', 'razorpay', NULL),
(235, 33, '73', 1, 0, '', '2023-04-21 14:52:27', 'razorpay', NULL),
(236, 58, '67', 1, 0, '', '2023-04-24 19:37:58', 'razorpay', 'cancel'),
(237, 33, '67', 1, 0, '', '2023-04-24 19:49:51', 'razorpay', NULL),
(238, 59, '79', 1, 0, '', '2023-04-25 18:17:21', 'razorpay', NULL),
(239, 59, '79', 2, 0, '', '2023-04-25 18:18:05', 'razorpay', NULL),
(240, 59, '69', 1, 0, '', '2023-04-25 18:29:09', 'cod', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 231, 'Delivered', 't', '2023-04-23 17:37:20'),
(2, 236, 'Delivered', 'Done-ThankYou', '2023-04-24 19:59:04'),
(3, 240, 'shipped', 'thx', '2023-04-25 18:29:40'),
(4, 240, 'Delivered', 'thx', '2023-04-25 18:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `contact_number` int(11) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `payment`
--


-- --------------------------------------------------------

--
-- Table structure for table `productpurchase`
--

CREATE TABLE IF NOT EXISTS `productpurchase` (
  `purchase_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(255) NOT NULL,
  `subcategory` int(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `suppliername` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `contactno` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `purchasedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `productpurchase`
--


-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(1, 27, 5, 0, 0, 'dixit', 'good', 'good for use', '2023-04-06 22:06:54'),
(2, 27, 1, 0, 0, 'devu', 'not good', 'not buy for daily use\r\n', '2023-04-06 22:07:32'),
(3, 73, 1, 1, 1, 'dixit', 'very bed', 'not good', '2023-04-24 19:04:58'),
(4, 71, 5, 5, 5, 'mahi', 'good', '1  number product\r\n', '2023-04-24 19:05:31'),
(5, 71, 5, 5, 5, 'ggg', 'good', 'very good\r\n', '2023-04-24 19:06:04'),
(6, 67, 5, 5, 5, 'dii', 'ggoo', 'nice', '2023-04-24 19:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `size` varchar(255) NOT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `size`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(67, 19, 38, 'Apple iPhone 12 (64GB) - White', 'Iphone', 53000, 60000, '', '<table class="a-normal a-spacing-micro" style="width: 410.069px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;"><tbody><tr class="a-spacing-small po-brand" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Brand</span></td><td class="a-span9" style="vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Apple</span></td></tr><tr class="a-spacing-small po-model_name" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Model Name</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">iPhone 12 64GB White</span></td></tr><tr class="a-spacing-small po-operating_system" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Operating System</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">iOS 14</span></td></tr><tr class="a-spacing-small po-cellular_technology" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Cellular Technology</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">5G</span></td></tr><tr class="a-spacing-small po-memory_storage_capacity" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Memory Storage Capacity</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">64 GB</span></td></tr><tr class="a-spacing-small po-connectivity_technology" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Connectivity Technology</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">GSM,LTE,WCDMA</span></td></tr><tr class="a-spacing-small po-color" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Colour</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">White</span></td></tr><tr class="a-spacing-small po-display.size" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Screen Size</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">6.1 Inches</span></td></tr><tr class="a-spacing-small po-sim_card_slot_count" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">SIM card slot count</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Single SIM</span></td></tr><tr class="a-spacing-small po-resolution" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Resolution</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">4K</span></td></tr></tbody></table>', '711wsjBtWeL._SX679_.jpg', '81hAAaDTJ5L._SL1500_.jpg', '71djPfkB07L._SL1500_.jpg', 500, 'In Stock', '2023-04-14 17:23:09', NULL),
(68, 19, 38, 'Apple iPhone 14 Pro Max (128 GB) - Deep Purple', 'Iphone', 139900, 150000, '', '<table class="a-normal a-spacing-micro" style="width: 410.069px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;"><tbody><tr class="a-spacing-small po-brand" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Brand</span></td><td class="a-span9" style="vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Apple</span></td></tr><tr class="a-spacing-small po-model_name" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Model Name</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">iPhone</span></td></tr><tr class="a-spacing-small po-wireless_provider" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Network Service Provider</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Unlocked for All Carriers</span></td></tr><tr class="a-spacing-small po-operating_system" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Operating System</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">iOS</span></td></tr><tr class="a-spacing-small po-cellular_technology" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Cellular Technology</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">5G</span></td></tr><tr class="a-spacing-small po-memory_storage_capacity" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Memory Storage Capacity</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">128 GB</span></td></tr><tr class="a-spacing-small po-color" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Colour</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Deep Purple</span></td></tr><tr class="a-spacing-small po-display.size" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Screen Size</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">6.7 Inches</span></td></tr><tr class="a-spacing-small po-wireless_network_technology" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Wireless network technology</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Wi-Fi</span></td></tr><tr class="a-spacing-small po-resolution" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Resolution</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">4K</span></td></tr></tbody></table>', '71yzJoE7WlL._SX569_.jpg', '91wGCiIAniL._SX569_.jpg', '61JhIHbz8qL._SX569_.jpg', 800, 'In Stock', '2023-04-14 17:28:47', NULL),
(69, 19, 38, 'Apple iPhone SE (64 GB) - Midnight (3rd Generation)', 'Iphone', 50000, 65000, '', '<table class="a-normal a-spacing-micro" style="width: 410.069px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;"><tbody><tr class="a-spacing-small po-brand" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Brand</span></td><td class="a-span9" style="vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Apple</span></td></tr><tr class="a-spacing-small po-model_name" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Model Name</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">iPhone SE</span></td></tr><tr class="a-spacing-small po-wireless_provider" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Network Service Provider</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Unlocked for All Carriers</span></td></tr><tr class="a-spacing-small po-operating_system" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Operating System</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">iOS</span></td></tr><tr class="a-spacing-small po-cellular_technology" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Cellular Technology</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">5G</span></td></tr><tr class="a-spacing-small po-memory_storage_capacity" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Memory Storage Capacity</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">64 GB</span></td></tr><tr class="a-spacing-small po-color" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Colour</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Midnight</span></td></tr><tr class="a-spacing-small po-display.size" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Screen Size</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">4.7 Inches</span></td></tr><tr class="a-spacing-small po-wireless_network_technology" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Wireless network technology</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Wi-Fi</span></td></tr><tr class="a-spacing-small po-connector_type" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Connector Type</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Lightning</span></td></tr></tbody></table>', '61TOWf11+jL._SX679_.jpg', '71LnWkSIeAL._SX569_.jpg', '611xLG-BOPL._SX569_.jpg', 800, 'In Stock', '2023-04-14 17:31:22', NULL),
(70, 19, 38, 'Apple iPhone 14 Plus (128 GB) - Blue', 'Iphone', 79000, 89000, '', '<table class="a-normal a-spacing-micro" style="width: 410.069px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;"><tbody><tr class="a-spacing-small po-brand" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Brand</span></td><td class="a-span9" style="vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Apple</span></td></tr><tr class="a-spacing-small po-model_name" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Model Name</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">iPhone</span></td></tr><tr class="a-spacing-small po-wireless_provider" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Network Service Provider</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Unlocked for All Carriers</span></td></tr><tr class="a-spacing-small po-operating_system" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Operating System</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">iOS</span></td></tr><tr class="a-spacing-small po-cellular_technology" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Cellular Technology</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">5G</span></td></tr><tr class="a-spacing-small po-memory_storage_capacity" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Memory Storage Capacity</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">128 GB</span></td></tr><tr class="a-spacing-small po-color" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Colour</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Blue</span></td></tr><tr class="a-spacing-small po-display.size" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Screen Size</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">6.7 Inches</span></td></tr><tr class="a-spacing-small po-wireless_network_technology" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Wireless network technology</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Wi-Fi</span></td></tr><tr class="a-spacing-small po-resolution" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 98.2118px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Resolution</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 311.858px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">4K</span></td></tr></tbody></table>', '61BGE6iu4AL._SL1500_.jpg', '71RFKttvm9L._SX569_.jpg', '61qtRTDkfLL._SL1500_.jpg', 1000, 'In Stock', '2023-04-14 17:34:51', NULL),
(71, 19, 39, 'Samsung 80 cm (32 Inches) Wondertainment Series HD Ready LED Smart TV UA32T4340BKXXL (Glossy Black)', 'Samsung ', 15000, 22000, '', '<table class="a-normal a-spacing-micro" style="width: 637.014px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;"><tbody><tr class="a-spacing-small po-display.size" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Screen Size</span></td><td class="a-span9" style="vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">32 Inches</span></td></tr><tr class="a-spacing-small po-brand" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Brand</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Samsung</span></td></tr><tr class="a-spacing-small po-supported_internet_services" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Supported Internet Services</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Netflix, Prime Video, Zee5, SonyLiv, Youtube, Hotstar</span></td></tr><tr class="a-spacing-small po-display.technology" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Display Technology</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">LED</span></td></tr><tr class="a-spacing-small po-item_depth_width_height" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Product Dimensions</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">8.3D x 73.2W x 43.9H Centimeters</span></td></tr><tr class="a-spacing-small po-resolution" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Resolution</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">768p</span></td></tr><tr class="a-spacing-small po-refresh_rate" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Refresh Rate</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">60 Hz</span></td></tr><tr class="a-spacing-small po-model_name" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Model Name</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">UA32T4340BKXXL</span></td></tr><tr class="a-spacing-small po-included_components" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Mounting Hardware</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">â€Ž1 LED TV, 1 User Manual, 1 Warranty Card, 1 Remote Control</span></td></tr><tr class="a-spacing-small po-connectivity_technology" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Connector Type</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Wi-Fi, USB, Ethernet, HDMI</span></td></tr></tbody></table>', '71a4ZQNqTiL._SX679_.jpg', '71ftBSLomVL._SY355_.jpg', '61ssPHyQelL._SY450_.jpg', 1000, 'In Stock', '2023-04-14 17:40:33', NULL),
(72, 19, 39, 'OnePlus 80 cm (32 inches) Y Series HD Ready LED Smart Android TV 32Y1 (Black)', 'OnePlus ', 12000, 20000, '', '<table class="a-normal a-spacing-micro" style="width: 637.014px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;"><tbody><tr class="a-spacing-small po-display.size" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Screen Size</span></td><td class="a-span9" style="vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">32 Inches</span></td></tr><tr class="a-spacing-small po-brand" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Brand</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">OnePlus</span></td></tr><tr class="a-spacing-small po-supported_internet_services" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Supported Internet Services</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Netflix, Prime Video, YouTube</span></td></tr><tr class="a-spacing-small po-display.technology" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Display Technology</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">LED</span></td></tr><tr class="a-spacing-small po-item_depth_width_height" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Product Dimensions</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">6.5D x 42W x 71.3H Centimeters</span></td></tr><tr class="a-spacing-small po-resolution" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Resolution</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">8K</span></td></tr><tr class="a-spacing-small po-refresh_rate" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Refresh Rate</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">60 Hz</span></td></tr><tr class="a-spacing-small po-special_feature" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Special Feature</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Flat</span></td></tr><tr class="a-spacing-small po-model_name" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Model Name</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">32Y</span></td></tr><tr class="a-spacing-small po-included_components" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Mounting Hardware</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">1 LED TV, 2 Table Stand Base, 1 User Manual, 1 Remote Control, 1AC Cord, 2 AAA Battery</span></td></tr></tbody></table>', '71d5fMDvq9L._SX522_.jpg', '51dP-0keTWL._SY355_.jpg', '71mrIyWol6L._SY355_.jpg', 1000, 'In Stock', '2023-04-14 17:46:44', NULL),
(73, 19, 40, 'Xiaomi NotebookPro QHD+ IPS AntiGlare Display Intel Core i5-11300H 11th Gen 14 inch(35.56 cm) Thin & Light Laptop(8GB/512GB SSD/Iris Xe Graphics/Windows 11/MS Office 21/Backlight KB/FP Sensor/1.4 Kg)', 'Xiaomi ', 56000, 69000, '', '<table class="a-normal a-spacing-micro" style="width: 637.014px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;"><tbody><tr class="a-spacing-small po-brand" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Brand</span></td><td class="a-span9" style="vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Xiaomi</span></td></tr><tr class="a-spacing-small po-model_name" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Model Name</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Mi Notebook</span></td></tr><tr class="a-spacing-small po-display.size" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Screen Size</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">14 Inches</span></td></tr><tr class="a-spacing-small po-color" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Colour</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Lustrous Gray</span></td></tr><tr class="a-spacing-small po-hard_disk.size" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Hard Disk Size</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">512 GB</span></td></tr><tr class="a-spacing-small po-cpu_model.family" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">CPU Model</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Core i5</span></td></tr><tr class="a-spacing-small po-ram_memory.installed_size" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">RAM Memory Installed Size</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">8 GB</span></td></tr><tr class="a-spacing-small po-operating_system" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Operating System</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Windows 11 Home</span></td></tr><tr class="a-spacing-small po-special_feature" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Special Feature</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Anti Glare Screen, Light Weight, Thin</span></td></tr><tr class="a-spacing-small po-graphics_description" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Graphics Card Description</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Integrated</span></td></tr></tbody></table>', '71iiXU7HHkL._SY355_.jpg', '71G4myYJuAL._SY355_.jpg', '61MWRgXyqdL._SY355_.jpg', 1000, 'In Stock', '2023-04-14 17:56:49', NULL);
INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `size`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(74, 19, 40, 'Lenovo V15 AMD Ryzen 3 5300U 15.6" (39.62cm) FHD 250 nits Antiglare Thin and Light Laptop (8GB/512GB SSD/Windows 11/1 Year Onsite Warranty/Iron Grey/1.7 Kg), 82KDA01BIH', 'Lenovo ', 35000, 40000, '', '<table class="a-normal a-spacing-micro" style="width: 637.014px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;"><tbody><tr class="a-spacing-small po-brand" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Brand</span></td><td class="a-span9" style="vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Lenovo</span></td></tr><tr class="a-spacing-small po-model_name" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Model Name</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Lenovo V15 AMD</span></td></tr><tr class="a-spacing-small po-display.size" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Screen Size</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">15.6 Inches</span></td></tr><tr class="a-spacing-small po-color" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Colour</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Iron Grey</span></td></tr><tr class="a-spacing-small po-hard_disk.size" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Hard Disk Size</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">512 GB</span></td></tr><tr class="a-spacing-small po-cpu_model.family" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">CPU Model</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Ryzen 3 5300U</span></td></tr><tr class="a-spacing-small po-ram_memory.installed_size" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">RAM Memory Installed Size</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">8 GB</span></td></tr><tr class="a-spacing-small po-operating_system" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Operating System</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Windows 11 Home</span></td></tr><tr class="a-spacing-small po-special_feature" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Special Feature</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Anti Glare Screen, Light Weight, Thin</span></td></tr><tr class="a-spacing-small po-graphics_description" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Graphics Card Description</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Integrated</span></td></tr></tbody></table>', '51uMR8hdx9L._SY355_.jpg', '51VQC6WfqQL._SX522_.jpg', '61KqZczgmWL._SX522_.jpg', 500, 'In Stock', '2023-04-15 14:59:17', NULL),
(75, 20, 41, 'Citizen Analog Yellow Dial Mens Watch-NJ0150-81Z', 'Citizen ', 25000, 30000, '', '<div id="featurebullets_feature_div" class="celwidget" data-feature-name="featurebullets" data-csa-c-type="widget" data-csa-c-content-id="featurebullets" data-csa-c-slot-id="featurebullets_feature_div" data-csa-c-asin="B09LQS9N9X" data-csa-c-is-in-initial-active-row="false" data-cel-widget="featurebullets_feature_div" data-csa-c-id="mpy6ga-jl56ip-2kj518-crifnn" style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;"><div id="feature-bullets" class="a-section a-spacing-medium a-spacing-top-small" style="margin-bottom: 0px; margin-top: 8px !important;"><ul class="a-unordered-list a-vertical a-spacing-mini" style="margin-bottom: 0px; margin-left: 18px;"><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">Automatic mechanical movement, manufactured by Citizen Watch Co., ltd. This watch is equipped with a movement, Made in Japan.</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">Date Display</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">Operating time of approx. 40 hours when fully wound.</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">1 Year International Warranty</span></li></ul></div></div><div id="provenanceCertifications_feature_div" class="celwidget" data-feature-name="provenanceCertifications" data-csa-c-type="widget" data-csa-c-content-id="provenanceCertifications" data-csa-c-slot-id="provenanceCertifications_feature_div" data-csa-c-asin="B09LQS9N9X" data-csa-c-is-in-initial-active-row="false" data-cel-widget="provenanceCertifications_feature_div" data-csa-c-id="fzntxb-wx8v99-uxfbnk-vsjtpk" style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;"></div><div id="globalStoreInfoBullets_feature_div" class="celwidget" data-feature-name="globalStoreInfoBullets" data-csa-c-type="widget" data-csa-c-content-id="globalStoreInfoBullets" data-csa-c-slot-id="globalStoreInfoBullets_feature_div" data-csa-c-asin="B09LQS9N9X" data-csa-c-is-in-initial-active-row="false" data-cel-widget="globalStoreInfoBullets_feature_div" data-csa-c-id="b7ob6c-c3hz38-j2wg35-609rez" style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;"></div><div id="andonCord_feature_div" class="celwidget" data-feature-name="andonCord" data-csa-c-type="widget" data-csa-c-content-id="andonCord" data-csa-c-slot-id="andonCord_feature_div" data-csa-c-asin="B09LQS9N9X" data-csa-c-is-in-initial-active-row="false" data-cel-widget="andonCord_feature_div" data-csa-c-id="4mqgsc-ec97dg-ioc2f3-hzqmjj" style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;"></div><div id="edpIngress_feature_div" class="celwidget" data-feature-name="edpIngress" data-csa-c-type="widget" data-csa-c-content-id="edpIngress" data-csa-c-slot-id="edpIngress_feature_div" data-csa-c-asin="B09LQS9N9X" data-csa-c-is-in-initial-active-row="false" data-cel-widget="edpIngress_feature_div" data-csa-c-id="1nr0um-dqjcpi-rz4xjp-477dsk" style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;"></div><div id="heroQuickPromo_feature_div" class="celwidget" data-feature-name="heroQuickPromo" data-csa-c-type="widget" data-csa-c-content-id="heroQuickPromo" data-csa-c-slot-id="heroQuickPromo_feature_div" data-csa-c-asin="B09LQS9N9X" data-csa-c-is-in-initial-active-row="false" data-cel-widget="heroQuickPromo_feature_div" data-csa-c-id="6kib5z-qd4j8w-itrleg-ifewxu" style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;"><div id="hero-quick-promo" class="a-row a-spacing-medium" style="width: 430.764px; margin-bottom: 0px !important;"></div></div>', '61z7nYQbhvL._UX385_.jpg', '51SMgz6x6cL._UX385_.jpg', '61KTXYRO2UL._UX385_.jpg', 50, 'In Stock', '2023-04-15 15:04:39', NULL),
(76, 20, 41, 'Noise ColorFit Pro 4 Advanced Bluetooth Calling Smart Watch with 1.72  TruView Display, Fully-Functional Digital Crown, 311 PPI, 60Hz Refresh Rate, 500 NITS Brightness (Charcoal Black)', 'Noise ColorFit', 2500, 3000, '', '<table class="a-normal a-spacing-micro" style="width: 637.014px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;"><tbody><tr class="a-spacing-small po-brand" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Brand</span></td><td class="a-span9" style="vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Noise</span></td></tr><tr class="a-spacing-small po-model_name" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Model Name</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">ColorFit Pro 4</span></td></tr><tr class="a-spacing-small po-style" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Style</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">ColorFit Pro 4</span></td></tr><tr class="a-spacing-small po-color" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Colour</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Charcoal Black</span></td></tr><tr class="a-spacing-small po-display.size" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Screen Size</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">1.72 Inches</span></td></tr><tr class="a-spacing-small po-special_feature" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Special Feature</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Sleep Monitor, Email, Alarm Clock</span></td></tr><tr class="a-spacing-small po-item_shape" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Shape</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Rectangular</span></td></tr><tr class="a-spacing-small po-target_audience" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Target Audience</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Adult</span></td></tr><tr class="a-spacing-small po-age_range_description" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Age Range (Description)</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Youth</span></td></tr><tr class="a-spacing-small po-compatible_devices" style="margin-bottom: 8px !important;"><td class="a-span3" style="vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 152.569px;"><span class="a-size-base a-text-bold" style="font-weight: 700 !important; line-height: 20px !important;">Compatible Devices</span></td><td class="a-span9" style="vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 484.444px;"><span class="a-size-base po-break-word" style="word-break: break-word; line-height: 20px !important;">Laptop, Tablet, Smartphone</span></td></tr></tbody></table>', '61u2dhY-JBL._SX522_.jpg', '61OBCqNOv3L._SY355_.jpg', '61zOPDAhEeL._SY355_.jpg', 250, 'In Stock', '2023-04-15 15:10:38', NULL),
(77, 20, 42, 'TIMEX Analog Womens Watch (Dial Colored Strap)', 'TIMEX', 1800, 2200, '', '<ul class="a-unordered-list a-vertical a-spacing-mini" style="margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;"><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">Case Shape: Round, Dial Glass Material: Mineral Case Material: Brass, Case Diameter: 35 millimeters</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">Band Material: Stainless Steel</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">Water Resistance Depth: 30 meters</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">1 year manufacturer warranty on manufacturing defects</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">Ideal for birthday, anniversary and wedding gift</span></li></ul>', '71Yl+kTwWwL._UY550_.jpg', '71eJmQC5H-S._UX385_.jpg', '61U3OMv2aoL._UX679_.jpg', 100, 'In Stock', '2023-04-15 15:16:02', NULL),
(78, 21, 43, 'Set of 10 Comics Books by DC | Batman, Superman, Justice League, Titans, Green Lantern | Assorted Collection', 'DC Comics', 1250, 1500, '', '<div id="bookDescription_feature_div" class="celwidget" data-feature-name="bookDescription" data-csa-c-type="widget" data-csa-c-content-id="bookDescription" data-csa-c-slot-id="bookDescription_feature_div" data-csa-c-asin="B084MKKS5X" data-csa-c-is-in-initial-active-row="false" data-csa-c-id="sunlsx-39kwud-76cduc-khepu2" data-cel-widget="bookDescription_feature_div" style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; margin-bottom: 10px !important;"><div data-a-expander-name="book_description_expander" data-a-expander-collapsed-height="140" class="a-expander-collapsed-height a-row a-expander-container a-spacing-base a-expander-partial-collapse-container" style="width: 683px; overflow: hidden; position: relative; max-height: 140px; margin-bottom: 12px !important;"><div aria-expanded="false" class="a-expander-content a-expander-partial-collapse-content" style="overflow: hidden; position: relative;">est of DC Comics from USA are Now Available in India as a Pack of 10 Comics. This pack contains Comics of DC Characters only. You will get a Random Collection of 10 Comics which Includes comics of Batman, Superman, Green Lantern, Outsiders, Titans and Many Many More Character. Every Time you order with us, You will get a New Combo of Comics. We have an Available Collection Pool of 25,000+ Comics and we create Combos from this Available Huge Collection. You can order Multiple and sets and you will receive all unique comics titles with No Repetition or Duplicates. These are Not Gotham Comics. These are Comics Published Originally in the USA</div><div><br></div></div></div><div id="globalStoreInfoBullets_feature_div" class="celwidget" data-feature-name="globalStoreInfoBullets" data-csa-c-type="widget" data-csa-c-content-id="globalStoreInfoBullets" data-csa-c-slot-id="globalStoreInfoBullets_feature_div" data-csa-c-asin="B084MKKS5X" data-csa-c-is-in-initial-active-row="false" data-csa-c-id="hoemg2-7oxior-5jztlt-cd88ft" data-cel-widget="globalStoreInfoBullets_feature_div" style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;"></div><div id="edpIngress_feature_div" class="celwidget" data-feature-name="edpIngress" data-csa-c-type="widget" data-csa-c-content-id="edpIngress" data-csa-c-slot-id="edpIngress_feature_div" data-csa-c-asin="B084MKKS5X" data-csa-c-is-in-initial-active-row="false" data-csa-c-id="37gfiz-k4n3fk-3stt9e-2nffrv" data-cel-widget="edpIngress_feature_div" style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;"></div><div id="richProductInformation_feature_div" class="celwidget" data-feature-name="richProductInformation" data-csa-c-type="widget" data-csa-c-content-id="richProductInformation" data-csa-c-slot-id="richProductInformation_feature_div" data-csa-c-asin="B084MKKS5X" data-csa-c-is-in-initial-active-row="false" data-csa-c-id="78vwsl-so9gbt-n1g8tf-k7av3s" data-cel-widget="richProductInformation_feature_div" style="color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;"><div id="rich_product_information" class="a-section a-spacing-none celwidget" data-csa-c-id="cgwrqo-i3ye9i-pvnald-fbrzjd" data-cel-widget="rich_product_information" style="margin-bottom: 0px;"></div></div>', '61VW8DlMSGL._SX258_BO1,204,203,200_.jpg', '81UdjPefRoL.jpg', '81ZKLu1T30L.jpg', 50, 'In Stock', '2023-04-19 19:09:24', NULL),
(79, 19, 46, 'sony fan', 'sony', 8000, 10000, '', 'addgsduh', '13 reasons why s02e13 dual audio {hindi-english} 720p hevc web-dl esub [bollyflix].mkv[2022-10-30 00-12-42.683].jpg', '13 reasons why s02e13 dual audio {hindi-english} 720p hevc web-dl esub [bollyflix].mkv[2022-10-30 00-12-45.649].jpg', '', 505, 'In Stock', '2023-04-25 18:13:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchasereturn`
--

CREATE TABLE IF NOT EXISTS `purchasereturn` (
  `preturn_id` int(11) NOT NULL,
  `suppliername` varchar(255) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`preturn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasereturn`
--


-- --------------------------------------------------------

--
-- Table structure for table `purchasetrack`
--

CREATE TABLE IF NOT EXISTS `purchasetrack` (
  `t_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasetrack`
--


-- --------------------------------------------------------

--
-- Table structure for table `sellreturn`
--

CREATE TABLE IF NOT EXISTS `sellreturn` (
  `sellreturnid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sellreturnid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sellreturn`
--


-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE IF NOT EXISTS `size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `size`, `creationDate`, `updationDate`) VALUES
(1, 'M', '2020-03-20 14:12:40', ''),
(2, 'L', '2020-06-04 21:46:42', ''),
(3, 'S', '2020-06-04 21:46:45', ''),
(4, 'XL', '2020-06-04 21:46:52', ''),
(5, 'XXL', '2020-06-04 21:46:56', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(38, 19, 'Phone', '2023-04-14 17:10:48', NULL),
(39, 19, 'Smart TV', '2023-04-14 17:35:36', NULL),
(40, 19, 'Laptop', '2023-04-14 17:50:53', NULL),
(41, 20, 'Men Watch', '2023-04-15 15:00:04', NULL),
(42, 20, 'Women Watch', '2023-04-15 15:11:51', NULL),
(43, 21, 'Comics', '2023-04-19 19:04:47', NULL),
(44, 21, 'Horror', '2023-04-19 19:18:31', NULL),
(45, 22, 'st', '2023-04-25 18:08:03', NULL),
(46, 19, 'Fan', '2023-04-25 18:09:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE IF NOT EXISTS `subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id`, `email`) VALUES
(1, 'a@gmail.com'),
(2, 'a@gmail.com'),
(3, 'a@gmail.com'),
(4, 'rajmakva883@gmail.com'),
(5, 'nayan7878@gmail.com'),
(6, 'nayan7878@gmail.com'),
(7, 'rajmakva883@gmail.com'),
(8, 'rajmakva883@gmail.com'),
(9, 'wqw@gmail.com'),
(10, 'wqw@gmail.com'),
(11, 'rajmakva883@gmail.com'),
(12, 'rajmakva883@gmail.com'),
(13, 'rajmakva883@gmail.com'),
(14, 'jay@gmail.com'),
(15, 'jay@gmail.com'),
(16, 'jay@gmail.com'),
(17, 'jay@gmail.com'),
(18, 'rajmakva883@gmail.com'),
(19, 'rajmakva883@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=209 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(31, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-13 21:24:17', NULL, 1),
(32, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-13 21:47:53', NULL, 1),
(33, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-13 22:30:49', NULL, 1),
(34, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-14 13:30:12', NULL, 1),
(35, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-14 23:08:27', NULL, 1),
(36, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-14 23:28:19', NULL, 1),
(37, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-15 17:38:55', NULL, 1),
(38, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-15 21:11:01', NULL, 1),
(39, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-16 09:52:00', NULL, 1),
(40, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-16 21:38:32', NULL, 1),
(41, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-17 11:25:03', NULL, 1),
(42, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-18 18:47:36', NULL, 1),
(43, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-18 20:08:54', NULL, 1),
(44, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-18 22:05:59', NULL, 1),
(45, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-19 10:52:18', NULL, 1),
(46, 'vinay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-20 13:23:53', NULL, 1),
(47, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-20 21:25:52', NULL, 1),
(48, 'nayan@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-20 21:38:22', NULL, 1),
(49, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-22 17:46:00', NULL, 1),
(50, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-22 21:01:51', NULL, 1),
(51, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-24 16:34:32', NULL, 1),
(52, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-26 12:56:55', NULL, 1),
(53, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-26 18:39:51', NULL, 1),
(54, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-26 19:54:52', '26-03-2020 08:09:22 PM', 1),
(55, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-27 12:10:50', NULL, 1),
(56, 'jay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-27 18:10:19', NULL, 1),
(57, 'nayan90@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-21 18:13:47', NULL, 0),
(58, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-21 18:14:14', '21-05-2020 07:33:11 PM', 1),
(59, 'nayan90@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-21 19:37:17', NULL, 0),
(60, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-21 19:37:24', NULL, 1),
(61, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-22 10:37:45', NULL, 1),
(62, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-22 14:25:10', NULL, 1),
(63, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-22 20:13:53', NULL, 1),
(64, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-22 22:11:09', NULL, 0),
(65, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-22 22:11:21', NULL, 1),
(66, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-23 15:39:43', '23-05-2020 03:50:08 PM', 1),
(67, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-23 15:50:19', '23-05-2020 03:56:31 PM', 1),
(68, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-23 15:56:42', NULL, 1),
(69, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-23 16:09:12', '23-05-2020 04:11:04 PM', 1),
(70, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-23 16:11:50', '23-05-2020 04:13:13 PM', 1),
(71, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-23 16:13:36', NULL, 1),
(72, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-23 19:08:45', NULL, 1),
(73, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-26 16:41:38', NULL, 1),
(74, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-27 09:20:11', NULL, 1),
(75, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-27 11:27:04', NULL, 1),
(76, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-27 14:09:47', '27-05-2020 02:25:30 PM', 1),
(77, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-29 12:32:41', NULL, 1),
(78, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-30 16:47:15', NULL, 1),
(79, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-30 21:52:37', NULL, 1),
(80, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-05-31 16:52:47', NULL, 1),
(81, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-02 15:28:15', NULL, 1),
(82, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-04 12:30:21', '04-06-2020 12:47:11 PM', 1),
(83, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-04 12:49:56', NULL, 1),
(84, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-04 13:56:01', NULL, 0),
(85, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-04 13:56:08', NULL, 0),
(86, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-04 13:56:14', NULL, 1),
(87, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-05 16:49:13', NULL, 1),
(88, 'rajmakva884@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-05 22:08:20', NULL, 1),
(89, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-06 10:29:53', NULL, 1),
(90, '', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-06 10:39:07', '06-06-2020 12:40:59 PM', 1),
(91, '', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-06 12:41:34', '06-06-2020 02:00:46 PM', 1),
(92, '', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-06 14:04:23', NULL, 1),
(93, '', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-06 14:04:25', '05-04-2023 05:59:25 PM', 1),
(94, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-06 14:48:27', NULL, 0),
(95, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-06 14:48:34', NULL, 1),
(96, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-06 16:58:40', NULL, 1),
(97, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-06 17:00:57', NULL, 0),
(98, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-06 18:50:28', NULL, 0),
(99, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-06 18:50:37', NULL, 1),
(100, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-07 09:11:46', NULL, 1),
(101, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-07 10:48:54', NULL, 0),
(102, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-07 10:49:00', NULL, 1),
(103, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-07 11:29:21', NULL, 0),
(104, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-07 11:29:28', NULL, 1),
(105, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-07 17:39:48', NULL, 1),
(106, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-08 10:25:15', NULL, 1),
(107, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-08 16:41:16', NULL, 0),
(108, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-08 16:41:21', NULL, 0),
(109, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-08 16:41:39', NULL, 1),
(110, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-08 18:50:56', NULL, 1),
(111, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-08 20:02:28', '08-06-2020 09:21:46 PM', 1),
(112, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-09 21:08:45', NULL, 1),
(113, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-10 17:55:26', NULL, 1),
(114, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-11 11:05:44', '11-06-2020 11:36:43 AM', 1),
(115, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-11 11:37:39', NULL, 1),
(116, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-12 09:01:39', NULL, 1),
(117, 'nayan@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-12 10:47:48', '12-06-2020 10:48:14 AM', 1),
(118, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-12 10:48:21', NULL, 0),
(119, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-12 10:48:28', '12-06-2020 10:49:15 AM', 1),
(120, 'divyesh@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-12 10:49:27', '12-06-2020 10:56:46 AM', 1),
(121, 'dipeshmakvana5799@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-12 11:04:46', NULL, 0),
(122, 'nayan', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-12 11:07:40', NULL, 0),
(123, 'nayan', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-12 11:07:47', NULL, 0),
(124, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-12 11:07:53', '12-06-2020 11:45:57 AM', 1),
(125, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-12 13:18:26', NULL, 0),
(126, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-12 13:18:34', NULL, 1),
(127, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-12 13:20:34', NULL, 1),
(128, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-16 16:01:36', NULL, 0),
(129, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-16 16:01:42', NULL, 1),
(130, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-25 18:42:54', '25-06-2020 06:43:01 PM', 1),
(131, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-25 18:43:11', NULL, 1),
(132, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-25 18:47:43', NULL, 0),
(133, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-25 18:47:49', NULL, 1),
(134, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-26 17:46:05', NULL, 1),
(135, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-27 12:21:06', NULL, 1),
(136, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-27 17:43:41', NULL, 1),
(137, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-27 19:27:53', NULL, 0),
(138, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-27 19:28:03', NULL, 1),
(139, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-28 10:48:00', '28-06-2020 10:48:06 AM', 1),
(140, 'yash@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-28 10:48:47', NULL, 1),
(141, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-28 11:41:56', '28-06-2020 11:46:32 AM', 1),
(142, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-06-28 11:52:30', NULL, 1),
(143, 'vijay@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-07-28 18:08:58', NULL, 1),
(144, 'dix@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-03 22:24:11', NULL, 1),
(145, 'dix@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-03 22:48:38', NULL, 1),
(146, 'dixit@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-05 17:19:48', NULL, 1),
(147, 'manav@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-05 17:47:09', NULL, 1),
(148, 'devang@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-06 19:12:09', NULL, 1),
(149, 'dixirt@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-06 22:23:17', NULL, 0),
(150, 'dixitr@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-06 22:23:25', NULL, 0),
(151, 'dixirt@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-06 22:23:36', NULL, 0),
(152, 'd@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-06 22:24:07', NULL, 1),
(153, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-07 14:11:11', NULL, 1),
(154, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-07 14:36:33', NULL, 1),
(155, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-07 14:38:31', NULL, 1),
(156, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-07 14:47:14', '07-04-2023 02:49:36 PM', 1),
(157, 'ds@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-07 14:57:21', NULL, 1),
(158, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-07 17:42:48', NULL, 1),
(159, 'krish@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-07 22:37:54', NULL, 0),
(160, 'krish@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-07 22:38:04', NULL, 0),
(161, 'krish@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-07 22:38:22', '07-04-2023 10:40:34 PM', 1),
(162, 'dr@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-08 09:50:02', '08-04-2023 09:53:10 AM', 1),
(163, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-08 09:58:13', NULL, 1),
(164, 'dr@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-08 10:05:50', NULL, 0),
(165, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-08 10:05:57', '08-04-2023 10:10:14 AM', 1),
(166, 'dixit@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-08 10:53:35', NULL, 0),
(167, 'dixit@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-08 10:53:53', NULL, 0),
(168, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-08 10:59:20', NULL, 1),
(169, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-08 11:01:42', '08-04-2023 11:04:20 AM', 1),
(170, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-08 11:16:47', '08-04-2023 11:17:58 AM', 1),
(171, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-08 11:24:09', NULL, 1),
(172, 't@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-08 11:28:12', '08-04-2023 11:54:00 AM', 1),
(173, 'y@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-08 11:54:50', '08-04-2023 11:55:36 AM', 1),
(174, 'y@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-08 11:57:07', NULL, 1),
(175, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-08 15:25:00', '08-04-2023 03:26:02 PM', 1),
(176, 'abc@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-08 15:26:39', NULL, 0),
(177, 'abc@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-08 15:26:49', NULL, 1),
(178, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-10 00:20:02', '10-04-2023 12:31:22 AM', 1),
(179, 'test@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-10 00:32:04', NULL, 0),
(180, 'test@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-10 00:32:11', '10-04-2023 12:34:32 AM', 1),
(181, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-10 00:34:45', NULL, 1),
(182, 'test@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-10 00:44:02', NULL, 1),
(183, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-10 17:58:28', NULL, 1),
(184, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-10 18:01:02', NULL, 1),
(185, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-10 18:11:55', NULL, 1),
(186, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-10 18:15:12', NULL, 1),
(187, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-10 18:54:33', NULL, 1),
(188, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-10 19:19:38', '10-04-2023 07:31:42 PM', 1),
(189, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-10 19:31:52', '10-04-2023 07:33:39 PM', 1),
(190, 'dw@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-10 19:34:12', NULL, 1),
(191, 'dix@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-10 21:26:30', '10-04-2023 09:27:48 PM', 1),
(192, 'dy@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-10 21:28:27', NULL, 1),
(193, 'dy@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-10 21:30:46', NULL, 1),
(194, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-12 00:03:06', '12-04-2023 12:08:52 AM', 1),
(195, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-12 15:12:07', '12-04-2023 03:21:35 PM', 1),
(196, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-12 17:31:19', '12-04-2023 05:32:00 PM', 1),
(197, 'pandav@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-12 17:35:16', '12-04-2023 05:37:52 PM', 1),
(198, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-13 21:27:00', '13-04-2023 09:44:05 PM', 1),
(199, 'mahi@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-13 21:46:28', NULL, 1),
(200, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-14 11:27:46', NULL, 1),
(201, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-14 11:28:57', NULL, 1),
(202, 'mahi@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-17 11:48:26', NULL, 1),
(203, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-19 18:36:50', '19-04-2023 06:55:29 PM', 1),
(204, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-21 14:51:01', NULL, 1),
(205, 'prit@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-24 19:24:42', NULL, 1),
(206, 'dixir@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-24 19:49:47', '24-04-2023 07:55:51 PM', 1),
(207, 'prit@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-24 19:56:04', NULL, 1),
(208, 'dhar@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-04-25 18:17:08', '25-04-2023 06:29:48 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `otp`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(29, 'dix vaghela ', 'dix@gmail.com', 7041044048, '5e409a36157e88986f65921c308f18bd', NULL, NULL, NULL, NULL, NULL, 'dix', 'di', 'fh', 0, '2023-04-03 22:24:03', NULL),
(32, 'devang sabalpara', 'devang@gmail.com', 1234567890, '7fabcbd06787b08bd6ede4cd1ee6a693', NULL, NULL, NULL, NULL, NULL, 'g-2 starasgahkd', 'guj', 'surat', 123456, '2023-04-06 19:11:45', NULL),
(33, 'dxit', 'dixir@gmail.com', 7894055555, '5e409a36157e88986f65921c308f18bd', NULL, NULL, NULL, NULL, NULL, '78', 'g', 's', 34567, '2023-04-06 22:23:07', NULL),
(34, 'dixit', 'd@gmail.com', 7407888888, '5e409a36157e88986f65921c308f18bd', NULL, NULL, NULL, NULL, NULL, '78', 'jd', 'j', 0, '2023-04-06 22:23:59', NULL),
(35, 'ds', 'ds@gmail.com', 7040444888, '569c818b1e5d5800a1b834580b0ebb22', NULL, NULL, NULL, NULL, NULL, '78', 'kai', 's', 26, '2023-04-07 14:57:10', NULL),
(36, 'krish', 'krish@gmail.com', 8420455405, '5e409a36157e88986f65921c308f18bd', NULL, NULL, NULL, NULL, NULL, '78', 'ijkhdn', 'hfnm', 366, '2023-04-07 22:37:36', NULL),
(38, 'dixttt', 'dp@gmail.com', 8888888888, '5e409a36157e88986f65921c308f18bd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-08 10:05:42', NULL),
(39, 'dix', 't@gmail.com', 9924901801, '5e409a36157e88986f65921c308f18bd', NULL, NULL, NULL, NULL, NULL, ' kails7', 'gu', 's', 394108, '2023-04-08 11:27:48', NULL),
(40, 'd', 'y@gmail.com', 9926555556, '569c818b1e5d5800a1b834580b0ebb22', NULL, NULL, NULL, NULL, NULL, '78', 'b', 'j', 5, '2023-04-08 11:54:37', NULL),
(42, 'abx', 'abc@gmail.com', 7044444444, '569c818b1e5d5800a1b834580b0ebb22', NULL, NULL, NULL, NULL, NULL, '7', 'g', 's', 394, '2023-04-08 15:26:25', NULL),
(43, 'test', 'test@gmail.com', 7044444444, '569c818b1e5d5800a1b834580b0ebb22', NULL, NULL, NULL, NULL, NULL, '7', '5', '5', 5, '2023-04-10 00:31:56', NULL),
(44, 'dw', 'dw@gmail.com', 7044555555, '569c818b1e5d5800a1b834580b0ebb22', NULL, NULL, NULL, NULL, NULL, 'd', 's', 's', 36, '2023-04-10 19:34:04', NULL),
(45, 'dixi', 'dy@gmail.com', 8782566666, '8277e0910d750195b448797616e091ad', NULL, NULL, NULL, NULL, NULL, 's', 'ssss', 'd', 0, '2023-04-10 21:28:20', NULL),
(46, 'd', 'dixit@gmail.com', 0, '569c818b1e5d5800a1b834580b0ebb22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-11 01:16:30', NULL),
(47, 'd', 'dixit@gmail.com', 0, '569c818b1e5d5800a1b834580b0ebb22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-11 01:17:42', NULL),
(48, 'd', 'dixit@gmail.com', 0, '569c818b1e5d5800a1b834580b0ebb22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-11 01:20:55', NULL),
(49, 'd', 'w@gmail.com', 0, '8277e0910d750195b448797616e091ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-11 01:21:16', NULL),
(50, 'd', 'w@gmail.com', 0, '8277e0910d750195b448797616e091ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-11 01:24:37', NULL),
(51, 'd', 'r@gmail.com', 0, '8fa14cdd754f91cc6554c9e71929cce7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-11 01:24:58', NULL),
(52, 'd', 'r@gmail.com', 0, '8fa14cdd754f91cc6554c9e71929cce7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-11 01:27:46', NULL),
(53, 'd', 'r@gmail.com', 0, '8fa14cdd754f91cc6554c9e71929cce7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-11 01:28:16', NULL),
(54, 'r', 'f@gmail.com', 0, '8f14e45fceea167a5a36dedd4bea2543', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-11 01:28:35', NULL),
(55, 'r', 'f@gmail.com', 0, '8f14e45fceea167a5a36dedd4bea2543', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-11 01:32:25', NULL),
(56, 'dharmik', 'pandav@gmail.com', 7041440484, 'b1f2aabece87c9a1acd1075212c1985c', NULL, NULL, NULL, NULL, NULL, '78 kao', 's', 'g', 39415, '2023-04-12 17:35:00', NULL),
(57, 'mahima', 'mahi@gmail.com', 7600392292, '99941a8015cd830b498cd9f0ddf4a500', NULL, NULL, NULL, NULL, NULL, '78 kailash row house ', 'surat', 'guj', 394107, '2023-04-13 21:46:15', NULL),
(58, 'prit sarvaiya', 'prit@gmail.com', 7041044048, '5e409a36157e88986f65921c308f18bd', NULL, NULL, NULL, NULL, NULL, '78 kailash row house new kosad ', 'gujrat', 'surat', 39407, '2023-04-24 19:24:26', NULL),
(59, 'dharmik', 'dhar@gmail.com', 7041040048, '5e409a36157e88986f65921c308f18bd', NULL, NULL, NULL, NULL, NULL, 'd', 'dkm', 'dkm', 354, '2023-04-25 18:16:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(2, 6, 15, '2020-06-28 11:44:33'),
(3, 34, 25, '2023-04-06 22:39:05'),
(4, 34, 27, '2023-04-06 22:39:12'),
(5, 33, 29, '2023-04-13 21:43:50'),
(6, 57, 26, '2023-04-14 11:20:54'),
(7, 33, 68, '2023-04-19 18:36:59'),
(8, 58, 67, '2023-04-24 19:35:47'),
(9, 58, 68, '2023-04-24 19:35:59');
