-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2020 at 09:47 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobileno` bigint(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `mobileno`, `country`, `password`, `creationDate`, `updationDate`) VALUES
(12, 'nayan', 'nayan@gmail.com', 1999999999, 'india', '2222', '2020-02-28 04:10:38', '01-03-2020 10:53:32 PM'),
(13, 'nitesh', 'nitesh@gmail.com', 12, 'austalia', '3333', '2020-02-29 17:16:54', '02-03-2020 11:23:19 AM'),
(14, 'nitesh', 'nitesh@gmail.com', 12, '', '3333', '2020-02-29 17:16:58', '02-03-2020 11:23:19 AM'),
(15, 'darshan', 'darshan@gmail.com', 8980239343, 'india', '1010', '2020-03-02 05:25:28', ''),
(16, 'divyesh', 'divyesh@gmail.com', 7487084481, 'india', '1010', '2020-03-02 05:25:28', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Mens', 'All Types Of Mens Products', '2020-03-01 17:33:10', '01-03-2020 11:03:48 PM'),
(2, 'Womens', 'Womens all product', '2020-03-02 05:35:14', '02-03-2020 11:05:53 AM'),
(3, 'Kids', 'baby and kids products', '2020-03-17 03:59:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` int(11) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `contact`, `message`) VALUES
(1, 'Nayan', 'a@gmail.com', 2147483647, 'help'),
(2, 'Nayan', 'a@gmail.com', 2147483647, 'help'),
(3, 'Nayan', 'a@gmail.com', 2147483647, 'help'),
(4, 'Nayan', 'a@gmail.com', 2147483647, 'help'),
(5, 'Nayan', 'a@gmail.com', 2147483647, 'help'),
(6, 'Nayan', 'a@gmail.com', 2147483647, 'help'),
(7, 'Nayan', 'a@gmail.com', 2147483647, 'help'),
(8, 'Nayan', 'a@gmail.com', 2147483647, 'help'),
(9, 'Nayan', 'a@gmail.com', 2147483647, 'help'),
(10, 'Nayan', 'a@gmail.com', 2147483647, 'help'),
(11, 'Nayan', 'a@gmail.com', 2147483647, 'help'),
(12, 'Nayan', 'a@gmail.com', 2147483647, 'help'),
(13, 'Nayan', 'a@gmail.com', 2147483647, 'help'),
(14, 'Nayan', 'a@gmail.com', 2147483647, 'help'),
(15, 'Nayan', 'a@gmail.com', 2147483647, 'help'),
(16, 'Nayan', 'a@gmail.com', 2147483647, 'help');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `productPrice` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `productPrice`, `size`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(32, 1, '8', 1, 695, '', '2020-03-12 06:25:25', 'cod', NULL),
(33, 1, '7', 1, 878, '', '2020-03-12 08:06:16', 'paypal', NULL),
(35, 1, '7', 4, 3278, '', '2020-03-12 08:12:22', 'paypal', NULL),
(36, 1, '6', 1, 1278, '', '2020-03-12 08:13:50', 'cod', 'in Process'),
(37, 1, '5', 1, 1134, '', '2020-03-13 15:55:27', 'cod', NULL),
(38, 1, '6', 4, 4878, '', '2020-03-14 17:38:31', 'paypal', NULL),
(39, 1, '6', 4, 4878, '', '2020-03-14 17:41:02', 'paypal', NULL),
(40, 1, '6', 4, 4878, '', '2020-03-14 17:45:06', 'paypal', NULL),
(41, 1, '8', 1, 695, '', '2020-03-14 17:58:38', 'paypal', NULL),
(42, 1, '7', 1, 878, '', '2020-03-15 12:09:00', 'paypal', NULL),
(43, 1, '7', 1, 878, '', '2020-03-15 12:14:43', 'paypal', NULL),
(44, 1, '7', 1, 878, '', '2020-03-15 12:15:37', 'paypal', NULL),
(45, 1, '7', 1, 878, '', '2020-03-15 12:22:30', '', NULL),
(46, 1, '7', 1, 878, '', '2020-03-15 12:35:30', '', NULL),
(47, 1, '5', 1, 1134, '', '2020-03-15 13:06:28', '', NULL),
(48, 1, '5', 1, 1134, '', '2020-03-15 13:09:20', 'paypal', NULL),
(49, 1, '4', 1, 5065, '', '2020-03-15 15:41:10', 'paypal', NULL),
(50, 1, '4', 1, 5065, '', '2020-03-15 16:55:33', 'paypal', NULL),
(51, 1, '8', 1, 5065, '', '2020-03-15 16:55:33', 'paypal', NULL),
(52, 1, '4', 1, 5760, '', '2020-03-15 16:55:34', 'paypal', NULL),
(53, 1, '8', 1, 5760, '', '2020-03-15 16:55:34', 'paypal', NULL),
(54, 1, '4', 1, 5065, '', '2020-03-15 17:03:12', 'razorpay', NULL),
(55, 1, '8', 1, 5065, '', '2020-03-15 17:03:12', 'razorpay', NULL),
(56, 1, '4', 1, 5760, '', '2020-03-15 17:03:12', 'razorpay', NULL),
(57, 1, '8', 1, 5760, '', '2020-03-15 17:03:12', 'razorpay', NULL),
(58, 1, '4', 3, 15065, '', '2020-03-15 17:15:01', 'razorpay', NULL),
(59, 1, '4', 3, 15065, '', '2020-03-15 17:20:27', 'razorpay', NULL),
(60, 1, '8', 1, 15065, '', '2020-03-15 17:20:27', 'razorpay', NULL),
(61, 1, '4', 3, 15760, '', '2020-03-15 17:20:27', 'razorpay', NULL),
(62, 1, '8', 1, 15760, '', '2020-03-15 17:20:27', 'razorpay', NULL),
(63, 1, '4', 3, 15065, '', '2020-03-15 17:22:35', 'razorpay', NULL),
(64, 1, '8', 1, 15065, '', '2020-03-15 17:22:35', 'razorpay', NULL),
(65, 1, '4', 3, 15760, '', '2020-03-15 17:22:35', 'razorpay', NULL),
(66, 1, '8', 1, 15760, '', '2020-03-15 17:22:35', 'razorpay', NULL),
(67, 1, '4', 3, 15065, '', '2020-03-15 17:25:36', 'razorpay', NULL),
(68, 1, '8', 1, 15065, '', '2020-03-15 17:25:36', 'razorpay', NULL),
(69, 1, '4', 3, 15760, '', '2020-03-15 17:25:36', 'razorpay', NULL),
(70, 1, '8', 1, 15760, '', '2020-03-15 17:25:36', 'razorpay', NULL),
(71, 1, '7', 1, 878, '', '2020-03-16 04:22:16', 'razorpay', NULL),
(72, 1, '7', 1, 878, '', '2020-03-16 04:39:30', 'razorpay', NULL),
(73, 1, '7', 1, 878, '', '2020-03-16 05:35:59', 'razorpay', NULL),
(74, 12, '4', 1, 1, '', '2020-03-16 05:40:44', 'razorpay', NULL),
(75, 12, '7', 1, 878, '', '2020-03-16 06:03:35', 'razorpay', NULL),
(76, 1, '5', 1, 1134, '', '2020-03-18 14:39:09', 'razorpay', NULL),
(77, 1, '6', 1, 1278, '', '2020-03-19 05:22:40', 'razorpay', NULL),
(78, 1, '4', 1, 1, '', '2020-03-19 05:30:29', 'razorpay', NULL),
(79, 12, '4', 1, 1, '', '2020-03-19 07:15:47', 'razorpay', NULL),
(80, 12, '4', 1, 1, '', '2020-03-19 07:53:09', 'razorpay', NULL),
(81, 12, '4', 2, 2, '', '2020-03-19 08:19:24', 'razorpay', NULL),
(82, 12, '5', 1, 2, '', '2020-03-19 08:19:24', 'razorpay', NULL),
(83, 12, '4', 2, 1136, '', '2020-03-19 08:19:24', 'razorpay', NULL),
(84, 12, '5', 1, 1136, '', '2020-03-19 08:19:24', 'razorpay', NULL),
(85, 4, '5', 1, 1134, '', '2020-03-20 07:54:18', 'razorpay', NULL),
(87, 4, '5', 1, 1134, '', '2020-03-20 08:14:34', 'cod', NULL),
(88, 4, '5', 1, 1134, '', '2020-03-20 08:36:49', 'razorpay', NULL),
(89, 2, '6', 1, 1278, '', '2020-03-20 16:51:15', 'razorpay', NULL),
(90, 2, '4', 1, 1, '', '2020-03-20 16:51:56', 'razorpay', NULL),
(91, 1, '7', 1, 878, '', '2020-03-22 15:31:55', 'cod', NULL),
(92, 1, '7', 1, 878, '', '2020-03-24 11:04:37', 'razorpay', NULL),
(93, 1, '4', 1, 2, '', '2020-03-27 13:06:41', 'razorpay', NULL),
(94, 1, '4', 1, 1, '', '2020-03-27 13:07:41', 'razorpay', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'shipped', '2020-03-07 16:41:16'),
(2, 3, 'Delivered', 'deliverd', '2020-03-07 16:41:45'),
(3, 4, 'in Process', 'shipped to supplyer', '2020-03-07 16:47:47'),
(4, 4, 'in Process', 'current state', '2020-03-07 16:48:26'),
(5, 4, 'in Process', 'current city', '2020-03-07 16:48:41'),
(6, 4, 'in Process', 'current location hub', '2020-03-07 16:49:00'),
(7, 4, 'Delivered', 'collected by customer', '2020-03-07 16:49:16'),
(8, 1, 'in Process', 'order shipped', '2020-03-09 05:13:21'),
(9, 1, 'in Process', 'state', '2020-03-09 05:13:47'),
(10, 1, 'Delivered', 'collect by customer', '2020-03-10 08:33:52'),
(11, 2, 'Delivered', 'delivered', '2020-03-11 08:22:26'),
(12, 5, 'in Process', 'cancelled\r\n', '2020-03-11 16:46:45'),
(13, 4, 'cancel', 'cancelled', '2020-03-11 16:50:20'),
(14, 3, 'cancel', 'cancelled', '2020-03-11 16:59:41'),
(15, 3, 'Delivered', 'delivered', '2020-03-11 17:00:29'),
(16, 5, 'in Process', 'cancelled', '2020-03-11 17:15:57'),
(17, 36, 'in Process', 'process', '2020-03-12 08:14:58'),
(18, 30, 'in Process', 'process', '2020-03-13 05:33:41'),
(19, 30, 'in Process', 'process', '2020-03-13 05:34:51'),
(20, 30, 'in Process', 'current state', '2020-03-13 05:35:40'),
(21, 36, 'in Process', 'shipped', '2020-03-14 04:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `contact_number` int(11) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `created_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(1, 6, 5, 5, 5, 'jay', 'good', 'good', '2020-03-26 07:01:11'),
(2, 8, 5, 5, 5, 'nayan', 'good', 'good', '2020-03-27 13:39:24');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
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
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `size`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(4, 1, 1, 'nike', 'ndworld', 1, 7000, 'M', 'confortable<br>', 'index1.jfif', 'index3.jfif', 'index.jfif', 0, 'In Stock', '2020-03-02 08:05:46', NULL),
(5, 2, 2, 'wasten', 'indian', 1100, 1200, '', 'baranded<br>', 'ima00.jfif', 'ima88.jfif', '', 34, 'In Stock', '2020-03-12 06:18:53', NULL),
(6, 2, 2, 'stylish dress', 'creap', 1200, 1300, 'M', 'new arrival<br>', 'ima123.jfif', 'ima777.jfif', 'ima888.jfif', 78, 'In Stock', '2020-03-12 06:20:07', NULL),
(7, 1, 3, 't-shirts', 'puma', 800, 900, '', 'new arrival<br>', 'images99.jfif', 'images66.jfif', '', 78, 'In Stock', '2020-03-12 06:21:55', NULL),
(8, 1, 3, 'shirts', 'ndworld', 650, 700, '', 'shirts<br>', 'images15.jfif', 'index14.jfif', 'images14.jfif', 45, 'In Stock', '2020-03-12 06:22:49', NULL),
(9, 2, 13, 'Aakarsha Ensemble Women Kurta Sets', 'Aakarsha Ensemble', 700, 800, 'M', '<div>Catalog Name:Aakarsha Ensemble Women Kurta Sets</div><div>Kurta Fabric: Rayon</div><div>Bottomwear Fabric: Rayon</div><div>Sleeve Length: Three-Quarter Sleeves</div><div>Set Type: Kurta With Bottomwear</div><div>Bottom Type: Dhoti Pants</div><div>Pattern: Printed</div><div>Multipack: single</div><div>Sizes:&nbsp;</div><div>XL (Bust Size: 42 in, Kurta Length Size: 35 in, Bottom Waist Size: Free Size (Upto 38 in ), Bottom Length Size: 39 in)&nbsp;</div><div>L (Bust Size: 40 in, Kurta Length Size: 35 in, Bottom Waist Size: Free Size (Upto 38 in ), Bottom Length Size: 39 in)&nbsp;</div><div>M (Bust Size: 38 in, Kurta Length Size: 35 in, Bottom Waist Size: Free Size (Upto 38 in ), Bottom Length Size: 39 in)&nbsp;</div><div>Dispatch: 2-3 Days</div><div>Easy Returns Available In Case Of Any Issue</div>', 'WhatsApp Image 2020-03-22 at 18.56.11 (2).jpeg', 'WhatsApp Image 2020-03-22 at 18.56.11 (1).jpeg', 'WhatsApp Image 2020-03-22 at 18.56.11.jpeg', 50, 'In Stock', '2020-03-22 13:29:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `size`, `creationDate`, `updationDate`) VALUES
(1, 'M', '2020-03-20 08:42:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Shoes', '2020-03-01 17:34:10', NULL),
(2, 2, 'dress', '2020-03-02 05:36:36', NULL),
(3, 1, 'cloths', '2020-03-12 06:20:48', NULL),
(4, 1, 'Kurtas', '2020-03-17 04:00:36', NULL),
(5, 1, 'Suits and Blazers', '2020-03-17 04:01:03', NULL),
(6, 1, 'Jens', '2020-03-17 04:01:16', NULL),
(7, 1, 'Shorts 3/4ths', '2020-03-17 04:01:46', NULL),
(8, 1, 'Track pants', '2020-03-17 04:02:15', NULL),
(9, 1, 'Tie,Shocks,Caps & more', '2020-03-17 04:03:11', NULL),
(10, 1, 'Kurta pyjama & more', '2020-03-17 04:04:48', '17-03-2020 09:36:56 AM'),
(11, 1, 'Fabrics', '2020-03-17 04:05:10', NULL),
(12, 2, 'Sarees', '2020-03-17 04:05:52', NULL),
(13, 2, 'Kurtas and Kurti', '2020-03-17 04:06:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'nayan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-29 17:25:12', NULL, 0),
(2, 'jay@gmail.coM', 0x3a3a3100000000000000000000000000, '2020-02-29 17:25:58', NULL, 1),
(3, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-02 05:41:53', '02-03-2020 11:14:46 AM', 1),
(4, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-02 05:45:09', NULL, 1),
(5, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-02 06:42:27', NULL, 0),
(6, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-02 06:42:42', NULL, 0),
(7, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-02 06:44:35', '02-03-2020 12:29:53 PM', 1),
(8, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-02 07:00:04', '02-03-2020 12:33:11 PM', 1),
(9, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-02 07:04:11', NULL, 1),
(10, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-02 08:25:24', NULL, 1),
(11, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-02 08:27:41', NULL, 1),
(12, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-07 16:46:18', NULL, 0),
(13, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-07 16:46:30', NULL, 0),
(14, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-07 16:46:42', NULL, 1),
(15, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-08 15:40:35', '08-03-2020 09:23:44 PM', 1),
(16, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-08 15:53:53', NULL, 1),
(17, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-08 16:59:30', NULL, 1),
(18, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-08 17:01:51', '09-03-2020 08:41:40 AM', 1),
(19, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-09 03:11:48', NULL, 1),
(20, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-09 05:12:33', NULL, 1),
(21, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-09 05:41:27', NULL, 1),
(22, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-11 04:47:21', NULL, 1),
(23, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-11 08:18:27', '11-03-2020 01:56:59 PM', 1),
(24, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-11 08:27:13', NULL, 1),
(25, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-11 16:34:24', NULL, 1),
(26, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-12 03:46:23', NULL, 1),
(27, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-12 04:50:05', NULL, 1),
(28, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-12 05:47:33', NULL, 1),
(29, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-12 08:06:11', NULL, 1),
(30, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-12 16:42:33', NULL, 1),
(31, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-13 15:54:17', NULL, 1),
(32, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-13 16:17:53', NULL, 1),
(33, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-13 17:00:49', NULL, 1),
(34, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-14 08:00:12', NULL, 1),
(35, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-14 17:38:27', NULL, 1),
(36, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-14 17:58:19', NULL, 1),
(37, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-15 12:08:55', NULL, 1),
(38, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-15 15:41:01', NULL, 1),
(39, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-16 04:22:00', NULL, 1),
(40, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-16 16:08:32', NULL, 1),
(41, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-17 05:55:03', NULL, 1),
(42, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-18 13:17:36', NULL, 1),
(43, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-18 14:38:54', NULL, 1),
(44, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-18 16:35:59', NULL, 1),
(45, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-19 05:22:18', NULL, 1),
(46, 'vinay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-20 07:53:53', NULL, 1),
(47, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-20 15:55:52', NULL, 1),
(48, 'nayan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-20 16:08:22', NULL, 1),
(49, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-22 12:16:00', NULL, 1),
(50, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-22 15:31:51', NULL, 1),
(51, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-24 11:04:32', NULL, 1),
(52, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-26 07:26:55', NULL, 1),
(53, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-26 13:09:51', NULL, 1),
(54, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-26 14:24:52', '26-03-2020 08:09:22 PM', 1),
(55, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-27 06:40:50', NULL, 1),
(56, 'jay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-27 12:40:19', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'jay', 'jay@gmail.com', 122333, 'dbc4d84bfcfe2284ba11beffb853a8c4', 'vishal nager', 'gujarat', 'surat', 395008, 'vishal nagar', 'gujarat', 'surat', 395008, '2020-02-29 17:25:42', '02-03-2020 11:14:26 AM'),
(2, 'nayan', 'nayan@gmail.com', 7878548818, '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-19 17:17:20', NULL),
(3, 'divyesh', 'divyesh@gmail.com', 7878548818, '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-19 17:20:25', NULL),
(4, 'vinay', 'vinay@gmail.com', 7878548818, '934b535800b1cba8f96a5d72f72f1611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-19 17:20:50', NULL),
(5, 'vinay', 'vinay@gmail.com', 7878548818, '934b535800b1cba8f96a5d72f72f1611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-19 17:21:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
