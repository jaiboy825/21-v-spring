-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- 생성 시간: 21-02-08 14:29
-- 서버 버전: 10.1.47-MariaDB-0ubuntu0.18.04.1
-- PHP 버전: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `yy_20121`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `covid_data`
--

CREATE TABLE `covid_data` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `total` int(11) NOT NULL,
  `covid` int(11) NOT NULL,
  `covid_d` int(11) NOT NULL,
  `covid_o` int(11) NOT NULL,
  `freecnt` int(11) NOT NULL,
  `freecnt_compare` int(11) NOT NULL,
  `inprison` int(11) NOT NULL,
  `inprison_compare` int(11) NOT NULL,
  `death` int(11) NOT NULL,
  `death_compare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `covid_data`
--

INSERT INTO `covid_data` (`id`, `date`, `total`, `covid`, `covid_d`, `covid_o`, `freecnt`, `freecnt_compare`, `inprison`, `inprison_compare`, `death`, `death_compare`) VALUES
(5, '2021-01-12', 70212, 562, 536, 26, 54636, 1067, 14391, -525, 1185, 20),
(6, '2021-01-01', 70212, 562, 536, 26, 54636, 1067, 14391, -525, 1185, 20),
(7, '2021-01-12', 70212, 562, 536, 26, 54636, 1067, 14391, -525, 1185, 20);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `covid_data`
--
ALTER TABLE `covid_data`
  ADD PRIMARY KEY (`id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `covid_data`
--
ALTER TABLE `covid_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
