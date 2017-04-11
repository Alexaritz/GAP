-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2017 a las 13:03:04
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
-- Estructura de tabla para la tabla `akatskodea`
--

CREATE TABLE `akatskodea` (
  `kodea` int(11) NOT NULL,
  `izena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `akatskodea`
--

INSERT INTO `akatskodea` (`kodea`, `izena`) VALUES
(1, 'Tentsiobarik'),
(2, 'Segurtasunek salto'),
(4, 'Nasaitasunak'),
(5, 'Dardarak-zaratak');

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
-- Indices de la tabla `akatskodea`
--
ALTER TABLE `akatskodea`
  ADD PRIMARY KEY (`kodea`);

--
-- Indices de la tabla `erabiltzailea`
--
ALTER TABLE `erabiltzailea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ura`
--
ALTER TABLE `ura`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `erabiltzailea`
--
ALTER TABLE `erabiltzailea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `ura`
--
ALTER TABLE `ura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
