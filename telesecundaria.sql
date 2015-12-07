-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-12-2015 a las 09:33:26
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `telesecundaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avisos(reportes)`
--

CREATE TABLE IF NOT EXISTS `avisos(reportes)` (
  `no_aviso` int(11) NOT NULL,
  `no_lista` int(11) NOT NULL,
  `Aviso` text NOT NULL,
  KEY `no_lista` (`no_lista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_alumno`
--

CREATE TABLE IF NOT EXISTS `datos_alumno` (
  `no_lista` int(11) NOT NULL,
  `nombre_alumno` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `grado` varchar(5) NOT NULL,
  `grupo` varchar(1) NOT NULL,
  `nombre_maestro` varchar(50) NOT NULL,
  `nombre_padre` varchar(50) NOT NULL,
  `nombre_madre` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono_casa` varchar(20) NOT NULL,
  `telefono_cel` varchar(20) NOT NULL,
  PRIMARY KEY (`no_lista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datos_alumno`
--

INSERT INTO `datos_alumno` (`no_lista`, `nombre_alumno`, `apellidos`, `grado`, `grupo`, `nombre_maestro`, `nombre_padre`, `nombre_madre`, `direccion`, `telefono_casa`, `telefono_cel`) VALUES
(111, 'JUAN ', 'RAMIREZ JUAREZ', '1er', 'A', 'CARLOS TOVAR LOPEZ', 'JUAN RAMIREZ MARTINEZ', 'ROSA JUAREZ PEREZ', 'CALLE NAVAJAS, SN, LA GRIEGA, EL MARQUES, QUERETARO.', '124-122-15', '442-123-34-55'),
(112, 'ROSA', 'LOPEZ DIAZ', '1er', 'A', 'CARLOS TOVAR LOPEZ', 'MARIO LOPEZ MARTINEZ', 'MARIANA DIAZ TOVAR', 'CALLE SAN RAFAEL, SN, LA GRIEGA, EL MARQUES, QUERETARO.', '345-234-67', '442-123-34-55'),
(113, 'MARIANA', 'VAZQUEZ ROBLES', '1er', 'A', 'CARLOS TOVAR LOPEZ', 'ARTURO VAZQUEZ MARTINEZ', 'LUZ ROBLES GONZALEZ', 'CALLE SAN MIGUEL, SN, LA GRIEGA, EL MARQUES, QUERETARO.', '1-98-90-33', '442-123-44-55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_academico`
--

CREATE TABLE IF NOT EXISTS `historial_academico` (
  `m_no_lista` int(11) NOT NULL,
  `materia` varchar(50) NOT NULL,
  `1er_bimestre` decimal(10,0) NOT NULL,
  `2do_bimestre` decimal(10,0) NOT NULL,
  `3er_bimestre` decimal(10,0) NOT NULL,
  `4to_bimestre` decimal(10,0) NOT NULL,
  `5to_bimestre` decimal(10,0) NOT NULL,
  `Promedio final` decimal(10,0) NOT NULL,
  KEY `m_no_lista` (`m_no_lista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `historial_academico`
--

INSERT INTO `historial_academico` (`m_no_lista`, `materia`, `1er_bimestre`, `2do_bimestre`, `3er_bimestre`, `4to_bimestre`, `5to_bimestre`, `Promedio final`) VALUES
(111, 'CIENCIAS I', '70', '80', '90', '80', '80', '0'),
(111, 'ESPAÑOL I', '90', '90', '80', '80', '70', '0'),
(111, 'MATEMATICAS I', '60', '70', '70', '80', '90', '0'),
(111, 'GEOGRAFIA DE MEXICO Y EL MUNDO', '80', '80', '80', '80', '80', '0'),
(111, 'CIENCIAS EXPERIMENTALES I BIOLOGIA', '90', '80', '70', '90', '60', '0'),
(112, 'CIENCIAS I', '80', '70', '70', '80', '70', '0'),
(112, 'ESPAÑOL I', '70', '75', '70', '75', '80', '0'),
(112, 'MATEMATICAS I', '80', '90', '75', '90', '80', '0'),
(112, 'GEOGRAFIA DE MEXICO Y EL MUNDO', '60', '60', '70', '80', '90', '0'),
(112, 'CIENCIAS EXPERIMENTALES I BIOLOGIA', '70', '90', '90', '80', '70', '0'),
(113, 'CIENCIAS I', '60', '60', '50', '50', '60', '0'),
(113, 'ESPAÑOL I', '70', '80', '60', '70', '90', '0'),
(113, 'MATEMATICAS I', '66', '76', '87', '78', '90', '0'),
(113, 'GEOGRAFIA DE MEXICO Y DEL MUNDO', '90', '90', '90', '90', '90', '0'),
(113, 'CIENCIAS EXPERIMENTALES I BIOLOGIA', '89', '78', '88', '90', '89', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL,
  `us_nombre` varchar(11) NOT NULL,
  `padcont` varchar(10) NOT NULL,
  `admincont` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `us_nombre`, `padcont`, `admincont`) VALUES
(2, 'JUAN', 'juan111', ''),
(1, 'Admin', '', 'padmin1'),
(4, 'MARIANA', 'mariana113', ''),
(3, 'ROSA', 'rosa112', '');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `avisos(reportes)`
--
ALTER TABLE `avisos(reportes)`
  ADD CONSTRAINT `avisos@0028reportes@0029_ibfk_1` FOREIGN KEY (`no_lista`) REFERENCES `datos_alumno` (`no_lista`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `historial_academico`
--
ALTER TABLE `historial_academico`
  ADD CONSTRAINT `historial_academico_ibfk_1` FOREIGN KEY (`m_no_lista`) REFERENCES `datos_alumno` (`no_lista`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
