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
(6, 'rewqrewqrewq', '<p>rewqrewrewqrewqrewq</p>', 'rewq@rewq.com', '2021-02-05 12:55:45'),
(7, 'rewq', '<p>rewqrewqrewq</p>', 'qwer@qwer.com', '2021-02-08 10:20:49'),
(8, '안녕하세요', '<p>ㅋㅋ루삥빵뽕삥띵땅똥땅띵똥빵빵</p>', 'rewq@rewq.com', '2021-02-05 11:57:08'),
(9, 'rewq', '<p>김영현 바보</p>\r\n<p>&nbsp;</p>\r\n<p>바보123</p>', 'rewq@rewq.com', '2021-02-05 12:01:14'),
(10, 'ㄱㄷㅈㅂ', '<p>ㄱㄷㅈㅂㄱㄷㅈㅂㄱㄷㅈㅂㄱㄷㅈㄱㄷㅈㅂ</p>', 'rewq@rewq.com', '2021-02-05 12:18:07'),
(11, 'rewqrewqrewqrewqrewq', '<p>rewqrewqrewqrewqrewqrewqrewreqw</p>', 'rewq@rewq.com', '2021-02-05 12:50:00'),
(12, 'rewqrewqr', '<p>wrewqrewqrewqrewq</p>', 'rewq@rewq.com', '2021-02-05 12:55:28'),
(13, 'rewqrewqrewq', '<p>rewqrewrewqrewqrewq</p>', 'rewq@rewq.com', '2021-02-05 12:55:45'),
(14, 'rewq', '<p>rewqrewqrewq</p>', 'qwer@qwer.com', '2021-02-08 10:20:49'),
(15, '안녕하세요', '<p>ㅋㅋ루삥빵뽕삥띵땅똥땅띵똥빵빵</p>', 'rewq@rewq.com', '2021-02-05 11:57:08'),
(16, 'rewq', '<p>김영현 바보</p>\r\n<p>&nbsp;</p>\r\n<p>바보123</p>', 'rewq@rewq.com', '2021-02-05 12:01:14'),
(17, 'ㄱㄷㅈㅂ', '<p>ㄱㄷㅈㅂㄱㄷㅈㅂㄱㄷㅈㅂㄱㄷㅈㄱㄷㅈㅂ</p>', 'rewq@rewq.com', '2021-02-05 12:18:07'),
(18, 'rewqrewqrewqrewqrewq', '<p>rewqrewqrewqrewqrewqrewqrewreqw</p>', 'rewq@rewq.com', '2021-02-05 12:50:00'),
(19, 'rewqrewqr', '<p>wrewqrewqrewqrewq</p>', 'rewq@rewq.com', '2021-02-05 12:55:28'),
(20, 'rewqrewqrewq', '<p>rewqrewrewqrewqrewq</p>', 'rewq@rewq.com', '2021-02-05 12:55:45'),
(21, 'rewq', '<p>rewqrewqrewq</p>', 'qwer@qwer.com', '2021-02-08 10:20:49'),
(23, 'rewq', '<p>김영현 바보</p>\r\n<p>&nbsp;</p>\r\n<p>바보123</p>', 'rewq@rewq.com', '2021-02-05 12:01:14'),
(24, 'ㄱㄷㅈㅂ', '<p>ㄱㄷㅈㅂㄱㄷㅈㅂㄱㄷㅈㅂㄱㄷㅈㄱㄷㅈㅂ</p>', 'rewq@rewq.com', '2021-02-05 12:18:07'),
(25, 'rewqrewqrewqrewqrewq', '<p>rewqrewqrewqrewqrewqrewqrewreqw</p>', 'rewq@rewq.com', '2021-02-05 12:50:00'),
(26, 'rewqrewqr', '<p>wrewqrewqrewqrewq</p>', 'rewq@rewq.com', '2021-02-05 12:55:28'),
(27, 'rewqrewqrewq', '<p>rewqrewrewqrewqrewq</p>', 'rewq@rewq.com', '2021-02-05 12:55:45'),
(28, 'rewq', '<p>rewqrewqrewq</p>', 'qwer@qwer.com', '2021-02-08 10:20:49'),
(29, 'rewqrewrewq', '<p>rewqrewqrewqrewqrew<img class=\"content-img\" src=\"/images/94279ebc-13f7-40a0-8e31-0518bad2813f_error.png\" /></p>', 'qwer@qwer.com', '2021-02-08 11:28:38'),
(31, 'rewqrewq', '<pre class=\"language-java\"><code>@RequestMapping(value = \"write\", method = RequestMethod.POST)\r\n	public String writeProcess(BoardVO board, HttpSession session, Errors errors) {\r\n		validator.validate(board, errors); // 값을 밸리데이팅\r\n		if (errors.hasErrors()) {\r\n			return \"board/write\"; // 에러가 발생시에 다시 글쓰기 페이지로 이동\r\n		}\r\n\r\n		UserVO user = (UserVO) session.getAttribute(\"user\");\r\n		Uservice.expUp(user.getUserid());\r\n		Uservice.levelUp(user.getUserid());\r\n\r\n		String userid = user.getUserid();\r\n		user = Uservice.getUserInfo(userid);\r\n\r\n		session.setAttribute(\"user\", user);\r\n		board.setWriter(user.getUserid()); // 현재 로그인된 유저를 글쓴이로 등록하고\r\n\r\n		LucyXssFilter filter = XssSaxFilter.getInstance(\"lucy-xss-sax.xml\");\r\n		String clean = filter.doFilter(board.getContent());\r\n		board.setContent(clean);\r\n\r\n		service.writeArticle(board);\r\n		return \"redirect:/board/list\"; // 글목록으로 이동\r\n	}</code></pre>', 'qwer@qwer.com', '2021-02-08 11:37:13'),
(32, 'qwer', '<p>qwer</p>', 'qwer@qwer.com', '2021-02-08 12:06:25'),
(33, 'qwer', '<p>qwer</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>rewqrewqrewqrewq</p>', 'qwer@qwer.com', '2021-02-08 13:00:42'),
(34, 'qwer', '<p>qwer</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>rewqrewqrewqrewq</p>', 'qwer@qwer.com', '2021-02-08 13:00:42'),
(35, '수정 성공', '<p>rewqrewqrewqrewqrew<img class=\"content-img\" src=\"../../images/94279ebc-13f7-40a0-8e31-0518bad2813f_error.png\" /></p>', 'qwer@qwer.com', '2021-02-08 13:03:25'),
(39, '수정 성공1', '<p>rewqrewqrewqrewqrew<img class=\"content-img\" src=\"../../images/94279ebc-13f7-40a0-8e31-0518bad2813f_error.png\" /></p>', 'qwer@qwer.com', '2021-02-08 13:44:37'),
(40, '수정 성공1', '<p>rewqrewqrewqrewqrew<img class=\"content-img\" src=\"../../images/94279ebc-13f7-40a0-8e31-0518bad2813f_error.png\" /></p>', 'qwer@qwer.com', '2021-02-08 13:44:37'),
(41, '글 작성 테스트', '<p>321 - 123</p>', 'rewq@rewq.com', '2021-02-08 13:53:48'),
(42, 'rewq', '<p>ㅂㅈㄷㄱㅂㅈㄷㄱ</p>', 'qwer@qwer.com', '2021-02-08 13:55:12'),
(43, '테스트용 글', '<p>테스트용 글입니다</p>', 'qwer@qwer.com', '2021-02-08 13:59:06'),
(45, 'asd', '<p>asdasd</p>\r\n<p>asdasd</p>\r\n<pre class=\"language-markup\"><code>http://localhost:8090/board/delete/44</code></pre>', 'gondr99@gmail.com', '2021-02-08 14:03:05');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
