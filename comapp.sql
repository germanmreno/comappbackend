-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2022 a las 21:49:33
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companies`
--

CREATE TABLE `companies` (
  `guid` varchar(36) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'Espera',
  `numregistro` varchar(30) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `rif` varchar(25) NOT NULL,
  `numalianza` varchar(25) NOT NULL,
  `direccionfiscal` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `parroquia` varchar(100) NOT NULL,
  `representante` varchar(100) NOT NULL,
  `telefonorepresentante` varchar(100) NOT NULL,
  `correorepresentante` varchar(100) NOT NULL,
  `cedularepresentante` varchar(100) NOT NULL,
  `rumrepresentante` varchar(100) NOT NULL,
  `tipoactividad` varchar(100) NOT NULL,
  `actividadminera` varchar(100) NOT NULL,
  `descripcionactminera` varchar(100) NOT NULL,
  `nombreencargado` varchar(100) NOT NULL,
  `cedulaencargado` varchar(100) NOT NULL,
  `numempleados` varchar(100) NOT NULL,
  `nombreempleados` varchar(100) NOT NULL,
  `cedulaempleados` varchar(25) NOT NULL,
  `cargoempleados` varchar(100) NOT NULL,
  `medidacomercio` varchar(100) NOT NULL,
  `inventario` varchar(100) NOT NULL,
  `promediooro` varchar(300) NOT NULL,
  `promedioganancia` varchar(20) NOT NULL,
  `porcentajecompra` varchar(20) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `companies`
--

INSERT INTO `companies` (`guid`, `status`, `numregistro`, `nombre`, `rif`, `numalianza`, `direccionfiscal`, `estado`, `municipio`, `parroquia`, `representante`, `telefonorepresentante`, `correorepresentante`, `cedularepresentante`, `rumrepresentante`, `tipoactividad`, `actividadminera`, `descripcionactminera`, `nombreencargado`, `cedulaencargado`, `numempleados`, `nombreempleados`, `cedulaempleados`, `cargoempleados`, `medidacomercio`, `inventario`, `promediooro`, `promedioganancia`, `porcentajecompra`, `createdAt`, `updatedAt`) VALUES
('e7f24b06-d1d4-426b-a2bf-88d6557d9438', 'Espera', '766896841', 'Comercio de Plata', '121321', '123', '123', 'Lara', 'Andrés Eloy Blanco', 'El Cantón', 'sadsad', 'asdsda', 'sadda', 'asasdds', 'sadsad', '\"Compra/Venta,Análisis/Fundición\"', '\"Oro,Diamante\"', '123', 'wqew', 'weqwqe', '3', 'wqewq', 'wqewqeew', 'qweqwe', '123', '\"Espectómetro,CajaFuerte\"', 'wqewq', 'wqewqe', 'wqeewq', '2022-05-27', '2022-05-27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `guid` varchar(36) NOT NULL,
  `nombreusuario` varchar(20) NOT NULL,
  `permisos` varchar(15) NOT NULL DEFAULT 'usuario',
  `contraseña` varchar(100) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`guid`, `nombreusuario`, `permisos`, `contraseña`, `correo`, `telefono`, `createdAt`, `updatedAt`) VALUES
('411524cf-b806-4c05-8354-a406a73b70c8', 'prueba', 'usuario', '$2a$10$w6tIUj62HI6fMEfQT25ifed82IurIBumX6uSpVwyXKONpU4blfwPi', 'prueba', 'prueba', '2022-05-27', '2022-05-27'),
('5bfc31fc-5fe5-49da-b211-851a3d0b17f5', 'admincvm', 'admin', '$2a$10$vQokB5w1DIxVs4Wq.QI5Ke/ZXesITIDDSSURW5RSTtAbq113vqCGu', 'admincvm123@gmail.com', '12321312', '2022-05-27', '2022-05-27'),
('e7f24b06-d1d4-426b-a2bf-88d6557d9438', 'germancvm', 'usuario', '$2a$10$SK6.lA1DJIup/snbb9RIlOLegJwM6WihzeFSvJkEumcXWftK.sGxG', 'german@gmail.com', '04140210028', '2022-05-27', '2022-05-27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`guid`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`guid`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`guid`) REFERENCES `users` (`guid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
