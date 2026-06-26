-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2026 a las 15:45:16
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
-- Base de datos: `liceo_britanico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id_estudiante` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `nombre_tutor` varchar(100) NOT NULL,
  `telefono_tutor` varchar(20) NOT NULL,
  `id_grado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `nombre`, `apellido`, `fecha_nacimiento`, `nombre_tutor`, `telefono_tutor`, `id_grado`) VALUES
(1, 'Mateo', 'Pérez', '2020-03-15', 'Ana Gómez', '555-0101', 1),
(2, 'Valeria', 'Martínez', '2020-07-22', 'Carlos Martínez', '555-0102', 1),
(3, 'Lucas', 'Rodríguez', '2020-01-10', 'María Rodríguez', '555-0103', 1),
(4, 'Santiago', 'López', '2020-05-18', 'José López', '555-0104', 1),
(5, 'Isabella', 'Sánchez', '2020-11-02', 'Laura Sánchez', '555-0105', 1),
(6, 'Sofía', 'Ramírez', '2020-04-25', 'Luis Ramírez', '555-0106', 2),
(7, 'Alejandro', 'Flores', '2020-08-14', 'Elena Flores', '555-0107', 2),
(8, 'Daniela', 'González', '2020-02-28', 'Pedro González', '555-0108', 2),
(9, 'Matías', 'Díaz', '2020-09-05', 'Sofia Díaz', '555-0109', 2),
(10, 'Emma', 'Hernández', '2020-06-12', 'Miguel Hernández', '555-0110', 2),
(11, 'Nicolás', 'Pérez', '2019-02-19', 'Ana Gómez', '555-0101', 3),
(12, 'Camila', 'Martínez', '2019-05-30', 'Carlos Martínez', '555-0102', 3),
(13, 'Benjamín', 'Rodríguez', '2019-08-11', 'María Rodríguez', '555-0103', 3),
(14, 'Mia', 'López', '2019-12-01', 'José López', '555-0104', 3),
(15, 'Samuel', 'Sánchez', '2019-03-03', 'Laura Sánchez', '555-0105', 3),
(16, 'Joaquín', 'Ramírez', '2018-06-21', 'Luis Ramírez', '555-0106', 4),
(17, 'Martina', 'Flores', '2018-10-10', 'Elena Flores', '555-0107', 4),
(18, 'Tomás', 'González', '2018-01-15', 'Pedro González', '555-0108', 4),
(19, 'Victoria', 'Díaz', '2018-04-04', 'Sofia Díaz', '555-0109', 4),
(20, 'Sebastián', 'Hernández', '2018-11-27', 'Miguel Hernández', '555-0110', 4),
(21, 'Gabriel', 'Gómez', '2017-05-14', 'Ana Gómez', '555-0101', 5),
(22, 'Valentina', 'Castro', '2017-09-19', 'Carlos Martínez', '555-0102', 5),
(23, 'Felipe', 'Navarro', '2017-02-08', 'María Rodríguez', '555-0103', 5),
(24, 'Lucía', 'Mendoza', '2017-07-25', 'José López', '555-0104', 5),
(25, 'Diego', 'Aguilar', '2017-12-30', 'Laura Sánchez', '555-0105', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD KEY `id_grado` (`id_grado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`id_grado`) REFERENCES `grados` (`id_grado`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
