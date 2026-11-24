-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2026 a las 16:40:51
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
-- Base de datos: `bd_tienda_abarrotes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(50) NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`, `descripcion`) VALUES
(1, 'Granos', 'Arroz, frijoles y lentejas'),
(2, 'Lacteos', 'Leche, queso y yogur'),
(3, 'Bebidas', 'Jugos y gaseosas'),
(4, 'Aseo', 'Productos de limpieza'),
(5, 'Enlatados', 'Productos en conserva'),
(6, 'Dulces', 'Caramelos y chocolates'),
(7, 'Panaderia', 'Pan y productos horneados'),
(8, 'Aceites', 'Aceites de cocina'),
(9, 'Carnes', 'Productos carnicos'),
(10, 'Frutas', 'Frutas frescas'),
(11, 'Verduras', 'Verduras frescas'),
(12, 'Pastas', 'Pastas alimenticias'),
(13, 'Cereales', 'Cereales para desayuno'),
(14, 'Salsas', 'Salsas y condimentos'),
(15, 'Congelados', 'Productos congelados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `apellido`, `documento`, `telefono`, `correo`) VALUES
(1, 'Carlos', 'Rodriguez', '1001001001', '3001112233', 'carlos@example.com'),
(2, 'Maria', 'Gomez', '1001001002', '3001112234', 'maria@example.com'),
(3, 'Juan', 'Perez', '1001001003', '3001112235', 'juan@example.com'),
(4, 'Laura', 'Martinez', '1001001004', '3001112236', 'laura@example.com'),
(5, 'Andres', 'Lopez', '1001001005', '3001112237', 'andres@example.com'),
(6, 'Camila', 'Torres', '1001001006', '3001112238', 'camila@example.com'),
(7, 'Daniel', 'Garcia', '1001001007', '3001112239', 'daniel@example.com'),
(8, 'Sofia', 'Ramirez', '1001001008', '3001112240', 'sofia@example.com'),
(9, 'Miguel', 'Hernandez', '1001001009', '3001112241', 'miguel@example.com'),
(10, 'Valentina', 'Castro', '1001001010', '3001112242', 'valentina@example.com'),
(11, 'Sebastian', 'Moreno', '1001001011', '3001112243', 'sebastian@example.com'),
(12, 'Isabella', 'Rojas', '1001001012', '3001112244', 'isabella@example.com'),
(13, 'David', 'Sanchez', '1001001013', '3001112245', 'david@example.com'),
(14, 'Natalia', 'Diaz', '1001001014', '3001112246', 'natalia@example.com'),
(15, 'Felipe', 'Ramirez', '1001001015', '3001112247', 'felipe@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id_detalle` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id_detalle`, `id_venta`, `id_producto`, `cantidad`, `precio_unitario`, `subtotal`) VALUES
(1, 1, 1, 1, 2500.00, 2500.00),
(2, 2, 2, 1, 3000.00, 3000.00),
(3, 3, 3, 1, 4500.00, 4500.00),
(4, 4, 4, 1, 2000.00, 2000.00),
(5, 5, 5, 1, 6800.00, 6800.00),
(6, 6, 6, 1, 3500.00, 3500.00),
(7, 7, 7, 1, 5000.00, 5000.00),
(8, 8, 8, 1, 8500.00, 8500.00),
(9, 9, 9, 1, 7800.00, 7800.00),
(10, 10, 10, 1, 6500.00, 6500.00),
(11, 11, 11, 1, 6000.00, 6000.00),
(12, 12, 12, 1, 3500.00, 3500.00),
(13, 13, 13, 1, 9200.00, 9200.00),
(14, 14, 14, 1, 4000.00, 4000.00),
(15, 15, 15, 1, 9500.00, 9500.00),
(16, 1, 2, 1, 3000.00, 3000.00),
(17, 2, 3, 2, 4500.00, 9000.00),
(18, 3, 4, 2, 2000.00, 4000.00),
(19, 4, 5, 1, 6800.00, 6800.00),
(20, 5, 6, 2, 3500.00, 7000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(80) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre_producto`, `precio`, `stock`, `fecha_vencimiento`, `id_categoria`, `id_proveedor`) VALUES
(1, 'Arroz Diana 1kg', 2500.00, 50, '2027-05-10', 1, 1),
(2, 'Leche Entera 1L', 3000.00, 40, '2026-12-15', 2, 2),
(3, 'Gaseosa 1.5L', 4500.00, 35, '2027-02-20', 3, 3),
(4, 'Detergente 500g', 2000.00, 30, '2028-01-10', 4, 4),
(5, 'Atun en Lata', 6800.00, 60, '2028-06-15', 5, 5),
(6, 'Chocolate Barra', 3500.00, 25, '2027-04-10', 6, 6),
(7, 'Pan Tajado', 5000.00, 20, '2026-12-05', 7, 7),
(8, 'Aceite Vegetal 1L', 8500.00, 45, '2027-08-10', 8, 8),
(9, 'Salchichas 500g', 7800.00, 30, '2026-12-20', 9, 9),
(10, 'Manzana 1kg', 6500.00, 40, '2026-12-01', 10, 10),
(11, 'Tomate 1kg', 6000.00, 35, '2026-11-30', 11, 11),
(12, 'Pasta Espagueti', 3500.00, 50, '2028-03-15', 12, 12),
(13, 'Cereal Caja', 9200.00, 20, '2027-09-10', 13, 13),
(14, 'Salsa de Tomate', 4000.00, 25, '2027-11-20', 14, 14),
(15, 'Papas Congeladas', 9500.00, 15, '2027-06-10', 15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_proveedor` varchar(80) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nombre_proveedor`, `telefono`, `correo`, `direccion`) VALUES
(1, 'Distribuciones El Campo', '3000000001', 'campo@example.com', 'Calle 10 Bogota'),
(2, 'Lacteos del Norte', '3000000002', 'lacteos@example.com', 'Calle 20 Bogota'),
(3, 'Bebidas Nacionales', '3000000003', 'bebidas@example.com', 'Carrera 15 Bogota'),
(4, 'Aseo Total', '3000000004', 'aseo@example.com', 'Calle 30 Bogota'),
(5, 'Conservas Colombia', '3000000005', 'conservas@example.com', 'Carrera 20 Bogota'),
(6, 'Dulces La Economia', '3000000006', 'dulces@example.com', 'Calle 40 Bogota'),
(7, 'Panaderia Central', '3000000007', 'pan@example.com', 'Carrera 8 Bogota'),
(8, 'Aceites del Valle', '3000000008', 'aceites@example.com', 'Calle 50 Bogota'),
(9, 'Carnes Selectas', '3000000009', 'carnes@example.com', 'Carrera 30 Bogota'),
(10, 'Frutas Frescas', '3000000010', 'frutas@example.com', 'Calle 60 Bogota'),
(11, 'Verduras del Campo', '3000000011', 'verduras@example.com', 'Carrera 40 Bogota'),
(12, 'Pastas Doradas', '3000000012', 'pastas@example.com', 'Calle 70 Bogota'),
(13, 'Cereales Andinos', '3000000013', 'cereales@example.com', 'Carrera 50 Bogota'),
(14, 'Salsas y Sabores', '3000000014', 'salsas@example.com', 'Calle 80 Bogota'),
(15, 'Congelados Express', '3000000015', 'congelados@example.com', 'Carrera 60 Bogota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `fecha_venta` date NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `metodo_pago` varchar(30) DEFAULT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `fecha_venta`, `total`, `metodo_pago`, `id_cliente`) VALUES
(1, '2026-11-01', 2500.00, 'Efectivo', 1),
(2, '2026-11-02', 3000.00, 'Tarjeta', 2),
(3, '2026-11-03', 4500.00, 'Efectivo', 3),
(4, '2026-11-04', 2000.00, 'Transferencia', 4),
(5, '2026-11-05', 6800.00, 'Efectivo', 5),
(6, '2026-11-06', 3500.00, 'Tarjeta', 6),
(7, '2026-11-07', 5000.00, 'Efectivo', 7),
(8, '2026-11-08', 8500.00, 'Transferencia', 8),
(9, '2026-11-09', 7800.00, 'Efectivo', 9),
(10, '2026-11-10', 6500.00, 'Tarjeta', 10),
(11, '2026-11-11', 6000.00, 'Efectivo', 11),
(12, '2026-11-12', 3500.00, 'Transferencia', 12),
(13, '2026-11-13', 9200.00, 'Efectivo', 13),
(14, '2026-11-14', 4000.00, 'Tarjeta', 14),
(15, '2026-11-15', 9500.00, 'Efectivo', 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `documento` (`documento`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`),
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
