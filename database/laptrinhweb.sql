-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 01:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laptrinhweb`
--
CREATE DATABASE IF NOT EXISTS `laptrinhweb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `laptrinhweb`;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `updated_at`, `created_at`) VALUES
(1, 1, '2024-03-21 17:55:04', '2024-03-21 17:55:04'),
(2, 2, '2024-03-21 17:55:04', '2024-03-21 17:55:04'),
(3, 3, '2024-03-21 17:55:04', '2024-03-21 17:55:04'),
(4, 4, '2024-03-21 17:55:04', '2024-03-21 17:55:04'),
(5, 5, '2024-03-21 17:55:04', '2024-03-21 17:55:04'),
(6, 2, '2024-03-21 17:55:04', '2024-03-21 17:55:04'),
(7, 1, '2024-03-21 18:28:47', '2024-03-21 18:28:47'),
(8, 2, '2024-03-21 18:28:47', '2024-03-21 18:28:47'),
(9, 3, '2024-03-21 18:28:47', '2024-03-21 18:28:47'),
(10, 4, '2024-03-21 18:28:47', '2024-03-21 18:28:47'),
(11, 5, '2024-03-21 18:28:47', '2024-03-21 18:28:47'),
(12, 6, '2024-03-21 18:28:47', '2024-03-21 18:28:47'),
(13, 7, '2024-03-21 18:28:47', '2024-03-21 18:28:47'),
(14, 8, '2024-03-21 18:28:47', '2024-03-21 18:28:47'),
(15, 9, '2024-03-21 18:28:47', '2024-03-21 18:28:47'),
(16, 10, '2024-03-21 18:28:47', '2024-03-21 18:28:47'),
(17, 1, '2024-03-21 18:29:15', '2024-03-21 18:29:15'),
(18, 2, '2024-03-21 18:29:15', '2024-03-21 18:29:15'),
(19, 3, '2024-03-21 18:29:15', '2024-03-21 18:29:15'),
(20, 4, '2024-03-21 18:29:15', '2024-03-21 18:29:15'),
(21, 5, '2024-03-21 18:29:15', '2024-03-21 18:29:15'),
(22, 6, '2024-03-21 18:29:15', '2024-03-21 18:29:15'),
(23, 7, '2024-03-21 18:29:15', '2024-03-21 18:29:15'),
(24, 8, '2024-03-21 18:29:15', '2024-03-21 18:29:15'),
(25, 9, '2024-03-21 18:29:15', '2024-03-21 18:29:15'),
(26, 10, '2024-03-21 18:29:15', '2024-03-21 18:29:15'),
(27, 1, '2024-03-21 18:29:17', '2024-03-21 18:29:17'),
(28, 2, '2024-03-21 18:29:17', '2024-03-21 18:29:17'),
(29, 3, '2024-03-21 18:29:17', '2024-03-21 18:29:17'),
(30, 4, '2024-03-21 18:29:17', '2024-03-21 18:29:17'),
(31, 5, '2024-03-21 18:29:17', '2024-03-21 18:29:17'),
(32, 6, '2024-03-21 18:29:17', '2024-03-21 18:29:17'),
(33, 7, '2024-03-21 18:29:17', '2024-03-21 18:29:17'),
(34, 8, '2024-03-21 18:29:17', '2024-03-21 18:29:17'),
(35, 9, '2024-03-21 18:29:17', '2024-03-21 18:29:17'),
(36, 10, '2024-03-21 18:29:17', '2024-03-21 18:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_detail_id`, `order_id`, `product_id`, `updated_at`, `created_at`) VALUES
(1, 1, 1, '2024-03-21 17:55:04', '2024-03-21 17:55:04'),
(2, 1, 2, '2024-03-21 17:55:04', '2024-03-21 17:55:04'),
(3, 2, 2, '2024-03-21 17:55:04', '2024-03-21 17:55:04'),
(4, 3, 3, '2024-03-21 17:55:04', '2024-03-21 17:55:04'),
(5, 3, 4, '2024-03-21 17:55:04', '2024-03-21 17:55:04'),
(6, 4, 1, '2024-03-21 17:55:04', '2024-03-21 17:55:04'),
(7, 5, 2, '2024-03-21 17:55:04', '2024-03-21 17:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` double NOT NULL,
  `product_description` text NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_description`, `updated_at`, `created_at`) VALUES
(1, 'Nike Mercurial Superfly 8', 199.99, 'High-performance football boots designed for speed and agility.', '2024-03-21 17:54:51', '2024-03-21 17:54:51'),
(2, 'Adidas Predator Freak+', 179.99, 'Control-oriented football boots with innovative technology for precision.', '2024-03-21 17:54:51', '2024-03-21 17:54:51'),
(3, 'Nike Tiempo Legend 9', 149.99, 'Classic-style football boots with modern performance features.', '2024-03-21 17:54:51', '2024-03-21 17:54:51'),
(4, 'Adidas X Ghosted+', 209.99, 'Explosive football boots engineered for acceleration and agility.', '2024-03-21 17:54:51', '2024-03-21 17:54:51'),
(5, 'Nike Phantom GT', 169.99, 'Versatile football boots designed for playmakers and strikers.', '2024-03-21 17:54:51', '2024-03-21 17:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `user_email` varchar(55) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`, `updated_at`, `created_at`) VALUES
(1, 'Lionel Messi', 'messi@football.com', 'lionelmessi123', '2024-03-21 17:54:51', '2024-03-21 17:54:51'),
(2, 'Cristiano Ronaldo', 'ronaldo@gmail.com', 'cristianoronaldo123', '2024-03-21 17:54:51', '2024-03-21 17:54:51'),
(3, 'Neymar Jr.', 'neymar@football.com', 'neymarjr123', '2024-03-21 17:54:51', '2024-03-21 17:54:51'),
(4, 'Mohamed Salah', 'salah@football.com', 'mohamedsalah123', '2024-03-21 17:54:51', '2024-03-21 17:54:51'),
(5, 'Kylian Mbappé', 'mbappe@gmail.com', 'kylianmbappe123', '2024-03-21 17:54:51', '2024-03-21 17:54:51'),
(6, 'Alex Morgan', 'alex@football.com', 'alexmorgan123', '2024-03-21 17:56:33', '2024-03-21 17:56:33'),
(7, 'Megan Rapinoe', 'megan@gmail.com', 'meganrapinoe123', '2024-03-21 17:56:33', '2024-03-21 17:56:33'),
(8, 'Carli Lloyd', 'carli@football.com', 'carlilloyd123', '2024-03-21 17:56:33', '2024-03-21 17:56:33'),
(9, 'Sam Kerr', 'sam@football.com', 'samkerr123', '2024-03-21 17:56:33', '2024-03-21 17:56:33'),
(10, 'We Renard', 'wendIe@gmail.com', 'wendierenard123', '2024-03-21 17:56:33', '2024-03-21 17:56:33'),
(11, 'Marta Vieira da Silva', 'marta@football.com', 'martavieiradasilva123', '2024-03-21 17:56:33', '2024-03-21 17:56:33'),
(12, 'Ada Hegerberg', 'ada@football.com', 'adahegerberg123', '2024-03-21 17:56:33', '2024-03-21 17:56:33'),
(13, 'Samantha Mewis', 'samantha@football.com', 'samanthamewis123', '2024-03-21 17:56:33', '2024-03-21 17:56:33'),
(14, 'Lucy Bronze', 'lucy@football.com', 'lucybronze123', '2024-03-21 17:56:33', '2024-03-21 17:56:33'),
(15, 'Vivianne Miedema', 'vivianne@gmail.com', 'viviannemiedema123', '2024-03-21 17:56:33', '2024-03-21 17:56:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
