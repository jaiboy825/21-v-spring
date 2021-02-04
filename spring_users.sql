-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- 생성 시간: 21-02-04 10:09
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
-- 테이블 구조 `spring_users`
--

CREATE TABLE `spring_users` (
  `userid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `exp` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `spring_users`
--

INSERT INTO `spring_users` (`userid`, `name`, `password`, `exp`, `level`, `img`) VALUES
('gondr', '최선한', '*A4B6157319038724E3560894F7F932C8886EBFCF', 0, 1, ''),
('gondr99', '최선한', '*A4B6157319038724E3560894F7F932C8886EBFCF', 0, 1, ''),
('rewq@rewq.com', 'rewq', '*882F33B2188775B0E32E2F08BC3CA69E67869B5F', 0, 1, '/s_a19961cf-47d1-49b6-883c-4c3da9614fea_error.jpg');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `spring_users`
--
ALTER TABLE `spring_users`
  ADD PRIMARY KEY (`userid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
