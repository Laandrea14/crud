-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-09-2022 a las 00:40:19
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

create database `sena_bd`;


use `sena_bd`;


-- Estructura de tabla para la tabla `aprendices`


CREATE TABLE `aprendices` (
  `Apre_id` int(11) NOT NULL,
  `Apre_Tipoid` char(50) DEFAULT NULL,
  `Apre_Numid` int(11) DEFAULT NULL,
  `Apre_Nombres` char(70) DEFAULT NULL,
  `Apre_Apellidos` char(70) DEFAULT NULL,
  `Apre_Direccion` char(60) DEFAULT NULL,
  `Apre_Telefono` int(11) DEFAULT NULL,
  `Apre_Ficha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
CREATE TABLE `programa`(
  `Progra_tipo`int(10) NOT NULL,
  `Progra_Nombre` char(50) NOT NULL,
  `Progra_id` int(10) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Estructura de tabla para la tabla `usuarios`
--
CREATE TABLE `tiposprograma` (
  `id_tipos` int(10) NOT NULL,
  `tiposp_tipos` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `usuarios` (
  `usua_id` int(10) NOT NULL,
  `usua_nomuser` char(50) NOT NULL,
  `usua_contra` char(20) DEFAULT NULL,
  `usua_tipo` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usua_id`, `usua_nomuser`, `usua_contra`, `usua_tipo`) VALUES
(1, 'ADMIN', '0000', 'Administrador'),
(2, 'ANDREA MONTE', '0000', 'Administrador');
--
-- Índices para tablas volcadas
--
CREATE TABLE `fichas` (
  `ficha_numero`int(10) NOT NULL, 
  `ficha_progra`char(50) DEFAULT NULL,
   `ficha_id`int(10) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Indices de la tabla `aprendices`
--
ALTER TABLE `aprendices`
  ADD PRIMARY KEY (`Apre_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usua_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aprendices`
--
ALTER TABLE `aprendices`
  MODIFY `Apre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usua_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
