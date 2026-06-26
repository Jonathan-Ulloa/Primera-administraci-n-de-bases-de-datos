-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2026 a las 16:10:43
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id_grado` int(11) NOT NULL,
  `nombre_grado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id_grado`, `nombre_grado`) VALUES
(1, 'Primero Primaria - Sección A'),
(2, 'Primero Primaria - Sección B'),
(3, 'Segundo Primaria - Sección A'),
(4, 'Tercero Primaria - Sección A'),
(5, 'Cuarto Primaria - Sección A'),
(6, 'Primero Primaria - Sección A'),
(7, 'Primero Primaria - Sección B'),
(8, 'Segundo Primaria - Sección A'),
(9, 'Tercero Primaria - Sección A'),
(10, 'Cuarto Primaria - Sección A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id_materia` int(11) NOT NULL,
  `nombre_materia` varchar(100) NOT NULL,
  `id_profesor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id_materia`, `nombre_materia`, `id_profesor`) VALUES
(1, 'Matemáticas', 1),
(2, 'Lenguaje y Literatura', 2),
(3, 'Ciencias Naturales', 3),
(4, 'Estudios Sociales', 4),
(5, 'Educación Artística', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id_profesor` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id_profesor`, `nombre`, `apellido`, `email`) VALUES
(1, 'María', 'López', 'maria.lopez@escuela.com'),
(2, 'Jorge', 'Martínez', 'jorge.martinez@escuela.com'),
(3, 'Ana', 'Gutiérrez', 'ana.gutierrez@escuela.com'),
(4, 'Carlos', 'Ramírez', 'carlos.ramirez@escuela.com'),
(5, 'Elena', 'Salgado', 'elena.salgado@escuela.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutores`
--

CREATE TABLE `tutores` (
  `id_tutor` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono_principal` varchar(20) NOT NULL,
  `telefono_secundario` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `direccion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tutores`
--

INSERT INTO `tutores` (`id_tutor`, `nombre`, `apellido`, `telefono_principal`, `telefono_secundario`, `email`, `direccion`) VALUES
(1, 'Ana', 'Gómez', '555-0101', NULL, NULL, 'Av. Central 123'),
(2, 'Carlos', 'Martínez', '555-0102', NULL, NULL, 'Calle Los Pinos 45'),
(3, 'María', 'Rodríguez', '555-0103', NULL, NULL, 'Pasaje Flores 789'),
(4, 'José', 'López', '555-0104', NULL, NULL, 'Residencial San José t-4'),
(5, 'Laura', 'Sánchez', '555-0105', NULL, NULL, 'Colonia El Prado c-12'),
(6, 'Luis', 'Ramírez', '555-0106', NULL, NULL, 'Avenida Arce 55'),
(7, 'Elena', 'Flores', '555-0107', NULL, NULL, 'Calle El Mirador 88'),
(8, 'Pedro', 'González', '555-0108', NULL, NULL, 'Barrio El Centro 14'),
(9, 'Sofia', 'Díaz', '555-0109', NULL, NULL, 'Urbanización La Paz v-9'),
(10, 'Miguel', 'Hernández', '555-0110', NULL, NULL, 'Final Calle Nueva 200');

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
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id_grado`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `id_profesor` (`id_profesor`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id_profesor`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `tutores`
--
ALTER TABLE `tutores`
  ADD PRIMARY KEY (`id_tutor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `id_grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tutores`
--
ALTER TABLE `tutores`
  MODIFY `id_tutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`id_grado`) REFERENCES `grados` (`id_grado`) ON DELETE SET NULL;

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id_profesor`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
