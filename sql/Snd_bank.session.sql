-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2021 at 10:01 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
--
-- Database: `Snd_bank`
--
-- --------------------------------------------------------
--
-- Table structure for table `transaction`
--
CREATE TABLE `transaction` (
    `sno` int(3) NOT NULL,
    `sender` text NOT NULL,
    `receiver` text NOT NULL,
    `balance` int(8) NOT NULL,
    `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- --------------------------------------------------------
--
-- Table structure for table `users`
--
CREATE TABLE `users` (
    `id` int(3) NOT NULL,
    `name` text NOT NULL,
    `email` varchar(30) NOT NULL,
    `balance` int(8) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
-- Dumping data for table `users`
--
INSERT INTO `users` (`id`, `name`, `email`, `balance`)
VALUES (1, 'Arun', 'arun@gmail.com', 4000),
    (2, 'Shlesh', 'shlesh@gmail.com', 22000),
    (3, 'Akash', 'akash@gmail.com', 4900),
    (4, 'Rajesh', 'rajesh@gmail.com', 4500),
    (5, 'Suri', 'suri@gmail.com', 6800),
    (6, 'Garry', 'garry@gmail.com', 15000),
    (7, 'Sumit', 'sumit@gmail.com', 53000),
    (8, 'Sameer', 'sameer@gmail.com', 42350),
    (9, 'Mahesh', 'mahesh@gmail.com', 35700),
    (10, 'Jeet', 'jeet@gmail.com', 50000);
--
-- Indexes for dumped tables
--
--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
ADD PRIMARY KEY (`sno`);
--
-- Indexes for table `users`
--
ALTER TABLE `users`
ADD PRIMARY KEY (`id`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;