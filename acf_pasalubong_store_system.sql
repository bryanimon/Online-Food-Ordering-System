-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2020 at 12:21 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acf_pasalubong_store_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `AdminID` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`AdminID`, `username`, `password`, `email`) VALUES
(1, 'admin', '$2y$10$3lztBbhPlt9SU06EIpGF3OHw6GSDMG6m44wfakllt/8zJAhSkvZ5C', 'acf@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `CartItemID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `MessageID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `Message` longtext,
  `DateSent` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`MessageID`, `Name`, `Email`, `Subject`, `Message`, `DateSent`) VALUES
(1, '123', '123@gasd', '123', '123', '2019-10-10 02:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `DeliveryCode` varchar(255) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `CustomerName` varchar(255) DEFAULT NULL,
  `OrderList` longtext,
  `Total` int(11) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `DateOrdered` datetime DEFAULT CURRENT_TIMESTAMP,
  `DateRecorded` datetime NOT NULL,
  `Status` varchar(255) NOT NULL DEFAULT 'Pending',
  `PaymentMethod` varchar(255) NOT NULL,
  `DeliveryMethod` varchar(255) NOT NULL,
  `OrderLocation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `DeliveryCode`, `UserID`, `CustomerName`, `OrderList`, `Total`, `Address`, `DateOrdered`, `DateRecorded`, `Status`, `PaymentMethod`, `DeliveryMethod`, `OrderLocation`) VALUES
(1, '9VAS2BRD1F', 0, 'Admin', '&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;Cheese Ring&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;1&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;', 70, 'Store', '2019-10-10 01:56:40', '2019-10-10 01:56:42', 'Delivered/Picked up', 'Cash', 'Store', 'Store'),
(2, 'U2IJZPQN7Y', 8, 'Juan Cruz', '&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;Nacho Cheese&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 75&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;1&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 75&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;Cheese Ring&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;1&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;Cheese Puffs&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;1&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;', 215, 'Metro Manila', '2019-10-10 01:57:43', '2019-10-10 01:57:49', 'Delivered/Picked up', 'Cash On Delivery', 'Pickup', 'Online'),
(3, 'DAPQFJ8GTV', 1, 'Bryan Layderos', '&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;Cheese Puffs&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;1&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;Nacho Cheese&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 3&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;1&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 3&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;Cheese Ring&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;1&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;Nacho Cheese&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 75&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;1&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 75&lt;/p&gt;&lt;/div&gt;', 218, 'Metro Manila', '2019-10-10 02:12:40', '2019-10-10 02:15:58', 'Delivered/Picked up', 'Cash On Delivery', 'Pickup', 'Online'),
(4, 'KULDHOAYB8', 2, 'Juan Cruz', '&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;Nacho Cheese&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 75&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;1&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 75&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;Cheese Ring&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;1&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;Cheese Puffs&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;1&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;Nacho Cheese&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 3&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;1&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 3&lt;/p&gt;&lt;/div&gt;', 218, 'Metro Manila', '2019-10-10 02:18:06', '0000-00-00 00:00:00', 'Pending', 'Cash On Delivery', 'Pickup', 'Online'),
(5, '1Z9KIEBMNH', 2, 'Juan Cruz', '&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;Nacho Cheese&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 3&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;1&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 3&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;Cheese Puffs&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;1&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;Cheese Ring&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;1&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;Nacho Cheese&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 75&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;1&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 75&lt;/p&gt;&lt;/div&gt;', 218, 'Metro Manila', '2019-10-10 02:18:23', '0000-00-00 00:00:00', 'Pending', 'Cash On Delivery', 'Pickup', 'Online'),
(6, 'IEM2WYU1GL', 1, 'Bryan Layderos', '&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;Cheese Ring&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;1&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-md-3&quot;&gt;&lt;p&gt;PHP 70&lt;/p&gt;&lt;/div&gt;', 70, 'Metro Manila', '2020-01-24 14:21:49', '0000-00-00 00:00:00', 'Pending', 'Cash On Delivery', 'Delivery', 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductCode` varchar(255) DEFAULT NULL,
  `ProductPrice` int(11) DEFAULT NULL,
  `ProductDescription` longtext,
  `ProductThumbnail` varchar(255) DEFAULT NULL,
  `ProductImages` longtext,
  `ProductHidden` int(11) NOT NULL DEFAULT '0',
  `TotalSales` int(11) NOT NULL DEFAULT '0',
  `ProductQuantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `ProductCode`, `ProductPrice`, `ProductDescription`, `ProductThumbnail`, `ProductImages`, `ProductHidden`, `TotalSales`, `ProductQuantity`) VALUES
(4, 'Nacho Cheese', 'DPK5W', 75, 'Nacho Chips (Cheese Flavor)', '5d9ac242dea904.54685593.jpg', '5d9ac242dea904.54685593.jpg/', 0, 506, 0),
(5, 'Cheese Ring', 'CM3HW', 70, '', '5d9ac3f06f5c27.46188643.jpg', '5d9ac3f06f5c27.46188643.jpg/', 0, 57, 0),
(6, 'Cheese Puffs', 'LXYGJ', 70, 'Cheese Flavored', '5d9b6d78b98d67.57678403.jpg', '5d9b6d78b98d67.57678403.jpg/', 0, 293, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Contact` varchar(255) NOT NULL,
  `TotalOrders` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Name`, `Password`, `Address`, `Email`, `Contact`, `TotalOrders`) VALUES
(1, 'Bryan Layderos', '$2y$10$Ue3ugx9lwZlsAxuO/xTms.tkwUGeeisIFxPT.w5t2GCePPAqT8hnW', 'Metro Manila', 'bryanimon@gmail.com', '123123', 2),
(2, 'Juan Cruz', '$2y$10$.63XPHQvSUKc/0RyoWemMuG3il39.iT36qKT9mXoiNWFlxnipBcQS', 'Metro Manila', 'juancruz@gmail.com', '12312312312', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`CartItemID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`MessageID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `CartItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `MessageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
