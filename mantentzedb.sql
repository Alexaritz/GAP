-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2017 a las 12:51:24
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
(18, 'Proba', 'Berokuntza', '', '', 0, '', 'Baxua', 'iphonetik', 'Argazkia erantxia', '2017-05-08 09:53:34', '16argazkia.jpeg', 'esleitua'),
(19, 'proba', 'Berokuntza', 'proba', 'A', 1, '1', 'Normala', 'Berokuntza instalazioa ez dabil', 'V HD hdjjdbdbz', '2017-05-08 12:01:00', '17argazkia.jpeg', 'berria');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `egoeraCons` (`egoera`);

--
-- Indices de la tabla `lanegoera`
--
ALTER TABLE `lanegoera`
  ADD PRIMARY KEY (`id`),
  ADD KEY `izena` (`izena`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `lanegoera`
--
ALTER TABLE `lanegoera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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

--
-- Filtros para la tabla `lanagindua`
--
ALTER TABLE `lanagindua`
  ADD CONSTRAINT `egoeraCons` FOREIGN KEY (`egoera`) REFERENCES `lanegoera` (`izena`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
