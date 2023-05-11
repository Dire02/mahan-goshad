-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 05, 2022 at 05:21 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `direshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `title`, `text`) VALUES
(1, 'پارسا باقریه', 'parsas.s.h.g@gmail.com', 'سلام', 'این یک پیام تست برای ادمین سایت است'),
(3, 'parsa', 'parsadire@gmail.com', 'سلام', 'خابم میاد :(');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `duration` varchar(12) NOT NULL,
  `discription` text NOT NULL,
  `price` double NOT NULL,
  `imagesrc` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `duration`, `discription`, `price`, `imagesrc`) VALUES
(1, 'Spotify', '1 month', '  اکانت اسپاتیفای 1 ماهه ', 99, 'assets/images/upload/image2.jpg'),
(2, 'Netflix', '1 month', 'اکانت نتفلیکس 1 ماهه ', 89, 'assets/images/upload/image1.jpg'),
(3, 'NordVpn', '1 month', '   اکانت نورد وی پی ان 1 ماهه    ', 69, 'assets/images/upload/image3.jpg'),
(5, 'Spotify', '18 month', 'اکانت اسپاتیفای 18 ماهه ', 499, 'assets/images/upload/image2.jpg'),
(6, 'Netflix', '12 month', 'اکانت نتفلیکس 12 ماهه', 750, 'assets/images/upload/image1.jpg'),
(7, 'NordVpn', '6 month', ' اکانت نورد وی پی ان مادام العمر  ', 500, 'assets/images/upload/image3.jpg'),
(10, 'نورد', '18 month', 'صیصیصیصییص', 199, 'assets/images/upload/image3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pass` text NOT NULL,
  `gender` varchar(8) NOT NULL,
  `email` text NOT NULL,
  `Rolls` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `pass`, `gender`, `email`, `Rolls`) VALUES
(1, 'Dire', '123456789', 'male', 'parsas.s.h.g@gmail.com', 'admin'),
(2, 'پارسا', '987654321', 'female', 'pa.sijjal@gmail.com', 'Nuser'),
(7, 'aaaa', 'asasas', 'male', 'arshia13800311@gmail.com', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
