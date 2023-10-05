-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-10-2023 a las 15:45:34
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `paqueteturismoequipo76`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alojamiento`
--

CREATE TABLE `alojamiento` (
  `idAlojamiento` int(11) NOT NULL,
  `FechaIn` date NOT NULL,
  `FechaOn` date NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  `Servicio` varchar(100) NOT NULL,
  `ImporteDiario` double NOT NULL,
  `CiudadDestino` varchar(100) NOT NULL,
  `tipoAlojamiento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alojamiento`
--

INSERT INTO `alojamiento` (`idAlojamiento`, `FechaIn`, `FechaOn`, `Estado`, `Servicio`, `ImporteDiario`, `CiudadDestino`, `tipoAlojamiento`) VALUES
(1, '2023-10-02', '2023-10-04', 1, 'completp', 10000, '1', ''),
(2, '2023-10-10', '2023-10-15', 1, 'Desayuno incluido', 100, '1', 'Hotel'),
(3, '2023-11-05', '2023-11-10', 1, 'Sin servicio adicional', 80, '2', 'Apartamento'),
(4, '2023-12-20', '2023-12-25', 1, 'Desayuno y cena incluidos', 60, '3', 'Hostel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `idCiudad` int(11) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Pais` varchar(100) NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  `Provincia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`idCiudad`, `Nombre`, `Pais`, `Estado`, `Provincia`) VALUES
(1, 'San Luis', 'Argentina', 1, 'San luis'),
(2, 'Capital', 'Argentina', 1, 'San luis'),
(3, 'Capital', 'Argentina', 1, 'Buenos Aires'),
(4, 'Capital', 'Argentina', 1, 'Cordoba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete`
--

CREATE TABLE `paquete` (
  `idPaquete` int(11) NOT NULL,
  `idCiudadOrigen` int(10) NOT NULL,
  `idCiudadDestino` int(11) NOT NULL,
  `idAlojamiento` int(11) NOT NULL,
  `idPasaje` int(11) NOT NULL,
  `cantidadViajantes` int(11) NOT NULL,
  `temporada` varchar(5) NOT NULL,
  `costoTotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paquete`
--

INSERT INTO `paquete` (`idPaquete`, `idCiudadOrigen`, `idCiudadDestino`, `idAlojamiento`, `idPasaje`, `cantidadViajantes`, `temporada`, `costoTotal`) VALUES
(2, 2, 3, 2, 2, 2, 'Alta', 1250);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasaje`
--

CREATE TABLE `pasaje` (
  `idPasaje` int(11) NOT NULL,
  `Transporte` varchar(100) NOT NULL,
  `Importe` double NOT NULL,
  `CiudadOrigen` varchar(100) NOT NULL,
  `Estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pasaje`
--

INSERT INTO `pasaje` (`idPasaje`, `Transporte`, `Importe`, `CiudadOrigen`, `Estado`) VALUES
(1, 'Avión', 500, 'San Luis', 1),
(2, 'Colectivo', 100, 'Buenos Aires', 1),
(3, 'Taxi', 50, 'Cordoba', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `correo` varchar(50) NOT NULL,
  `contraseña` int(8) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alojamiento`
--
ALTER TABLE `alojamiento`
  ADD PRIMARY KEY (`idAlojamiento`),
  ADD KEY `CiudadDestino` (`CiudadDestino`),
  ADD KEY `Estado` (`Estado`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`idCiudad`),
  ADD KEY `Nombre` (`Nombre`);

--
-- Indices de la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD PRIMARY KEY (`idPaquete`),
  ADD KEY `Origen` (`idCiudadOrigen`),
  ADD KEY `Destino` (`idCiudadDestino`);

--
-- Indices de la tabla `pasaje`
--
ALTER TABLE `pasaje`
  ADD PRIMARY KEY (`idPasaje`),
  ADD KEY `CiudadOrigen` (`CiudadOrigen`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD UNIQUE KEY `contraseña` (`contraseña`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alojamiento`
--
ALTER TABLE `alojamiento`
  MODIFY `idAlojamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `idCiudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `paquete`
--
ALTER TABLE `paquete`
  MODIFY `idPaquete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pasaje`
--
ALTER TABLE `pasaje`
  MODIFY `idPasaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD CONSTRAINT `paquete_ibfk_1` FOREIGN KEY (`idCiudadOrigen`) REFERENCES `ciudad` (`idCiudad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `paquete_ibfk_2` FOREIGN KEY (`idCiudadDestino`) REFERENCES `ciudad` (`idCiudad`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
