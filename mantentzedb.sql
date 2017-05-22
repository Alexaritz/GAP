-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2017 a las 13:27:36
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mantentzedb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arazomota`
--

CREATE TABLE `arazomota` (
  `kodea` int(11) NOT NULL,
  `izena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `arazomota`
--

INSERT INTO `arazomota` (`kodea`, `izena`) VALUES
(1, 'Berokuntza'),
(2, 'Argia'),
(3, 'Orokorra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arduraduna`
--

CREATE TABLE `arduraduna` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `saila` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `arduraduna`
--

INSERT INTO `arduraduna` (`id`, `username`, `saila`) VALUES
(1, 'proba', 'Berokuntza'),
(2, 'a', 'Orokorra ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erabiltzailea`
--

CREATE TABLE `erabiltzailea` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `erabiltzailea`
--

INSERT INTO `erabiltzailea` (`id`, `username`, `password`, `mota`) VALUES
(1, 'proba', 'proba', ''),
(2, 'a', 'a', ''),
(3, 'alex', 'alex', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lanagindua`
--

CREATE TABLE `lanagindua` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `saila` varchar(50) NOT NULL,
  `arduraduna` varchar(50) NOT NULL,
  `eraikina` varchar(50) NOT NULL,
  `pisua` int(11) NOT NULL,
  `gela` varchar(50) NOT NULL,
  `lehentasuna` varchar(50) NOT NULL,
  `laburpena` varchar(500) NOT NULL,
  `deskribapena` varchar(1000) NOT NULL,
  `data` datetime NOT NULL,
  `argazkia` varchar(100) NOT NULL,
  `egoera` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lanagindua`
--

INSERT INTO `lanagindua` (`id`, `username`, `saila`, `arduraduna`, `eraikina`, `pisua`, `gela`, `lehentasuna`, `laburpena`, `deskribapena`, `data`, `argazkia`, `egoera`) VALUES
(1, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'Probak egiten ari naiz.', 'Lsogbzkav', '2017-05-05 09:17:59', '0argazkia.jpeg', 'itxia'),
(2, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'faSDGQEEQQ', 'VRgrqvrevqwvw', '2017-05-05 11:39:10', '1argazkia.jpeg', 'itxia'),
(3, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'gsdgsd', 'sgdsd', '2017-05-05 11:39:24', '2argazkia.jpeg', 'itxia'),
(4, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'afdsfsa', 'sdscssc', '2017-05-05 11:39:43', '3argazkia.jpeg', 'itxia'),
(5, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'vzx', 'xz', '2017-05-05 11:40:00', '4argazkia.jpeg', 'itxia'),
(6, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'vcxzvz', 'zvz', '2017-05-05 11:40:31', '5argazkia.jpeg', 'itxia'),
(7, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'fadsg', 'afsd', '2017-05-05 12:06:54', '6argazkia.jpeg', 'itxia'),
(8, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'Proba android ', 'BflZhskbcnzlsb', '2017-05-05 12:07:45', '7argazkia.jpeg', 'itxia'),
(9, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'Lrbslahxk', 'Nflslcbzks', '2017-05-05 12:13:12', '8argazkia.jpeg', 'itxia'),
(10, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'Krlqlxbzk', 'Mdognzlznx', '2017-05-05 12:13:38', '', 'itxia'),
(11, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'LflxjN', 'XÃ±cbzlzj', '2017-05-05 12:18:52', '9argazkia.jpeg', 'itxia'),
(12, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'Lbfka', 'Ã‘dngnzlab', '2017-05-05 12:22:09', '10argazkia.jpeg', 'itxia'),
(13, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'Lfkflabfb', 'Lfjfmsld', '2017-05-05 12:24:37', '11argazkia.jpeg', 'itxia'),
(14, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'a', 'A', '2017-05-05 12:24:57', '12argazkia.jpeg', 'esleitua'),
(15, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'IrlajxlxjV', 'LcpvnMslxb', '2017-05-05 12:31:28', '13argazkia.jpeg', 'esleitua'),
(16, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Premiazkoa', '2', 'A', '2017-05-05 12:32:49', '14argazkia.jpeg', 'esleitua'),
(17, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'fewgaag', 'gfsdgsdfgsd', '2017-05-05 12:37:10', '15argazkia.jpeg', 'esleitua'),
(18, 'Proba', 'Berokuntza', 'a', '', 0, '', 'Baxua', 'iphonetik', 'Argazkia erantxia', '2017-05-08 09:53:34', '16argazkia.jpeg', 'esleitua'),
(19, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'Berokuntza instalazioa ez dabil', 'V HD hdjjdbdbz', '2017-05-08 12:01:00', '17argazkia.jpeg', 'berria'),
(21, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'Proba egoerakiN', 'Lalala', '2017-05-08 13:04:14', '18argazkia.jpeg', 'berria'),
(22, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'Mcncmzl', 'Lcjgmzzlm', '2017-05-09 09:20:07', '19argazkia.jpeg', 'berria'),
(23, 'proba', 'Orokorra', 'proba', 'A', 1, '1', 'Premiazkoa', '.dmdbNs', 'Ncmznzv', '2017-05-10 09:24:35', '20argazkia.jpeg', 'berria'),
(24, 'proba', 'Orokorra', 'proba', 'A', 1, '1', 'Premiazkoa', 'Mfjzks', 'Nfnzlz', '2017-05-10 09:25:40', '21argazkia.jpeg', 'berria'),
(25, 'proba', 'Orokorra', 'proba', 'A', 1, '1', 'Baxua', 'aewkelroiuwaytsa', 'raetrysujgnvbczx<', '2017-05-10 09:26:30', '22argazkia.jpeg', 'berria'),
(26, 'proba', 'Orokorra', 'proba', 'A', 1, '1', 'Normala', 'Bxkchznxbz', 'CnxlKz', '2017-05-10 10:08:23', '23argazkia.jpeg', 'berria'),
(27, 'proba', 'Orokorra', 'a', 'A', 1, '1', 'Baxua', 'Argazki gabeko proba', 'Argazki gabeko probaArgazki gabeko probaArgazki gabeko probaArgazki gabeko probaArgazki gabeko probaArgazki gabeko proba', '2017-05-10 11:26:21', '', 'berria'),
(28, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'fsda', 'fasd', '2017-05-10 11:27:52', '24argazkia.jpeg', 'berria'),
(29, 'proba', 'Berokuntza', 'a', 'A', 1, '1', 'Baxua', 'fasdfsaf', 'asdfsdfs', '2017-05-10 11:28:03', '', 'berria'),
(30, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'vsacvsavd', 'vsadsdvsvavsvd', '2017-05-10 11:30:17', '', 'berria'),
(31, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'vds', 'vsda', '2017-05-10 11:31:10', '', 'berria'),
(32, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'vxc', 'vxc', '2017-05-10 11:31:48', '', 'berria'),
(33, 'proba', 'Berokuntza', 'a', 'A', 1, '1', 'Normala', 'vxc', 'vxc', '2017-05-10 11:32:46', '', 'berria'),
(34, 'proba', 'Orokorra', 'proba', 'A', 1, '1', 'Baxua', 'fsd', 'fsd', '2017-05-10 11:33:23', '', 'berria'),
(35, 'proba', 'Orokorra', 'proba', 'A', 1, '1', 'Baxua', 'fsdf', 'sfsdfs', '2017-05-10 11:34:09', '', 'berria'),
(36, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'asgd', 'avsd', '2017-05-10 11:34:56', '25argazkia.jpeg', 'berria'),
(37, 'proba', 'Berokuntza', 'a', 'A', 1, '1', 'Baxua', 'das', 'dsa', '2017-05-10 11:36:03', '', 'berria'),
(38, 'proba', 'Argia', 'a', 'A', 1, '1', 'Baxua', 'vcx', 'vxc', '2017-05-10 11:38:26', '', 'berria'),
(39, 'Proba', 'Berokuntza', 'a', 'A', 1, '1', 'Baxua', 'Froga iphone', 'Jjfdjkfg', '2017-05-10 11:58:39', '26argazkia.jpeg', 'berria'),
(40, 'Proba', 'Orokorra', '', '', 1, '1', 'Baxua', 'Froga iphon', 'Gdfjhghj', '2017-05-10 12:00:12', '', 'berria'),
(41, 'proba', 'Orokorra', 'proba', 'A', 1, '1', 'Baxua', 'dsadsa', 'dadasdas', '2017-05-10 12:09:21', '', 'berria'),
(42, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'dsadas', 'dasddaddsdaadda', '2017-05-10 12:11:00', '', 'berria'),
(43, 'proba', 'Orokorra', 'a', 'A', 1, '1', 'Baxua', 'vsdVSDV', 'vsdsdvsd', '2017-05-10 12:11:41', '', 'berria'),
(44, 'proba', 'Berokuntza', 'a', 'A', 1, '1', 'Baxua', 'VSCVDASV', 'VSAVSADSDVVSDSA', '2017-05-10 12:12:28', '', 'berria'),
(45, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'dasdasdasd', 'asdasdasdada', '2017-05-10 12:19:58', '', 'berria'),
(46, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'fdsafda', 'fsdfaafsasffdafsddafd', '2017-05-10 12:24:38', '', 'berria'),
(47, 'a', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'vbfxba', 'fbfbbfbffdb', '2017-05-11 11:33:25', '27argazkia.jpeg', 'berria'),
(48, 'a', 'Orokorra', 'proba', 'A', 1, '1', 'Premiazkoa', 'Proba android', 'Lalala', '2017-05-12 09:16:53', '28argazkia.jpeg', 'berria'),
(49, 'Proba', 'Orokorra', 'proba', 'A', 1, '1', 'Premiazkoa', 'Hdjdkkdjbd', 'Hdjdkzbdb', '2017-05-12 09:21:16', '29argazkia.jpeg', 'berria'),
(50, 'Proba', 'Orokorra', 'proba', 'A', 1, '1', 'Premiazkoa', 'Proba ihone', 'Lalalalal', '2017-05-12 09:22:25', '', 'berria'),
(51, 'Proba', 'Orokorra', 'a', 'A', 1, '1', 'Baxua', 'Gghfdrt', 'Opiyreex', '2017-05-12 09:23:51', '', 'berria'),
(52, 'proba', 'Orokorra', 'a', 'A', 1, '1', 'Normala', 'Proba argazkia iyotzeko berria', 'Lalala', '2017-05-12 10:26:47', '30argazkia.jpeg', 'berria'),
(53, 'a', 'Argia', 'a', 'A', 1, '1', 'Baxua', 'Proba explorer', 'adsdadas', '2017-05-12 10:30:33', '31argazkia.jpeg', 'berria'),
(54, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'Proba chrome', 'LALALA', '2017-05-12 10:31:40', '32argazkia.jpeg', 'berria'),
(55, 'a', 'Berokuntza', 'a', 'A', 1, '1', 'Baxua', 'fsdafsaf', 'adfsasdfsdvdsaa', '2017-05-12 10:45:40', '33argazkia.jpeg', 'berria'),
(56, 'proba', 'Argia', 'proba', 'A', 1, '1', 'Baxua', 'cczxcz', 'czxczx', '2017-05-12 10:45:56', '', 'berria'),
(57, 'proba', 'Argia', 'proba', 'A', 1, '1', 'Baxua', 'czxczxc', 'czxcz', '2017-05-12 10:46:12', '34argazkia.jpeg', 'berria'),
(58, 'a', 'Argia', 'proba', 'A', 1, '1', 'Normala', 'dsadasd', 'asdasdasd', '2017-05-12 10:46:33', '35argazkia.jpeg', 'berria'),
(59, 'proba', 'Argia', 'proba', 'A', 1, '1', 'Premiazkoa', 'Idlxnzn', 'Xlgnzmm,', '2017-05-12 10:47:01', '36argazkia.jpeg', 'itxia'),
(60, 'proba', 'Orokorra', 'proba', 'A', 1, '1', 'Premiazkoa', 'Proba prevent', 'Xnznzc', '2017-05-12 11:27:22', '37argazkia.jpeg', 'itxia'),
(61, 'proba', 'Orokorra', 'proba', 'A', 1, '1', 'Normala', 'PROBA ANDROID', 'PROBA', '2017-05-15 12:52:29', '38argazkia.jpeg', 'itxia'),
(62, 'alex', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'Argiak ez du funtzionatzen.', 'LALALA', '2017-05-16 11:56:33', '39argazkia.jpeg', 'berria'),
(63, 'a', 'Orokorra', 'a', 'A', 1, '1', 'Normala', 'Proba', 'Probaba', '2017-05-18 09:41:12', '40argazkia.jpeg', 'berria'),
(64, 'a', 'Berokuntza', 'a', 'A', 1, '1', 'Baxua', 'Probasaiog', 'abe', '2017-05-18 09:43:03', '', 'esleitua'),
(65, 'a', 'Berokuntza', 'a', 'A', 1, '1', 'Baxua', 'rehrt', 'hrtghr', '2017-05-18 09:51:26', '', 'berria'),
(66, 'a', 'Berokuntza', 'a', 'A', 1, '1', 'Baxua', 'dsaGsd', 'gsDGAS', '2017-05-18 09:51:47', '', 'itxia'),
(67, 'a', 'Argia', 'proba', 'A', 1, '1', 'Baxua', 'dsaGSD', 'GSADGSD', '2017-05-18 09:53:03', '', 'berria'),
(68, 'a', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'fsd', 'sd', '2017-05-18 09:54:11', '', 'berria'),
(69, 'a', 'Berokuntza', 'a', 'A', 1, '1', 'Baxua', 'fsdsgd', 'fdhdfxshd', '2017-05-18 09:54:53', '', 'esleitua'),
(70, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'asgdh', 'gasd', '2017-05-18 09:56:28', '', 'esleitua'),
(71, 'proba', 'Argia', 'a', 'A', 1, '1', 'Normala', 'dvsa', 'sdag', '2017-05-18 09:57:16', '', 'berria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lanazalpena`
--

CREATE TABLE `lanazalpena` (
  `id` int(11) NOT NULL,
  `lanid` int(11) NOT NULL,
  `arduraduna` varchar(50) NOT NULL,
  `azalpena` varchar(1000) NOT NULL,
  `materiala` varchar(1000) NOT NULL,
  `itxiData` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lanazalpena`
--

INSERT INTO `lanazalpena` (`id`, `lanid`, `arduraduna`, `azalpena`, `materiala`, `itxiData`) VALUES
(1, 60, 'proba', 'Probak egiten ari naiz. Galdara berria erosi da. Galdara aldatu da eta guztia ondo dabil.', '', '2017-05-16'),
(3, 59, 'proba', 'Probak egiten ari naiz. Kablean kontaktoa.', '', '2017-05-16'),
(29, 61, 'proba', 'Bonbila berria erosi eta aldatu.', '', '2017-05-16'),
(30, 70, 'proba', 'ONA', '', '2017-05-18'),
(56, 71, 'a', 'LALALA', 'LALALA2LA', '2017-05-22'),
(66, 69, 'a', '', '', '2017-05-18'),
(67, 66, 'a', '', '', '2017-05-18'),
(68, 64, 'a', '', '', '2017-05-18'),
(108, 63, 'a', 'LANA EGINDA', 'BONBILA 1.', '2017-05-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lanegoera`
--

CREATE TABLE `lanegoera` (
  `id` int(11) NOT NULL,
  `izena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lanegoera`
--

INSERT INTO `lanegoera` (`id`, `izena`) VALUES
(1, 'berria'),
(2, 'esleitua'),
(3, 'itxia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `langileorduak`
--

CREATE TABLE `langileorduak` (
  `id` int(11) NOT NULL,
  `lanID` int(11) NOT NULL,
  `langilea` varchar(50) NOT NULL,
  `denborah` int(11) NOT NULL,
  `denboramin` int(11) NOT NULL,
  `lanEguna` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `langileorduak`
--

INSERT INTO `langileorduak` (`id`, `lanID`, `langilea`, `denborah`, `denboramin`, `lanEguna`) VALUES
(1, 63, 'a', 4, 0, '2017-05-21'),
(4, 63, 'a', 4, 0, '2017-05-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saila`
--

CREATE TABLE `saila` (
  `id` int(11) NOT NULL,
  `izena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `saila`
--

INSERT INTO `saila` (`id`, `izena`) VALUES
(2, 'Berokuntza'),
(1, 'Elektrizitatea'),
(3, 'Galdaragintza '),
(4, 'Orokorra ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ura`
--

CREATE TABLE `ura` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `kantitatea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ura`
--

INSERT INTO `ura` (`id`, `data`, `kantitatea`) VALUES
(1, '2017-04-01', 50),
(2, '2017-04-02', 23),
(3, '2017-04-03', 58),
(4, '2017-04-04', 10),
(5, '2017-04-05', 18);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arazomota`
--
ALTER TABLE `arazomota`
  ADD PRIMARY KEY (`kodea`);

--
-- Indices de la tabla `arduraduna`
--
ALTER TABLE `arduraduna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sailaCons` (`saila`),
  ADD KEY `erabCons` (`username`);

--
-- Indices de la tabla `erabiltzailea`
--
ALTER TABLE `erabiltzailea`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indices de la tabla `lanagindua`
--
ALTER TABLE `lanagindua`
  ADD PRIMARY KEY (`id`),
  ADD KEY `egoCos` (`egoera`);

--
-- Indices de la tabla `lanazalpena`
--
ALTER TABLE `lanazalpena`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_azalpena` (`lanid`,`arduraduna`);

--
-- Indices de la tabla `lanegoera`
--
ALTER TABLE `lanegoera`
  ADD PRIMARY KEY (`id`),
  ADD KEY `izena` (`izena`);

--
-- Indices de la tabla `langileorduak`
--
ALTER TABLE `langileorduak`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`lanID`,`langilea`,`lanEguna`) USING BTREE;

--
-- Indices de la tabla `saila`
--
ALTER TABLE `saila`
  ADD PRIMARY KEY (`id`),
  ADD KEY `izena` (`izena`);

--
-- Indices de la tabla `ura`
--
ALTER TABLE `ura`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `arazomota`
--
ALTER TABLE `arazomota`
  MODIFY `kodea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `arduraduna`
--
ALTER TABLE `arduraduna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `erabiltzailea`
--
ALTER TABLE `erabiltzailea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `lanagindua`
--
ALTER TABLE `lanagindua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT de la tabla `lanazalpena`
--
ALTER TABLE `lanazalpena`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT de la tabla `lanegoera`
--
ALTER TABLE `lanegoera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `langileorduak`
--
ALTER TABLE `langileorduak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `saila`
--
ALTER TABLE `saila`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ura`
--
ALTER TABLE `ura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `arduraduna`
--
ALTER TABLE `arduraduna`
  ADD CONSTRAINT `erabCons` FOREIGN KEY (`username`) REFERENCES `erabiltzailea` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lanagindua`
--
ALTER TABLE `lanagindua`
  ADD CONSTRAINT `egoCos` FOREIGN KEY (`egoera`) REFERENCES `lanegoera` (`izena`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
