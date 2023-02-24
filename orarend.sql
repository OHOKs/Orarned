-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 24. 09:32
-- Kiszolgáló verziója: 10.4.25-MariaDB
-- PHP verzió: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `orarend`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csengetesirend`
--

CREATE TABLE `csengetesirend` (
  `id` int(11) NOT NULL,
  `beCsengetes` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `kiCsengetes` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `oraSorszama` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `csengetesirend`
--

INSERT INTO `csengetesirend` (`id`, `beCsengetes`, `kiCsengetes`, `oraSorszama`) VALUES
(1, '8:00', '8:45', 1),
(2, '8:55', '9:40', 2),
(3, '9:50', '10:35', 3),
(4, '10:45', '11:30', 4),
(5, '11:40', '12:25', 5),
(6, '12:35', '13:20', 6),
(7, '13:25', '14:10', 7),
(8, '14:15', '15:00', 8);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `napok`
--

CREATE TABLE `napok` (
  `id` int(11) NOT NULL,
  `nap` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `napok`
--

INSERT INTO `napok` (`id`, `nap`) VALUES
(1, 'Hétfő'),
(2, 'Kedd                                      '),
(3, 'Szerda'),
(4, 'Csütörtök'),
(5, 'Péntek');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orak`
--

CREATE TABLE `orak` (
  `id` int(11) NOT NULL,
  `oraMegnevezese` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `orak`
--

INSERT INTO `orak` (`id`, `oraMegnevezese`) VALUES
(1, 'Matematika'),
(2, 'Irodalom'),
(3, 'Fizika'),
(4, 'Angol'),
(5, 'Kémia'),
(6, 'Biológia'),
(7, 'Testnevelés'),
(8, 'Földrajz'),
(9, 'Informatika'),
(10, 'Technika'),
(11, 'Etika');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `osszesora`
--

CREATE TABLE `osszesora` (
  `id` int(11) NOT NULL,
  `osztalyMegnevezese` int(10) NOT NULL,
  `oraSorszama` int(2) NOT NULL,
  `oraMegnevezese` int(100) NOT NULL,
  `nap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `osszesora`
--

INSERT INTO `osszesora` (`id`, `osztalyMegnevezese`, `oraSorszama`, `oraMegnevezese`, `nap`) VALUES
(1, 1, 1, 4, 1),
(2, 1, 2, 1, 1),
(3, 1, 3, 2, 1),
(4, 1, 4, 3, 1),
(5, 1, 5, 5, 1),
(6, 1, 6, 6, 1),
(7, 1, 7, 2, 1),
(9, 1, 3, 6, 2),
(10, 1, 4, 5, 2),
(11, 1, 5, 4, 2),
(12, 1, 6, 3, 2),
(13, 1, 7, 2, 2),
(14, 1, 1, 8, 2),
(16, 1, 2, 10, 2),
(21, 1, 1, 11, 3),
(22, 1, 2, 10, 3),
(23, 1, 3, 9, 3),
(24, 1, 4, 7, 3),
(25, 1, 5, 5, 3),
(26, 1, 6, 8, 3),
(27, 1, 7, 4, 3),
(28, 1, 8, 1, 3),
(29, 1, 1, 6, 4),
(30, 1, 2, 5, 4),
(31, 1, 3, 4, 4),
(32, 1, 4, 3, 4),
(33, 1, 5, 2, 4),
(34, 1, 6, 1, 4),
(35, 1, 1, 11, 5),
(36, 1, 2, 10, 5),
(37, 1, 3, 9, 5),
(38, 1, 4, 7, 5),
(39, 1, 5, 5, 5),
(45, 8, 1, 4, 1),
(46, 8, 2, 1, 1),
(47, 8, 3, 2, 1),
(48, 8, 4, 3, 1),
(49, 8, 5, 4, 1),
(50, 8, 6, 5, 1),
(51, 8, 7, 6, 1),
(52, 8, 1, 1, 2),
(54, 8, 2, 3, 2),
(55, 8, 3, 4, 2),
(56, 8, 4, 5, 2),
(57, 8, 5, 6, 2),
(58, 8, 6, 7, 2),
(59, 8, 1, 1, 3),
(60, 8, 3, 2, 3),
(61, 8, 4, 3, 3),
(62, 8, 5, 4, 3),
(63, 8, 6, 5, 3),
(64, 8, 7, 6, 3),
(65, 8, 8, 7, 3),
(66, 8, 1, 11, 3),
(67, 8, 2, 11, 3),
(68, 8, 1, 11, 4),
(69, 8, 2, 10, 4),
(70, 8, 3, 9, 4),
(71, 8, 4, 8, 4),
(72, 8, 5, 7, 4),
(73, 8, 6, 6, 4),
(75, 8, 1, 5, 5),
(76, 8, 2, 4, 5),
(77, 8, 3, 3, 5),
(78, 8, 4, 2, 5),
(79, 8, 5, 1, 5),
(80, 7, 1, 11, 1),
(81, 7, 2, 10, 1),
(82, 7, 3, 9, 1),
(83, 7, 4, 8, 1),
(84, 7, 5, 7, 1),
(85, 7, 6, 6, 1),
(86, 7, 7, 5, 1),
(87, 7, 1, 1, 2),
(88, 7, 2, 2, 2),
(89, 7, 3, 3, 2),
(90, 7, 4, 4, 2),
(91, 7, 5, 5, 2),
(92, 7, 6, 6, 2),
(93, 7, 1, 6, 3),
(94, 7, 2, 5, 3),
(95, 7, 3, 4, 3),
(96, 7, 4, 3, 3),
(97, 7, 5, 2, 3),
(98, 7, 6, 1, 3),
(99, 7, 1, 4, 4),
(100, 7, 2, 3, 4),
(101, 7, 3, 2, 4),
(102, 7, 4, 1, 4),
(103, 7, 5, 8, 4),
(104, 7, 6, 9, 4),
(105, 7, 7, 10, 4),
(106, 7, 8, 11, 4),
(107, 7, 1, 5, 5),
(108, 7, 2, 3, 5),
(109, 7, 3, 1, 5),
(110, 7, 4, 8, 5),
(111, 7, 5, 11, 5),
(112, 7, 6, 2, 5),
(113, 7, 7, 9, 5),
(114, 7, 8, 10, 5),
(115, 6, 1, 11, 1),
(116, 6, 2, 10, 1),
(117, 6, 3, 9, 1),
(118, 6, 4, 8, 1),
(119, 6, 5, 7, 1),
(120, 6, 6, 6, 1),
(121, 6, 7, 5, 1),
(122, 6, 1, 1, 2),
(123, 6, 2, 2, 2),
(124, 6, 3, 3, 2),
(125, 6, 4, 4, 2),
(126, 6, 5, 5, 2),
(127, 6, 6, 6, 2),
(128, 6, 1, 6, 3),
(129, 6, 2, 5, 3),
(130, 6, 3, 4, 3),
(131, 6, 4, 3, 3),
(132, 6, 5, 2, 3),
(133, 6, 6, 1, 3),
(134, 6, 1, 4, 4),
(135, 6, 2, 3, 4),
(136, 6, 3, 2, 4),
(137, 6, 4, 1, 4),
(138, 6, 5, 8, 4),
(139, 6, 6, 9, 4),
(140, 6, 7, 10, 4),
(141, 6, 8, 11, 4),
(142, 6, 1, 5, 5),
(143, 6, 2, 3, 5),
(144, 6, 3, 1, 5),
(145, 6, 4, 8, 5),
(146, 6, 5, 11, 5),
(147, 6, 6, 2, 5),
(148, 6, 7, 9, 5),
(149, 6, 8, 5, 5),
(150, 5, 1, 11, 1),
(151, 5, 2, 10, 1),
(152, 5, 3, 9, 1),
(153, 5, 4, 8, 1),
(155, 5, 5, 5, 1),
(156, 5, 6, 5, 1),
(157, 5, 1, 1, 2),
(158, 5, 2, 2, 2),
(159, 5, 3, 3, 2),
(160, 5, 4, 4, 2),
(161, 5, 7, 5, 2),
(162, 5, 5, 5, 2),
(163, 5, 1, 5, 3),
(164, 5, 2, 5, 3),
(165, 5, 3, 4, 3),
(166, 5, 4, 3, 3),
(167, 5, 6, 2, 3),
(168, 5, 5, 1, 3),
(169, 5, 1, 4, 4),
(170, 5, 2, 3, 4),
(171, 5, 3, 2, 4),
(172, 5, 4, 1, 4),
(173, 5, 5, 8, 4),
(174, 5, 5, 9, 4),
(175, 5, 7, 10, 4),
(176, 5, 6, 11, 4),
(177, 5, 1, 5, 5),
(178, 5, 2, 3, 5),
(179, 5, 3, 1, 5),
(180, 5, 4, 8, 5),
(181, 5, 5, 11, 5),
(182, 5, 6, 2, 5),
(183, 5, 7, 9, 5),
(184, 5, 8, 5, 5),
(185, 4, 1, 11, 1),
(186, 4, 2, 10, 1),
(187, 4, 3, 9, 1),
(188, 4, 4, 8, 1),
(189, 4, 4, 7, 1),
(190, 4, 4, 4, 1),
(191, 4, 7, 4, 1),
(192, 4, 1, 1, 2),
(193, 4, 2, 2, 2),
(194, 4, 3, 3, 2),
(195, 4, 4, 4, 2),
(196, 4, 4, 4, 2),
(197, 4, 4, 4, 2),
(198, 4, 1, 4, 3),
(199, 4, 2, 4, 3),
(200, 4, 3, 4, 3),
(201, 4, 4, 3, 3),
(202, 4, 4, 2, 3),
(203, 4, 4, 1, 3),
(204, 4, 1, 4, 4),
(205, 4, 2, 3, 4),
(206, 4, 3, 2, 4),
(207, 4, 4, 1, 4),
(208, 4, 4, 8, 4),
(209, 4, 4, 9, 4),
(210, 4, 7, 10, 4),
(211, 4, 8, 11, 4),
(212, 4, 1, 4, 4),
(213, 4, 2, 3, 4),
(214, 4, 3, 1, 4),
(215, 4, 4, 8, 4),
(216, 4, 4, 11, 4),
(217, 4, 4, 2, 4),
(218, 4, 7, 9, 4),
(219, 4, 8, 4, 4),
(290, 5, 6, 11, 2),
(364, 2, 1, 11, 1),
(365, 2, 2, 10, 1),
(366, 2, 3, 9, 1),
(367, 2, 4, 8, 1),
(368, 2, 5, 7, 1),
(369, 2, 6, 6, 1),
(370, 2, 7, 2, 1),
(371, 2, 1, 1, 2),
(372, 2, 2, 3, 2),
(373, 2, 3, 4, 2),
(374, 2, 4, 5, 2),
(375, 2, 5, 6, 2),
(376, 2, 6, 7, 2),
(377, 2, 1, 11, 3),
(378, 2, 2, 10, 3),
(379, 2, 3, 9, 3),
(380, 2, 4, 8, 3),
(381, 2, 5, 7, 3),
(382, 2, 6, 3, 3),
(383, 2, 1, 4, 4),
(384, 2, 2, 11, 4),
(385, 2, 3, 10, 4),
(386, 2, 4, 1, 4),
(387, 2, 5, 8, 4),
(388, 2, 6, 9, 4),
(389, 2, 7, 10, 4),
(390, 2, 8, 11, 4),
(391, 2, 1, 3, 5),
(392, 2, 2, 2, 5),
(393, 2, 3, 1, 5),
(394, 2, 4, 8, 5),
(395, 2, 5, 11, 5),
(396, 2, 6, 2, 5),
(397, 2, 7, 9, 5),
(398, 2, 8, 5, 5),
(399, 3, 1, 11, 1),
(400, 3, 2, 10, 1),
(401, 3, 3, 9, 1),
(402, 3, 4, 8, 1),
(403, 3, 5, 7, 1),
(404, 3, 6, 6, 1),
(405, 3, 7, 2, 1),
(406, 3, 1, 1, 2),
(407, 3, 2, 3, 2),
(408, 3, 3, 4, 2),
(409, 3, 4, 5, 2),
(410, 3, 5, 6, 2),
(411, 3, 6, 7, 2),
(412, 3, 1, 11, 3),
(413, 3, 2, 10, 3),
(414, 3, 3, 9, 3),
(415, 3, 4, 8, 3),
(416, 3, 5, 7, 3),
(417, 3, 6, 3, 3),
(418, 3, 1, 4, 4),
(419, 3, 2, 11, 4),
(420, 3, 3, 10, 4),
(421, 3, 4, 1, 4),
(422, 3, 5, 8, 4),
(423, 3, 6, 9, 4),
(424, 3, 7, 10, 4),
(425, 3, 8, 11, 4),
(426, 3, 1, 3, 5),
(427, 3, 2, 2, 5),
(428, 3, 3, 1, 5),
(429, 3, 4, 8, 5),
(430, 3, 5, 11, 5),
(431, 3, 6, 2, 5),
(432, 3, 7, 9, 5),
(433, 3, 8, 5, 5),
(434, 4, 1, 11, 1),
(435, 4, 2, 10, 1),
(436, 4, 3, 3, 1),
(437, 4, 4, 8, 1),
(438, 4, 5, 7, 1),
(439, 4, 6, 6, 1),
(440, 4, 7, 2, 1),
(441, 4, 1, 1, 2),
(442, 4, 2, 3, 2),
(443, 4, 3, 4, 2),
(444, 4, 4, 5, 2),
(445, 4, 5, 10, 2),
(446, 4, 6, 7, 2),
(447, 4, 1, 11, 3),
(448, 4, 2, 10, 3),
(449, 4, 3, 9, 3),
(450, 4, 4, 8, 3),
(451, 4, 5, 7, 3),
(452, 4, 6, 2, 3),
(453, 4, 1, 4, 4),
(454, 4, 2, 11, 4),
(455, 4, 3, 10, 4),
(456, 4, 4, 1, 4),
(457, 4, 5, 8, 4),
(458, 4, 6, 9, 4),
(459, 4, 7, 5, 4),
(460, 4, 8, 11, 4),
(461, 4, 1, 3, 5),
(462, 4, 2, 2, 5),
(463, 4, 3, 1, 5),
(464, 4, 4, 8, 5),
(465, 4, 5, 5, 5),
(466, 4, 6, 2, 5),
(467, 4, 7, 9, 5),
(468, 4, 8, 5, 5),
(469, 1, 8, 11, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `osztalyok`
--

CREATE TABLE `osztalyok` (
  `id` int(11) NOT NULL,
  `osztaly` varchar(10) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `osztalyok`
--

INSERT INTO `osztalyok` (`id`, `osztaly`) VALUES
(1, '9.a'),
(2, '9.b'),
(3, '10.a'),
(4, '10.b'),
(5, '11.a'),
(6, '11.b'),
(7, '12.a'),
(8, '12.b');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `csengetesirend`
--
ALTER TABLE `csengetesirend`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `napok`
--
ALTER TABLE `napok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `orak`
--
ALTER TABLE `orak`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `osszesora`
--
ALTER TABLE `osszesora`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oraSorszama` (`oraSorszama`),
  ADD KEY `oraMegnevezese` (`oraMegnevezese`),
  ADD KEY `nap_2` (`nap`) USING BTREE,
  ADD KEY `osztalyMegnevezese` (`osztalyMegnevezese`,`oraSorszama`,`oraMegnevezese`) USING BTREE;

--
-- A tábla indexei `osztalyok`
--
ALTER TABLE `osztalyok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `csengetesirend`
--
ALTER TABLE `csengetesirend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `napok`
--
ALTER TABLE `napok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `orak`
--
ALTER TABLE `orak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `osszesora`
--
ALTER TABLE `osszesora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=470;

--
-- AUTO_INCREMENT a táblához `osztalyok`
--
ALTER TABLE `osztalyok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `osszesora`
--
ALTER TABLE `osszesora`
  ADD CONSTRAINT `osszesora_ibfk_2` FOREIGN KEY (`oraSorszama`) REFERENCES `csengetesirend` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `osszesora_ibfk_3` FOREIGN KEY (`osztalyMegnevezese`) REFERENCES `osztalyok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `osszesora_ibfk_4` FOREIGN KEY (`oraMegnevezese`) REFERENCES `orak` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `osszesora_ibfk_5` FOREIGN KEY (`nap`) REFERENCES `napok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
