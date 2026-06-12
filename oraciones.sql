-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-06-2026 a las 18:24:20
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `leo_and_friends`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oraciones`
--

CREATE TABLE `oraciones` (
  `oracionesID` int(11) NOT NULL,
  `pagina_id` int(11) DEFAULT NULL,
  `oracion` text DEFAULT NULL,
  `pista1` text DEFAULT NULL,
  `pista2` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oraciones`
--
ALTER TABLE `oraciones`
  ADD PRIMARY KEY (`oracionesID`),
  ADD KEY `pagina_id` (`pagina_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oraciones`
--
ALTER TABLE `oraciones`
  MODIFY `oracionesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `oraciones`
--
ALTER TABLE `oraciones`
  ADD CONSTRAINT `oraciones_ibfk_1` FOREIGN KEY (`pagina_id`) REFERENCES `paginas_libro` (`pagina_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
