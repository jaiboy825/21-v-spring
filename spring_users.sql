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
('gondr99@gmail.com', '최선한', '*A4B6157319038724E3560894F7F932C8886EBFCF', 0, 3, '/s_7b375863-119a-4ff6-a9ee-bd5d38a3460b_error.jpg'),
('qwer@qwer.com', 'qwer', '*2491CA5000A9614AA28C39036702D965584486EC', 5, 5, '/s_81e76ba2-89be-4eaa-936d-95c6a50de09d_error.jpg'),
('rewq@rewq.com', 'rewq', '*882F33B2188775B0E32E2F08BC3CA69E67869B5F', 40, 4, '/s_a19961cf-47d1-49b6-883c-4c3da9614fea_error.jpg'),
('test@test.com', 'test', '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29', 5, 2, '/s_a38f8712-212f-485e-96ab-0627fc3e5d45_logo.jpg');

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
