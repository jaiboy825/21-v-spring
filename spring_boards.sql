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
-- 테이블 구조 `spring_boards`
--

CREATE TABLE `spring_boards` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `writer` varchar(100) NOT NULL,
  `writeDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `spring_boards`
--

INSERT INTO `spring_boards` (`id`, `title`, `content`, `writer`, `writeDate`) VALUES
(1, '안녕하세요', '<p>ㅋㅋ루삥빵뽕삥띵땅똥땅띵똥빵빵</p>', 'rewq@rewq.com', '2021-02-05 11:57:08'),
(2, 'rewq', '<p>김영현 바보</p>\r\n<p>&nbsp;</p>\r\n<p>바보123</p>', 'rewq@rewq.com', '2021-02-05 12:01:14'),
(3, 'ㄱㄷㅈㅂ', '<p>ㄱㄷㅈㅂㄱㄷㅈㅂㄱㄷㅈㅂㄱㄷㅈㄱㄷㅈㅂ</p>', 'rewq@rewq.com', '2021-02-05 12:18:07'),
(4, 'rewqrewqrewqrewqrewq', '<p>rewqrewqrewqrewqrewqrewqrewreqw</p>', 'rewq@rewq.com', '2021-02-05 12:50:00'),
(5, 'rewqrewqr', '<p>wrewqrewqrewqrewq</p>', 'rewq@rewq.com', '2021-02-05 12:55:28'),
(6, 'rewqrewqrewq', '<p>rewqrewrewqrewqrewq</p>', 'rewq@rewq.com', '2021-02-05 12:55:45');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `spring_boards`
--
ALTER TABLE `spring_boards`
  ADD PRIMARY KEY (`id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `spring_boards`
--
ALTER TABLE `spring_boards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
