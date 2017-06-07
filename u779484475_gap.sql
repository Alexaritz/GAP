
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-06-2017 a las 10:12:02
-- Versión del servidor: 10.1.22-MariaDB
-- Versión de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `u779484475_gap`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arazomota`
--

CREATE TABLE IF NOT EXISTS `arazomota` (
  `kodea` int(11) NOT NULL AUTO_INCREMENT,
  `izena` varchar(50) NOT NULL,
  PRIMARY KEY (`kodea`),
  UNIQUE KEY `izena` (`izena`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `arazomota`
--

INSERT INTO `arazomota` (`kodea`, `izena`) VALUES
(1, 'Mant. Elektrikoa'),
(2, 'Mant. Informatikoa'),
(3, 'Mant. Mekanikoa'),
(4, 'Galdaragintzako Mant.'),
(5, 'Ikus-entzun Mant.'),
(6, 'Berokuntza-Hotza Mant.'),
(7, 'Mant. Orokorra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arduraduna`
--

CREATE TABLE IF NOT EXISTS `arduraduna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `saila` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `sailaCons` (`saila`),
  KEY `erabCons` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `arduraduna`
--

INSERT INTO `arduraduna` (`id`, `username`, `saila`) VALUES
(1, 'aaramburu', 'Berokuntza'),
(2, 'a', 'Orokorra ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erabiltzailea`
--

CREATE TABLE IF NOT EXISTS `erabiltzailea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mota` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_2` (`username`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `erabiltzailea`
--

INSERT INTO `erabiltzailea` (`id`, `username`, `password`, `mota`) VALUES
(1, 'aaramburu', 'aaramburu', ''),
(2, 'a', 'a', ''),
(3, 'informatika', 'informatika', ''),
(4, 'admin', 'admin', 'admin'),
(6, 'galdaragintza', 'galdaragintza', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eraikina`
--

CREATE TABLE IF NOT EXISTS `eraikina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `izena` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `izena` (`izena`),
  UNIQUE KEY `izena_2` (`izena`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `eraikina`
--

INSERT INTO `eraikina` (`id`, `izena`) VALUES
(1, 'A'),
(2, 'E'),
(3, 'M'),
(4, 'G'),
(5, 'F');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gela`
--

CREATE TABLE IF NOT EXISTS `gela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `izena` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `izena` (`izena`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `gela`
--

INSERT INTO `gela` (`id`, `izena`) VALUES
(1, 'pasilloa'),
(2, 'komuna'),
(3, '0'),
(4, '1'),
(5, '2'),
(6, '3'),
(7, '4'),
(8, '5'),
(9, '6'),
(10, '7'),
(11, '8'),
(12, '9'),
(13, '10'),
(14, '11'),
(15, '12'),
(16, '13'),
(17, '14'),
(18, '15'),
(19, '16'),
(20, '17'),
(21, '18'),
(22, '19'),
(23, '20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lanagindua`
--

