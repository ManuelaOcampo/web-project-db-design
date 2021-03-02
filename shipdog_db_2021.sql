-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-03-2021 a las 16:44:42
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shipdog_db_2021`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_Cliente` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellidos` varchar(40) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Telefono` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_Cliente`, `Nombre`, `Apellidos`, `Direccion`, `Telefono`) VALUES
(100, 'Manuela ', 'Ocampo Giraldo', 'Carrera 1A calle 9A 05 Villapilar', 8875467),
(101, 'Mario', 'Marin Gonzales', 'Calle 56 n 78 13 ', 8857932),
(102, 'Camilo', 'Hernandez perez', 'Carrera 58 n 16 10', 8823456),
(103, 'Tomas', 'fernandez giraldo', 'Av 10 N 16 51', 8899234),
(104, 'Felipe', 'Toro ramirez', 'Calle 54 n 78 10', 9982345);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comidas`
--

CREATE TABLE `comidas` (
  `id_Comida` int(11) NOT NULL,
  `Nombre_Producto` varchar(20) NOT NULL,
  `Ingredientes` varchar(100) NOT NULL,
  `Salsas` varchar(100) NOT NULL,
  `Adiciones` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comidas`
--

INSERT INTO `comidas` (`id_Comida`, `Nombre_Producto`, `Ingredientes`, `Salsas`, `Adiciones`) VALUES
(1, 'Perro Caliente', 'Pan,Salchicha zenu,Ensalada, cebolla, ripio', 'Mayonesa, bbq, Tomate, rosada, Mostaza, piña', 'Queso'),
(2, 'Hamburguesa', 'Pan, carne,Ensalada,cebolla,ripio', 'Mayonesa, bbq, Tomate, rosada, Mostaza, piña', 'Queso, tomate, lechuga'),
(3, 'Arepa burguer', 'Arepa, carne,Ensalada,cebolla,ripio', 'Mayonesa, bbq, Tomate, rosada, Mostaza, piña', 'Queso'),
(4, 'Salchipapa', 'Salchicha Zenú, papas a la francesa', 'Mayonesa, bbq, Tomate, rosada, Mostaza, piña', 'Queso'),
(5, 'Hamburguesa ranchera', 'Pan, Carne, Salchicha ranchera, ensalada, cebolla, ripio', 'Mayonesa, bbq, Tomate, rosada, Mostaza, piña', 'Queso, tomate, lechuga');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilios`
--

CREATE TABLE `domicilios` (
  `Id_Domi` int(11) NOT NULL,
  `N_Contacto` float NOT NULL,
  `Lugar` varchar(100) NOT NULL,
  `Tiempo_Estimado` varchar(40) NOT NULL,
  `Pedido` varchar(100) NOT NULL,
  `Precio` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `domicilios`
--

INSERT INTO `domicilios` (`Id_Domi`, `N_Contacto`, `Lugar`, `Tiempo_Estimado`, `Pedido`, `Precio`) VALUES
(1, 3154680000, 'Cable, Calle51C n 67 82', '20 min', '2 Perros calientes con adición de queso y todas las salsas', 6800),
(2, 3124570000, 'Villapilar, Calle 51D N 13 45', '15 min', '2 hamburguesas sencillas con poquitas salsas', 7200),
(3, 3157490000, 'Puertas del sol, Calle 51D n 56 17 casa 10', '30 min', '2 hamburguesas rancheras, 2 perros calientes con todo ', 15200),
(4, 3124570000, 'Asuncion, carrera 56 n 78 19', '25 min', '2 perros calientes, 1 hamburguesa todo con adición de queso y todas las salsas', 15800),
(5, 3124570000, 'Chipre, Calle 91C N 54 31', '15 min', '2 Arepa burguer con todo, 1 salchipapa con todo', 14500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion-domi-comi`
--

CREATE TABLE `relacion-domi-comi` (
  `id_Relacion` int(11) NOT NULL,
  `id_Cliente` int(11) NOT NULL,
  `id_Domi` int(11) NOT NULL,
  `id_Comida` int(11) NOT NULL,
  `puntuacion` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `relacion-domi-comi`
--

INSERT INTO `relacion-domi-comi` (`id_Relacion`, `id_Cliente`, `id_Domi`, `id_Comida`, `puntuacion`) VALUES
(1, 100, 1, 1, 5),
(2, 101, 4, 5, 4),
(3, 104, 2, 2, 5),
(4, 103, 5, 3, 5),
(5, 101, 3, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `Id` int(11) NOT NULL,
  `Nombre barrio` varchar(40) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Especificaciones` varchar(100) NOT NULL,
  `Horario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`Id`, `Nombre barrio`, `Direccion`, `Especificaciones`, `Horario`) VALUES
(10, 'La enea', 'Calle 51C n 43A 21 ', 'Casa roja en la esquina', '4pm a 10 pm'),
(20, 'La estrella', 'Calle 42B N 51C 13', 'Casa amarilla Segundo piso', '3:30 pm a 9pm'),
(30, 'Cable', 'Carrera 71D n 43 56', 'Dentro del Centro comercial cable plaza local 101', '4:30pm a 9:30 pm'),
(40, 'Alta suiza', 'Calle 101B n 54D 102', 'Por el parque de la alta suiza', '3:30 pm a 9pm'),
(50, 'Villahermosa', 'Calle 43D n 21 12', 'En la casa naranja, primer piso', '4:30pm a 9:30 pm');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_Cliente`);

--
-- Indices de la tabla `comidas`
--
ALTER TABLE `comidas`
  ADD PRIMARY KEY (`id_Comida`);

--
-- Indices de la tabla `domicilios`
--
ALTER TABLE `domicilios`
  ADD PRIMARY KEY (`Id_Domi`);

--
-- Indices de la tabla `relacion-domi-comi`
--
ALTER TABLE `relacion-domi-comi`
  ADD PRIMARY KEY (`id_Relacion`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `relacion-domi-comi`
--
ALTER TABLE `relacion-domi-comi`
  MODIFY `id_Relacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
