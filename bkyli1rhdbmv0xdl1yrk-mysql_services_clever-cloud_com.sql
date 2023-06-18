-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: bkyli1rhdbmv0xdl1yrk-mysql.services.clever-cloud.com:3306
-- Generation Time: Jun 18, 2023 at 12:27 PM
-- Server version: 8.0.15-5
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bkyli1rhdbmv0xdl1yrk`
--
CREATE DATABASE IF NOT EXISTS `bkyli1rhdbmv0xdl1yrk` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bkyli1rhdbmv0xdl1yrk`;

-- --------------------------------------------------------

--
-- Table structure for table `educacion`
--
-- Creation: May 27, 2023 at 11:20 AM
--

CREATE TABLE `educacion` (
  `id` int(11) NOT NULL,
  `descripcione` varchar(255) DEFAULT NULL,
  `fecha_fine` varchar(255) DEFAULT NULL,
  `fecha_inicioe` varchar(255) DEFAULT NULL,
  `nombree` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `educacion`
--

INSERT INTO `educacion` (`id`, `descripcione`, `fecha_fine`, `fecha_inicioe`, `nombree`) VALUES
(1, 'Primera etapa del programa', 'ago. 2022', 'jun. 2022', 'Argentina Programa 2022'),
(2, 'HTML, CSS', 'feb. 2022', 'ene. 2022', 'Responsive Web Design - freeCodeCamp'),
(3, 'Tecnicatura superior en programación', 'actualidad', 'mar. 2022', 'ITSE');

-- --------------------------------------------------------

--
-- Table structure for table `experiencia`
--
-- Creation: May 27, 2023 at 11:20 AM
--

CREATE TABLE `experiencia` (
  `id` int(11) NOT NULL,
  `descripcione` varchar(255) DEFAULT NULL,
  `fecha_fine` varchar(255) DEFAULT NULL,
  `fecha_inicioe` varchar(255) DEFAULT NULL,
  `nombree` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `experiencia`
--

INSERT INTO `experiencia` (`id`, `descripcione`, `fecha_fine`, `fecha_inicioe`, `nombree`) VALUES
(1, 'Practica profresionalizante desarrollando el front y el back', 'actualidad', 'dic. 2022', 'Cruza Beer & Friends'),
(2, 'prueba', 'may. 2023', 'ene. 2023', 'prueba');

-- --------------------------------------------------------

--
-- Table structure for table `hys`
--
-- Creation: May 27, 2023 at 11:20 AM
--

CREATE TABLE `hys` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `porcentaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hys`
--

INSERT INTO `hys` (`id`, `nombre`, `porcentaje`) VALUES
(1, 'HTML', 80),
(2, 'CSS', 50),
(3, 'Angular', 40),
(4, 'Java', 45),
(5, 'Spring Boot', 35),
(6, 'MySQL', 40),
(7, 'Git', 60),
(8, 'Ingles B1 Intermediate and B2 Upper Intermediate', 68);

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--
-- Creation: May 27, 2023 at 11:20 AM
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`id`, `apellido`, `descripcion`, `img`, `nombre`) VALUES
(1, 'Quiroga Juarez', 'Soy de Santiago del Estero y actualmente estudio una tecnicatura superior en programación, tambien formo parte de 2da etapa de Argentina Programa. Estoy interesado en seguir aprendiendo y adquirir nuevas habilidades.', 'nuevaImg', 'Pablo');

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--
-- Creation: May 27, 2023 at 11:20 AM
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `rol_nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`id`, `rol_nombre`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--
-- Creation: May 27, 2023 at 11:20 AM
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `nombre`, `nombre_usuario`, `password`) VALUES
(1, 'argprograma@gmail.com', 'argentinaprograma', 'argprograma23', '$2a$10$ZsPOOQ4hNx38./gygU7OC.TDJjKz4wxtAuTpMmtEjpiO/QLaEGRtC'),
(2, 'pablo@gmail.com', 'pablo', 'pablo', '$2a$10$u8.fNIHg51fTqoQd0dEeauxpXqyBzn4YqZWZWsa0OYwX88jtu.bOC'),
(3, 'user@user.com', 'usuario', 'user', '$2a$10$AKp9GH2noTOn39.GD046rOAqPIxMIyVv6AH1A7skilSbe99O16hJu');

-- --------------------------------------------------------

--
-- Table structure for table `usuario_rol`
--
-- Creation: May 27, 2023 at 11:20 AM
--

CREATE TABLE `usuario_rol` (
  `usuario_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario_rol`
--

INSERT INTO `usuario_rol` (`usuario_id`, `rol_id`) VALUES
(1, 1),
(2, 1),
(1, 2),
(2, 2),
(3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hys`
--
ALTER TABLE `hys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_puhr3k3l7bj71hb7hk7ktpxn0` (`nombre_usuario`);

--
-- Indexes for table `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`usuario_id`,`rol_id`),
  ADD KEY `FK610kvhkwcqk2pxeewur4l7bd1` (`rol_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `educacion`
--
ALTER TABLE `educacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hys`
--
ALTER TABLE `hys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `FK610kvhkwcqk2pxeewur4l7bd1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`),
  ADD CONSTRAINT `FKbyfgloj439r9wr9smrms9u33r` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
