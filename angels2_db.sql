-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 04, 2023 at 09:48 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angels2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ID` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`ID`, `price`, `quantity`) VALUES
('2', '12', '2'),
('3', '11.25', '1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` varchar(255) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `p_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `p_name`, `p_price`) VALUES
('1', 'Sea pebbles candle', 9),
('10', 'Blue Bracelet', 2),
('11', 'Flowers Bracelet', 2),
('12', 'Phone Charm', 2.5),
('13', 'Pastel Necklace', 3.5),
('14', 'Pearl Earring', 3.5),
('15', 'Earring', 3.25),
('16', 'Panda Cups', 2),
('17', 'Bears Cups', 2),
('18', 'Pink Cup', 4),
('19', 'Cartoon Cup', 1),
('2', 'Gold with Beige candle', 12),
('20', 'White Cup', 3),
('21', 'Cartoon Cups', 2.5),
('22', 'Glass Cup', 1.7),
('23', 'Pink And White Cup', 3.5),
('24', 'White And Black Cup', 5.25),
('25', 'Phone Case', 5),
('26', 'Key Medal', 2),
('27', 'Notebook With Bookmark', 7.5),
('28', 'Dessert Stand', 21),
('29', 'Green & White Clock', 15),
('3', 'Gold Leaf Candle', 11.25),
('30', 'Green Bookmark', 2.5),
('31', 'Pink Bookmark', 2.5),
('32', 'Coaster', 11),
('33', 'Butterfly Earring', 3.5),
('34', 'Wood Clock', 3),
('35', 'Wall Clock', 2),
('36', 'Small Box', 9),
('37', 'Fixed Lights', 4),
('38', 'Wooden Views', 3),
('39', 'Wood Chipper', 2.5),
('4', 'Blue Petals Candle', 5.5),
('40', 'Flower Vase', 3.5),
('41', 'Key Hanger', 3.5),
('42', 'Large Size Box', 5.25),
('43', 'Black Hat', 4),
('44', 'Red Handbag', 11),
('45', 'Cardigan', 22.5),
('46', 'Sweater', 15),
('47', 'Scarf', 15),
('48', 'Airpods Case', 3),
('5', 'Ombre Candle', 8),
('6', 'Pink Petals Candle', 11),
('7', 'Blue Necklace', 3),
('8', 'Butterfly Necklace', 9),
('9', 'White Bracelet', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `visa` varchar(8) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fname`, `lname`, `email`, `pass`, `tel`, `visa`, `country`) VALUES
('basel', 'jamal', 'baselabdulla7@gmail.com', 'basel2002', '0799739249', '1342', 'amman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
