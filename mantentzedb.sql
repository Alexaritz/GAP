-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2017 a las 12:58:55
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
(2, 'Argia');

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
(2, '', 'Orokorra ');

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
(2, '', '', '');

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
  `argazkia` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lanagindua`
--

INSERT INTO `lanagindua` (`id`, `username`, `saila`, `arduraduna`, `eraikina`, `pisua`, `gela`, `lehentasuna`, `laburpena`, `deskribapena`, `data`, `argazkia`) VALUES
(9, '', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'Proba pc', 'DAsdafasf', '2017-04-28 11:43:57', 0x433a66616b657061746854756c6970732e6a7067),
(10, '', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'fa', 'Fsd', '2017-04-28 12:05:04', 0x433a66616b657061746848796472616e676561732e6a7067),
(11, '', '', '', '', 0, '', '', '', '', '2017-04-28 12:06:30', ''),
(12, '', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'fweF', 'Fef', '2017-04-28 12:09:14', 0x433a66616b657061746848796472616e676561732e6a7067),
(13, '', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'V<SD', 'V<DV', '2017-04-28 12:09:51', 0x433a66616b657061746848796472616e676561732e6a7067),
(14, '', '', '', '', 0, '', '', '', '', '2017-04-28 12:14:25', ''),
(15, '', '', '', '', 0, '', '', '', '', '2017-04-28 12:14:53', ''),
(16, '', '', '', '', 0, '', '', '', '', '2017-04-28 12:14:54', ''),
(17, '', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'earg', 'afge', '2017-04-28 12:35:53', 0x433a66616b657061746848796472616e676561732e6a7067),
(18, '', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'vd<s', 'v<sd', '2017-04-28 12:37:49', 0x433a66616b657061746848796472616e676561732e6a7067),
(19, '', 'Argia', 'proba', 'A', 1, '1', 'Baxua', 'ASF', 'sdS', '2017-04-28 12:41:40', 0x433a66616b657061746848796472616e676561732e6a7067),
(20, 'proba', 'Argia', 'proba', 'A', 1, '1', 'Baxua', 'Argia', 'Proba', '2017-04-28 12:43:17', 0x433a66616b657061746831343933333736313839373830313531383939363538322e6a7067),
(21, '', 'Berokuntza', 'proba', 'A', 1, '1', 'Baxua', 'HSERT', 'HSDFSH', '2017-04-28 12:44:10', 0x433a66616b65706174684368727973616e7468656d756d2e6a7067),
(22, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'Udjx', 'Djfkx', '2017-04-28 12:44:39', 0x433a66616b657061746831343933333736323732363939313330383733323333342e6a7067),
(23, '', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'hdfsh', 'hsdfh', '2017-04-28 12:50:35', 0x433a66616b65706174684465736572742e6a7067),
(24, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'Udjj', 'Bxkz', '2017-04-28 12:51:14', 0x433a66616b657061746831343933333736363633313335313933303637333630352e6a7067),
(25, '', 'Argia', 'proba', 'A', 1, '1', 'Baxua', 'dasd', 'DASda', '2017-04-28 12:52:01', 0x433a66616b657061746848796472616e676561732e6a7067),
(26, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'Xk', 'Jfbxb', '2017-04-28 12:53:00', 0x433a66616b657061746831343933333736373732303835313439313736323738352e6a7067),
(27, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'Xk', 'Jfbxb', '2017-04-28 12:53:00', 0x433a66616b657061746831343933333736373732303835313439313736323738352e6a7067),
(28, '', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'gfd', 'dshfj', '2017-04-28 12:55:58', 0x433a66616b657061746850656e6775696e732e6a7067);

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
  ADD KEY `erabCons` (`username`),
  ADD KEY `sailaCons` (`saila`);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `kodea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `arduraduna`
--
ALTER TABLE `arduraduna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `erabiltzailea`
--
ALTER TABLE `erabiltzailea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `lanagindua`
--
ALTER TABLE `lanagindua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
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
  ADD CONSTRAINT `erabCons` FOREIGN KEY (`username`) REFERENCES `erabiltzailea` (`username`) ON DELETE CASCADE,
  ADD CONSTRAINT `sailaCons` FOREIGN KEY (`saila`) REFERENCES `saila` (`izena`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
