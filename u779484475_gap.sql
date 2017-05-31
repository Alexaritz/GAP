
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 31-05-2017 a las 11:14:54
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
  PRIMARY KEY (`kodea`)
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
  KEY `sailaCons` (`saila`),
  KEY `erabCons` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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

CREATE TABLE IF NOT EXISTS `erabiltzailea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mota` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `erabiltzailea`
--

INSERT INTO `erabiltzailea` (`id`, `username`, `password`, `mota`) VALUES
(1, 'proba', 'proba', ''),
(2, 'a', 'a', ''),
(3, 'informatika', 'informatika', ''),
(4, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eraikina`
--

CREATE TABLE IF NOT EXISTS `eraikina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `izena` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
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
  PRIMARY KEY (`id`)
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=84 ;

--
-- Volcado de datos para la tabla `lanagindua`
--

INSERT INTO `lanagindua` (`id`, `username`, `saila`, `arduraduna`, `bidaltzailea`, `eraikina`, `pisua`, `gela`, `lehentasuna`, `laburpena`, `deskribapena`, `data`, `argazkia`, `egoera`) VALUES
(1, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Normala', 'Probak egiten ari naiz.', 'Lsogbzkav', '2017-05-05 09:17:59', '0argazkia.jpeg', 'itxia'),
(2, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Normala', 'faSDGQEEQQ', 'VRgrqvrevqwvw', '2017-05-05 11:39:10', '1argazkia.jpeg', 'itxia'),
(3, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Baxua', 'gsdgsd', 'sgdsd', '2017-05-05 11:39:24', '2argazkia.jpeg', 'itxia'),
(4, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Baxua', 'afdsfsa', 'sdscssc', '2017-05-05 11:39:43', '3argazkia.jpeg', 'itxia'),
(5, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Baxua', 'vzx', 'xz', '2017-05-05 11:40:00', '4argazkia.jpeg', 'itxia'),
(6, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Baxua', 'vcxzvz', 'zvz', '2017-05-05 11:40:31', '5argazkia.jpeg', 'itxia'),
(7, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Baxua', 'fadsg', 'afsd', '2017-05-05 12:06:54', '6argazkia.jpeg', 'itxia'),
(8, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Normala', 'Proba android ', 'BflZhskbcnzlsb', '2017-05-05 12:07:45', '7argazkia.jpeg', 'itxia'),
(9, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Normala', 'Lrbslahxk', 'Nflslcbzks', '2017-05-05 12:13:12', '8argazkia.jpeg', 'itxia'),
(10, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Normala', 'Krlqlxbzk', 'Mdognzlznx', '2017-05-05 12:13:38', '', 'itxia'),
(11, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Normala', 'LflxjN', 'XÃ±cbzlzj', '2017-05-05 12:18:52', '9argazkia.jpeg', 'itxia'),
(12, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Normala', 'Lbfka', 'Ã‘dngnzlab', '2017-05-05 12:22:09', '10argazkia.jpeg', 'itxia'),
(13, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Normala', 'Lfkflabfb', 'Lfjfmsld', '2017-05-05 12:24:37', '11argazkia.jpeg', 'itxia'),
(14, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Normala', 'a', 'A', '2017-05-05 12:24:57', '12argazkia.jpeg', 'esleitua'),
(15, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Normala', 'IrlajxlxjV', 'LcpvnMslxb', '2017-05-05 12:31:28', '13argazkia.jpeg', 'esleitua'),
(16, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Premiazkoa', '2', 'A', '2017-05-05 12:32:49', '14argazkia.jpeg', 'esleitua'),
(17, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Baxua', 'fewgaag', 'gfsdgsdfgsd', '2017-05-05 12:37:10', '15argazkia.jpeg', 'esleitua'),
(18, 'Proba', 'Berokuntza', 'a', '', '', 0, '', 'Baxua', 'iphonetik', 'Argazkia erantxia', '2017-05-08 09:53:34', '16argazkia.jpeg', 'esleitua'),
(19, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Normala', 'Berokuntza instalazioa ez dabil', 'V HD hdjjdbdbz', '2017-05-08 12:01:00', '17argazkia.jpeg', 'berria'),
(21, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Normala', 'Proba egoerakiN', 'Lalala', '2017-05-08 13:04:14', '18argazkia.jpeg', 'berria'),
(22, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Normala', 'Mcncmzl', 'Lcjgmzzlm', '2017-05-09 09:20:07', '19argazkia.jpeg', 'berria'),
(23, 'proba', 'Orokorra', 'proba', '', 'A', 1, '1', 'Premiazkoa', '.dmdbNs', 'Ncmznzv', '2017-05-10 09:24:35', '20argazkia.jpeg', 'berria'),
(24, 'proba', 'Orokorra', 'proba', '', 'A', 1, '1', 'Premiazkoa', 'Mfjzks', 'Nfnzlz', '2017-05-10 09:25:40', '21argazkia.jpeg', 'berria'),
(25, 'proba', 'Orokorra', 'proba', '', 'A', 1, '1', 'Baxua', 'aewkelroiuwaytsa', 'raetrysujgnvbczx<', '2017-05-10 09:26:30', '22argazkia.jpeg', 'berria'),
(26, 'proba', 'Orokorra', 'proba', '', 'A', 1, '1', 'Normala', 'Bxkchznxbz', 'CnxlKz', '2017-05-10 10:08:23', '23argazkia.jpeg', 'berria'),
(27, 'proba', 'Orokorra', 'a', '', 'A', 1, '1', 'Baxua', 'Argazki gabeko proba', 'Argazki gabeko probaArgazki gabeko probaArgazki gabeko probaArgazki gabeko probaArgazki gabeko probaArgazki gabeko proba', '2017-05-10 11:26:21', '', 'berria'),
(28, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Normala', 'fsda', 'fasd', '2017-05-10 11:27:52', '24argazkia.jpeg', 'berria'),
(29, 'proba', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'fasdfsaf', 'asdfsdfs', '2017-05-10 11:28:03', '', 'berria'),
(30, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Baxua', 'vsacvsavd', 'vsadsdvsvavsvd', '2017-05-10 11:30:17', '', 'berria'),
(31, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Baxua', 'vds', 'vsda', '2017-05-10 11:31:10', '', 'berria'),
(32, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Baxua', 'vxc', 'vxc', '2017-05-10 11:31:48', '', 'berria'),
(33, 'proba', 'Berokuntza', 'a', '', 'A', 1, '1', 'Normala', 'vxc', 'vxc', '2017-05-10 11:32:46', '', 'berria'),
(34, 'proba', 'Orokorra', 'proba', '', 'A', 1, '1', 'Baxua', 'fsd', 'fsd', '2017-05-10 11:33:23', '', 'berria'),
(35, 'proba', 'Orokorra', 'proba', '', 'A', 1, '1', 'Baxua', 'fsdf', 'sfsdfs', '2017-05-10 11:34:09', '', 'berria'),
(36, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Baxua', 'asgd', 'avsd', '2017-05-10 11:34:56', '25argazkia.jpeg', 'berria'),
(37, 'proba', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'das', 'dsa', '2017-05-10 11:36:03', '', 'berria'),
(38, 'proba', 'Argia', 'a', '', 'A', 1, '1', 'Baxua', 'vcx', 'vxc', '2017-05-10 11:38:26', '', 'berria'),
(39, 'Proba', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'Froga iphone', 'Jjfdjkfg', '2017-05-10 11:58:39', '26argazkia.jpeg', 'berria'),
(40, 'Proba', 'Orokorra', '', '', '', 1, '1', 'Baxua', 'Froga iphon', 'Gdfjhghj', '2017-05-10 12:00:12', '', 'berria'),
(41, 'proba', 'Orokorra', 'proba', '', 'A', 1, '1', 'Baxua', 'dsadsa', 'dadasdas', '2017-05-10 12:09:21', '', 'berria'),
(42, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Baxua', 'dsadas', 'dasddaddsdaadda', '2017-05-10 12:11:00', '', 'berria'),
(43, 'proba', 'Orokorra', 'a', '', 'A', 1, '1', 'Baxua', 'vsdVSDV', 'vsdsdvsd', '2017-05-10 12:11:41', '', 'berria'),
(44, 'proba', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'VSCVDASV', 'VSAVSADSDVVSDSA', '2017-05-10 12:12:28', '', 'berria'),
(45, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Baxua', 'dasdasdasd', 'asdasdasdada', '2017-05-10 12:19:58', '', 'berria'),
(46, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Baxua', 'fdsafda', 'fsdfaafsasffdafsddafd', '2017-05-10 12:24:38', '', 'berria'),
(47, 'a', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Normala', 'vbfxba', 'fbfbbfbffdb', '2017-05-11 11:33:25', '27argazkia.jpeg', 'berria'),
(48, 'a', 'Orokorra', 'proba', '', 'A', 1, '1', 'Premiazkoa', 'Proba android', 'Lalala', '2017-05-12 09:16:53', '28argazkia.jpeg', 'berria'),
(49, 'Proba', 'Orokorra', 'proba', '', 'A', 1, '1', 'Premiazkoa', 'Hdjdkkdjbd', 'Hdjdkzbdb', '2017-05-12 09:21:16', '29argazkia.jpeg', 'berria'),
(50, 'Proba', 'Orokorra', 'proba', '', 'A', 1, '1', 'Premiazkoa', 'Proba ihone', 'Lalalalal', '2017-05-12 09:22:25', '', 'berria'),
(51, 'Proba', 'Orokorra', 'a', '', 'A', 1, '1', 'Baxua', 'Gghfdrt', 'Opiyreex', '2017-05-12 09:23:51', '', 'berria'),
(52, 'proba', 'Orokorra', 'a', '', 'A', 1, '1', 'Normala', 'Proba argazkia iyotzeko berria', 'Lalala', '2017-05-12 10:26:47', '30argazkia.jpeg', 'esleitua'),
(53, 'a', 'Argia', 'a', '', 'A', 1, '1', 'Baxua', 'Proba explorer', 'adsdadas', '2017-05-12 10:30:33', '31argazkia.jpeg', 'esleitua'),
(54, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Baxua', 'Proba chrome', 'LALALA', '2017-05-12 10:31:40', '32argazkia.jpeg', 'berria'),
(55, 'a', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'fsdafsaf', 'adfsasdfsdvdsaa', '2017-05-12 10:45:40', '33argazkia.jpeg', 'berria'),
(56, 'proba', 'Argia', 'proba', '', 'A', 1, '1', 'Baxua', 'cczxcz', 'czxczx', '2017-05-12 10:45:56', '', 'berria'),
(57, 'proba', 'Argia', 'proba', '', 'A', 1, '1', 'Baxua', 'czxczxc', 'czxcz', '2017-05-12 10:46:12', '34argazkia.jpeg', 'berria'),
(58, 'a', 'Argia', 'proba', '', 'A', 1, '1', 'Normala', 'dsadasd', 'asdasdasd', '2017-05-12 10:46:33', '35argazkia.jpeg', 'berria'),
(59, 'proba', 'Argia', 'proba', '', 'A', 1, '1', 'Premiazkoa', 'Idlxnzn', 'Xlgnzmm,', '2017-05-12 10:47:01', '36argazkia.jpeg', 'itxia'),
(60, 'proba', 'Orokorra', 'proba', '', 'A', 1, '1', 'Premiazkoa', 'Proba prevent', 'Xnznzc', '2017-05-12 11:27:22', '37argazkia.jpeg', 'itxia'),
(61, 'proba', 'Orokorra', 'proba', '', 'A', 1, '1', 'Normala', 'PROBA ANDROID', 'PROBA', '2017-05-15 12:52:29', '38argazkia.jpeg', 'itxia'),
(62, 'alex', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Normala', 'Argiak ez du funtzionatzen.', 'LALALA', '2017-05-16 11:56:33', '39argazkia.jpeg', 'berria'),
(63, 'a', 'Orokorra', 'a', '', 'A', 1, '1', 'Normala', 'Proba', 'Probaba', '2017-05-18 09:41:12', '40argazkia.jpeg', 'berria'),
(64, 'a', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'Probasaiog', 'abe', '2017-05-18 09:43:03', '', 'esleitua'),
(65, 'a', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'rehrt', 'hrtghr', '2017-05-18 09:51:26', '', 'esleitua'),
(66, 'a', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'dsaGsd', 'gsDGAS', '2017-05-18 09:51:47', '', 'itxia'),
(67, 'a', 'Argia', 'proba', '', 'A', 1, '1', 'Baxua', 'dsaGSD', 'GSADGSD', '2017-05-18 09:53:03', '', 'berria'),
(68, 'a', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Baxua', 'fsd', 'sd', '2017-05-18 09:54:11', '', 'berria'),
(69, 'a', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'fsdsgd', 'fdhdfxshd', '2017-05-18 09:54:53', '', 'esleitua'),
(70, 'proba', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Baxua', 'asgdh', 'gasd', '2017-05-18 09:56:28', '', 'esleitua'),
(71, 'proba', 'Argia', 'a', '', 'A', 1, '1', 'Normala', 'dvsa', 'sdag', '2017-05-18 09:57:16', '', 'esleitua'),
(72, 'a', 'Argia', 'a', '', 'A', 1, '1', 'Baxua', 'PROBA ASPALDIKO PARTEZ', 'PROBA', '2017-05-24 10:27:26', '41argazkia.jpeg', 'itxia'),
(73, 'a', 'Argia', 'a', '', 'A', 1, '1', 'Baxua', 'PROBA PC', 'LALALA', '2017-05-25 09:20:27', '', 'itxia'),
(74, 'a', 'Berokuntza', 'proba', '', 'A', 1, '1', 'Baxua', 'PROBA HOSTINGER', 'LALALA', '2017-05-25 10:22:38', '42argazkia.jpeg', 'berria'),
(75, 'alex', 'Berokuntza', 'a', '', 'A', 1, '1', 'Baxua', 'PROBA EZ ARDURADUNA', 'dKJFAGKHKLJFCBSJKDGSLGADLKSGSFADHGHJBAHCBASHBKGlguklfadskglag aklsfbag agd', '2017-05-25 10:29:20', '', 'itxia'),
(77, 'proba', 'Argia', 'proba', '', 'A', 1, '1', 'Baxua', 'Proba android+hosting', 'Probaba', '2017-05-29 08:18:29', '43argazkia.jpeg', 'berria'),
(78, 'a', 'Argia', 'proba', '', 'A', 1, '1', 'Premiazkoa', 'koala', 'kao', '2017-05-29 08:47:02', '44argazkia.jpeg', 'itxia'),
(79, 'a', 'Orokorra', 'proba', '', 'A', 1, '1', 'Premiazkoa', 'haranburu espabila', 'mierda de pagina. es urgente ponerla mas bonita.', '2017-05-29 12:47:07', '45argazkia.jpeg', 'berria'),
(80, 'informatika', 'Mant. Elektrikoa', 'a', 'alex', 'M', -1, 'komuna', 'Baxua', 'Proba hostinger+bidaltzailea', 'Proba hostinger+bidaltzaileaProba hostinger+bidaltzaileaProba hostinger+bidaltzaileaProba hostinger+bidaltzaileaProba hostinger+bidaltzailea', '2017-05-31 08:10:30', '46argazkia.jpeg', 'esleitua'),
(81, 'proba', 'Mant. Informatikoa', 'a', 'proba', 'G', 2, '20', 'Baxua', 'Proba android', 'Lalalalalalala', '2017-05-31 08:22:41', '47argazkia.jpeg', 'esleitua'),
(82, 'a', 'Galdaragintzako Mant.', 'a', 'a', 'A', 0, '3', 'Normala', 'ahhjshdf', 'fsdagfsged', '2017-05-31 08:31:31', '', 'berria'),
(83, 'a', 'Berokuntza-Hotza Mant.', 'a', 'a', 'A', 0, 'pasilloa', 'Normala', 'Gkkfdd', 'Oso ondo', '2017-05-31 10:30:08', '48argazkia.jpeg', 'itxia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lanazalpena`
--

CREATE TABLE IF NOT EXISTS `lanazalpena` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lanid` int(11) NOT NULL,
  `arduraduna` varchar(50) NOT NULL,
  `azalpena` varchar(1000) NOT NULL,
  `materiala` varchar(1000) NOT NULL,
  `itxiData` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_azalpena` (`lanid`,`arduraduna`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=163 ;

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
(108, 63, 'a', 'LANA EGINDA', 'BONBILA 1.', '2017-05-25'),
(143, 72, 'a', 'LALA2', 'LALA2', '2017-05-24'),
(144, 73, 'a', 'Prbababa', 'Androides', '2017-05-25'),
(154, 75, 'a', 'PROBA HOSTINGER', 'Proba erroreakin', '2017-05-30'),
(155, 65, 'a', 'sdagsjfhsdfb', 'bbsdbsd', '2017-05-29'),
(156, 53, 'a', 'AMAITUA.', 'BONBILA.', '2017-05-30'),
(157, 52, 'a', 'Spinner', 'Spinner', '2017-05-30'),
(158, 78, 'proba', 'Lalalala', 'Softwarea', '2017-05-31'),
(159, 82, 'a', 'LALA', 'ALALA', '2017-05-31'),
(160, 81, 'a', 'AZALPENA', 'MATERIALALALA', '2017-05-31'),
(161, 80, 'a', '', '', '2017-05-31'),
(162, 83, 'a', 'Bukatua ', 'Dana onfo', '2017-05-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lanegoera`
--

CREATE TABLE IF NOT EXISTS `lanegoera` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `izena` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
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
  `langilea` varchar(50) NOT NULL,
  `denborah` int(11) NOT NULL,
  `denboramin` int(11) NOT NULL,
  `lanEguna` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Volcado de datos para la tabla `langileorduak`
--

INSERT INTO `langileorduak` (`id`, `lanID`, `langilea`, `denborah`, `denboramin`, `lanEguna`) VALUES
(8, 72, 'a', 1, 50, '2017-05-01'),
(11, 72, 'a', 50, 0, '2017-05-24'),
(12, 72, 'a', 5, 8, '2017-05-25'),
(13, 72, 'a', 1, 50, '2017-05-01'),
(15, 71, 'proba', 1, 30, '2017-05-24'),
(16, 71, 'proba', 0, 1, '2017-05-23'),
(18, 73, 'proba', 2, 59, '2017-05-24'),
(22, 63, 'a', 6, 30, '2017-05-25'),
(23, 63, 'proba', 7, 30, '2017-05-16'),
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
(51, 83, 'a', 25, 30, '2017-05-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saila`
--

CREATE TABLE IF NOT EXISTS `saila` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `izena` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
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
  `zenbakia` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `solairua`
--

INSERT INTO `solairua` (`id`, `zenbakia`) VALUES
(1, -1),
(2, 0),
(3, 1),
(4, 2);

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
