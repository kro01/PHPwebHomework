-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time:  5 юли 2019 в 23:15
-- Версия на сървъра: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proekt`
--

-- --------------------------------------------------------

--
-- Структура на таблица `consumer`
--

CREATE TABLE `consumer` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `points` int(11) NOT NULL,
  `role` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `consumer`
--

INSERT INTO `consumer` (`id`, `firstName`, `lastName`, `email`, `password`, `points`, `role`) VALUES
(1, 'Иван', 'Петров', 'lele@gmail.com', '$2y$10$JfoWo468EQwJmzK3EuemGO3NsXu.pR/SFFI5gJ5GghsoTUjoYZi4i', 5, 'user');

-- --------------------------------------------------------

--
-- Структура на таблица `problems`
--

CREATE TABLE `problems` (
  `id` int(11) NOT NULL,
  `text` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `type` enum('console','web') CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `problems`
--

INSERT INTO `problems` (`id`, `text`, `type`) VALUES
(1, 'Напишете програма която изкарва на конзолата това:<br>10 + 7 = 17<br>10 - 7 = 3<br>10 * 7 = 70<br>10 / 7 = 1.4285714285714<br>10 % 7 = 3', 'console');

-- --------------------------------------------------------

--
-- Структура на таблица `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `solutionId` int(11) NOT NULL,
  `testId` int(11) NOT NULL,
  `сuccess` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура на таблица `solutions`
--

CREATE TABLE `solutions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `problemId` int(11) NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `solutions`
--

INSERT INTO `solutions` (`id`, `userId`, `problemId`, `text`, `time`) VALUES
(1, 0, 0, 'aaaa', 'bbb'),
(2, 1, 1, 'aaaa', '2019-07-05-12-07-38'),
(3, 1, 1, 'aa', 'cccc'),
(4, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-13-07-17'),
(5, 1, 1, 'aa', 'cccc'),
(6, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-13-07-51'),
(7, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-58'),
(8, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-15'),
(9, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-39'),
(10, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-07'),
(11, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-35'),
(12, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-08'),
(13, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-05'),
(14, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-23'),
(15, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-46'),
(16, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-01'),
(17, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-37'),
(18, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-57'),
(19, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-02'),
(20, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-51'),
(21, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-08'),
(22, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-43'),
(23, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-09'),
(24, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-34'),
(25, 1, 1, '<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>', '2019-07-05-13-07-52'),
(26, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-13-07-13'),
(27, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-13-07-39'),
(28, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-13-07-37'),
(29, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-13-07-58'),
(30, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-13-07-00'),
(31, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-13-07-40'),
(32, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-13-07-06'),
(33, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-13-07-53'),
(34, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-13-07-26'),
(35, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-13-07-00'),
(36, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-13-07-42'),
(37, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-14-07-36'),
(38, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-14-07-54'),
(39, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-14-07-23'),
(40, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-14-07-45'),
(41, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-14-07-12'),
(42, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-14-07-42'),
(43, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-14-07-13'),
(44, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-14-07-55'),
(45, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-14-07-32'),
(46, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-14-07-40'),
(47, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-14-07-10'),
(48, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-14-07-38'),
(49, 1, 1, '&lt;?php&nbsp;<br><br><br><br>$x&nbsp;=&nbsp;10;<br><br>$y&nbsp;=&nbsp;7;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$x.\'&nbsp;+&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x+$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;-&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x-$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;*&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x*$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;/&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x/$y).\"\\n\";<br><br>echo&nbsp;$x.\'&nbsp;%&nbsp;\'.$y.\'&nbsp;=&nbsp;\'.($x%$y).\"\\n\";<br><br>&nbsp;?&gt;', '2019-07-05-14-07-11'),
(50, 1, 1, 'aaaaaaaa', '2019-07-05-14-07-16'),
(51, 1, 1, 'asdasd', '2019-07-05-22-07-46');

-- --------------------------------------------------------

--
-- Структура на таблица `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `problemId` int(11) NOT NULL,
  `text` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `tests`
--

INSERT INTO `tests` (`id`, `problemId`, `text`) VALUES
(1, 1, '<?php$str = \"10 + 7 = 17\\n10 - 7 = 3\\n10 * 7 = 70\\n10 / 7 = 1.4285714285714\\n10 \\% 7 = 3\\n\";if ($output==$str){echo \"sucses\";}else{echo \"faile\";}?>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consumer`
--
ALTER TABLE `consumer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solutions`
--
ALTER TABLE `solutions`
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `solutions`
--
ALTER TABLE `solutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
