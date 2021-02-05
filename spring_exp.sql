-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- 생성 시간: 21-02-05 12:56
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
-- 테이블 구조 `spring_exp`
--

CREATE TABLE `spring_exp` (
  `id` int(11) NOT NULL,
  `level` int(100) NOT NULL,
  `exp` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `spring_exp`
--

INSERT INTO `spring_exp` (`id`, `level`, `exp`) VALUES
(1, 1, 5),
(2, 2, 15),
(3, 3, 30),
(4, 4, 60),
(5, 5, 120),
(6, 6, 180),
(7, 7, 240),
(8, 8, 300),
(9, 9, 360),
(10, 10, 450);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `spring_exp`
--
ALTER TABLE `spring_exp`
  ADD PRIMARY KEY (`id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `spring_exp`
--
ALTER TABLE `spring_exp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
