-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-12-2023 a las 08:26:57
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
-- Base de datos: `restaurant`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `DishID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`ID`, `UserID`, `DishID`, `Quantity`) VALUES
(1, 1, 2, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cookhelpers`
--

CREATE TABLE `cookhelpers` (
  `CookHelperID` int(11) NOT NULL,
  `CookID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cookhelpers`
--

INSERT INTO `cookhelpers` (`CookHelperID`, `CookID`) VALUES
(2, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cooksdishes`
--

CREATE TABLE `cooksdishes` (
  `CookID` int(11) NOT NULL,
  `DishID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cooksdishes`
--

INSERT INTO `cooksdishes` (`CookID`, `DishID`) VALUES
(1, 3),
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dishes`
--

CREATE TABLE `dishes` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Url` varchar(255) NOT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Stock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dishes`
--

INSERT INTO `dishes` (`ID`, `Name`, `Price`, `Url`, `Type`, `Stock`) VALUES
(1, 'Spaghetti Bolognese', 12.99, 'https://www.kitchensanctuary.com/wp-content/uploads/2019/09/Spaghetti-Bolognese-square-FS-0204-500x375.jpg', 'Main Course', 10),
(2, 'Caesar Salad', 8.99, 'https://hips.hearstapps.com/hmg-prod/images/chicken-caesar-salad7-1654809005.jpg?crop=0.588xw:0.880xh;0.0497xw,0.120xh&resize=1200:*', 'Appetizer', 10),
(3, 'Chocolate Cake', 6.99, 'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/0A475B34-4E78-40D8-9F30-46223B7D77E7/Derivates/E55C7EA4-0E60-403F-B5DC-75EA358197BD.jpg', 'Dessert', 10),
(4, 'El Mole', 12.99, 'https://www.unileverfoodsolutions.com.mx/tendencias/de-mexico-para-el-mundo/platillos-mexicanos/top10-platillos/jcr:content/parsys/content-aside-footer/columncontrol/columnctrl_parsys_1/textimage/image.transform/jpeg-optimized/image.1592429873377.jpg', 'Mexican', 10),
(5, 'El Pozole', 10.99, 'https://www.unileverfoodsolutions.com.mx/tendencias/de-mexico-para-el-mundo/platillos-mexicanos/top10-platillos/jcr:content/parsys/content-aside-footer/columncontrol_copy/columnctrl_parsys_2/textimage/image.transform/jpeg-optimized/image.1592429869891.jpg', 'Mexican', 10),
(6, 'Cochinita Pibil', 14.99, 'https://www.pequerecetas.com/wp-content/uploads/2020/03/cochinita-pibil-mexico.jpg', 'Mexican', 10),
(7, 'Tacos', 10.99, 'https://www.comedera.com/wp-content/uploads/2017/08/tacos-al-pastor-receta.jpg', 'Mexican', 10),
(8, 'Tlayudas', 12.99, 'https://www.elsoldemexico.com.mx/incoming/ayh193-img_8339.jpg/ALTERNATES/LANDSCAPE_768/IMG_8339.jpg', 'Mexican', 10),
(9, 'Pescado a la Veracruzana', 19.50, 'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/2603482B-C515-4B2E-8E9D-ACCD3E4A1622/Derivates/ad8f3cc8-a157-4ad6-9aaf-b8f891c20a21.jpg', 'Mexican', 10),
(10, 'Pescado a la talla', 20.99, 'https://cdn7.kiwilimon.com/recetaimagen/39173/50704.jpg', 'Mexican', 10),
(13, 'Barbacoa', 18.99, 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F21%2F2018%2F04%2F07%2Fbarbacoa-de-res-estilo-guadalajara-jalisco-2000.jpg&q=60', 'Mexican', 10),
(14, 'Carnitas', 14.50, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Carnitas.jpg/1200px-Carnitas.jpg', 'Mexican', 10),
(15, 'Chiles en Nogada', 16.99, 'https://www.daisybrand.com/wp-content/uploads/2019/12/CHILI-RELLENOS-770x628.jpg', 'Mexican', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `SSN` varchar(20) DEFAULT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL,
  `MobileNumber` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `employees`
--

INSERT INTO `employees` (`ID`, `FirstName`, `LastName`, `SSN`, `PhoneNumber`, `MobileNumber`) VALUES
(1, 'John', 'Doe', '123-45-6789', '555-1234', '555-5678'),
(2, 'Jane', 'Smith', '987-65-4321', '555-4321', '555-8765'),
(3, 'Robert', 'Johnson', '456-78-9012', '555-7890', '555-2345'),
(4, 'Emily', 'Williams', '321-09-8765', '555-8765', '555-9012'),
(5, 'Michael', 'Brown', '789-01-2345', '555-3456', '555-7890');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employeespositions`
--

CREATE TABLE `employeespositions` (
  `EmployeeID` int(11) NOT NULL,
  `PositionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `employeespositions`
--

INSERT INTO `employeespositions` (`EmployeeID`, `PositionID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 2),
(5, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredients`
--

CREATE TABLE `ingredients` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `PricePerKilo` decimal(10,2) DEFAULT NULL,
  `WarehouseID` int(11) DEFAULT NULL,
  `ShelfID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ingredients`
--

INSERT INTO `ingredients` (`ID`, `Name`, `PricePerKilo`, `WarehouseID`, `ShelfID`) VALUES
(1, 'Tomatoes', 2.50, 1, 1),
(2, 'Chicken', 5.99, 1, 2),
(3, 'Lettuce', 1.50, 2, 2),
(4, 'Flour', 0.80, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `positions`
--

CREATE TABLE `positions` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `positions`
--

INSERT INTO `positions` (`ID`, `Name`) VALUES
(2, 'Chef'),
(4, 'Cleaner'),
(1, 'Manager'),
(3, 'Waiter');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shelves`
--

CREATE TABLE `shelves` (
  `ID` int(11) NOT NULL,
  `Letter` char(1) DEFAULT NULL,
  `SizeInCentimeters` int(11) DEFAULT NULL,
  `WarehouseID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `shelves`
--

INSERT INTO `shelves` (`ID`, `Letter`, `SizeInCentimeters`, `WarehouseID`) VALUES
(1, 'A', 100, 1),
(2, 'B', 80, 2),
(3, 'C', 120, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `warehouses`
--

CREATE TABLE `warehouses` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `WarehouseNumber` int(11) DEFAULT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `warehouses`
--

INSERT INTO `warehouses` (`ID`, `Name`, `WarehouseNumber`, `Description`) VALUES
(1, 'Main Warehouse', 1, 'Central storage for all items'),
(2, 'Cold Storage', 2, 'Storage for perishable items');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `DishID` (`DishID`);

--
-- Indices de la tabla `cookhelpers`
--
ALTER TABLE `cookhelpers`
  ADD PRIMARY KEY (`CookHelperID`),
  ADD KEY `CookID` (`CookID`);

--
-- Indices de la tabla `cooksdishes`
--
ALTER TABLE `cooksdishes`
  ADD PRIMARY KEY (`CookID`,`DishID`),
  ADD KEY `DishID` (`DishID`);

--
-- Indices de la tabla `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SSN` (`SSN`);

--
-- Indices de la tabla `employeespositions`
--
ALTER TABLE `employeespositions`
  ADD PRIMARY KEY (`EmployeeID`,`PositionID`),
  ADD KEY `PositionID` (`PositionID`);

--
-- Indices de la tabla `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`),
  ADD KEY `WarehouseID` (`WarehouseID`),
  ADD KEY `ShelfID` (`ShelfID`);

--
-- Indices de la tabla `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indices de la tabla `shelves`
--
ALTER TABLE `shelves`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Letter` (`Letter`),
  ADD KEY `WarehouseID` (`WarehouseID`);

--
-- Indices de la tabla `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `dishes`
--
ALTER TABLE `dishes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `positions`
--
ALTER TABLE `positions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `shelves`
--
ALTER TABLE `shelves`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `employees` (`ID`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`DishID`) REFERENCES `dishes` (`ID`);

--
-- Filtros para la tabla `cookhelpers`
--
ALTER TABLE `cookhelpers`
  ADD CONSTRAINT `cookhelpers_ibfk_1` FOREIGN KEY (`CookHelperID`) REFERENCES `employees` (`ID`),
  ADD CONSTRAINT `cookhelpers_ibfk_2` FOREIGN KEY (`CookID`) REFERENCES `employees` (`ID`);

--
-- Filtros para la tabla `cooksdishes`
--
ALTER TABLE `cooksdishes`
  ADD CONSTRAINT `cooksdishes_ibfk_1` FOREIGN KEY (`CookID`) REFERENCES `employees` (`ID`),
  ADD CONSTRAINT `cooksdishes_ibfk_2` FOREIGN KEY (`DishID`) REFERENCES `dishes` (`ID`);

--
-- Filtros para la tabla `employeespositions`
--
ALTER TABLE `employeespositions`
  ADD CONSTRAINT `employeespositions_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`ID`),
  ADD CONSTRAINT `employeespositions_ibfk_2` FOREIGN KEY (`PositionID`) REFERENCES `positions` (`ID`);

--
-- Filtros para la tabla `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_ibfk_1` FOREIGN KEY (`WarehouseID`) REFERENCES `warehouses` (`ID`),
  ADD CONSTRAINT `ingredients_ibfk_2` FOREIGN KEY (`ShelfID`) REFERENCES `shelves` (`ID`);

--
-- Filtros para la tabla `shelves`
--
ALTER TABLE `shelves`
  ADD CONSTRAINT `shelves_ibfk_1` FOREIGN KEY (`WarehouseID`) REFERENCES `warehouses` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
