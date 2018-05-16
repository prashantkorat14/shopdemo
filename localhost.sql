-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 16, 2018 at 08:23 AM
-- Server version: 5.6.38
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Table structure for table `s_cart`
--

CREATE TABLE `s_cart` (
  `cart_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `c_transport_type` int(11) NOT NULL,
  `c_total_amount` float(5,2) NOT NULL,
  `c_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `s_cart_items`
--

CREATE TABLE `s_cart_items` (
  `cate_item_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `ci_price` float(5,2) NOT NULL,
  `ci_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `s_products`
--

CREATE TABLE `s_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_desc` text NOT NULL,
  `p_price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `s_product_reviews`
--

CREATE TABLE `s_product_reviews` (
  `product_review_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pr_rate` int(1) NOT NULL,
  `pr_desc` text NOT NULL,
  `pr_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `s_users`
--

CREATE TABLE `s_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_email` varchar(255) NOT NULL,
  `u_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_users`
--

INSERT INTO `s_users` (`user_id`, `u_name`, `u_email`, `u_password`) VALUES
(1, 'test', 'test@test.tes', '098f6bcd4621d373cade4e832627b4f6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `s_cart`
--
ALTER TABLE `s_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `s_cart_items`
--
ALTER TABLE `s_cart_items`
  ADD PRIMARY KEY (`cate_item_id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `s_products`
--
ALTER TABLE `s_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `s_product_reviews`
--
ALTER TABLE `s_product_reviews`
  ADD PRIMARY KEY (`product_review_id`),
  ADD KEY `pr product_id` (`product_id`),
  ADD KEY `pr user_id` (`user_id`);

--
-- Indexes for table `s_users`
--
ALTER TABLE `s_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `s_cart`
--
ALTER TABLE `s_cart`
  MODIFY `cart_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `s_cart_items`
--
ALTER TABLE `s_cart_items`
  MODIFY `cate_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `s_products`
--
ALTER TABLE `s_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `s_product_reviews`
--
ALTER TABLE `s_product_reviews`
  MODIFY `product_review_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `s_users`
--
ALTER TABLE `s_users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `s_cart`
--
ALTER TABLE `s_cart`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `s_users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `s_cart_items`
--
ALTER TABLE `s_cart_items`
  ADD CONSTRAINT `cart_id` FOREIGN KEY (`cart_id`) REFERENCES `s_cart` (`cart_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `s_products` (`product_id`);

--
-- Constraints for table `s_product_reviews`
--
ALTER TABLE `s_product_reviews`
  ADD CONSTRAINT `pr product_id` FOREIGN KEY (`product_id`) REFERENCES `s_products` (`product_id`),
  ADD CONSTRAINT `pr user_id` FOREIGN KEY (`user_id`) REFERENCES `s_users` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