CREATE TABLE IF NOT EXISTS `lanagindua` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `saila` varchar(50) NOT NULL,
  `arduraduna` varchar(50) NOT NULL,
  `bidaltzailea` varchar(50) NOT NULL,
  `eraikina` varchar(50) NOT NULL,
  `pisua` int(11) NOT NULL,
  `gela` varchar(50) NOT NULL,
  `lehentasuna` varchar(50) NOT NULL,
  `laburpena` varchar(500) NOT NULL,
  `deskribapena` varchar(1000) NOT NULL,
  `data` datetime NOT NULL,
  `argazkia` varchar(100) NOT NULL,
  `egoera` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `egoCos` (`egoera`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Volcado de datos para la tabla `lanagindua`
--

INSERT INTO `lanagindua` (`id`, `username`, `saila`, `arduraduna`, `bidaltzailea`, `eraikina`, `pisua`, `gela`, `lehentasuna`, `laburpena`, `deskribapena`, `data`, `argazkia`, `egoera`) VALUES
(1, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Normala', 'Probak egiten ari naiz.', 'Lsogbzkav', '2017-05-05 09:17:59', '0argazkia.jpeg', 'itxia'),
(2, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Normala', 'faSDGQEEQQ', 'VRgrqvrevqwvw', '2017-05-05 11:39:10', '1argazkia.jpeg', 'itxia'),
(3, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'gsdgsd', 'sgdsd', '2017-05-05 11:39:24', '2argazkia.jpeg', 'itxia'),
(4, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'afdsfsa', 'sdscssc', '2017-05-05 11:39:43', '3argazkia.jpeg', 'itxia'),
(5, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'vzx', 'xz', '2017-05-05 11:40:00', '4argazkia.jpeg', 'itxia'),
(6, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'vcxzvz', 'zvz', '2017-05-05 11:40:31', '5argazkia.jpeg', 'itxia'),
(7, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'fadsg', 'afsd', '2017-05-05 12:06:54', '6argazkia.jpeg', 'itxia'),
(8, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Normala', 'Proba android ', 'BflZhskbcnzlsb', '2017-05-05 12:07:45', '7argazkia.jpeg', 'itxia'),
(9, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Normala', 'Lrbslahxk', 'Nflslcbzks', '2017-05-05 12:13:12', '8argazkia.jpeg', 'itxia'),
(10, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Normala', 'Krlqlxbzk', 'Mdognzlznx', '2017-05-05 12:13:38', '', 'itxia'),
(11, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Normala', 'LflxjN', 'XÃ±cbzlzj', '2017-05-05 12:18:52', '9argazkia.jpeg', 'itxia'),
(12, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Normala', 'Lbfka', 'Ã‘dngnzlab', '2017-05-05 12:22:09', '10argazkia.jpeg', 'itxia'),
(13, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Normala', 'Lfkflabfb', 'Lfjfmsld', '2017-05-05 12:24:37', '11argazkia.jpeg', 'itxia'),
(14, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Normala', 'a', 'A', '2017-05-05 12:24:57', '12argazkia.jpeg', 'esleitua'),
(15, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Normala', 'IrlajxlxjV', 'LcpvnMslxb', '2017-05-05 12:31:28', '13argazkia.jpeg', 'esleitua'),
(16, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Premiazkoa', '2', 'A', '2017-05-05 12:32:49', '14argazkia.jpeg', 'esleitua'),
(17, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'fewgaag', 'gfsdgsdfgsd', '2017-05-05 12:37:10', '15argazkia.jpeg', 'esleitua'),
(18, 'aaramburu', 'Berokuntza', 'a', '', '', 0, '', 'Baxua', 'iphonetik', 'Argazkia erantxia', '2017-05-08 09:53:34', '16argazkia.jpeg', 'esleitua'),
(19, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Normala', 'Berokuntza instalazioa ez dabil', 'V HD hdjjdbdbz', '2017-05-08 12:01:00', '17argazkia.jpeg', 'berria'),
(21, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Normala', 'Proba egoerakiN', 'Lalala', '2017-05-08 13:04:14', '18argazkia.jpeg', 'berria'),
(22, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Normala', 'Mcncmzl', 'Lcjgmzzlm', '2017-05-09 09:20:07', '19argazkia.jpeg', 'berria'),
(23, 'aaramburu', 'Orokorra', 'aaramburu', '', 'A', 1, '1', 'Premiazkoa', '.dmdbNs', 'Ncmznzv', '2017-05-10 09:24:35', '20argazkia.jpeg', 'berria'),
(24, 'aaramburu', 'Orokorra', 'aaramburu', '', 'A', 1, '1', 'Premiazkoa', 'Mfjzks', 'Nfnzlz', '2017-05-10 09:25:40', '21argazkia.jpeg', 'berria'),
(25, 'aaramburu', 'Orokorra', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'aewkelroiuwaytsa', 'raetrysujgnvbczx<', '2017-05-10 09:26:30', '22argazkia.jpeg', 'berria'),
(26, 'aaramburu', 'Orokorra', 'aaramburu', '', 'A', 1, '1', 'Normala', 'Bxkchznxbz', 'CnxlKz', '2017-05-10 10:08:23', '23argazkia.jpeg', 'berria'),
(27, 'aaramburu', 'Orokorra', 'a', '', 'A', 1, '1', 'Baxua', 'Argazki gabeko proba', 'Argazki gabeko probaArgazki gabeko probaArgazki gabeko probaArgazki gabeko probaArgazki gabeko probaArgazki gabeko proba', '2017-05-10 11:26:21', '', 'berria'),
(28, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Normala', 'fsda', 'fasd', '2017-05-10 11:27:52', '24argazkia.jpeg', 'berria'),
(29, 'aaramburu', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'fasdfsaf', 'asdfsdfs', '2017-05-10 11:28:03', '', 'berria'),
(30, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'vsacvsavd', 'vsadsdvsvavsvd', '2017-05-10 11:30:17', '', 'berria'),
(31, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'vds', 'vsda', '2017-05-10 11:31:10', '', 'berria'),
(32, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'vxc', 'vxc', '2017-05-10 11:31:48', '', 'berria'),
(33, 'aaramburu', 'Berokuntza', 'a', '', 'A', 1, '1', 'Normala', 'vxc', 'vxc', '2017-05-10 11:32:46', '', 'berria'),
(34, 'aaramburu', 'Orokorra', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'fsd', 'fsd', '2017-05-10 11:33:23', '', 'berria'),
(35, 'aaramburu', 'Orokorra', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'fsdf', 'sfsdfs', '2017-05-10 11:34:09', '', 'berria'),
(36, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'asgd', 'avsd', '2017-05-10 11:34:56', '25argazkia.jpeg', 'berria'),
(37, 'aaramburu', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'das', 'dsa', '2017-05-10 11:36:03', '', 'berria'),
(38, 'aaramburu', 'Argia', 'a', '', 'A', 1, '1', 'Baxua', 'vcx', 'vxc', '2017-05-10 11:38:26', '', 'berria'),
(39, 'aaramburu', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'Froga iphone', 'Jjfdjkfg', '2017-05-10 11:58:39', '26argazkia.jpeg', 'berria'),
(40, 'aaramburu', 'Orokorra', '', '', '', 1, '1', 'Baxua', 'Froga iphon', 'Gdfjhghj', '2017-05-10 12:00:12', '', 'berria'),
(41, 'aaramburu', 'Orokorra', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'dsadsa', 'dadasdas', '2017-05-10 12:09:21', '', 'berria'),
(42, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'dsadas', 'dasddaddsdaadda', '2017-05-10 12:11:00', '', 'berria'),
(43, 'aaramburu', 'Galdaragintzako Mant.', 'a', 'Abc', 'M', 2, 'pasilloa', 'Normala', 'vsdVSDV', 'vsdsdvsd', '2017-05-10 12:11:41', '', 'berria'),
(44, 'aaramburu', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'VSCVDASV', 'VSAVSADSDVVSDSA', '2017-05-10 12:12:28', '', 'berria'),
(45, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'dasdasdasd', 'asdasdasdada', '2017-05-10 12:19:58', '', 'berria'),
(46, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'fdsafda', 'fsdfaafsasffdafsddafd', '2017-05-10 12:24:38', '', 'berria'),
(47, 'a', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Normala', 'vbfxba', 'fbfbbfbffdb', '2017-05-11 11:33:25', '27argazkia.jpeg', 'berria'),
(48, 'a', 'Orokorra', 'aaramburu', '', 'A', 1, '1', 'Premiazkoa', 'Proba android', 'Lalala', '2017-05-12 09:16:53', '28argazkia.jpeg', 'berria'),
(49, 'aaramburu', 'Orokorra', 'aaramburu', '', 'A', 1, '1', 'Premiazkoa', 'Hdjdkkdjbd', 'Hdjdkzbdb', '2017-05-12 09:21:16', '29argazkia.jpeg', 'berria'),
(50, 'aaramburu', 'Orokorra', 'aaramburu', '', 'A', 1, '1', 'Premiazkoa', 'Proba ihone', 'Lalalalal', '2017-05-12 09:22:25', '', 'berria'),
(51, 'aaramburu', 'Orokorra', 'a', '', 'A', 1, '1', 'Baxua', 'Gghfdrt', 'Opiyreex', '2017-05-12 09:23:51', '', 'berria'),
(52, 'aaramburu', 'Orokorra', 'a', '', 'A', 1, '1', 'Normala', 'Proba argazkia iyotzeko berria', 'Lalala', '2017-05-12 10:26:47', '30argazkia.jpeg', 'esleitua'),
(53, 'a', 'Argia', 'a', '', 'A', 1, '1', 'Baxua', 'Proba explorer', 'adsdadas', '2017-05-12 10:30:33', '31argazkia.jpeg', 'esleitua'),
(54, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'Proba chrome', 'LALALA', '2017-05-12 10:31:40', '32argazkia.jpeg', 'berria'),
(55, 'a', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'fsdafsaf', 'adfsasdfsdvdsaa', '2017-05-12 10:45:40', '33argazkia.jpeg', 'esleitua'),
(56, 'aaramburu', 'Argia', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'cczxcz', 'czxczx', '2017-05-12 10:45:56', '', 'berria'),
(57, 'aaramburu', 'Argia', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'czxczxc', 'czxcz', '2017-05-12 10:46:12', '34argazkia.jpeg', 'berria'),
(58, 'a', 'Argia', 'aaramburu', '', 'A', 1, '1', 'Normala', 'dsadasd', 'asdasdasd', '2017-05-12 10:46:33', '35argazkia.jpeg', 'berria'),
(59, 'aaramburu', 'Argia', 'aaramburu', '', 'A', 1, '1', 'Premiazkoa', 'Idlxnzn', 'Xlgnzmm,', '2017-05-12 10:47:01', '36argazkia.jpeg', 'itxia'),
(60, 'aaramburu', 'Orokorra', 'aaramburu', '', 'A', 1, '1', 'Premiazkoa', 'Proba prevent', 'Xnznzc', '2017-05-12 11:27:22', '37argazkia.jpeg', 'itxia'),
(61, 'aaramburu', 'Orokorra', 'aaramburu', '', 'A', 1, '1', 'Normala', 'PROBA ANDROID', 'PROBA', '2017-05-15 12:52:29', '38argazkia.jpeg', 'itxia'),
(62, 'alex', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Normala', 'Argiak ez du funtzionatzen.', 'LALALA', '2017-05-16 11:56:33', '39argazkia.jpeg', 'berria'),
(63, 'a', 'Orokorra', 'a', '', 'A', 1, '1', 'Normala', 'Proba', 'Probaba', '2017-05-18 09:41:12', '40argazkia.jpeg', 'berria'),
(64, 'a', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'Probasaiog', 'abe', '2017-05-18 09:43:03', '', 'esleitua'),
(65, 'a', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'rehrt', 'hrtghr', '2017-05-18 09:51:26', '', 'esleitua'),
(66, 'a', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'dsaGsd', 'gsDGAS', '2017-05-18 09:51:47', '', 'itxia'),
(67, 'a', 'Argia', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'dsaGSD', 'GSADGSD', '2017-05-18 09:53:03', '', 'berria'),
(68, 'a', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'fsd', 'sd', '2017-05-18 09:54:11', '', 'berria'),
(69, 'a', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'fsdsgd', 'fdhdfxshd', '2017-05-18 09:54:53', '', 'esleitua'),
(70, 'aaramburu', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'asgdh', 'gasd', '2017-05-18 09:56:28', '', 'esleitua'),
(71, 'aaramburu', 'Argia', 'a', '', 'A', 1, '1', 'Normala', 'dvsa', 'sdag', '2017-05-18 09:57:16', '', 'esleitua'),
(72, 'a', 'Argia', 'a', '', 'A', 1, '1', 'Baxua', 'PROBA ASPALDIKO PARTEZ', 'PROBA', '2017-05-24 10:27:26', '41argazkia.jpeg', 'itxia'),
(73, 'a', 'Argia', 'a', '', 'A', 1, '1', 'Baxua', 'PROBA PC', 'LALALA', '2017-05-25 09:20:27', '', 'itxia'),
(74, 'a', 'Berokuntza', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'PROBA HOSTINGER', 'LALALA', '2017-05-25 10:22:38', '42argazkia.jpeg', 'berria'),
(75, 'alex', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'PROBA EZ ARDURADUNA', 'dKJFAGKHKLJFCBSJKDGSLGADLKSGSFADHGHJBAHCBASHBKGlguklfadskglag aklsfbag agd', '2017-05-25 10:29:20', '', 'itxia'),
(77, 'aaramburu', 'Argia', 'aaramburu', '', 'A', 1, '1', 'Baxua', 'Proba android+hosting', 'Probaba', '2017-05-29 08:18:29', '43argazkia.jpeg', 'berria'),
(78, 'a', 'Argia', 'aaramburu', '', 'A', 1, '1', 'Premiazkoa', 'koala', 'kao', '2017-05-29 08:47:02', '44argazkia.jpeg', 'itxia'),
(79, 'a', 'Orokorra', 'aaramburu', '', 'A', 1, '1', 'Premiazkoa', 'haranburu espabila', 'mierda de pagina. es urgente ponerla mas bonita.', '2017-05-29 12:47:07', '45argazkia.jpeg', 'berria'),
(80, 'informatika', 'Mant. Elektrikoa', 'a', 'alex', 'M', -1, 'komuna', 'Baxua', 'Proba hostinger+bidaltzailea', 'Proba hostinger+bidaltzaileaProba hostinger+bidaltzaileaProba hostinger+bidaltzaileaProba hostinger+bidaltzaileaProba hostinger+bidaltzailea', '2017-05-31 08:10:30', '46argazkia.jpeg', 'esleitua'),
(81, 'aaramburu', 'Mant. Informatikoa', 'a', 'proba', 'G', 2, '20', 'Baxua', 'Proba android', 'Lalalalalalala', '2017-05-31 08:22:41', '47argazkia.jpeg', 'esleitua'),
(82, 'a', 'Mant. Mekanikoa', 'aaramburu', 'a', 'E', -1, 'pasilloa', 'Normala', 'ahhjshdf', 'fsdagfsged', '2017-05-31 08:31:31', '', 'berria'),
(83, 'a', 'Berokuntza-Hotza Mant.', 'a', 'a', 'A', 0, 'pasilloa', 'Normala', 'Gkkfdd', 'Oso ondo', '2017-05-31 10:30:08', '48argazkia.jpeg', 'itxia'),
(84, 'abc or 1=1', 'Mant. Elektrikoa', 'aaramburu', ' ', 'E', -1, 'komuna', 'Baxua', 'sda', 'dsa', '2017-06-01 07:43:09', '', 'berria'),
(85, 'a', 'Mant. Elektrikoa', 'a', 'a', 'E', -1, 'komuna', 'Baxua', 'ds<c', '<scd', '2017-06-01 08:19:11', '49argazkia.jpeg', 'itxia'),
(87, 'a', 'Berokuntza-Hotza Mant.', 'a', 'a', 'M', 1, '2', 'Baxua', 'LALAAL', 'Knsdkgsdgsfg', '2017-06-01 09:51:33', '', 'esleitua'),
(86, 'a', 'Mant. Elektrikoa', 'a', 'a', 'G', 2, 'pasilloa', 'Normala', 'Berogailua ez dabil.', 'Berogailua ez dabil. Berogailua ez dabil. Berogailua ez dabil.', '2017-06-01 08:30:01', '50argazkia.jpeg', 'esleitua'),
(88, 'a', 'Berokuntza-Hotza Mant.', 'aaramburu', 'a', 'A', 1, '18', 'Baxua', 'Iñigo potrok ikutzen', 'Sjddjdj', '2017-06-01 10:16:31', '51argazkia.jpeg', 'berria'),
(89, 'A', 'Mant. Informatikoa', 'aaramburu', 'A', 'F', 0, 'komuna', 'Premiazkoa', 'Hfdhhg', 'Ffdghgjjhjjjjj', '2017-06-01 10:16:39', '52argazkia.jpeg', 'berria'),
(90, 'A', 'Berokuntza-Hotza Mant.', 'a', 'A', 'E', 1, '1', 'Normala', 'Eeeeeeejjk', 'Hhh', '2017-06-01 10:17:28', '53argazkia.jpeg', 'itxia'),
(91, 'informatika', 'Galdaragintzako Mant.', 'aaramburu', 'alex', 'E', 0, '10', 'Baxua', 'Argia ez dabil.', 'Ezkerreko argiak tarteka dardara egiten du eta oso molestoa da. ', '2017-06-01 10:50:21', '54argazkia.jpeg', 'itxia'),
(92, 'a', 'Mant. Elektrikoa', 'a', 'a', 'E', 0, '0', 'Normala', 'fsd', 'fsda', '2017-06-02 10:00:09', '55argazkia.jpeg', 'esleitua'),
(93, 'a', 'Mant. Informatikoa', 'a', 'a', 'E', 1, '3', 'Normala', 'ez du argiak funtzionatzen', 'Xjfjfjjz', '2017-06-02 10:02:55', '', 'berria'),
(94, 'a', 'Berokuntza-Hotza Mant.', 'aaramburu', 'a', 'E', -1, '1', 'Baxua', 'LABURPENA', 'PROBA INDIZEKIN', '2017-06-05 08:39:38', '', 'berria'),
(95, 'a', 'Galdaragintzako Mant.', 'aaramburu', 'a', 'E', 0, '1', 'Normala', 'vda', 'vadc', '2017-06-06 07:59:37', '', 'esleitua'),
(96, 'a', 'Ikus-entzun Mant.', 'a', 'a', 'E', -1, 'komuna', 'Baxua', 'PROBA PREPARED+ARGAZKIA', 'PROBA PREPARED+ARGAZKIA', '2017-06-06 08:00:32', '', 'itxia'),
(97, 'a', 'Galdaragintzako Mant.', 'a', 'a', 'F', 2, '11', 'Normala', 'dvf', 'vfadvadvdf', '2017-06-06 08:04:13', '56argazkia.jpeg', 'itxia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lanazalpena`
--

CREATE TABLE IF NOT EXISTS `lanazalpena` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lanid` int(11) NOT NULL,
  `arduraduna` varchar(50) CHARACTER SET latin1 NOT NULL,
  `azalpena` varchar(1000) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `materiala` varchar(1000) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `itxiData` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_azalpena` (`lanid`,`arduraduna`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=175 ;

--
-- Volcado de datos para la tabla `lanazalpena`
--

INSERT INTO `lanazalpena` (`id`, `lanid`, `arduraduna`, `azalpena`, `materiala`, `itxiData`) VALUES
(1, 60, 'proba', 'Probak egiten ari naiz. Galdara berria erosi da. Galdara aldatu da eta guztia ondo dabil.', '', '2017-05-16'),
(3, 59, 'proba', 'Probak egiten ari naiz. Kablean kontaktoa.', '', '2017-05-16'),
(29, 61, 'proba', 'Bonbila berria erosi eta aldatu.', '', '2017-05-16'),
(30, 70, 'proba', 'ONA', '', '2017-05-18'),
(56, 71, 'a', 'LA', 'LA', '2017-05-24'),
(66, 69, 'a', '', '', '2017-05-18'),
(67, 66, 'a', 'Lalala', 'Lololo', '2017-05-26'),
(68, 64, 'a', '', '', '2017-05-18'),
(108, 63, 'a', 'LANA EGINDA', 'BONBILA 1. ñé', '2017-06-02'),
(143, 72, 'a', 'LALA2', 'LALA2', '2017-05-24'),
(144, 73, 'a', 'Prbababa', 'Androides', '2017-06-01'),
(154, 75, 'a', 'PROBA HOSTINGER', 'Proba erroreakin', '2017-05-30'),
(155, 65, 'a', 'sdagsjfhsdfb', 'bbsdbsd', '2017-05-29'),
(156, 53, 'a', 'AMAITUA.', 'BONBILA.', '2017-05-30'),
(157, 52, 'a', 'Spinner', 'Spinner', '2017-05-30'),
(158, 78, 'proba', 'Lalalala', 'Softwarea', '2017-05-31'),
(159, 82, 'a', 'LALA', 'ALALA', '2017-06-01'),
(160, 81, 'a', 'AZALPENA', 'MATERIALALALA', '2017-05-31'),
(161, 80, 'a', '', '', '2017-05-31'),
(162, 83, 'a', 'Bukatua ', 'Dana onfo', '2017-06-01'),
(163, 85, 'a', 'Lalala', 'Bale', '2017-06-01'),
(164, 86, 'a', 'KOALAKOALA', 'Software', '2017-06-01'),
(165, 84, 'proba', '', '', '2017-06-01'),
(166, 87, 'a', 'Argia', 'LÃ¡mpara', '2017-06-01'),
(167, 55, 'a', '', '', '2017-06-01'),
(168, 91, 'proba', '', '', '2017-06-01'),
(169, 90, 'a', 'lkhgjhfdgshfg', 'fdagshhdgsfaghrytjfgn', '2017-06-02'),
(170, 93, 'a', 'afds', 'afsd', '2017-06-05'),
(171, 92, 'a', 'asvbd', 'adf', '2017-06-02'),
(172, 97, 'a', 'aa', 'b', '2017-06-07'),
(173, 96, 'a', 'a', 'b', '2017-06-06'),
(174, 95, 'aaramburu', 'Lala', 'Lala', '2017-06-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lanegoera`
--

CREATE TABLE IF NOT EXISTS `lanegoera` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `izena` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `izena_2` (`izena`),
  KEY `izena` (`izena`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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

CREATE TABLE IF NOT EXISTS `langileorduak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lanID` int(11) NOT NULL,
  `langilea` varchar(50) CHARACTER SET latin1 NOT NULL,
  `denborah` int(11) NOT NULL,
  `denboramin` int(11) NOT NULL,
  `lanEguna` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=163 ;

--
-- Volcado de datos para la tabla `langileorduak`
--

INSERT INTO `langileorduak` (`id`, `lanID`, `langilea`, `denborah`, `denboramin`, `lanEguna`) VALUES
(8, 72, '$langile[$i]', 0, 0, '0000-00-00'),
(11, 72, 'a', 50, 0, '2017-05-24'),
(12, 72, 'a', 5, 8, '2017-05-25'),
(13, 72, 'a', 1, 50, '2017-05-01'),
(15, 71, 'proba', 1, 30, '2017-05-24'),
(16, 71, 'proba', 0, 1, '2017-05-23'),
(22, 63, 'a', 0, 30, '2017-05-25'),
(122, 63, 'a', 1, 15, '2017-06-02'),
(84, 63, 'a', 0, 30, '2017-05-25'),
(89, 73, 'a', 5, 30, '2017-06-01'),
(24, 66, 'a', 2, 30, '2017-05-18'),
(42, 78, 'a', 1, 30, '2017-05-24'),
(26, 75, 'proba', 23, 30, '2017-05-29'),
(41, 78, 'a', 4, 1, '2017-05-25'),
(28, 65, 'a', 5, 30, '2017-05-25'),
(33, 65, 'proba', 3, 0, '2017-05-29'),
(36, 75, 'a', 1, 0, '2017-05-23'),
(32, 65, 'a', 1, 30, '2017-05-22'),
(37, 53, 'a', 5, 30, '2017-05-30'),
(38, 53, 'proba', 0, 18, '2017-05-22'),
(39, 52, 'proba', 1, 30, '2017-05-22'),
(40, 52, 'a', 4, 0, '2017-05-30'),
(43, 82, 'a', 5, 30, '2017-05-23'),
(44, 81, 'a', 2, 30, '2017-05-30'),
(50, 81, 'a', 25, 30, '0000-00-00'),
(51, 83, 'a', 25, 30, '2017-05-31'),
(81, 82, 'proba', 18, 30, '2017-06-01'),
(59, 82, 'a', 0, 59, '2017-05-31'),
(57, 83, 'a', 1, 30, '2017-06-01'),
(82, 82, 'proba', 0, 30, '2017-05-31'),
(61, 83, 'a', 4, 30, '2017-06-07'),
(85, 63, 'a', 50, 30, '2017-06-01'),
(83, 85, 'a', 5, 30, '2017-06-01'),
(86, 63, 'a', 50, 0, '2017-05-31'),
(70, 86, 'a', 0, 0, '2017-06-01'),
(75, 84, 'a', 0, 0, '2017-06-01'),
(76, 84, 'a', 25, 30, '2017-05-30'),
(77, 84, 'proba', 5, 11, '2017-06-01'),
(78, 86, 'proba', 1, 30, '2017-06-01'),
(79, 86, 'a', 0, 59, '2017-05-30'),
(92, 91, 'proba', 7, 30, '2017-06-02'),
(88, 85, 'a', 0, 11, '2017-06-01'),
(91, 87, 'a', 3, 0, '2017-06-06'),
(147, 93, 'proba', 4, 30, '2017-06-05'),
(123, 63, 'proba', 4, 15, '2017-06-02'),
(124, 63, 'a', 8, 30, '2017-06-01'),
(133, 90, 'a', 25, 30, '2017-06-02'),
(143, 92, 'a', 25, 30, '2017-06-01'),
(137, 92, 'a', 25, 30, '2017-05-30'),
(136, 92, 'a', 25, 30, '2017-05-30'),
(146, 93, 'proba', 3, 30, '2017-06-05'),
(141, 90, 'proba', 25, 30, '2017-06-02'),
(142, 90, 'a', 25, 30, '2017-06-01'),
(152, 96, 'a', 5, 1, '2017-06-06'),
(148, 93, 'a', 2, 0, '2017-06-01'),
(151, 96, 'proba', 3, 0, '2017-06-06'),
(159, 97, 'a', 0, 30, '2017-06-07'),
(161, 97, 'aaramburu', 4, 0, '2017-06-01'),
(158, 97, 'aaramburu', 5, 30, '2017-06-01'),
(160, 97, 'a', 2, 6, '2017-06-07'),
(162, 95, 'aaramburu', 1, 30, '2017-06-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saila`
--

CREATE TABLE IF NOT EXISTS `saila` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `izena` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `izena_2` (`izena`),
  KEY `izena` (`izena`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
-- Estructura de tabla para la tabla `solairua`
--

CREATE TABLE IF NOT EXISTS `solairua` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zenbakia` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zenbakia` (`zenbakia`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `solairua`
--

INSERT INTO `solairua` (`id`, `zenbakia`) VALUES
(1, '-1'),
(2, '0'),
(3, '1'),
(4, '2'),
(5, 'T');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ura`
--

CREATE TABLE IF NOT EXISTS `ura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `kantitatea` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `ura`
--

INSERT INTO `ura` (`id`, `data`, `kantitatea`) VALUES
(1, '2017-04-01', 50),
(2, '2017-04-02', 23),
(3, '2017-04-03', 58),
(4, '2017-04-04', 10),
(5, '2017-04-05', 18);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
