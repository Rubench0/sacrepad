-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 02-05-2019 a las 01:25:09
-- Versión del servidor: 10.1.37-MariaDB-0+deb9u1
-- Versión de PHP: 7.2.16-1+0~20190307202415.17+stretch~1.gbpa7be82

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sacrepad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `binnacle_access_user`
--

CREATE TABLE `binnacle_access_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `system` varchar(1000) DEFAULT NULL,
  `device` varchar(45) DEFAULT NULL,
  `adreess` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `binnacle_access_user`
--

INSERT INTO `binnacle_access_user` (`id`, `user_id`, `date`, `system`, `device`, `adreess`) VALUES
(1, 1, '2019-04-24 20:57:56', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(2, 1, '2019-04-24 20:57:57', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(3, 1, '2019-04-24 20:59:04', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(4, 1, '2019-04-24 20:59:05', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(5, 3, '2019-04-24 21:17:45', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(6, 3, '2019-04-24 21:17:45', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(7, 1, '2019-04-24 21:25:53', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(8, 1, '2019-04-24 21:25:54', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(9, 6, '2019-04-24 23:18:43', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(10, 6, '2019-04-24 23:18:44', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(11, 6, '2019-04-24 23:28:58', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(12, 6, '2019-04-24 23:28:58', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(13, 6, '2019-04-24 23:37:31', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(14, 6, '2019-04-24 23:37:31', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(15, 6, '2019-04-24 23:38:18', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(16, 6, '2019-04-24 23:38:18', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(17, 6, '2019-04-24 23:41:37', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(18, 6, '2019-04-24 23:41:37', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(19, 6, '2019-04-24 23:43:44', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(20, 6, '2019-04-24 23:43:44', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(21, 6, '2019-04-24 23:44:18', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(22, 6, '2019-04-24 23:44:18', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(23, 6, '2019-04-25 01:17:23', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(24, 6, '2019-04-25 01:17:25', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(25, 6, '2019-04-25 01:18:39', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(26, 6, '2019-04-25 01:18:40', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(27, 6, '2019-04-25 01:23:46', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(28, 6, '2019-04-25 01:23:46', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(29, 1, '2019-04-26 15:50:57', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(30, 1, '2019-04-26 15:50:58', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(31, 7, '2019-04-26 16:52:18', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(32, 7, '2019-04-26 16:52:18', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(33, 1, '2019-04-26 16:53:07', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(34, 1, '2019-04-26 16:53:08', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(35, 2, '2019-04-28 15:24:11', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(36, 2, '2019-04-28 15:24:11', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(37, 3, '2019-04-28 15:54:10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(38, 3, '2019-04-28 15:54:11', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(39, 1, '2019-04-28 17:20:41', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(40, 1, '2019-04-28 17:20:41', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(41, 3, '2019-04-28 18:51:36', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(42, 3, '2019-04-28 18:51:37', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(43, 5, '2019-04-28 19:16:28', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(44, 5, '2019-04-28 19:16:29', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(45, 1, '2019-04-28 19:16:58', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(46, 1, '2019-04-28 19:16:58', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(47, 3, '2019-04-28 19:17:39', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(48, 3, '2019-04-28 19:17:40', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(49, 1, '2019-04-28 19:43:06', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(50, 1, '2019-04-28 19:44:25', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(51, 1, '2019-04-28 19:44:26', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(52, 3, '2019-04-28 19:55:40', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(53, 3, '2019-04-28 19:55:40', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(54, 3, '2019-04-28 19:56:12', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(55, 3, '2019-04-28 19:56:12', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(56, 2, '2019-04-29 11:20:51', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(57, 2, '2019-04-29 11:20:51', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(58, 1, '2019-04-29 11:28:33', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(59, 1, '2019-04-29 11:28:33', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(60, 6, '2019-04-29 11:29:51', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(61, 6, '2019-04-29 11:29:51', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(62, 1, '2019-04-29 15:39:47', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(63, 1, '2019-04-29 15:39:48', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(64, 6, '2019-04-29 15:43:02', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(65, 6, '2019-04-29 15:43:02', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(66, 1, '2019-04-29 23:36:00', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(67, 1, '2019-04-29 23:36:02', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(68, 6, '2019-04-29 23:37:58', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(69, 6, '2019-04-29 23:37:58', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(70, 1, '2019-04-30 22:32:03', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(71, 1, '2019-04-30 22:32:04', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(72, 6, '2019-04-30 22:35:36', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(73, 6, '2019-04-30 22:35:36', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(74, 1, '2019-05-01 14:37:46', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1'),
(75, 1, '2019-05-01 14:37:48', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `binnacle_actions`
--

CREATE TABLE `binnacle_actions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `entity` varchar(45) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `binnacle_actions`
--

INSERT INTO `binnacle_actions` (`id`, `user_id`, `entity`, `action`, `date`, `description`) VALUES
(1, 1, 'User', 'actualización', '2019-04-24 20:58:12', 'Modificando datos de usuario.'),
(2, 1, 'User', 'actualización', '2019-04-24 20:58:48', 'Actualización de contraseña de usuario.'),
(3, 1, 'User', 'consulta', '2019-04-24 21:01:53', 'Consultando lista de usuarios.'),
(4, 1, 'BinnacleAccessUser', 'consulta', '2019-04-24 21:02:02', 'Consulta de registros de acceso.'),
(5, 1, 'User', 'consulta', '2019-04-24 21:04:33', 'Consultando lista de usuarios.'),
(6, 1, 'UserData', 'registro', '2019-04-24 21:05:32', 'Agregando datos de usuario para la relación con usuario.'),
(7, 1, 'User', 'registro', '2019-04-24 21:05:32', 'Agregando usuario.'),
(8, 1, 'User', 'consulta', '2019-04-24 21:05:36', 'Consultando lista de usuarios.'),
(9, 1, 'NRequirementsStudent', 'consulta', '2019-04-24 21:05:46', 'Consultando lista de requerimientos de estudiante.'),
(10, 1, 'NRequirementsStudent', 'registro', '2019-04-24 21:06:05', 'Registrando requerimiento de estudiante.'),
(11, 1, 'NRequirementsStudent', 'registro', '2019-04-24 21:06:12', 'Registrando requerimiento de estudiante.'),
(12, 1, 'NRequirementsStudent', 'registro', '2019-04-24 21:06:23', 'Registrando requerimiento de estudiante.'),
(13, 1, 'NRequirementsStudent', 'consulta', '2019-04-24 21:06:24', 'Consultando lista de requerimientos de estudiante.'),
(14, 1, 'Cohort', 'consulta', '2019-04-24 21:06:31', 'Consultando lista de cohortes.'),
(15, 1, 'Cohort', 'registro', '2019-04-24 21:07:17', 'Registrando cohorte M1-01.'),
(16, 1, 'Cohort', 'consulta', '2019-04-24 21:07:20', 'Consultando lista de cohortes.'),
(17, 1, 'Classroom', 'consulta', '2019-04-24 21:07:24', 'Consultando lista de aulas.'),
(18, 1, 'Classroom', 'registro', '2019-04-24 21:07:33', 'Registrando aula A-02.'),
(19, 1, 'Classroom', 'consulta', '2019-04-24 21:07:34', 'Consultando lista de aulas.'),
(20, 1, 'NDays', 'consulta', '2019-04-24 21:07:38', 'Consultando lista de dias.'),
(21, 1, 'NDays', 'registro', '2019-04-24 21:07:44', 'Registrando día en el modulo configuración.'),
(22, 1, 'NDays', 'registro', '2019-04-24 21:07:47', 'Registrando día en el modulo configuración.'),
(23, 1, 'NDays', 'registro', '2019-04-24 21:07:56', 'Registrando día en el modulo configuración.'),
(24, 1, 'NDays', 'registro', '2019-04-24 21:07:59', 'Registrando día en el modulo configuración.'),
(25, 1, 'NDays', 'registro', '2019-04-24 21:08:01', 'Registrando día en el modulo configuración.'),
(26, 1, 'NDays', 'registro', '2019-04-24 21:08:13', 'Registrando día en el modulo configuración.'),
(27, 1, 'NDays', 'consulta', '2019-04-24 21:08:14', 'Consultando lista de dias.'),
(28, 1, 'NClassificationSubject', 'consulta', '2019-04-24 21:08:24', 'Consultando lista de clasificaciones.'),
(29, 1, 'NClassificationSubject', 'registro', '2019-04-24 21:11:37', 'Registrando clasificacion de asignatura.'),
(30, 1, 'NClassificationSubject', 'registro', '2019-04-24 21:11:54', 'Registrando clasificacion de asignatura.'),
(31, 1, 'NClassificationSubject', 'consulta', '2019-04-24 21:11:55', 'Consultando lista de clasificaciones.'),
(32, 1, 'NTypesSubject', 'consulta', '2019-04-24 21:11:57', 'Consultando lista de clasificaciones.'),
(33, 1, 'NTypesSubject', 'registro', '2019-04-24 21:12:03', 'Registrando tipo de asignatura.'),
(34, 1, 'NTypesSubject', 'registro', '2019-04-24 21:12:06', 'Registrando tipo de asignatura.'),
(35, 1, 'NTypesSubject', 'consulta', '2019-04-24 21:12:07', 'Consultando lista de clasificaciones.'),
(36, 1, 'NRequirementsStudent', 'consulta', '2019-04-24 21:12:10', 'Consultando lista de requisitos de estudiante'),
(37, 1, 'NClassificationSubject', 'consulta', '2019-04-24 21:12:10', 'Consultando lista de clasificaciones de asignatura'),
(38, 1, 'NDays', 'consulta', '2019-04-24 21:12:10', 'Consultando lista de dias'),
(39, 1, 'NTypesSubject', 'consulta', '2019-04-24 21:12:10', 'Consultando lista de tipos de asignatura'),
(40, 1, 'NClassificationSubject', 'consulta', '2019-04-24 21:12:11', 'Consultando lista de clasificaciones de asignatura'),
(41, 1, 'NDays', 'consulta', '2019-04-24 21:12:13', 'Consultando lista de dias'),
(42, 1, 'NRequirementsStudent', 'consulta', '2019-04-24 21:12:15', 'Consultando lista de requisitos de estudiante'),
(43, 1, 'NTypesSubject', 'consulta', '2019-04-24 21:12:15', 'Consultando lista de clasificaciones.'),
(44, 1, 'User', 'consulta', '2019-04-24 21:12:20', 'Consultando lista de estudiantes.'),
(45, 1, 'User', 'consulta', '2019-04-24 21:12:23', 'Consultando lista de facilitadores.'),
(46, 1, 'User', 'consulta', '2019-04-24 21:12:25', 'Consultando lista de estudiantes.'),
(47, 1, 'User', 'consulta', '2019-04-24 21:12:28', 'Consultando lista de estudiantes.'),
(48, 1, 'User', 'consulta', '2019-04-24 21:12:29', 'Consultando lista de facilitadores.'),
(49, 1, 'Subject', 'consulta', '2019-04-24 21:12:34', 'Consultando lista de asignaturas.'),
(50, 1, 'Subject', 'consulta', '2019-04-24 21:14:01', 'Consultando lista de asignaturas.'),
(51, 1, 'Subject', 'registro', '2019-04-24 21:14:36', 'Registrando asignatura Matemática .'),
(52, 1, 'Subject', 'consulta', '2019-04-24 21:14:40', 'Consultando lista de asignaturas.'),
(53, 1, 'User', 'consulta', '2019-04-24 21:14:57', 'Consultando lista de facilitadores.'),
(54, 1, 'Facilitator', 'registro', '2019-04-24 21:16:57', 'Agregando datos de usuario facilitador.'),
(55, 1, 'User', 'registro', '2019-04-24 21:16:57', 'Agregando usuario.'),
(56, 1, 'User', 'consulta', '2019-04-24 21:17:22', 'Consultando lista de facilitadores.'),
(57, 1, 'User', 'consulta', '2019-04-24 21:26:05', 'Consultando lista de estudiantes.'),
(58, 1, 'User', 'consulta', '2019-04-24 21:28:04', 'Consultando lista de estudiantes.'),
(59, 1, 'User', 'consulta', '2019-04-24 21:33:09', 'Consultando lista de facilitadores.'),
(60, 1, 'Facilitator', 'registro', '2019-04-24 21:33:52', 'Agregando datos de usuario facilitador.'),
(61, 1, 'User', 'registro', '2019-04-24 21:33:52', 'Agregando usuario.'),
(62, 1, 'User', 'consulta', '2019-04-24 21:33:57', 'Consultando lista de facilitadores.'),
(63, 1, 'User', 'consulta', '2019-04-24 21:35:25', 'Consultando lista de facilitadores.'),
(64, 1, 'Facilitator', 'registro', '2019-04-24 21:35:47', 'Agregando datos de usuario facilitador.'),
(65, 1, 'User', 'registro', '2019-04-24 21:35:47', 'Agregando usuario.'),
(66, 1, 'User', 'consulta', '2019-04-24 21:35:58', 'Consultando lista de facilitadores.'),
(67, 1, 'Lection', 'consulta', '2019-04-24 21:36:18', 'Consultando lista de clases.'),
(68, 1, 'Lection', 'registro', '2019-04-24 21:45:13', 'Registrando clase AE-231.'),
(69, 1, 'Lection', 'consulta', '2019-04-24 22:06:32', 'Consultando lista de clases.'),
(70, 1, 'Lection', 'consulta', '2019-04-24 22:06:40', 'Consultando lista de clases.'),
(71, 1, 'Lection', 'consulta', '2019-04-24 22:07:26', 'Consultando lista de clases.'),
(72, 1, 'Lection', 'consulta', '2019-04-24 22:09:07', 'Consultando datos de clase'),
(73, 1, 'DaysClass', 'consulta', '2019-04-24 22:09:09', 'Consultando lista de dias de clase.'),
(74, 1, 'Lection', 'consulta', '2019-04-24 22:11:46', 'Consultando datos de clase'),
(75, 1, 'Lection', 'consulta', '2019-04-24 22:11:46', 'Consultando datos de clase'),
(76, 1, 'DaysClass', 'consulta', '2019-04-24 22:11:49', 'Consultando lista de dias de clase.'),
(77, 1, 'Lection', 'consulta', '2019-04-24 22:14:39', 'Consultando datos de clase'),
(78, 1, 'DaysClass', 'consulta', '2019-04-24 22:14:40', 'Consultando lista de dias de clase.'),
(79, 1, 'NDaysHasClass', 'registro', '2019-04-24 22:15:21', 'Registrando horario de la clase id=1.'),
(80, 1, 'DaysClass', 'consulta', '2019-04-24 22:15:22', 'Consultando lista de dias de clase.'),
(81, 1, 'Lection', 'consulta', '2019-04-24 22:17:48', 'Consultando lista de clases.'),
(82, 1, 'Lection', 'consulta', '2019-04-24 22:17:59', 'Consultando lista de clases.'),
(83, 1, 'Lection', 'consulta', '2019-04-24 22:18:20', 'Consultando datos de clase'),
(84, 1, 'DaysClass', 'consulta', '2019-04-24 22:18:21', 'Consultando lista de dias de clase.'),
(85, 1, 'Lection', 'consulta', '2019-04-24 22:18:20', 'Consultando datos de clase'),
(86, 1, 'Lection', 'consulta', '2019-04-24 22:18:28', 'Consultando datos de clase'),
(87, 1, 'DaysClass', 'consulta', '2019-04-24 22:18:29', 'Consultando lista de dias de clase.'),
(88, 1, 'Lection', 'consulta', '2019-04-24 22:18:32', 'Consultando lista de clases.'),
(89, 1, 'Lection', 'consulta', '2019-04-24 22:19:49', 'Consultando lista de clases.'),
(90, 1, 'Lection', 'consulta', '2019-04-24 22:20:05', 'Consultando datos de clase'),
(91, 1, 'Lection', 'consulta', '2019-04-24 22:20:06', 'Consultando datos de clase'),
(92, 1, 'Lection', 'consulta', '2019-04-24 22:20:06', 'Consultando datos de clase'),
(93, 1, 'DaysClass', 'consulta', '2019-04-24 22:20:06', 'Consultando lista de dias de clase.'),
(94, 1, 'DaysClass', 'consulta', '2019-04-24 22:20:06', 'Consultando lista de dias de clase.'),
(95, 1, 'Lection', 'consulta', '2019-04-24 22:21:06', 'Consultando datos de clase'),
(96, 1, 'DaysClass', 'consulta', '2019-04-24 22:21:06', 'Consultando lista de dias de clase.'),
(97, 1, 'Student', 'registro', '2019-04-24 23:16:19', 'Inscribiendo estudiante.'),
(98, 1, 'User', 'registro', '2019-04-24 23:16:19', 'Agregando usuario.'),
(99, 1, 'Inscription', 'registro', '2019-04-24 23:16:19', 'Pre-inscripción registrada.'),
(100, 1, 'Cohort', 'consulta', '2019-04-26 15:51:09', 'Consultando lista de clases.'),
(101, 1, 'Cohort', 'consulta', '2019-04-26 15:51:20', 'Consultando datos del curso'),
(102, 1, 'Inscription', 'consulta', '2019-04-26 15:51:20', 'Consultando lista de alumnos pre-inscritos.'),
(103, 1, 'Inscription', 'aprobar', '2019-04-26 15:51:50', 'Aproada inscripcion id=1'),
(104, 1, 'Cohort', 'consulta', '2019-04-26 15:51:51', 'Consultando datos del curso'),
(105, 1, 'Inscription', 'consulta', '2019-04-26 15:51:51', 'Consultando lista de alumnos pre-inscritos.'),
(106, 1, 'Cohort', 'consulta', '2019-04-26 15:51:56', 'Consultando lista de clases.'),
(107, 1, 'Cohort', 'consulta', '2019-04-26 15:52:03', 'Consultando lista de clases.'),
(108, 1, 'Cohort', 'consulta', '2019-04-26 15:52:16', 'Consultando datos del curso'),
(109, 1, 'Inscription', 'consulta', '2019-04-26 15:52:17', 'Consultando lista de alumnos pre-inscritos.'),
(110, 1, 'Inscription', 'aprobar', '2019-04-26 15:52:45', 'Aproada inscripcion id=1'),
(111, 1, 'Cohort', 'consulta', '2019-04-26 15:52:45', 'Consultando datos del curso'),
(112, 1, 'Inscription', 'consulta', '2019-04-26 15:52:45', 'Consultando lista de alumnos pre-inscritos.'),
(113, 1, 'Cohort', 'consulta', '2019-04-26 15:59:18', 'Consultando datos del curso'),
(114, 1, 'Inscription', 'consulta', '2019-04-26 15:59:34', 'Consultando lista de alumnos pre-inscritos.'),
(115, 1, 'Cohort', 'consulta', '2019-04-26 16:00:27', 'Consultando datos del curso'),
(116, 1, 'Inscription', 'consulta', '2019-04-26 16:00:29', 'Consultando lista de alumnos pre-inscritos.'),
(117, 1, 'Cohort', 'consulta', '2019-04-26 16:00:58', 'Consultando datos del curso'),
(118, 1, 'Inscription', 'consulta', '2019-04-26 16:01:06', 'Consultando lista de alumnos pre-inscritos.'),
(119, 1, 'Cohort', 'consulta', '2019-04-26 16:02:11', 'Consultando datos del curso'),
(120, 1, 'Inscription', 'consulta', '2019-04-26 16:02:12', 'Consultando lista de alumnos pre-inscritos.'),
(121, 1, 'Inscription', 'aprobar', '2019-04-26 16:03:22', 'Aprobada inscripcion id=1'),
(122, 1, 'Cohort', 'consulta', '2019-04-26 16:03:22', 'Consultando datos del curso'),
(123, 1, 'Inscription', 'consulta', '2019-04-26 16:03:23', 'Consultando lista de alumnos pre-inscritos.'),
(124, 1, 'Cohort', 'consulta', '2019-04-26 16:14:54', 'Consultando datos del curso'),
(125, 1, 'Inscription', 'consulta', '2019-04-26 16:15:19', 'Consultando lista de alumnos pre-inscritos.'),
(126, 1, 'Cohort', 'consulta', '2019-04-26 16:18:39', 'Consultando datos del curso'),
(127, 1, 'Inscription', 'consulta', '2019-04-26 16:18:40', 'Consultando lista de alumnos pre-inscritos.'),
(128, 1, 'Inscription', 'aprobar', '2019-04-26 16:20:50', 'Inscripción desaprobada id=1'),
(129, 1, 'Cohort', 'consulta', '2019-04-26 16:29:10', 'Consultando datos del curso'),
(130, 1, 'Inscription', 'consulta', '2019-04-26 16:29:37', 'Consultando lista de alumnos pre-inscritos.'),
(131, 1, 'Inscription', 'aprobar', '2019-04-26 16:31:23', 'Inscripción aprobada id=1'),
(132, 1, 'Inscription', 'aprobar', '2019-04-26 16:32:33', 'Inscripción desaprobada id=1'),
(133, 1, 'Inscription', 'aprobar', '2019-04-26 16:33:12', 'Inscripción aprobada id=1'),
(134, 1, 'Inscription', 'aprobar', '2019-04-26 16:36:01', 'Inscripción desaprobada id=1'),
(135, 1, 'Inscription', 'aprobar', '2019-04-26 16:36:13', 'Inscripción aprobada id=1'),
(136, 1, 'Cohort', 'consulta', '2019-04-26 16:38:40', 'Consultando datos del curso'),
(137, 1, 'Inscription', 'consulta', '2019-04-26 16:38:41', 'Consultando lista de alumnos pre-inscritos.'),
(138, 1, 'Cohort', 'consulta', '2019-04-26 16:39:48', 'Consultando datos del curso'),
(139, 1, 'Inscription', 'consulta', '2019-04-26 16:39:49', 'Consultando lista de alumnos pre-inscritos.'),
(140, 1, 'Inscription', 'aprobar', '2019-04-26 16:41:24', 'Inscripción aprobada id=1'),
(141, 1, 'Cohort', 'consulta', '2019-04-26 16:41:25', 'Consultando datos del curso'),
(142, 1, 'Inscription', 'consulta', '2019-04-26 16:41:25', 'Consultando lista de alumnos pre-inscritos.'),
(143, 1, 'Inscription', 'aprobar', '2019-04-26 16:50:09', 'Inscripción desaprobada id=1'),
(144, 1, 'Cohort', 'consulta', '2019-04-26 16:50:10', 'Consultando datos del curso'),
(145, 1, 'Inscription', 'consulta', '2019-04-26 16:50:10', 'Consultando lista de alumnos pre-inscritos.'),
(146, 1, 'Inscription', 'aprobar', '2019-04-26 16:50:47', 'Inscripción aprobada id=1'),
(147, 1, 'Cohort', 'consulta', '2019-04-26 16:50:47', 'Consultando datos del curso'),
(148, 1, 'Inscription', 'consulta', '2019-04-26 16:50:47', 'Consultando lista de alumnos pre-inscritos.'),
(149, 1, 'Student', 'registro', '2019-04-26 16:51:46', 'Inscribiendo estudiante.'),
(150, 1, 'User', 'registro', '2019-04-26 16:51:46', 'Agregando usuario.'),
(151, 1, 'Inscription', 'registro', '2019-04-26 16:51:46', 'Pre-inscripción registrada.'),
(152, 1, 'Cohort', 'consulta', '2019-04-26 16:53:18', 'Consultando lista de clases.'),
(153, 1, 'Cohort', 'consulta', '2019-04-26 16:53:21', 'Consultando datos del curso'),
(154, 1, 'Inscription', 'consulta', '2019-04-26 16:53:21', 'Consultando lista de alumnos pre-inscritos.'),
(155, 1, 'Cohort', 'consulta', '2019-04-26 16:54:02', 'Consultando lista de clases.'),
(156, 1, 'Cohort', 'consulta', '2019-04-26 16:54:18', 'Consultando lista de clases.'),
(157, 1, 'Cohort', 'consulta', '2019-04-26 16:54:22', 'Consultando lista de cohortes.'),
(158, 1, 'Lection', 'consulta', '2019-04-26 16:54:25', 'Consultando lista de clases.'),
(159, 1, 'Cohort', 'consulta', '2019-04-26 16:54:28', 'Consultando lista de clases.'),
(160, 1, 'Cohort', 'consulta', '2019-04-26 16:54:31', 'Consultando lista de cohortes'),
(161, 1, 'Cohort', 'consulta', '2019-04-26 16:54:31', 'Consultando datos del curso'),
(162, 1, 'Inscription', 'consulta', '2019-04-26 16:54:31', 'Consultando lista de alumnos pre-inscritos.'),
(163, 1, 'Cohort', 'consulta', '2019-04-26 16:54:31', 'Consultando datos del curso'),
(164, 1, 'Lection', 'consulta', '2019-04-26 16:54:31', 'Consultando datos de clase'),
(165, 1, 'Inscription', 'consulta', '2019-04-26 16:54:32', 'Consultando lista de alumnos pre-inscritos.'),
(166, 1, 'DaysClass', 'consulta', '2019-04-26 16:54:32', 'Consultando lista de dias de clase.'),
(167, 1, 'Cohort', 'consulta', '2019-04-26 16:57:36', 'Consultando datos del curso'),
(168, 1, 'Inscription', 'consulta', '2019-04-26 16:57:37', 'Consultando lista de alumnos pre-inscritos.'),
(169, 1, 'Inscription', 'aprobar', '2019-04-26 16:57:48', 'Inscripción aprobada id=2'),
(170, 1, 'Cohort', 'consulta', '2019-04-26 16:57:49', 'Consultando datos del curso'),
(171, 1, 'Inscription', 'consulta', '2019-04-26 16:57:49', 'Consultando lista de alumnos pre-inscritos.'),
(172, 1, 'Cohort', 'consulta', '2019-04-26 16:59:29', 'Consultando datos del curso'),
(173, 1, 'Inscription', 'consulta', '2019-04-26 16:59:30', 'Consultando lista de alumnos pre-inscritos.'),
(174, 1, 'Cohort', 'consulta', '2019-04-26 17:02:37', 'Consultando datos del curso'),
(175, 1, 'Inscription', 'consulta', '2019-04-26 17:02:38', 'Consultando lista de alumnos pre-inscritos.'),
(176, 1, 'Cohort', 'consulta', '2019-04-26 17:02:57', 'Consultando datos del curso'),
(177, 1, 'Inscription', 'consulta', '2019-04-26 17:02:57', 'Consultando lista de alumnos pre-inscritos.'),
(178, 1, 'Cohort', 'consulta', '2019-04-26 17:03:34', 'Consultando datos del curso'),
(179, 1, 'Inscription', 'consulta', '2019-04-26 17:03:34', 'Consultando lista de alumnos pre-inscritos.'),
(180, 1, 'Cohort', 'consulta', '2019-04-26 17:07:04', 'Consultando datos del curso'),
(181, 1, 'Inscription', 'consulta', '2019-04-26 17:07:11', 'Consultando lista de alumnos pre-inscritos.'),
(182, 1, 'Cohort', 'consulta', '2019-04-26 17:09:21', 'Consultando datos del curso'),
(183, 1, 'Cohort', 'consulta', '2019-04-26 17:09:21', 'Consultando datos del curso'),
(184, 1, 'Inscription', 'consulta', '2019-04-26 17:09:31', 'Consultando lista de alumnos pre-inscritos.'),
(185, 1, 'Cohort', 'consulta', '2019-04-26 17:11:11', 'Consultando datos del curso'),
(186, 1, 'Inscription', 'consulta', '2019-04-26 17:11:13', 'Consultando lista de alumnos pre-inscritos.'),
(187, 1, 'Cohort', 'consulta', '2019-04-26 17:12:00', 'Consultando datos del curso'),
(188, 1, 'Inscription', 'consulta', '2019-04-26 17:12:00', 'Consultando lista de alumnos pre-inscritos.'),
(189, 1, 'Cohort', 'consulta', '2019-04-26 17:13:09', 'Consultando datos del curso'),
(190, 1, 'Inscription', 'consulta', '2019-04-26 17:13:10', 'Consultando lista de alumnos pre-inscritos.'),
(191, 1, 'Cohort', 'consulta', '2019-04-26 17:13:44', 'Consultando datos del curso'),
(192, 1, 'Inscription', 'consulta', '2019-04-26 17:13:45', 'Consultando lista de alumnos pre-inscritos.'),
(193, 1, 'Cohort', 'consulta', '2019-04-26 17:13:58', 'Consultando datos del curso'),
(194, 1, 'Inscription', 'consulta', '2019-04-26 17:13:58', 'Consultando lista de alumnos pre-inscritos.'),
(195, 1, 'Cohort', 'consulta', '2019-04-26 17:14:17', 'Consultando datos del curso'),
(196, 1, 'Inscription', 'consulta', '2019-04-26 17:14:17', 'Consultando lista de alumnos pre-inscritos.'),
(197, 1, 'Cohort', 'consulta', '2019-04-26 17:14:49', 'Consultando datos del curso'),
(198, 1, 'Inscription', 'consulta', '2019-04-26 17:14:50', 'Consultando lista de alumnos pre-inscritos.'),
(199, 1, 'Cohort', 'consulta', '2019-04-26 17:17:18', 'Consultando datos del curso'),
(200, 1, 'Inscription', 'consulta', '2019-04-26 17:17:18', 'Consultando lista de alumnos pre-inscritos.'),
(201, 1, 'Cohort', 'consulta', '2019-04-26 17:17:32', 'Consultando datos del curso'),
(202, 1, 'Inscription', 'consulta', '2019-04-26 17:17:32', 'Consultando lista de alumnos pre-inscritos.'),
(203, 1, 'Cohort', 'consulta', '2019-04-26 17:17:48', 'Consultando datos del curso'),
(204, 1, 'Inscription', 'consulta', '2019-04-26 17:17:48', 'Consultando lista de alumnos pre-inscritos.'),
(205, 1, 'Cohort', 'consulta', '2019-04-26 17:18:01', 'Consultando datos del curso'),
(206, 1, 'Inscription', 'consulta', '2019-04-26 17:18:01', 'Consultando lista de alumnos pre-inscritos.'),
(207, 1, 'Cohort', 'consulta', '2019-04-26 17:49:55', 'Consultando datos del curso'),
(208, 1, 'Inscription', 'consulta', '2019-04-26 17:49:56', 'Consultando lista de alumnos pre-inscritos.'),
(209, 1, 'Cohort', 'consulta', '2019-04-26 17:50:13', 'Consultando datos del curso'),
(210, 1, 'Inscription', 'consulta', '2019-04-26 17:50:13', 'Consultando lista de alumnos pre-inscritos.'),
(211, 1, 'Cohort', 'consulta', '2019-04-26 17:52:50', 'Consultando datos del curso'),
(212, 1, 'Inscription', 'consulta', '2019-04-26 17:52:58', 'Consultando lista de alumnos pre-inscritos.'),
(213, 1, 'Cohort', 'consulta', '2019-04-26 17:53:47', 'Consultando datos del curso'),
(214, 1, 'Inscription', 'consulta', '2019-04-26 17:53:47', 'Consultando lista de alumnos pre-inscritos.'),
(215, 1, 'Cohort', 'consulta', '2019-04-26 17:54:14', 'Consultando datos del curso'),
(216, 1, 'Inscription', 'consulta', '2019-04-26 17:54:15', 'Consultando lista de alumnos pre-inscritos.'),
(217, 1, 'Cohort', 'consulta', '2019-04-26 17:54:29', 'Consultando datos del curso'),
(218, 1, 'Inscription', 'consulta', '2019-04-26 17:54:29', 'Consultando lista de alumnos pre-inscritos.'),
(219, 1, 'Cohort', 'consulta', '2019-04-26 17:54:37', 'Consultando datos del curso'),
(220, 1, 'Inscription', 'consulta', '2019-04-26 17:54:37', 'Consultando lista de alumnos pre-inscritos.'),
(221, 1, 'Cohort', 'consulta', '2019-04-26 17:54:56', 'Consultando datos del curso'),
(222, 1, 'Inscription', 'consulta', '2019-04-26 17:54:57', 'Consultando lista de alumnos pre-inscritos.'),
(223, 1, 'Cohort', 'consulta', '2019-04-26 17:55:05', 'Consultando datos del curso'),
(224, 1, 'Inscription', 'consulta', '2019-04-26 17:55:06', 'Consultando lista de alumnos pre-inscritos.'),
(225, 1, 'Cohort', 'consulta', '2019-04-26 17:57:51', 'Consultando datos del curso'),
(226, 1, 'Inscription', 'consulta', '2019-04-26 17:57:52', 'Consultando lista de alumnos pre-inscritos.'),
(227, 1, 'Cohort', 'consulta', '2019-04-26 18:07:21', 'Consultando datos del curso'),
(228, 1, 'Inscription', 'consulta', '2019-04-26 18:07:22', 'Consultando lista de alumnos pre-inscritos.'),
(229, 1, 'Cohort', 'consulta', '2019-04-26 18:08:06', 'Consultando datos del curso'),
(230, 1, 'Inscription', 'consulta', '2019-04-26 18:08:06', 'Consultando lista de alumnos pre-inscritos.'),
(231, 1, 'Cohort', 'consulta', '2019-04-26 18:08:36', 'Consultando datos del curso'),
(232, 1, 'Inscription', 'consulta', '2019-04-26 18:08:37', 'Consultando lista de alumnos pre-inscritos.'),
(233, 1, 'Cohort', 'consulta', '2019-04-26 18:09:20', 'Consultando datos del curso'),
(234, 1, 'Inscription', 'consulta', '2019-04-26 18:09:20', 'Consultando lista de alumnos pre-inscritos.'),
(235, 1, 'Cohort', 'consulta', '2019-04-26 18:09:54', 'Consultando datos del curso'),
(236, 1, 'Inscription', 'consulta', '2019-04-26 18:09:55', 'Consultando lista de alumnos pre-inscritos.'),
(237, 1, 'Cohort', 'consulta', '2019-04-26 18:10:25', 'Consultando datos del curso'),
(238, 1, 'Inscription', 'consulta', '2019-04-26 18:10:25', 'Consultando lista de alumnos pre-inscritos.'),
(239, 1, 'Cohort', 'consulta', '2019-04-26 18:12:33', 'Consultando datos del curso'),
(240, 1, 'Inscription', 'consulta', '2019-04-26 18:12:34', 'Consultando lista de alumnos pre-inscritos.'),
(241, 1, 'Cohort', 'consulta', '2019-04-26 18:13:14', 'Consultando datos del curso'),
(242, 1, 'Inscription', 'consulta', '2019-04-26 18:13:15', 'Consultando lista de alumnos pre-inscritos.'),
(243, 1, 'Cohort', 'consulta', '2019-04-26 18:13:27', 'Consultando datos del curso'),
(244, 1, 'Inscription', 'consulta', '2019-04-26 18:13:28', 'Consultando lista de alumnos pre-inscritos.'),
(245, 1, 'Cohort', 'consulta', '2019-04-26 18:14:00', 'Consultando datos del curso'),
(246, 1, 'Inscription', 'consulta', '2019-04-26 18:14:00', 'Consultando lista de alumnos pre-inscritos.'),
(247, 1, 'Cohort', 'consulta', '2019-04-26 18:14:48', 'Consultando datos del curso'),
(248, 1, 'Inscription', 'consulta', '2019-04-26 18:14:49', 'Consultando lista de alumnos pre-inscritos.'),
(249, 1, 'Cohort', 'consulta', '2019-04-26 18:16:23', 'Consultando datos del curso'),
(250, 1, 'Inscription', 'consulta', '2019-04-26 18:16:43', 'Consultando lista de alumnos pre-inscritos.'),
(251, 1, 'User', 'consulta', '2019-04-26 18:23:00', 'Consultando lista de estudiantes.'),
(252, 1, 'Student', 'registro', '2019-04-26 18:24:12', 'Inscribiendo estudiante.'),
(253, 1, 'User', 'registro', '2019-04-26 18:24:12', 'Agregando usuario.'),
(254, 1, 'Inscription', 'registro', '2019-04-26 18:24:12', 'Pre-inscripción registrada.'),
(255, 1, 'Cohort', 'consulta', '2019-04-26 18:24:24', 'Consultando lista de clases.'),
(256, 1, 'Cohort', 'consulta', '2019-04-26 18:24:30', 'Consultando datos del curso'),
(257, 1, 'Inscription', 'consulta', '2019-04-26 18:24:31', 'Consultando lista de alumnos pre-inscritos.'),
(258, 1, 'Cohort', 'consulta', '2019-04-26 18:24:42', 'Consultando datos del curso'),
(259, 1, 'Inscription', 'consulta', '2019-04-26 18:24:43', 'Consultando lista de alumnos pre-inscritos.'),
(260, 1, 'Inscription', 'consulta', '2019-04-26 18:24:52', 'Consultando lista de alumnos pre-inscritos.'),
(261, 1, 'Cohort', 'consulta', '2019-04-26 18:24:52', 'Consultando datos del curso'),
(262, 1, 'Cohort', 'consulta', '2019-04-26 18:25:01', 'Consultando datos del curso'),
(263, 1, 'Inscription', 'consulta', '2019-04-26 18:25:01', 'Consultando lista de alumnos pre-inscritos.'),
(264, 1, 'Inscription', 'aprobar', '2019-04-26 18:27:13', 'Limite de inscripciones alcanzado id=3'),
(265, 1, 'Cohort', 'consulta', '2019-04-26 18:27:13', 'Consultando datos del curso'),
(266, 1, 'Inscription', 'consulta', '2019-04-26 18:27:13', 'Consultando lista de alumnos pre-inscritos.'),
(267, 1, 'Inscription', 'aprobar', '2019-04-26 18:27:19', 'Inscripción desaprobada id=1'),
(268, 1, 'Inscription', 'consulta', '2019-04-26 18:27:21', 'Consultando lista de alumnos pre-inscritos.'),
(269, 1, 'Cohort', 'consulta', '2019-04-26 18:27:21', 'Consultando datos del curso'),
(270, 1, 'Inscription', 'aprobar', '2019-04-26 18:27:26', 'Inscripción aprobada id=3'),
(271, 1, 'Cohort', 'consulta', '2019-04-26 18:27:26', 'Consultando datos del curso'),
(272, 1, 'Inscription', 'consulta', '2019-04-26 18:27:26', 'Consultando lista de alumnos pre-inscritos.'),
(273, 1, 'Inscription', 'aprobar', '2019-04-26 18:27:31', 'Limite de inscripciones alcanzado id=1'),
(274, 1, 'Cohort', 'consulta', '2019-04-26 18:27:31', 'Consultando datos del curso'),
(275, 1, 'Inscription', 'consulta', '2019-04-26 18:27:31', 'Consultando lista de alumnos pre-inscritos.'),
(276, 1, 'Cohort', 'consulta', '2019-04-26 18:28:15', 'Consultando datos del curso'),
(277, 1, 'Inscription', 'consulta', '2019-04-26 18:28:15', 'Consultando lista de alumnos pre-inscritos.'),
(278, 1, 'Cohort', 'consulta', '2019-04-26 18:29:31', 'Consultando datos del curso'),
(279, 1, 'Inscription', 'consulta', '2019-04-26 18:29:32', 'Consultando lista de alumnos pre-inscritos.'),
(280, 1, 'Cohort', 'consulta', '2019-04-26 18:30:12', 'Consultando datos del curso'),
(281, 1, 'Inscription', 'consulta', '2019-04-26 18:30:12', 'Consultando lista de alumnos pre-inscritos.'),
(282, 1, 'Cohort', 'consulta', '2019-04-26 18:30:20', 'Consultando datos del curso'),
(283, 1, 'Inscription', 'consulta', '2019-04-26 18:30:21', 'Consultando lista de alumnos pre-inscritos.'),
(284, 1, 'Cohort', 'consulta', '2019-04-26 18:30:51', 'Consultando datos del curso'),
(285, 1, 'Inscription', 'consulta', '2019-04-26 18:30:52', 'Consultando lista de alumnos pre-inscritos.'),
(286, 1, 'Cohort', 'consulta', '2019-04-26 18:31:18', 'Consultando datos del curso'),
(287, 1, 'Inscription', 'consulta', '2019-04-26 18:31:18', 'Consultando lista de alumnos pre-inscritos.'),
(288, 1, 'Cohort', 'consulta', '2019-04-26 18:32:11', 'Consultando datos del curso'),
(289, 1, 'Inscription', 'consulta', '2019-04-26 18:32:12', 'Consultando lista de alumnos pre-inscritos.'),
(290, 1, 'Cohort', 'consulta', '2019-04-26 18:32:55', 'Consultando datos del curso'),
(291, 1, 'Inscription', 'consulta', '2019-04-26 18:32:55', 'Consultando lista de alumnos pre-inscritos.'),
(292, 1, 'Cohort', 'consulta', '2019-04-26 18:34:08', 'Consultando datos del curso'),
(293, 1, 'Inscription', 'consulta', '2019-04-26 18:34:09', 'Consultando lista de alumnos pre-inscritos.'),
(294, 1, 'Cohort', 'consulta', '2019-04-26 18:34:19', 'Consultando datos del curso'),
(295, 1, 'Inscription', 'consulta', '2019-04-26 18:34:20', 'Consultando lista de alumnos pre-inscritos.'),
(296, 1, 'Cohort', 'consulta', '2019-04-26 18:35:05', 'Consultando datos del curso'),
(297, 1, 'Inscription', 'consulta', '2019-04-26 18:35:05', 'Consultando lista de alumnos pre-inscritos.'),
(298, 1, 'Cohort', 'consulta', '2019-04-26 18:36:16', 'Consultando datos del curso'),
(299, 1, 'Inscription', 'consulta', '2019-04-26 18:36:16', 'Consultando lista de alumnos pre-inscritos.'),
(300, 1, 'Cohort', 'consulta', '2019-04-26 18:36:42', 'Consultando datos del curso'),
(301, 1, 'Inscription', 'consulta', '2019-04-26 18:36:42', 'Consultando lista de alumnos pre-inscritos.'),
(302, 1, 'Cohort', 'consulta', '2019-04-26 18:39:07', 'Consultando datos del curso'),
(303, 1, 'Inscription', 'consulta', '2019-04-26 18:39:11', 'Consultando lista de alumnos pre-inscritos.'),
(304, 1, 'Cohort', 'consulta', '2019-04-26 18:39:56', 'Consultando datos del curso'),
(305, 1, 'Inscription', 'consulta', '2019-04-26 18:39:57', 'Consultando lista de alumnos pre-inscritos.'),
(306, 1, 'Cohort', 'consulta', '2019-04-26 18:41:33', 'Consultando datos del curso'),
(307, 1, 'Inscription', 'consulta', '2019-04-26 18:41:34', 'Consultando lista de alumnos pre-inscritos.'),
(308, 1, 'Cohort', 'consulta', '2019-04-26 18:42:08', 'Consultando datos del curso'),
(309, 1, 'Inscription', 'consulta', '2019-04-26 18:42:08', 'Consultando lista de alumnos pre-inscritos.'),
(310, 1, 'Cohort', 'consulta', '2019-04-26 18:43:03', 'Consultando datos del curso'),
(311, 1, 'Inscription', 'consulta', '2019-04-26 18:43:03', 'Consultando lista de alumnos pre-inscritos.'),
(312, 1, 'Cohort', 'consulta', '2019-04-26 18:43:41', 'Consultando datos del curso'),
(313, 1, 'Inscription', 'consulta', '2019-04-26 18:43:41', 'Consultando lista de alumnos pre-inscritos.'),
(314, 1, 'Cohort', 'consulta', '2019-04-26 18:44:13', 'Consultando datos del curso'),
(315, 1, 'Inscription', 'consulta', '2019-04-26 18:44:13', 'Consultando lista de alumnos pre-inscritos.'),
(316, 1, 'Cohort', 'consulta', '2019-04-26 18:44:32', 'Consultando datos del curso'),
(317, 1, 'Inscription', 'consulta', '2019-04-26 18:44:33', 'Consultando lista de alumnos pre-inscritos.'),
(318, 1, 'Cohort', 'consulta', '2019-04-26 18:45:45', 'Consultando datos del curso'),
(319, 1, 'Inscription', 'consulta', '2019-04-26 18:45:45', 'Consultando lista de alumnos pre-inscritos.'),
(320, 1, 'Cohort', 'consulta', '2019-04-26 18:46:41', 'Consultando datos del curso'),
(321, 1, 'Inscription', 'consulta', '2019-04-26 18:46:42', 'Consultando lista de alumnos pre-inscritos.'),
(322, 1, 'Cohort', 'consulta', '2019-04-26 18:47:44', 'Consultando datos del curso'),
(323, 1, 'Inscription', 'consulta', '2019-04-26 18:47:44', 'Consultando lista de alumnos pre-inscritos.'),
(324, 1, 'Cohort', 'consulta', '2019-04-26 18:51:56', 'Consultando datos del curso'),
(325, 1, 'Inscription', 'consulta', '2019-04-26 18:52:00', 'Consultando lista de alumnos pre-inscritos.'),
(326, 1, 'Cohort', 'consulta', '2019-04-26 18:54:21', 'Consultando datos del curso'),
(327, 1, 'Inscription', 'consulta', '2019-04-26 18:54:21', 'Consultando lista de alumnos pre-inscritos.'),
(328, 1, 'Cohort', 'consulta', '2019-04-26 18:54:41', 'Consultando datos del curso'),
(329, 1, 'Inscription', 'consulta', '2019-04-26 18:54:41', 'Consultando lista de alumnos pre-inscritos.'),
(330, 1, 'Cohort', 'consulta', '2019-04-26 18:55:06', 'Consultando datos del curso'),
(331, 1, 'Inscription', 'consulta', '2019-04-26 18:55:07', 'Consultando lista de alumnos pre-inscritos.'),
(332, 1, 'Cohort', 'consulta', '2019-04-26 18:55:32', 'Consultando datos del curso'),
(333, 1, 'Inscription', 'consulta', '2019-04-26 18:55:33', 'Consultando lista de alumnos pre-inscritos.'),
(334, 1, 'Cohort', 'consulta', '2019-04-26 18:57:24', 'Consultando datos del curso'),
(335, 1, 'Inscription', 'consulta', '2019-04-26 18:57:25', 'Consultando lista de alumnos pre-inscritos.'),
(336, 1, 'Cohort', 'consulta', '2019-04-26 18:57:51', 'Consultando datos del curso'),
(337, 1, 'Inscription', 'consulta', '2019-04-26 18:57:52', 'Consultando lista de alumnos pre-inscritos.'),
(338, 1, 'Inscription', 'aprobar', '2019-04-26 18:57:59', 'Inscripción desaprobada id=2'),
(339, 1, 'Cohort', 'consulta', '2019-04-26 19:02:16', 'Consultando datos del curso'),
(340, 1, 'Inscription', 'consulta', '2019-04-26 19:02:24', 'Consultando lista de alumnos pre-inscritos.'),
(341, 1, 'Inscription', 'aprobar', '2019-04-26 19:02:38', 'Inscripción aprobada id=2'),
(342, 1, 'Inscription', 'aprobar', '2019-04-26 19:03:20', 'Inscripción desaprobada id=2'),
(343, 1, 'Cohort', 'consulta', '2019-04-26 19:03:52', 'Consultando datos del curso'),
(344, 1, 'Inscription', 'consulta', '2019-04-26 19:03:53', 'Consultando lista de alumnos pre-inscritos.'),
(345, 1, 'Inscription', 'aprobar', '2019-04-26 19:04:05', 'Inscripción aprobada id=2'),
(346, 1, 'Cohort', 'consulta', '2019-04-26 19:04:06', 'Consultando datos del curso'),
(347, 1, 'Inscription', 'consulta', '2019-04-26 19:04:06', 'Consultando lista de alumnos pre-inscritos.'),
(348, 1, 'Inscription', 'aprobar', '2019-04-26 19:04:16', 'Limite de inscripciones alcanzado id=1'),
(349, 1, 'Inscription', 'aprobar', '2019-04-26 19:04:56', 'Limite de inscripciones alcanzado id=1'),
(350, 1, 'Cohort', 'consulta', '2019-04-26 19:04:56', 'Consultando datos del curso'),
(351, 1, 'Inscription', 'consulta', '2019-04-26 19:04:56', 'Consultando lista de alumnos pre-inscritos.'),
(352, 1, 'Inscription', 'aprobar', '2019-04-26 19:05:07', 'Inscripción desaprobada id=3'),
(353, 1, 'Cohort', 'consulta', '2019-04-26 19:05:07', 'Consultando datos del curso'),
(354, 1, 'Inscription', 'consulta', '2019-04-26 19:05:07', 'Consultando lista de alumnos pre-inscritos.'),
(355, 1, 'Inscription', 'aprobar', '2019-04-26 19:05:13', 'Inscripción aprobada id=1'),
(356, 1, 'Cohort', 'consulta', '2019-04-26 19:05:13', 'Consultando datos del curso'),
(357, 1, 'Inscription', 'consulta', '2019-04-26 19:05:13', 'Consultando lista de alumnos pre-inscritos.'),
(358, 1, 'Cohort', 'consulta', '2019-04-26 19:05:33', 'Consultando datos del curso'),
(359, 1, 'Inscription', 'consulta', '2019-04-26 19:05:34', 'Consultando lista de alumnos pre-inscritos.'),
(360, 1, 'Inscription', 'aprobar', '2019-04-26 19:06:07', 'Limite de inscripciones alcanzado id=3'),
(361, 1, 'Cohort', 'consulta', '2019-04-26 19:06:08', 'Consultando datos del curso'),
(362, 1, 'Inscription', 'consulta', '2019-04-26 19:06:08', 'Consultando lista de alumnos pre-inscritos.'),
(363, 1, 'Inscription', 'aprobar', '2019-04-26 19:06:24', 'Inscripción desaprobada id=2'),
(364, 1, 'Cohort', 'consulta', '2019-04-26 19:06:25', 'Consultando datos del curso'),
(365, 1, 'Inscription', 'consulta', '2019-04-26 19:06:25', 'Consultando lista de alumnos pre-inscritos.'),
(366, 1, 'Inscription', 'aprobar', '2019-04-26 19:06:30', 'Inscripción aprobada id=3'),
(367, 1, 'Cohort', 'consulta', '2019-04-26 19:06:31', 'Consultando datos del curso'),
(368, 1, 'Inscription', 'consulta', '2019-04-26 19:06:31', 'Consultando lista de alumnos pre-inscritos.'),
(369, 1, 'Cohort', 'consulta', '2019-04-26 20:42:25', 'Consultando datos del curso'),
(370, 1, 'Inscription', 'consulta', '2019-04-26 20:42:53', 'Consultando lista de alumnos pre-inscritos.'),
(371, 1, 'Cohort', 'consulta', '2019-04-26 20:43:02', 'Consultando lista de clases.'),
(372, 1, 'Cohort', 'consulta', '2019-04-26 20:44:32', 'Consultando lista de clases.'),
(373, 1, 'Cohort', 'consulta', '2019-04-26 20:44:42', 'Consultando datos del curso'),
(374, 1, 'Inscription', 'consulta', '2019-04-26 20:44:42', 'Consultando lista de alumnos pre-inscritos.'),
(375, 1, 'Cohort', 'consulta', '2019-04-26 20:47:17', 'Consultando datos del curso'),
(376, 1, 'Inscription', 'consulta', '2019-04-26 20:47:17', 'Consultando lista de alumnos pre-inscritos.'),
(377, 1, 'Cohort', 'consulta', '2019-04-26 20:47:29', 'Consultando datos del curso'),
(378, 1, 'Cohort', 'consulta', '2019-04-26 20:47:34', 'Consultando datos del curso'),
(379, 1, 'Inscription', 'consulta', '2019-04-26 20:47:34', 'Consultando lista de alumnos pre-inscritos.'),
(380, 1, 'Cohort', 'consulta', '2019-04-26 20:48:03', 'Consultando datos del curso'),
(381, 1, 'Inscription', 'consulta', '2019-04-26 20:48:03', 'Consultando lista de alumnos pre-inscritos.'),
(382, 1, 'Cohort', 'consulta', '2019-04-26 20:48:42', 'Consultando datos del curso'),
(383, 1, 'Inscription', 'consulta', '2019-04-26 20:48:42', 'Consultando lista de alumnos pre-inscritos.'),
(384, 1, 'Cohort', 'consulta', '2019-04-26 20:53:34', 'Consultando datos del curso'),
(385, 1, 'Inscription', 'consulta', '2019-04-26 20:53:34', 'Consultando lista de alumnos pre-inscritos.'),
(386, 1, 'Cohort', 'consulta', '2019-04-26 20:54:54', 'Consultando datos del curso'),
(387, 1, 'Inscription', 'consulta', '2019-04-26 20:54:55', 'Consultando lista de alumnos pre-inscritos.'),
(388, 1, 'Cohort', 'consulta', '2019-04-26 20:55:04', 'Consultando datos del curso'),
(389, 1, 'Inscription', 'consulta', '2019-04-26 20:55:04', 'Consultando lista de alumnos pre-inscritos.'),
(390, 1, 'Cohort', 'consulta', '2019-04-26 20:55:27', 'Consultando datos del curso'),
(391, 1, 'Inscription', 'consulta', '2019-04-26 20:55:27', 'Consultando lista de alumnos pre-inscritos.'),
(392, 1, 'Cohort', 'consulta', '2019-04-26 20:55:42', 'Consultando datos del curso'),
(393, 1, 'Inscription', 'consulta', '2019-04-26 20:55:43', 'Consultando lista de alumnos pre-inscritos.'),
(394, 1, 'Cohort', 'consulta', '2019-04-26 20:56:50', 'Consultando datos del curso'),
(395, 1, 'Inscription', 'consulta', '2019-04-26 20:56:51', 'Consultando lista de alumnos pre-inscritos.'),
(396, 1, 'Inscription', 'aprobar', '2019-04-26 20:57:03', 'Limite de inscripciones alcanzado id=2'),
(397, 1, 'Cohort', 'consulta', '2019-04-26 20:57:03', 'Consultando datos del curso'),
(398, 1, 'Inscription', 'consulta', '2019-04-26 20:57:03', 'Consultando lista de alumnos pre-inscritos.'),
(399, 1, 'Subject', 'consulta', '2019-04-26 23:09:55', 'Consultando lista de asignaturas.'),
(400, 1, 'Subject', 'consulta', '2019-04-26 23:19:29', 'Consultando lista de asignaturas.'),
(401, 1, 'Subject', 'consulta', '2019-04-26 23:26:41', 'Consultando lista de asignaturas.'),
(402, 1, 'Subject', 'consulta', '2019-04-26 23:26:56', 'Consultando lista de asignaturas.'),
(403, 1, 'Cohort', 'consulta', '2019-04-26 23:27:28', 'Consultando lista de clases.'),
(404, 1, 'Cohort', 'consulta', '2019-04-26 23:27:34', 'Consultando datos del curso'),
(405, 1, 'Subject', 'consulta', '2019-04-26 23:27:34', 'consulta de materias de la cohorte id=undefined'),
(406, 1, 'Inscription', 'consulta', '2019-04-26 23:27:34', 'Consultando lista de alumnos pre-inscritos.'),
(407, 1, 'Subject', 'consulta', '2019-04-26 23:30:17', 'consulta de materias de la cohorte id=undefined'),
(408, 1, 'Cohort', 'consulta', '2019-04-26 23:30:17', 'Consultando datos del curso'),
(409, 1, 'Inscription', 'consulta', '2019-04-26 23:30:18', 'Consultando lista de alumnos pre-inscritos.'),
(410, 1, 'Cohort', 'consulta', '2019-04-26 23:31:50', 'Consultando datos del curso'),
(411, 1, 'Inscription', 'consulta', '2019-04-26 23:31:51', 'Consultando lista de alumnos pre-inscritos.'),
(412, 1, 'Cohort', 'consulta', '2019-04-26 23:34:02', 'Consultando datos del curso'),
(413, 1, 'Subject', 'consulta', '2019-04-26 23:34:04', 'consulta de materias de la cohorte id=1'),
(414, 1, 'Inscription', 'consulta', '2019-04-26 23:34:04', 'Consultando lista de alumnos pre-inscritos.'),
(415, 1, 'Subject', 'consulta', '2019-04-26 23:34:24', 'Consultando lista de asignaturas.'),
(416, 1, 'Subject', 'registro', '2019-04-26 23:35:12', 'Registrando asignatura Ingles.'),
(417, 1, 'Cohort', 'consulta', '2019-04-26 23:35:16', 'Consultando lista de clases.'),
(418, 1, 'Cohort', 'consulta', '2019-04-26 23:35:17', 'Consultando datos del curso'),
(419, 1, 'Subject', 'consulta', '2019-04-26 23:35:18', 'consulta de materias de la cohorte id=1'),
(420, 1, 'Inscription', 'consulta', '2019-04-26 23:35:18', 'Consultando lista de alumnos pre-inscritos.'),
(421, 1, 'Cohort', 'consulta', '2019-04-26 23:35:38', 'Consultando datos del curso'),
(422, 1, 'Subject', 'consulta', '2019-04-26 23:35:39', 'consulta de materias de la cohorte id=1'),
(423, 1, 'Inscription', 'consulta', '2019-04-26 23:35:39', 'Consultando lista de alumnos pre-inscritos.'),
(424, 1, 'Cohort', 'consulta', '2019-04-26 23:36:17', 'Consultando datos del curso'),
(425, 1, 'Inscription', 'consulta', '2019-04-26 23:36:17', 'Consultando lista de alumnos pre-inscritos.'),
(426, 1, 'Subject', 'consulta', '2019-04-26 23:36:17', 'consulta de materias de la cohorte id=1'),
(427, 1, 'Cohort', 'consulta', '2019-04-26 23:36:50', 'Consultando datos del curso'),
(428, 1, 'Inscription', 'consulta', '2019-04-26 23:37:04', 'Consultando lista de alumnos pre-inscritos.'),
(429, 1, 'Subject', 'consulta', '2019-04-26 23:37:04', 'consulta de materias de la cohorte id=1'),
(430, 1, 'Cohort', 'consulta', '2019-04-26 23:44:00', 'Consultando datos del curso'),
(431, 1, 'Subject', 'consulta', '2019-04-26 23:44:01', 'consulta de materias de la cohorte id=1'),
(432, 1, 'Inscription', 'consulta', '2019-04-26 23:44:01', 'Consultando lista de alumnos pre-inscritos.'),
(433, 1, 'Cohort', 'consulta', '2019-04-26 23:46:05', 'Consultando datos del curso'),
(434, 1, 'Subject', 'consulta', '2019-04-26 23:46:06', 'consulta de materias de la cohorte id=1'),
(435, 1, 'Inscription', 'consulta', '2019-04-26 23:46:06', 'Consultando lista de alumnos pre-inscritos.'),
(436, 1, 'Cohort', 'consulta', '2019-04-26 23:47:54', 'Consultando datos del curso'),
(437, 1, 'Inscription', 'consulta', '2019-04-26 23:47:54', 'Consultando lista de alumnos pre-inscritos.'),
(438, 1, 'Subject', 'consulta', '2019-04-26 23:47:54', 'consulta de materias de la cohorte id=1'),
(439, 1, 'Cohort', 'consulta', '2019-04-26 23:48:57', 'Consultando datos del curso'),
(440, 1, 'Subject', 'consulta', '2019-04-26 23:48:57', 'consulta de materias de la cohorte id=1'),
(441, 1, 'Inscription', 'consulta', '2019-04-26 23:48:57', 'Consultando lista de alumnos pre-inscritos.'),
(442, 1, 'Cohort', 'consulta', '2019-04-26 23:49:22', 'Consultando datos del curso'),
(443, 1, 'Inscription', 'consulta', '2019-04-26 23:49:23', 'Consultando lista de alumnos pre-inscritos.'),
(444, 1, 'Subject', 'consulta', '2019-04-26 23:49:23', 'consulta de materias de la cohorte id=1'),
(445, 1, 'Cohort', 'consulta', '2019-04-26 23:50:06', 'Consultando datos del curso'),
(446, 1, 'Subject', 'consulta', '2019-04-26 23:50:06', 'consulta de materias de la cohorte id=1'),
(447, 1, 'Inscription', 'consulta', '2019-04-26 23:50:07', 'Consultando lista de alumnos pre-inscritos.'),
(448, 1, 'Cohort', 'consulta', '2019-04-26 23:50:49', 'Consultando datos del curso'),
(449, 1, 'Subject', 'consulta', '2019-04-26 23:50:49', 'consulta de materias de la cohorte id=1'),
(450, 1, 'Inscription', 'consulta', '2019-04-26 23:50:49', 'Consultando lista de alumnos pre-inscritos.'),
(451, 1, 'Cohort', 'consulta', '2019-04-26 23:53:11', 'Consultando datos del curso'),
(452, 1, 'Subject', 'consulta', '2019-04-26 23:53:11', 'consulta de materias de la cohorte id=1'),
(453, 1, 'Inscription', 'consulta', '2019-04-26 23:53:11', 'Consultando lista de alumnos pre-inscritos.'),
(454, 1, 'Cohort', 'consulta', '2019-04-26 23:54:16', 'Consultando datos del curso'),
(455, 1, 'Inscription', 'consulta', '2019-04-26 23:54:17', 'Consultando lista de alumnos pre-inscritos.'),
(456, 1, 'Subject', 'consulta', '2019-04-26 23:54:17', 'consulta de materias de la cohorte id=1'),
(457, 1, 'Cohort', 'consulta', '2019-04-26 23:54:49', 'Consultando datos del curso'),
(458, 1, 'Inscription', 'consulta', '2019-04-26 23:54:49', 'Consultando lista de alumnos pre-inscritos.'),
(459, 1, 'Subject', 'consulta', '2019-04-26 23:54:49', 'consulta de materias de la cohorte id=1'),
(460, 1, 'Cohort', 'consulta', '2019-04-26 23:55:07', 'Consultando datos del curso'),
(461, 1, 'Subject', 'consulta', '2019-04-26 23:55:08', 'consulta de materias de la cohorte id=1'),
(462, 1, 'Inscription', 'consulta', '2019-04-26 23:55:08', 'Consultando lista de alumnos pre-inscritos.'),
(463, 1, 'Cohort', 'consulta', '2019-04-26 23:57:31', 'Consultando datos del curso'),
(464, 1, 'Subject', 'consulta', '2019-04-26 23:57:31', 'consulta de materias de la cohorte id=1'),
(465, 1, 'Inscription', 'consulta', '2019-04-26 23:57:31', 'Consultando lista de alumnos pre-inscritos.'),
(466, 1, 'Cohort', 'consulta', '2019-04-26 23:58:18', 'Consultando datos del curso'),
(467, 1, 'Subject', 'consulta', '2019-04-26 23:58:18', 'consulta de materias de la cohorte id=1'),
(468, 1, 'Inscription', 'consulta', '2019-04-26 23:58:18', 'Consultando lista de alumnos pre-inscritos.'),
(469, 1, 'Cohort', 'consulta', '2019-04-26 23:59:59', 'Consultando datos del curso'),
(470, 1, 'Subject', 'consulta', '2019-04-26 23:59:59', 'consulta de materias de la cohorte id=1'),
(471, 1, 'Inscription', 'consulta', '2019-04-26 23:59:59', 'Consultando lista de alumnos pre-inscritos.'),
(472, 1, 'Cohort', 'consulta', '2019-04-27 00:00:18', 'Consultando datos del curso'),
(473, 1, 'Inscription', 'consulta', '2019-04-27 00:00:19', 'Consultando lista de alumnos pre-inscritos.'),
(474, 1, 'Subject', 'consulta', '2019-04-27 00:00:19', 'consulta de materias de la cohorte id=1'),
(475, 1, 'Cohort', 'consulta', '2019-04-27 00:03:48', 'Consultando datos del curso'),
(476, 1, 'Subject', 'consulta', '2019-04-27 00:03:49', 'consulta de materias de la cohorte id=1'),
(477, 1, 'Inscription', 'consulta', '2019-04-27 00:03:49', 'Consultando lista de alumnos pre-inscritos.'),
(478, 1, 'Cohort', 'consulta', '2019-04-27 00:04:50', 'Consultando datos del curso'),
(479, 1, 'Inscription', 'consulta', '2019-04-27 00:04:50', 'Consultando lista de alumnos pre-inscritos.'),
(480, 1, 'Subject', 'consulta', '2019-04-27 00:04:50', 'consulta de materias de la cohorte id=1'),
(481, 1, 'Cohort', 'consulta', '2019-04-27 00:05:27', 'Consultando datos del curso'),
(482, 1, 'Inscription', 'consulta', '2019-04-27 00:05:28', 'Consultando lista de alumnos pre-inscritos.'),
(483, 1, 'Subject', 'consulta', '2019-04-27 00:05:28', 'consulta de materias de la cohorte id=1'),
(484, 1, 'Cohort', 'consulta', '2019-04-27 00:06:03', 'Consultando datos del curso'),
(485, 1, 'Subject', 'consulta', '2019-04-27 00:06:04', 'consulta de materias de la cohorte id=1'),
(486, 1, 'Inscription', 'consulta', '2019-04-27 00:06:04', 'Consultando lista de alumnos pre-inscritos.'),
(487, 1, 'Cohort', 'consulta', '2019-04-27 00:10:37', 'Consultando datos del curso'),
(488, 1, 'Inscription', 'consulta', '2019-04-27 00:10:38', 'Consultando lista de alumnos pre-inscritos.'),
(489, 1, 'Subject', 'consulta', '2019-04-27 00:10:38', 'consulta de materias de la cohorte id=1'),
(490, 1, 'Cohort', 'consulta', '2019-04-27 00:11:27', 'Consultando datos del curso'),
(491, 1, 'Inscription', 'consulta', '2019-04-27 00:11:28', 'Consultando lista de alumnos pre-inscritos.'),
(492, 1, 'Subject', 'consulta', '2019-04-27 00:11:28', 'consulta de materias de la cohorte id=1'),
(493, 1, 'Cohort', 'consulta', '2019-04-27 00:11:46', 'Consultando datos del curso'),
(494, 1, 'Inscription', 'consulta', '2019-04-27 00:11:47', 'Consultando lista de alumnos pre-inscritos.'),
(495, 1, 'Subject', 'consulta', '2019-04-27 00:11:47', 'consulta de materias de la cohorte id=1'),
(496, 1, 'Cohort', 'consulta', '2019-04-27 00:12:01', 'Consultando datos del curso'),
(497, 1, 'Subject', 'consulta', '2019-04-27 00:12:01', 'consulta de materias de la cohorte id=1'),
(498, 1, 'Inscription', 'consulta', '2019-04-27 00:12:01', 'Consultando lista de alumnos pre-inscritos.'),
(499, 1, 'Cohort', 'consulta', '2019-04-27 00:13:01', 'Consultando datos del curso'),
(500, 1, 'Inscription', 'consulta', '2019-04-27 00:13:02', 'Consultando lista de alumnos pre-inscritos.'),
(501, 1, 'Subject', 'consulta', '2019-04-27 00:13:02', 'consulta de materias de la cohorte id=1'),
(502, 1, 'Cohort', 'consulta', '2019-04-27 00:14:00', 'Consultando datos del curso'),
(503, 1, 'Subject', 'consulta', '2019-04-27 00:14:00', 'consulta de materias de la cohorte id=1'),
(504, 1, 'Inscription', 'consulta', '2019-04-27 00:14:00', 'Consultando lista de alumnos pre-inscritos.'),
(505, 1, 'Cohort', 'consulta', '2019-04-27 00:14:49', 'Consultando datos del curso'),
(506, 1, 'Subject', 'consulta', '2019-04-27 00:14:49', 'consulta de materias de la cohorte id=1'),
(507, 1, 'Inscription', 'consulta', '2019-04-27 00:14:49', 'Consultando lista de alumnos pre-inscritos.'),
(508, 1, 'Cohort', 'consulta', '2019-04-27 00:15:18', 'Consultando datos del curso'),
(509, 1, 'Subject', 'consulta', '2019-04-27 00:15:18', 'consulta de materias de la cohorte id=1'),
(510, 1, 'Inscription', 'consulta', '2019-04-27 00:15:18', 'Consultando lista de alumnos pre-inscritos.'),
(511, 1, 'Cohort', 'consulta', '2019-04-27 00:15:52', 'Consultando datos del curso'),
(512, 1, 'Inscription', 'consulta', '2019-04-27 00:15:53', 'Consultando lista de alumnos pre-inscritos.'),
(513, 1, 'Subject', 'consulta', '2019-04-27 00:15:53', 'consulta de materias de la cohorte id=1'),
(514, 1, 'Cohort', 'consulta', '2019-04-27 00:16:14', 'Consultando datos del curso'),
(515, 1, 'Subject', 'consulta', '2019-04-27 00:16:15', 'consulta de materias de la cohorte id=1'),
(516, 1, 'Inscription', 'consulta', '2019-04-27 00:16:15', 'Consultando lista de alumnos pre-inscritos.'),
(517, 1, 'Cohort', 'consulta', '2019-04-27 00:16:44', 'Consultando datos del curso'),
(518, 1, 'Subject', 'consulta', '2019-04-27 00:16:44', 'consulta de materias de la cohorte id=1'),
(519, 1, 'Inscription', 'consulta', '2019-04-27 00:16:44', 'Consultando lista de alumnos pre-inscritos.'),
(520, 1, 'Cohort', 'consulta', '2019-04-27 00:17:10', 'Consultando datos del curso'),
(521, 1, 'Inscription', 'consulta', '2019-04-27 00:17:11', 'Consultando lista de alumnos pre-inscritos.'),
(522, 1, 'Subject', 'consulta', '2019-04-27 00:17:11', 'consulta de materias de la cohorte id=1'),
(523, 1, 'Cohort', 'consulta', '2019-04-27 00:18:16', 'Consultando datos del curso'),
(524, 1, 'Inscription', 'consulta', '2019-04-27 00:18:17', 'Consultando lista de alumnos pre-inscritos.'),
(525, 1, 'Subject', 'consulta', '2019-04-27 00:18:17', 'consulta de materias de la cohorte id=1'),
(526, 1, 'Cohort', 'consulta', '2019-04-27 00:18:54', 'Consultando datos del curso'),
(527, 1, 'Inscription', 'consulta', '2019-04-27 00:18:55', 'Consultando lista de alumnos pre-inscritos.'),
(528, 1, 'Subject', 'consulta', '2019-04-27 00:18:55', 'consulta de materias de la cohorte id=1'),
(529, 1, 'Cohort', 'consulta', '2019-04-27 00:19:12', 'Consultando datos del curso'),
(530, 1, 'Inscription', 'consulta', '2019-04-27 00:19:13', 'Consultando lista de alumnos pre-inscritos.'),
(531, 1, 'Subject', 'consulta', '2019-04-27 00:19:13', 'consulta de materias de la cohorte id=1'),
(532, 1, 'Cohort', 'consulta', '2019-04-27 00:19:42', 'Consultando datos del curso'),
(533, 1, 'Subject', 'consulta', '2019-04-27 00:19:43', 'consulta de materias de la cohorte id=1');
INSERT INTO `binnacle_actions` (`id`, `user_id`, `entity`, `action`, `date`, `description`) VALUES
(534, 1, 'Inscription', 'consulta', '2019-04-27 00:19:43', 'Consultando lista de alumnos pre-inscritos.'),
(535, 1, 'Cohort', 'consulta', '2019-04-27 00:20:05', 'Consultando datos del curso'),
(536, 1, 'Inscription', 'consulta', '2019-04-27 00:20:05', 'Consultando lista de alumnos pre-inscritos.'),
(537, 1, 'Subject', 'consulta', '2019-04-27 00:20:05', 'consulta de materias de la cohorte id=1'),
(538, 1, 'Cohort', 'consulta', '2019-04-27 00:20:14', 'Consultando datos del curso'),
(539, 1, 'Inscription', 'consulta', '2019-04-27 00:20:15', 'Consultando lista de alumnos pre-inscritos.'),
(540, 1, 'Subject', 'consulta', '2019-04-27 00:20:15', 'consulta de materias de la cohorte id=1'),
(541, 1, 'Cohort', 'consulta', '2019-04-27 00:20:38', 'Consultando datos del curso'),
(542, 1, 'Subject', 'consulta', '2019-04-27 00:20:39', 'consulta de materias de la cohorte id=1'),
(543, 1, 'Inscription', 'consulta', '2019-04-27 00:20:39', 'Consultando lista de alumnos pre-inscritos.'),
(544, 1, 'Cohort', 'consulta', '2019-04-27 00:20:59', 'Consultando datos del curso'),
(545, 1, 'Subject', 'consulta', '2019-04-27 00:20:59', 'consulta de materias de la cohorte id=1'),
(546, 1, 'Inscription', 'consulta', '2019-04-27 00:20:59', 'Consultando lista de alumnos pre-inscritos.'),
(547, 1, 'Cohort', 'consulta', '2019-04-27 00:21:18', 'Consultando datos del curso'),
(548, 1, 'Subject', 'consulta', '2019-04-27 00:21:18', 'consulta de materias de la cohorte id=1'),
(549, 1, 'Inscription', 'consulta', '2019-04-27 00:21:18', 'Consultando lista de alumnos pre-inscritos.'),
(550, 1, 'Cohort', 'consulta', '2019-04-27 00:21:49', 'Consultando datos del curso'),
(551, 1, 'Subject', 'consulta', '2019-04-27 00:21:50', 'consulta de materias de la cohorte id=1'),
(552, 1, 'Inscription', 'consulta', '2019-04-27 00:21:50', 'Consultando lista de alumnos pre-inscritos.'),
(553, 1, 'Cohort', 'consulta', '2019-04-27 00:23:12', 'Consultando datos del curso'),
(554, 1, 'Inscription', 'consulta', '2019-04-27 00:23:12', 'Consultando lista de alumnos pre-inscritos.'),
(555, 1, 'Subject', 'consulta', '2019-04-27 00:23:12', 'consulta de materias de la cohorte id=1'),
(556, 1, 'Cohort', 'consulta', '2019-04-27 00:23:52', 'Consultando datos del curso'),
(557, 1, 'Subject', 'consulta', '2019-04-27 00:23:52', 'consulta de materias de la cohorte id=1'),
(558, 1, 'Inscription', 'consulta', '2019-04-27 00:23:52', 'Consultando lista de alumnos pre-inscritos.'),
(559, 1, 'Cohort', 'consulta', '2019-04-27 00:24:20', 'Consultando datos del curso'),
(560, 1, 'Subject', 'consulta', '2019-04-27 00:24:20', 'consulta de materias de la cohorte id=1'),
(561, 1, 'Inscription', 'consulta', '2019-04-27 00:24:20', 'Consultando lista de alumnos pre-inscritos.'),
(562, 1, 'Cohort', 'consulta', '2019-04-27 11:16:42', 'Consultando datos del curso'),
(563, 1, 'Cohort', 'consulta', '2019-04-27 18:38:38', 'Consultando lista de cohortes.'),
(564, 1, 'Cohort', 'consulta', '2019-04-27 18:38:38', 'Consultando lista de cohortes.'),
(565, 1, 'User', 'consulta', '2019-04-28 14:40:32', 'Consultando lista de facilitadores.'),
(566, 1, 'User', 'consulta', '2019-04-28 14:40:37', 'Consultando datos de usuario.'),
(567, 1, 'Lection', 'consulta', '2019-04-28 14:40:37', 'Consultando asignaturas del facilitador id=5'),
(568, 1, 'Cohort', 'consulta', '2019-04-28 14:40:45', 'Consultando lista de clases.'),
(569, 1, 'Cohort', 'consulta', '2019-04-28 14:40:47', 'Consultando datos del curso'),
(570, 1, 'Subject', 'consulta', '2019-04-28 14:40:48', 'consulta de materias de la cohorte id=1'),
(571, 1, 'Inscription', 'consulta', '2019-04-28 14:40:48', 'Consultando lista de alumnos pre-inscritos.'),
(572, 1, 'Classroom', 'consulta', '2019-04-28 14:41:39', 'Consultando lista de aulas.'),
(573, 1, 'User', 'consulta', '2019-04-28 14:41:42', 'Consultando lista de usuarios.'),
(574, 1, 'BinnacleAccessUser', 'consulta', '2019-04-28 14:41:50', 'Consulta de registros de acceso.'),
(575, 1, 'Subject', 'consulta', '2019-04-28 14:41:58', 'Consultando lista de asignaturas.'),
(576, 1, 'Lection', 'consulta', '2019-04-28 14:42:01', 'Consultando lista de clases.'),
(577, 1, 'Cohort', 'consulta', '2019-04-28 14:42:05', 'Consultando lista de clases.'),
(578, 1, 'NRequirementsStudent', 'consulta', '2019-04-28 14:42:08', 'Consultando lista de requerimientos de estudiante.'),
(579, 1, 'Cohort', 'consulta', '2019-04-28 14:42:10', 'Consultando lista de cohortes.'),
(580, 1, 'Classroom', 'consulta', '2019-04-28 14:42:12', 'Consultando lista de aulas.'),
(581, 1, 'Cohort', 'consulta', '2019-04-28 14:42:16', 'Consultando lista de cohortes.'),
(582, 1, 'User', 'consulta', '2019-04-28 14:42:18', 'Consultando lista de estudiantes.'),
(583, 1, 'User', 'consulta', '2019-04-28 14:42:20', 'Consultando datos de usuario.'),
(584, 1, 'User', 'consulta', '2019-04-28 14:42:20', 'Consultando datos de usuario.'),
(585, 1, 'User', 'consulta', '2019-04-28 14:42:20', 'Consultando datos de usuario.'),
(586, 1, 'User', 'consulta', '2019-04-28 14:42:40', 'Consultando lista de estudiantes.'),
(587, 1, 'User', 'consulta', '2019-04-28 14:42:42', 'Consultando datos de usuario.'),
(588, 1, 'User', 'consulta', '2019-04-28 14:42:42', 'Consultando datos de usuario.'),
(589, 1, 'User', 'consulta', '2019-04-28 14:42:43', 'Consultando datos de usuario.'),
(590, 1, 'BinnacleAccessUser', 'consulta', '2019-04-28 15:19:06', 'Consulta de registros de acceso.'),
(591, 1, 'Cohort', 'consulta', '2019-04-28 15:19:41', 'Consultando lista de clases.'),
(592, 1, 'User', 'consulta', '2019-04-28 15:19:46', 'Consultando lista de estudiantes.'),
(593, 1, 'User', 'consulta', '2019-04-28 15:19:54', 'Consultando lista de estudiantes.'),
(594, 1, 'User', 'consulta', '2019-04-28 15:19:57', 'Consultando datos de usuario.'),
(595, 1, 'User', 'consulta', '2019-04-28 15:20:01', 'Consultando lista de estudiantes.'),
(596, 1, 'Subject', 'consulta', '2019-04-28 15:20:14', 'Consultando lista de asignaturas.'),
(597, 1, 'Lection', 'consulta', '2019-04-28 15:20:16', 'Consultando lista de clases.'),
(598, 1, 'Subject', 'consulta', '2019-04-28 15:21:16', 'Consultando lista de asignaturas.'),
(599, 1, 'User', 'consulta', '2019-04-28 15:21:22', 'Consultando datos de usuario.'),
(600, 1, 'Subject', 'consulta', '2019-04-28 15:21:22', 'Consultando datos de asignatura'),
(601, 1, 'Subject', 'consulta', '2019-04-28 15:21:23', 'Consultando lista de asignaturas.'),
(602, 1, 'User', 'consulta', '2019-04-28 15:21:25', 'Consultando datos de usuario.'),
(603, 1, 'Subject', 'consulta', '2019-04-28 15:21:25', 'Consultando datos de asignatura'),
(604, 1, 'Subject', 'consulta', '2019-04-28 15:21:26', 'Consultando lista de asignaturas.'),
(605, 1, 'Lection', 'consulta', '2019-04-28 15:21:27', 'Consultando lista de clases.'),
(606, 1, 'Cohort', 'consulta', '2019-04-28 15:21:29', 'Consultando datos del curso'),
(607, 1, 'Subject', 'consulta', '2019-04-28 15:21:29', 'consulta de materias de la cohorte id=1'),
(608, 1, 'Inscription', 'consulta', '2019-04-28 15:21:29', 'Consultando lista de alumnos pre-inscritos.'),
(609, 1, 'Lection', 'consulta', '2019-04-28 15:21:29', 'Consultando datos de clase'),
(610, 1, 'DaysClass', 'consulta', '2019-04-28 15:21:30', 'Consultando lista de dias de clase.'),
(611, 1, 'Cohort', 'consulta', '2019-04-28 15:21:34', 'Consultando datos del curso'),
(612, 1, 'Subject', 'consulta', '2019-04-28 15:21:34', 'consulta de materias de la cohorte id=1'),
(613, 1, 'Inscription', 'consulta', '2019-04-28 15:21:34', 'Consultando lista de alumnos pre-inscritos.'),
(614, 1, 'Lection', 'consulta', '2019-04-28 15:21:38', 'Consultando lista de clases.'),
(615, 2, 'Lection', 'consulta', '2019-04-28 15:24:21', 'Consultando lista de clases.'),
(616, 2, 'Lection', 'consulta', '2019-04-28 15:26:38', 'Consultando lista de clases.'),
(617, 2, 'Cohort', 'consulta', '2019-04-28 15:26:50', 'Consultando lista de clases.'),
(618, 2, 'User', 'consulta', '2019-04-28 15:26:52', 'Consultando lista de facilitadores.'),
(619, 2, 'User', 'consulta', '2019-04-28 15:26:55', 'Consultando lista de estudiantes.'),
(620, 2, 'Lection', 'consulta', '2019-04-28 15:26:58', 'Consultando lista de clases.'),
(621, 2, 'User', 'consulta', '2019-04-28 15:27:01', 'Consultando lista de estudiantes.'),
(622, 2, 'Cohort', 'consulta', '2019-04-28 15:27:10', 'Consultando lista de clases.'),
(623, 2, 'Lection', 'consulta', '2019-04-28 15:27:11', 'Consultando lista de clases.'),
(624, 2, 'User', 'consulta', '2019-04-28 15:27:13', 'Consultando lista de estudiantes.'),
(625, 2, 'Cohort', 'consulta', '2019-04-28 15:27:15', 'Consultando lista de clases.'),
(626, 2, 'Lection', 'consulta', '2019-04-28 15:27:16', 'Consultando lista de clases.'),
(627, 2, 'Lection', 'consulta', '2019-04-28 15:27:22', 'Consultando lista de clases.'),
(628, 2, 'User', 'consulta', '2019-04-28 15:27:26', 'Consultando lista de facilitadores.'),
(629, 2, 'User', 'consulta', '2019-04-28 15:27:28', 'Consultando lista de estudiantes.'),
(630, 2, 'User', 'consulta', '2019-04-28 15:27:41', 'Consultando lista de facilitadores.'),
(631, 2, 'User', 'consulta', '2019-04-28 15:27:42', 'Consultando datos de usuario.'),
(632, 2, 'User', 'consulta', '2019-04-28 15:27:42', 'Consultando datos de usuario.'),
(633, 2, 'User', 'consulta', '2019-04-28 15:27:42', 'Consultando datos de usuario.'),
(634, 2, 'User', 'consulta', '2019-04-28 15:27:42', 'Consultando datos de usuario.'),
(635, 2, 'User', 'consulta', '2019-04-28 15:27:43', 'Consultando datos de usuario.'),
(636, 2, 'Lection', 'consulta', '2019-04-28 15:27:43', 'Consultando asignaturas del facilitador id=5'),
(637, 2, 'User', 'consulta', '2019-04-28 15:29:11', 'Consultando datos de usuario.'),
(638, 2, 'Lection', 'consulta', '2019-04-28 15:30:06', 'Consultando asignaturas del facilitador id=5'),
(639, 2, 'User', 'consulta', '2019-04-28 15:41:15', 'Consultando lista de facilitadores.'),
(640, 2, 'User', 'consulta', '2019-04-28 15:41:17', 'Consultando datos de usuario.'),
(641, 2, 'Lection', 'consulta', '2019-04-28 15:41:18', 'Consultando asignaturas del facilitador id=3'),
(642, 2, 'User', 'consulta', '2019-04-28 15:41:22', 'Consultando lista de facilitadores.'),
(643, 2, 'User', 'consulta', '2019-04-28 15:41:24', 'Consultando datos de usuario.'),
(644, 2, 'Lection', 'consulta', '2019-04-28 15:41:24', 'Consultando asignaturas del facilitador id=5'),
(645, 2, 'User', 'consulta', '2019-04-28 15:41:27', 'Consultando lista de facilitadores.'),
(646, 2, 'User', 'consulta', '2019-04-28 15:41:28', 'Consultando datos de usuario.'),
(647, 2, 'Lection', 'consulta', '2019-04-28 15:41:28', 'Consultando asignaturas del facilitador id=3'),
(648, 2, 'User', 'consulta', '2019-04-28 15:41:29', 'Consultando lista de facilitadores.'),
(649, 2, 'Lection', 'consulta', '2019-04-28 15:41:31', 'Consultando lista de clases.'),
(650, 2, 'Cohort', 'consulta', '2019-04-28 15:41:33', 'Consultando lista de clases.'),
(651, 2, 'Cohort', 'consulta', '2019-04-28 15:41:36', 'Consultando datos del curso'),
(652, 2, 'Lection', 'consulta', '2019-04-28 15:41:36', 'Consultando datos de clase'),
(653, 2, 'Subject', 'consulta', '2019-04-28 15:41:37', 'consulta de materias de la cohorte id=1'),
(654, 2, 'Inscription', 'consulta', '2019-04-28 15:41:37', 'Consultando lista de alumnos pre-inscritos.'),
(655, 2, 'DaysClass', 'consulta', '2019-04-28 15:41:37', 'Consultando lista de dias de clase.'),
(656, 2, 'Lection', 'consulta', '2019-04-28 15:41:40', 'Consultando datos de clase'),
(657, 2, 'DaysClass', 'consulta', '2019-04-28 15:41:40', 'Consultando lista de dias de clase.'),
(658, 2, 'Lection', 'consulta', '2019-04-28 15:41:42', 'Consultando lista de clases.'),
(659, 2, 'Cohort', 'consulta', '2019-04-28 15:41:51', 'Consultando datos del curso'),
(660, 2, 'Lection', 'consulta', '2019-04-28 15:41:50', 'Consultando datos de clase'),
(661, 2, 'Lection', 'consulta', '2019-04-28 15:41:51', 'Consultando datos de clase'),
(662, 2, 'Cohort', 'consulta', '2019-04-28 15:41:52', 'Consultando datos del curso'),
(663, 2, 'Subject', 'consulta', '2019-04-28 15:41:52', 'consulta de materias de la cohorte id=1'),
(664, 2, 'Inscription', 'consulta', '2019-04-28 15:41:52', 'Consultando lista de alumnos pre-inscritos.'),
(665, 2, 'DaysClass', 'consulta', '2019-04-28 15:41:52', 'Consultando lista de dias de clase.'),
(666, 2, 'DaysClass', 'consulta', '2019-04-28 15:41:52', 'Consultando lista de dias de clase.'),
(667, 2, 'Subject', 'consulta', '2019-04-28 15:41:52', 'consulta de materias de la cohorte id=1'),
(668, 2, 'Inscription', 'consulta', '2019-04-28 15:41:52', 'Consultando lista de alumnos pre-inscritos.'),
(669, 2, 'Lection', 'consulta', '2019-04-28 15:41:54', 'Consultando datos de clase'),
(670, 2, 'DaysClass', 'consulta', '2019-04-28 15:41:54', 'Consultando lista de dias de clase.'),
(671, 2, 'Lection', 'consulta', '2019-04-28 15:41:58', 'Consultando lista de clases.'),
(672, 2, 'Lection', 'consulta', '2019-04-28 15:42:03', 'Consultando lista de clases.'),
(673, 2, 'Lection', 'consulta', '2019-04-28 15:42:05', 'Consultando datos de clase'),
(674, 2, 'Cohort', 'consulta', '2019-04-28 15:42:05', 'Consultando datos del curso'),
(675, 2, 'DaysClass', 'consulta', '2019-04-28 15:42:05', 'Consultando lista de dias de clase.'),
(676, 2, 'Inscription', 'consulta', '2019-04-28 15:42:06', 'Consultando lista de alumnos pre-inscritos.'),
(677, 2, 'Subject', 'consulta', '2019-04-28 15:42:06', 'consulta de materias de la cohorte id=1'),
(678, 2, 'Lection', 'consulta', '2019-04-28 15:42:05', 'Consultando datos de clase'),
(679, 2, 'DaysClass', 'consulta', '2019-04-28 15:42:16', 'Consultando lista de dias de clase.'),
(680, 2, 'Lection', 'consulta', '2019-04-28 15:45:04', 'Consultando datos de clase'),
(681, 2, 'DaysClass', 'consulta', '2019-04-28 15:45:20', 'Consultando lista de dias de clase.'),
(682, 2, 'Lection', 'consulta', '2019-04-28 15:45:22', 'Consultando lista de clases.'),
(683, 2, 'Lection', 'consulta', '2019-04-28 15:46:03', 'Consultando lista de clases.'),
(684, 2, 'Lection', 'consulta', '2019-04-28 15:46:23', 'Consultando datos de clase'),
(685, 2, 'DaysClass', 'consulta', '2019-04-28 15:46:24', 'Consultando lista de dias de clase.'),
(686, 2, 'Lection', 'consulta', '2019-04-28 15:46:26', 'Consultando lista de clases.'),
(687, 2, 'Lection', 'consulta', '2019-04-28 15:46:30', 'Consultando lista de clases.'),
(688, 2, 'Cohort', 'consulta', '2019-04-28 15:46:55', 'Consultando lista de clases.'),
(689, 2, 'Lection', 'consulta', '2019-04-28 15:46:57', 'Consultando datos de clase'),
(690, 2, 'Cohort', 'consulta', '2019-04-28 15:46:57', 'Consultando datos del curso'),
(691, 2, 'Inscription', 'consulta', '2019-04-28 15:46:57', 'Consultando lista de alumnos pre-inscritos.'),
(692, 2, 'Subject', 'consulta', '2019-04-28 15:46:57', 'consulta de materias de la cohorte id=1'),
(693, 2, 'DaysClass', 'consulta', '2019-04-28 15:46:57', 'Consultando lista de dias de clase.'),
(694, 2, 'Lection', 'consulta', '2019-04-28 15:46:58', 'Consultando datos de clase'),
(695, 2, 'DaysClass', 'consulta', '2019-04-28 15:46:58', 'Consultando lista de dias de clase.'),
(696, 2, 'Cohort', 'consulta', '2019-04-28 15:47:00', 'Consultando lista de clases.'),
(697, 2, 'Lection', 'consulta', '2019-04-28 15:47:01', 'Consultando datos de clase'),
(698, 2, 'Cohort', 'consulta', '2019-04-28 15:47:01', 'Consultando datos del curso'),
(699, 2, 'DaysClass', 'consulta', '2019-04-28 15:47:01', 'Consultando lista de dias de clase.'),
(700, 2, 'Inscription', 'consulta', '2019-04-28 15:47:01', 'Consultando lista de alumnos pre-inscritos.'),
(701, 2, 'Subject', 'consulta', '2019-04-28 15:47:01', 'consulta de materias de la cohorte id=1'),
(702, 2, 'Lection', 'consulta', '2019-04-28 15:47:02', 'Consultando datos de clase'),
(703, 2, 'DaysClass', 'consulta', '2019-04-28 15:47:02', 'Consultando lista de dias de clase.'),
(704, 2, 'Cohort', 'consulta', '2019-04-28 15:47:04', 'Consultando lista de clases.'),
(705, 2, 'Cohort', 'consulta', '2019-04-28 15:47:44', 'Consultando lista de clases.'),
(706, 2, 'Cohort', 'consulta', '2019-04-28 15:47:48', 'Consultando datos del curso'),
(707, 2, 'Subject', 'consulta', '2019-04-28 15:47:48', 'consulta de materias de la cohorte id=1'),
(708, 2, 'Inscription', 'consulta', '2019-04-28 15:47:48', 'Consultando lista de alumnos pre-inscritos.'),
(709, 2, 'Cohort', 'consulta', '2019-04-28 15:47:51', 'Consultando lista de clases.'),
(710, 2, 'User', 'consulta', '2019-04-28 15:47:53', 'Consultando lista de facilitadores.'),
(711, 2, 'User', 'consulta', '2019-04-28 15:47:55', 'Consultando datos de usuario.'),
(712, 2, 'Lection', 'consulta', '2019-04-28 15:47:55', 'Consultando asignaturas del facilitador id=5'),
(713, 2, 'User', 'consulta', '2019-04-28 15:47:56', 'Consultando lista de facilitadores.'),
(714, 2, 'User', 'consulta', '2019-04-28 15:47:57', 'Consultando datos de usuario.'),
(715, 2, 'Lection', 'consulta', '2019-04-28 15:47:58', 'Consultando asignaturas del facilitador id=3'),
(716, 2, 'User', 'consulta', '2019-04-28 15:47:58', 'Consultando lista de facilitadores.'),
(717, 2, 'Cohort', 'consulta', '2019-04-28 15:50:24', 'Consultando lista de clases.'),
(718, 2, 'Cohort', 'consulta', '2019-04-28 15:50:40', 'Consultando datos del curso'),
(719, 2, 'Subject', 'consulta', '2019-04-28 15:50:40', 'consulta de materias de la cohorte id=1'),
(720, 2, 'Inscription', 'consulta', '2019-04-28 15:50:40', 'Consultando lista de alumnos pre-inscritos.'),
(721, 2, 'Cohort', 'consulta', '2019-04-28 15:51:31', 'Consultando lista de clases.'),
(722, 2, 'Lection', 'consulta', '2019-04-28 15:51:34', 'Consultando lista de clases.'),
(723, 2, 'Cohort', 'consulta', '2019-04-28 15:51:36', 'Consultando datos del curso'),
(724, 2, 'Lection', 'consulta', '2019-04-28 15:51:37', 'Consultando datos de clase'),
(725, 2, 'Inscription', 'consulta', '2019-04-28 15:51:37', 'Consultando lista de alumnos pre-inscritos.'),
(726, 2, 'Subject', 'consulta', '2019-04-28 15:51:37', 'consulta de materias de la cohorte id=1'),
(727, 2, 'DaysClass', 'consulta', '2019-04-28 15:51:37', 'Consultando lista de dias de clase.'),
(728, 2, 'Lection', 'consulta', '2019-04-28 15:52:16', 'Consultando lista de clases.'),
(729, 3, 'Subject', 'consulta', '2019-04-28 15:54:20', 'Consultando lista de asignaturas.'),
(730, 3, 'Subject', 'consulta', '2019-04-28 15:55:25', 'Consultando lista de asignaturas.'),
(731, 3, 'Subject', 'consulta', '2019-04-28 15:57:30', 'Consultando lista de asignaturas.'),
(732, 3, 'Subject', 'consulta', '2019-04-28 15:58:13', 'Consultando lista de asignaturas.'),
(733, 3, 'Subject', 'consulta', '2019-04-28 16:04:05', 'Consultando lista de asignaturas.'),
(734, 3, 'Subject', 'consulta', '2019-04-28 16:04:46', 'Consultando lista de asignaturas.'),
(735, 3, 'Subject', 'consulta', '2019-04-28 16:05:35', 'Consultando lista de asignaturas.'),
(736, 3, 'Subject', 'consulta', '2019-04-28 16:05:53', 'Consultando lista de asignaturas.'),
(737, 3, 'Subject', 'consulta', '2019-04-28 16:07:09', 'Consultando lista de asignaturas.'),
(738, 3, 'Subject', 'consulta', '2019-04-28 16:10:15', 'Consultando lista de asignaturas.'),
(739, 3, 'Subject', 'consulta', '2019-04-28 16:10:19', 'Consultando lista de asignaturas.'),
(740, 3, 'Subject', 'consulta', '2019-04-28 16:11:07', 'Consultando lista de asignaturas.'),
(741, 3, 'Subject', 'consulta', '2019-04-28 16:12:08', 'Consultando lista de asignaturas.'),
(742, 3, 'Subject', 'consulta', '2019-04-28 16:12:56', 'Consultando lista de asignaturas.'),
(743, 3, 'Subject', 'consulta', '2019-04-28 16:14:32', 'Consultando lista de asignaturas.'),
(744, 3, 'Subject', 'consulta', '2019-04-28 16:15:10', 'Consultando lista de asignaturas.'),
(745, 3, 'Subject', 'consulta', '2019-04-28 16:17:24', 'Consultando lista de asignaturas.'),
(746, 3, 'Subject', 'consulta', '2019-04-28 16:18:21', 'Consultando lista de asignaturas.'),
(747, 3, 'Subject', 'consulta', '2019-04-28 16:18:48', 'Consultando lista de asignaturas.'),
(748, 3, 'Subject', 'consulta', '2019-04-28 16:18:56', 'Consultando lista de asignaturas.'),
(749, 3, 'Subject', 'consulta', '2019-04-28 16:19:17', 'Consultando lista de asignaturas.'),
(750, 3, 'Subject', 'consulta', '2019-04-28 16:19:42', 'Consultando lista de asignaturas.'),
(751, 3, 'Subject', 'consulta', '2019-04-28 16:22:04', 'Consultando lista de asignaturas.'),
(752, 3, 'Subject', 'consulta', '2019-04-28 16:22:12', 'Consultando lista de asignaturas.'),
(753, 3, 'Subject', 'consulta', '2019-04-28 16:24:42', 'Consultando lista de asignaturas.'),
(754, 3, 'Subject', 'consulta', '2019-04-28 16:25:01', 'Consultando lista de asignaturas.'),
(755, 3, 'Subject', 'consulta', '2019-04-28 16:25:25', 'Consultando lista de asignaturas.'),
(756, 3, 'Subject', 'consulta', '2019-04-28 16:25:43', 'Consultando lista de asignaturas.'),
(757, 3, 'Subject', 'consulta', '2019-04-28 16:26:05', 'Consultando lista de asignaturas.'),
(758, 3, 'Subject', 'consulta', '2019-04-28 16:26:45', 'Consultando lista de asignaturas.'),
(759, 3, 'Subject', 'consulta', '2019-04-28 16:29:01', 'Consultando lista de asignaturas.'),
(760, 3, 'Subject', 'consulta', '2019-04-28 16:29:13', 'Consultando lista de asignaturas.'),
(761, 3, 'Subject', 'consulta', '2019-04-28 16:30:18', 'Consultando datos de asignatura'),
(762, 3, 'Subject', 'consulta', '2019-04-28 16:30:22', 'Consultando lista de asignaturas.'),
(763, 3, 'Subject', 'consulta', '2019-04-28 16:30:53', 'Consultando lista de asignaturas.'),
(764, 3, 'Subject', 'consulta', '2019-04-28 16:31:01', 'Consultando datos de asignatura'),
(765, 3, 'Subject', 'consulta', '2019-04-28 16:33:57', 'Consultando datos de asignatura'),
(766, 3, 'Subject', 'consulta', '2019-04-28 16:37:59', 'Consultando datos de asignatura'),
(767, 3, 'Subject', 'consulta', '2019-04-28 16:38:30', 'Consultando datos de asignatura'),
(768, 3, 'Subject', 'consulta', '2019-04-28 16:39:15', 'Consultando datos de asignatura'),
(769, 3, 'Subject', 'consulta', '2019-04-28 16:39:18', 'Consultando lista de asignaturas.'),
(770, 3, 'Subject', 'consulta', '2019-04-28 16:44:39', 'Consultando lista de asignaturas.'),
(771, 3, 'Subject', 'consulta', '2019-04-28 16:51:12', 'Consultando lista de asignaturas.'),
(772, 3, 'Subject', 'consulta', '2019-04-28 16:52:09', 'Consultando lista de asignaturas.'),
(773, 3, 'Subject', 'consulta', '2019-04-28 16:52:45', 'Consultando lista de asignaturas.'),
(774, 3, 'Subject', 'consulta', '2019-04-28 16:52:59', 'Consultando lista de asignaturas.'),
(775, 3, 'Subject', 'consulta', '2019-04-28 16:53:34', 'Consultando lista de asignaturas.'),
(776, 3, 'Subject', 'consulta', '2019-04-28 17:15:26', 'Consultando datos de asignatura'),
(777, 3, 'Subject', 'consulta', '2019-04-28 17:19:59', 'Consultando lista de asignaturas.'),
(778, 3, 'Subject', 'consulta', '2019-04-28 17:20:02', 'Consultando datos de asignatura'),
(779, 3, 'Subject', 'consulta', '2019-04-28 17:20:03', 'Consultando lista de asignaturas.'),
(780, 3, 'Subject', 'consulta', '2019-04-28 17:20:14', 'Consultando datos de asignatura'),
(781, 3, 'Subject', 'consulta', '2019-04-28 17:20:15', 'Consultando lista de asignaturas.'),
(782, 3, 'Subject', 'consulta', '2019-04-28 17:20:18', 'Consultando datos de asignatura'),
(783, 3, 'Subject', 'consulta', '2019-04-28 17:20:19', 'Consultando lista de asignaturas.'),
(784, 1, 'Subject', 'consulta', '2019-04-28 17:20:52', 'Consultando lista de asignaturas.'),
(785, 1, 'Lection', 'consulta', '2019-04-28 17:20:58', 'Consultando lista de clases.'),
(786, 1, 'Lection', 'consulta', '2019-04-28 17:21:05', 'Consultando datos de clase'),
(787, 1, 'DaysClass', 'consulta', '2019-04-28 17:21:06', 'Consultando lista de dias de clase.'),
(788, 1, 'Lection', 'consulta', '2019-04-28 17:21:09', 'Consultando lista de clases.'),
(789, 1, 'Lection', 'consulta', '2019-04-28 17:21:50', 'Consultando lista de clases.'),
(790, 1, 'Lection', 'consulta', '2019-04-28 17:22:46', 'Consultando lista de clases.'),
(791, 1, 'Lection', 'consulta', '2019-04-28 17:23:47', 'Consultando lista de clases.'),
(792, 1, 'Lection', 'consulta', '2019-04-28 17:27:10', 'Consultando lista de clases.'),
(793, 1, 'Lection', 'consulta', '2019-04-28 17:27:41', 'Consultando lista de clases.'),
(794, 1, 'Lection', 'consulta', '2019-04-28 17:27:49', 'Consultando lista de clases.'),
(795, 1, 'Lection', 'consulta', '2019-04-28 17:28:15', 'Consultando lista de clases.'),
(796, 1, 'Lection', 'consulta', '2019-04-28 17:29:17', 'Consultando lista de clases.'),
(797, 1, 'Lection', 'consulta', '2019-04-28 17:29:41', 'Consultando lista de clases.'),
(798, 1, 'Lection', 'consulta', '2019-04-28 17:30:38', 'Consultando lista de clases.'),
(799, 1, 'Lection', 'consulta', '2019-04-28 17:30:44', 'Consultando datos de clase'),
(800, 1, 'DaysClass', 'consulta', '2019-04-28 17:30:45', 'Consultando lista de dias de clase.'),
(801, 1, 'Lection', 'consulta', '2019-04-28 17:33:51', 'Consultando lista de clases.'),
(802, 1, 'Lection', 'consulta', '2019-04-28 17:33:53', 'Consultando datos de clase'),
(803, 1, 'DaysClass', 'consulta', '2019-04-28 17:33:53', 'Consultando lista de dias de clase.'),
(804, 1, 'Lection', 'consulta', '2019-04-28 17:38:39', 'Consultando datos de clase'),
(805, 1, 'DaysClass', 'consulta', '2019-04-28 17:38:40', 'Consultando lista de dias de clase.'),
(806, 1, 'Lection', 'consulta', '2019-04-28 17:39:40', 'Consultando datos de clase'),
(807, 1, 'DaysClass', 'consulta', '2019-04-28 17:39:41', 'Consultando lista de dias de clase.'),
(808, 1, 'Lection', 'consulta', '2019-04-28 17:40:18', 'Consultando datos de clase'),
(809, 1, 'DaysClass', 'consulta', '2019-04-28 17:40:18', 'Consultando lista de dias de clase.'),
(810, 1, 'Lection', 'consulta', '2019-04-28 17:43:22', 'Consultando datos de clase'),
(811, 1, 'DaysClass', 'consulta', '2019-04-28 17:43:23', 'Consultando lista de dias de clase.'),
(812, 1, 'Lection', 'consulta', '2019-04-28 17:45:49', 'Consultando datos de clase'),
(813, 1, 'DaysClass', 'consulta', '2019-04-28 17:45:49', 'Consultando lista de dias de clase.'),
(814, 1, 'Lection', 'consulta', '2019-04-28 17:46:39', 'Consultando datos de clase'),
(815, 1, 'DaysClass', 'consulta', '2019-04-28 17:46:39', 'Consultando lista de dias de clase.'),
(816, 1, 'Lection', 'consulta', '2019-04-28 17:47:52', 'Consultando datos de clase'),
(817, 1, 'DaysClass', 'consulta', '2019-04-28 17:47:52', 'Consultando lista de dias de clase.'),
(818, 1, 'Lection', 'consulta', '2019-04-28 17:48:40', 'Consultando datos de clase'),
(819, 1, 'DaysClass', 'consulta', '2019-04-28 17:48:41', 'Consultando lista de dias de clase.'),
(820, 1, 'Lection', 'consulta', '2019-04-28 17:48:56', 'Consultando datos de clase'),
(821, 1, 'DaysClass', 'consulta', '2019-04-28 17:48:57', 'Consultando lista de dias de clase.'),
(822, 1, 'Lection', 'consulta', '2019-04-28 17:49:21', 'Consultando datos de clase'),
(823, 1, 'DaysClass', 'consulta', '2019-04-28 17:49:21', 'Consultando lista de dias de clase.'),
(824, 1, 'Lection', 'consulta', '2019-04-28 17:49:41', 'Consultando datos de clase'),
(825, 1, 'DaysClass', 'consulta', '2019-04-28 17:49:41', 'Consultando lista de dias de clase.'),
(826, 1, 'Lection', 'consulta', '2019-04-28 17:50:49', 'Consultando datos de clase'),
(827, 1, 'DaysClass', 'consulta', '2019-04-28 17:50:50', 'Consultando lista de dias de clase.'),
(828, 1, 'Lection', 'consulta', '2019-04-28 17:51:37', 'Consultando datos de clase'),
(829, 1, 'DaysClass', 'consulta', '2019-04-28 17:51:38', 'Consultando lista de dias de clase.'),
(830, 1, 'Lection', 'consulta', '2019-04-28 17:52:28', 'Consultando datos de clase'),
(831, 1, 'DaysClass', 'consulta', '2019-04-28 17:52:28', 'Consultando lista de dias de clase.'),
(832, 1, 'Lection', 'consulta', '2019-04-28 17:52:58', 'Consultando datos de clase'),
(833, 1, 'DaysClass', 'consulta', '2019-04-28 17:52:58', 'Consultando lista de dias de clase.'),
(834, 1, 'Lection', 'consulta', '2019-04-28 17:53:51', 'Consultando datos de clase'),
(835, 1, 'DaysClass', 'consulta', '2019-04-28 17:53:51', 'Consultando lista de dias de clase.'),
(836, 1, 'Lection', 'consulta', '2019-04-28 17:54:38', 'Consultando datos de clase'),
(837, 1, 'DaysClass', 'consulta', '2019-04-28 17:54:39', 'Consultando lista de dias de clase.'),
(838, 1, 'Lection', 'consulta', '2019-04-28 17:56:29', 'Consultando datos de clase'),
(839, 1, 'DaysClass', 'consulta', '2019-04-28 17:56:29', 'Consultando lista de dias de clase.'),
(840, 1, 'Lection', 'consulta', '2019-04-28 17:57:22', 'Consultando datos de clase'),
(841, 1, 'DaysClass', 'consulta', '2019-04-28 17:57:23', 'Consultando lista de dias de clase.'),
(842, 1, 'Lection', 'consulta', '2019-04-28 17:58:00', 'Consultando datos de clase'),
(843, 1, 'DaysClass', 'consulta', '2019-04-28 17:58:00', 'Consultando lista de dias de clase.'),
(844, 1, 'Lection', 'consulta', '2019-04-28 17:58:13', 'Consultando datos de clase'),
(845, 1, 'DaysClass', 'consulta', '2019-04-28 17:58:14', 'Consultando lista de dias de clase.'),
(846, 1, 'Lection', 'consulta', '2019-04-28 17:58:26', 'Consultando datos de clase'),
(847, 1, 'DaysClass', 'consulta', '2019-04-28 17:58:26', 'Consultando lista de dias de clase.'),
(848, 1, 'Lection', 'consulta', '2019-04-28 17:58:36', 'Consultando datos de clase'),
(849, 1, 'DaysClass', 'consulta', '2019-04-28 17:58:37', 'Consultando lista de dias de clase.'),
(850, 1, 'Lection', 'consulta', '2019-04-28 17:59:46', 'Consultando datos de clase'),
(851, 1, 'DaysClass', 'consulta', '2019-04-28 17:59:46', 'Consultando lista de dias de clase.'),
(852, 1, 'Lection', 'consulta', '2019-04-28 18:01:28', 'Consultando datos de clase'),
(853, 1, 'DaysClass', 'consulta', '2019-04-28 18:01:28', 'Consultando lista de dias de clase.'),
(854, 1, 'Lection', 'consulta', '2019-04-28 18:01:59', 'Consultando datos de clase'),
(855, 1, 'Lection', 'consulta', '2019-04-28 18:02:15', 'Consultando datos de clase'),
(856, 1, 'Lection', 'consulta', '2019-04-28 18:02:38', 'Consultando datos de clase'),
(857, 1, 'Lection', 'consulta', '2019-04-28 18:03:00', 'Consultando datos de clase'),
(858, 1, 'Lection', 'consulta', '2019-04-28 18:12:05', 'Consultando datos de clase'),
(859, 1, 'Lection', 'consulta', '2019-04-28 18:17:11', 'Consultando datos de clase'),
(860, 1, 'Lection', 'consulta', '2019-04-28 18:19:24', 'Consultando datos de clase'),
(861, 1, 'Lection', 'consulta', '2019-04-28 18:21:57', 'Consultando datos de clase'),
(862, 1, 'Lection', 'consulta', '2019-04-28 18:22:21', 'Consultando datos de clase'),
(863, 1, 'Lection', 'consulta', '2019-04-28 18:23:04', 'Consultando datos de clase'),
(864, 1, 'Lection', 'consulta', '2019-04-28 18:23:15', 'Consultando datos de clase'),
(865, 1, 'Lection', 'consulta', '2019-04-28 18:23:46', 'Consultando datos de clase'),
(866, 1, 'Lection', 'consulta', '2019-04-28 18:25:17', 'Consultando datos de clase'),
(867, 1, 'Lection', 'consulta', '2019-04-28 18:26:59', 'Consultando datos de clase'),
(868, 1, 'Lection', 'consulta', '2019-04-28 18:28:10', 'Consultando datos de clase'),
(869, 1, 'Lection', 'consulta', '2019-04-28 18:29:02', 'Consultando datos de clase'),
(870, 1, 'Lection', 'consulta', '2019-04-28 18:29:25', 'Consultando datos de clase'),
(871, 1, 'Lection', 'consulta', '2019-04-28 18:30:26', 'Consultando datos de clase'),
(872, 1, 'Lection', 'consulta', '2019-04-28 18:35:01', 'Consultando datos de clase'),
(873, 1, 'Lection', 'consulta', '2019-04-28 18:35:18', 'Consultando datos de clase'),
(874, 1, 'Lection', 'consulta', '2019-04-28 18:35:42', 'Consultando datos de clase'),
(875, 1, 'Lection', 'consulta', '2019-04-28 18:36:45', 'Consultando datos de clase'),
(876, 1, 'Lection', 'consulta', '2019-04-28 18:38:32', 'Consultando datos de clase'),
(877, 1, 'Lection', 'consulta', '2019-04-28 18:42:31', 'Consultando lista de clases.'),
(878, 1, 'Lection', 'consulta', '2019-04-28 18:43:07', 'Consultando lista de clases.'),
(879, 1, 'Lection', 'consulta', '2019-04-28 18:43:36', 'Consultando lista de clases.'),
(880, 1, 'Lection', 'consulta', '2019-04-28 18:47:23', 'Consultando lista de clases.'),
(881, 1, 'Lection', 'consulta', '2019-04-28 18:48:28', 'Consultando lista de clases.'),
(882, 1, 'Lection', 'consulta', '2019-04-28 18:49:06', 'Consultando lista de clases.'),
(883, 1, 'Lection', 'consulta', '2019-04-28 18:50:03', 'Consultando lista de clases.'),
(884, 1, 'Lection', 'consulta', '2019-04-28 18:50:24', 'Consultando lista de clases.'),
(885, 1, 'Lection', 'consulta', '2019-04-28 18:50:27', 'Consultando datos de clase'),
(886, 1, 'DaysClass', 'consulta', '2019-04-28 18:50:29', 'Consultando lista de dias de clase.'),
(887, 1, 'Lection', 'consulta', '2019-04-28 18:50:49', 'Consultando lista de clases.'),
(888, 3, 'Subject', 'consulta', '2019-04-28 18:51:46', 'Consultando lista de asignaturas.'),
(889, 3, 'Subject', 'consulta', '2019-04-28 18:52:58', 'Consultando lista de asignaturas.'),
(890, 3, 'Lection', 'consulta', '2019-04-28 18:53:14', 'Consultando lista de clases.'),
(891, 3, 'Lection', 'consulta', '2019-04-28 18:53:18', 'Consultando datos de clase'),
(892, 3, 'Lection', 'consulta', '2019-04-28 18:53:41', 'Consultando datos de clase'),
(893, 3, 'Lection', 'consulta', '2019-04-28 18:55:03', 'Consultando datos de clase'),
(894, 3, 'Lection', 'consulta', '2019-04-28 18:56:00', 'Consultando lista de clases.'),
(895, 3, 'Lection', 'consulta', '2019-04-28 18:56:45', 'Consultando lista de clases.'),
(896, 3, 'Lection', 'consulta', '2019-04-28 18:56:53', 'Consultando datos de clase'),
(897, 3, 'Lection', 'consulta', '2019-04-28 18:56:56', 'Consultando lista de clases.'),
(898, 3, 'Lection', 'consulta', '2019-04-28 18:57:17', 'Consultando datos de clase'),
(899, 3, 'Lection', 'consulta', '2019-04-28 18:57:23', 'Consultando lista de clases.'),
(900, 3, 'Lection', 'consulta', '2019-04-28 18:57:32', 'Consultando datos de clase'),
(901, 3, 'Lection', 'consulta', '2019-04-28 18:57:35', 'Consultando lista de clases.'),
(902, 3, 'Lection', 'consulta', '2019-04-28 18:57:55', 'Consultando datos de clase'),
(903, 3, 'Lection', 'consulta', '2019-04-28 18:57:58', 'Consultando lista de clases.'),
(904, 3, 'Lection', 'consulta', '2019-04-28 19:01:41', 'Consultando datos de clase'),
(905, 3, 'Lection', 'consulta', '2019-04-28 19:01:44', 'Consultando lista de clases.'),
(906, 3, 'Lection', 'consulta', '2019-04-28 19:01:45', 'Consultando datos de clase'),
(907, 3, 'Lection', 'consulta', '2019-04-28 19:01:50', 'Consultando lista de clases.'),
(908, 3, 'Lection', 'consulta', '2019-04-28 19:05:25', 'Consultando lista de clases.'),
(909, 3, 'Lection', 'consulta', '2019-04-28 19:07:39', 'Consultando lista de clases.'),
(910, 3, 'Lection', 'consulta', '2019-04-28 19:07:48', 'Consultando lista de clases.'),
(911, 3, 'Lection', 'consulta', '2019-04-28 19:08:06', 'Consultando lista de clases.'),
(912, 3, 'Lection', 'consulta', '2019-04-28 19:08:38', 'Consultando lista de clases.'),
(913, 3, 'Lection', 'consulta', '2019-04-28 19:11:05', 'Consultando lista de clases.'),
(914, 3, 'Lection', 'consulta', '2019-04-28 19:11:17', 'Consultando lista de clases.'),
(915, 3, 'Lection', 'consulta', '2019-04-28 19:15:57', 'Consultando lista de clases.'),
(916, 5, 'Lection', 'consulta', '2019-04-28 19:16:36', 'Consultando lista de clases.'),
(917, 1, 'Lection', 'consulta', '2019-04-28 19:17:05', 'Consultando lista de clases.'),
(918, 3, 'Lection', 'consulta', '2019-04-28 19:17:48', 'Consultando lista de clases.'),
(919, 3, 'Lection', 'consulta', '2019-04-28 19:17:51', 'Consultando datos de clase'),
(920, 1, 'User', 'consulta', '2019-04-28 19:44:38', 'Consultando lista de facilitadores.'),
(921, 1, 'User', 'consulta', '2019-04-28 19:44:43', 'Consultando datos de usuario.'),
(922, 1, 'Lection', 'consulta', '2019-04-28 19:44:43', 'Consultando asignaturas del facilitador id=5'),
(923, 1, 'User', 'consulta', '2019-04-28 19:44:47', 'Consultando lista de facilitadores.'),
(924, 1, 'Cohort', 'consulta', '2019-04-28 19:44:51', 'Consultando lista de clases.'),
(925, 1, 'Lection', 'consulta', '2019-04-28 19:44:55', 'Consultando lista de clases.'),
(926, 1, 'User', 'consulta', '2019-04-28 19:44:57', 'Consultando lista de estudiantes.'),
(927, 1, 'NRequirementsStudent', 'consulta', '2019-04-28 19:45:01', 'Consultando lista de requerimientos de estudiante.'),
(928, 1, 'Cohort', 'consulta', '2019-04-28 19:45:05', 'Consultando lista de cohortes.'),
(929, 1, 'Cohort', 'registro', '2019-04-28 19:50:47', 'Registrando cohorte MM-22.'),
(930, 1, 'Cohort', 'consulta', '2019-04-28 19:50:53', 'Consultando lista de cohortes.'),
(931, 1, 'Cohort', 'consulta', '2019-04-28 19:50:58', 'Consultando datos del curso'),
(932, 1, 'NRequirementsStudent', 'consulta', '2019-04-28 19:50:58', 'Consultando lista de requisitos de estudiante'),
(933, 1, 'Cohort', 'consulta', '2019-04-28 19:50:58', 'Consultando lista de cohortes'),
(934, 1, 'Inscription', 'consulta', '2019-04-28 19:50:58', 'Consultando lista de alumnos pre-inscritos.'),
(935, 1, 'Subject', 'consulta', '2019-04-28 19:50:58', 'consulta de materias de la cohorte id=2'),
(936, 1, 'Cohort', 'consulta', '2019-04-28 19:51:02', 'Consultando lista de cohortes.'),
(937, 1, 'Cohort', 'consulta', '2019-04-28 19:51:03', 'Consultando datos del curso'),
(938, 1, 'NRequirementsStudent', 'consulta', '2019-04-28 19:51:04', 'Consultando lista de requisitos de estudiante'),
(939, 1, 'Cohort', 'consulta', '2019-04-28 19:51:04', 'Consultando lista de cohortes'),
(940, 1, 'Subject', 'consulta', '2019-04-28 19:51:04', 'consulta de materias de la cohorte id=2'),
(941, 1, 'Inscription', 'consulta', '2019-04-28 19:51:04', 'Consultando lista de alumnos pre-inscritos.'),
(942, 1, 'Cohort', 'consulta', '2019-04-28 19:51:06', 'Consultando lista de cohortes.'),
(943, 1, 'Cohort', 'consulta', '2019-04-28 19:51:15', 'Consultando datos del curso'),
(944, 1, 'NRequirementsStudent', 'consulta', '2019-04-28 19:51:15', 'Consultando lista de requisitos de estudiante'),
(945, 1, 'Cohort', 'consulta', '2019-04-28 19:51:15', 'Consultando lista de cohortes'),
(946, 1, 'Subject', 'consulta', '2019-04-28 19:51:15', 'consulta de materias de la cohorte id=2'),
(947, 1, 'Inscription', 'consulta', '2019-04-28 19:51:15', 'Consultando lista de alumnos pre-inscritos.'),
(948, 1, 'NRequirementsStudent', 'consulta', '2019-04-28 19:51:22', 'Consultando lista de requisitos de estudiante'),
(949, 1, 'Lection', 'consulta', '2019-04-28 19:51:24', 'Consultando lista de clases.'),
(950, 1, 'Cohort', 'consulta', '2019-04-28 19:51:27', 'Consultando lista de clases.'),
(951, 1, 'Cohort', 'consulta', '2019-04-28 19:51:37', 'Consultando datos del curso'),
(952, 1, 'NRequirementsStudent', 'consulta', '2019-04-28 19:51:37', 'Consultando lista de requisitos de estudiante'),
(953, 1, 'Cohort', 'consulta', '2019-04-28 19:51:37', 'Consultando lista de cohortes'),
(954, 1, 'Subject', 'consulta', '2019-04-28 19:51:38', 'consulta de materias de la cohorte id=2'),
(955, 1, 'Cohort', 'consulta', '2019-04-28 19:51:38', 'Consultando datos del curso'),
(956, 1, 'Inscription', 'consulta', '2019-04-28 19:51:38', 'Consultando lista de alumnos pre-inscritos.'),
(957, 1, 'Inscription', 'consulta', '2019-04-28 19:51:38', 'Consultando lista de alumnos pre-inscritos.'),
(958, 1, 'Subject', 'consulta', '2019-04-28 19:51:38', 'consulta de materias de la cohorte id=2'),
(959, 1, 'Cohort', 'consulta', '2019-04-28 19:51:45', 'Consultando lista de clases.'),
(960, 1, 'Cohort', 'consulta', '2019-04-28 19:51:47', 'Consultando datos del curso'),
(961, 1, 'NRequirementsStudent', 'consulta', '2019-04-28 19:51:47', 'Consultando lista de requisitos de estudiante'),
(962, 1, 'Cohort', 'consulta', '2019-04-28 19:51:47', 'Consultando lista de cohortes'),
(963, 1, 'Lection', 'consulta', '2019-04-28 19:51:47', 'Consultando datos de clase'),
(964, 1, 'Lection', 'consulta', '2019-04-28 19:51:47', 'Consultando datos de clase'),
(965, 1, 'Cohort', 'consulta', '2019-04-28 19:51:47', 'Consultando datos del curso'),
(966, 1, 'Subject', 'consulta', '2019-04-28 19:51:47', 'consulta de materias de la cohorte id=1'),
(967, 1, 'Inscription', 'consulta', '2019-04-28 19:51:48', 'Consultando lista de alumnos pre-inscritos.'),
(968, 1, 'DaysClass', 'consulta', '2019-04-28 19:51:48', 'Consultando lista de dias de clase.'),
(969, 1, 'DaysClass', 'consulta', '2019-04-28 19:51:48', 'Consultando lista de dias de clase.'),
(970, 1, 'Inscription', 'consulta', '2019-04-28 19:51:48', 'Consultando lista de alumnos pre-inscritos.'),
(971, 1, 'Subject', 'consulta', '2019-04-28 19:51:48', 'consulta de materias de la cohorte id=1'),
(972, 1, 'Cohort', 'consulta', '2019-04-28 19:51:51', 'Consultando lista de clases.'),
(973, 3, 'User', 'actualización', '2019-04-28 19:56:01', 'Actualización de contraseña de usuario.'),
(974, 3, 'Lection', 'consulta', '2019-04-28 19:56:19', 'Consultando lista de clases.'),
(975, 3, 'Lection', 'consulta', '2019-04-28 19:56:22', 'Consultando datos de clase'),
(976, 3, 'Lection', 'consulta', '2019-04-29 07:24:13', 'Consultando lista de clases.'),
(977, 3, 'Lection', 'consulta', '2019-04-29 07:24:24', 'Consultando datos de clase'),
(978, 3, 'Lection', 'consulta', '2019-04-29 07:24:31', 'Consultando lista de clases.'),
(979, 3, 'Lection', 'consulta', '2019-04-29 07:24:32', 'Consultando datos de clase'),
(980, 3, 'Lection', 'consulta', '2019-04-29 07:26:23', 'Consultando lista de clases.'),
(981, 3, 'Lection', 'consulta', '2019-04-29 07:26:26', 'Consultando datos de clase'),
(982, 3, 'Lection', 'consulta', '2019-04-29 07:26:29', 'Consultando lista de clases.'),
(983, 3, 'Lection', 'consulta', '2019-04-29 07:31:57', 'Consultando datos de clase'),
(984, 3, 'Lection', 'consulta', '2019-04-29 07:32:01', 'Consultando lista de clases.'),
(985, 3, 'Lection', 'consulta', '2019-04-29 07:41:32', 'Consultando lista de clases.'),
(986, 3, 'Lection', 'consulta', '2019-04-29 07:41:54', 'Consultando lista de clases.'),
(987, 3, 'Lection', 'consulta', '2019-04-29 07:42:09', 'Consultando datos de clase'),
(988, 3, 'Inscription', 'consulta', '2019-04-29 07:42:09', 'Consultando lista de alumnos pre-inscritos.'),
(989, 3, 'Lection', 'consulta', '2019-04-29 07:43:08', 'Consultando datos de clase'),
(990, 3, 'Inscription', 'consulta', '2019-04-29 07:43:08', 'Consultando lista de alumnos pre-inscritos.'),
(991, 3, 'Lection', 'consulta', '2019-04-29 07:43:29', 'Consultando datos de clase'),
(992, 3, 'Inscription', 'consulta', '2019-04-29 07:43:32', 'Consultando lista de alumnos pre-inscritos.'),
(993, 3, 'Lection', 'consulta', '2019-04-29 07:44:17', 'Consultando datos de clase'),
(994, 3, 'Lection', 'consulta', '2019-04-29 07:44:35', 'Consultando datos de clase'),
(995, 3, 'Inscription', 'consulta', '2019-04-29 07:44:36', 'Consultando lista de alumnos pre-inscritos.'),
(996, 3, 'Lection', 'consulta', '2019-04-29 07:47:05', 'Consultando datos de clase'),
(997, 3, 'Lection', 'consulta', '2019-04-29 07:47:26', 'Consultando datos de clase'),
(998, 3, 'Inscription', 'consulta', '2019-04-29 07:47:45', 'Consultando lista de alumnos pre-inscritos.'),
(999, 3, 'Lection', 'consulta', '2019-04-29 07:49:42', 'Consultando datos de clase'),
(1000, 3, 'Inscription', 'consulta', '2019-04-29 07:49:42', 'Consultando lista de alumnos pre-inscritos.'),
(1001, 3, 'Lection', 'consulta', '2019-04-29 07:50:35', 'Consultando datos de clase'),
(1002, 3, 'Inscription', 'consulta', '2019-04-29 07:50:55', 'Consultando lista de alumnos pre-inscritos.'),
(1003, 3, 'Lection', 'consulta', '2019-04-29 07:51:09', 'Consultando datos de clase'),
(1004, 3, 'Inscription', 'consulta', '2019-04-29 07:51:17', 'Consultando lista de alumnos pre-inscritos.'),
(1005, 3, 'Lection', 'consulta', '2019-04-29 07:52:08', 'Consultando datos de clase'),
(1006, 3, 'Inscription', 'consulta', '2019-04-29 07:52:09', 'Consultando lista de alumnos pre-inscritos.'),
(1007, 3, 'Lection', 'consulta', '2019-04-29 07:53:44', 'Consultando datos de clase'),
(1008, 3, 'Inscription', 'consulta', '2019-04-29 07:53:44', 'Consultando lista de alumnos pre-inscritos.'),
(1009, 3, 'Lection', 'consulta', '2019-04-29 07:53:59', 'Consultando datos de clase'),
(1010, 3, 'Inscription', 'consulta', '2019-04-29 07:54:11', 'Consultando lista de alumnos pre-inscritos.'),
(1011, 3, 'Lection', 'consulta', '2019-04-29 07:54:48', 'Consultando datos de clase'),
(1012, 3, 'Inscription', 'consulta', '2019-04-29 07:54:50', 'Consultando lista de alumnos pre-inscritos.'),
(1013, 3, 'Lection', 'consulta', '2019-04-29 07:55:57', 'Consultando datos de clase'),
(1014, 3, 'Inscription', 'consulta', '2019-04-29 07:56:03', 'Consultando lista de alumnos pre-inscritos.'),
(1015, 3, 'Lection', 'consulta', '2019-04-29 07:56:28', 'Consultando datos de clase'),
(1016, 3, 'Inscription', 'consulta', '2019-04-29 07:56:29', 'Consultando lista de alumnos pre-inscritos.'),
(1017, 3, 'Lection', 'consulta', '2019-04-29 07:56:44', 'Consultando datos de clase'),
(1018, 3, 'Inscription', 'consulta', '2019-04-29 07:56:45', 'Consultando lista de alumnos pre-inscritos.'),
(1019, 3, 'Lection', 'consulta', '2019-04-29 07:56:55', 'Consultando datos de clase'),
(1020, 3, 'Inscription', 'consulta', '2019-04-29 07:56:56', 'Consultando lista de alumnos pre-inscritos.'),
(1021, 3, 'Lection', 'consulta', '2019-04-29 07:57:38', 'Consultando datos de clase'),
(1022, 3, 'Inscription', 'consulta', '2019-04-29 07:57:39', 'Consultando lista de alumnos pre-inscritos.'),
(1023, 3, 'Lection', 'consulta', '2019-04-29 07:58:10', 'Consultando datos de clase'),
(1024, 3, 'Inscription', 'consulta', '2019-04-29 07:58:11', 'Consultando lista de alumnos pre-inscritos.'),
(1025, 3, 'Lection', 'consulta', '2019-04-29 07:58:29', 'Consultando datos de clase'),
(1026, 3, 'Inscription', 'consulta', '2019-04-29 07:58:30', 'Consultando lista de alumnos pre-inscritos.'),
(1027, 3, 'Lection', 'consulta', '2019-04-29 07:58:53', 'Consultando datos de clase'),
(1028, 3, 'Inscription', 'consulta', '2019-04-29 07:58:53', 'Consultando lista de alumnos pre-inscritos.'),
(1029, 3, 'Lection', 'consulta', '2019-04-29 07:59:44', 'Consultando datos de clase'),
(1030, 3, 'Inscription', 'consulta', '2019-04-29 07:59:45', 'Consultando lista de alumnos pre-inscritos.'),
(1031, 3, 'Lection', 'consulta', '2019-04-29 07:59:56', 'Consultando datos de clase'),
(1032, 3, 'Inscription', 'consulta', '2019-04-29 07:59:56', 'Consultando lista de alumnos pre-inscritos.'),
(1033, 3, 'Lection', 'consulta', '2019-04-29 08:06:01', 'Consultando datos de clase'),
(1034, 3, 'Inscription', 'consulta', '2019-04-29 08:06:10', 'Consultando lista de alumnos pre-inscritos.'),
(1035, 3, 'Lection', 'consulta', '2019-04-29 08:07:38', 'Consultando datos de clase'),
(1036, 3, 'Inscription', 'consulta', '2019-04-29 08:07:38', 'Consultando lista de alumnos pre-inscritos.'),
(1037, 3, 'Lection', 'consulta', '2019-04-29 08:10:00', 'Consultando datos de clase'),
(1038, 3, 'Inscription', 'consulta', '2019-04-29 08:10:01', 'Consultando lista de alumnos pre-inscritos.'),
(1039, 3, 'Lection', 'consulta', '2019-04-29 08:10:11', 'Consultando datos de clase'),
(1040, 3, 'Inscription', 'consulta', '2019-04-29 08:10:12', 'Consultando lista de alumnos pre-inscritos.'),
(1041, 3, 'Lection', 'consulta', '2019-04-29 08:10:25', 'Consultando datos de clase'),
(1042, 3, 'Inscription', 'consulta', '2019-04-29 08:10:25', 'Consultando lista de alumnos pre-inscritos.'),
(1043, 3, 'Lection', 'consulta', '2019-04-29 08:10:39', 'Consultando datos de clase'),
(1044, 3, 'Inscription', 'consulta', '2019-04-29 08:10:39', 'Consultando lista de alumnos pre-inscritos.'),
(1045, 3, 'Lection', 'consulta', '2019-04-29 08:11:11', 'Consultando datos de clase'),
(1046, 3, 'Inscription', 'consulta', '2019-04-29 08:11:11', 'Consultando lista de alumnos pre-inscritos.'),
(1047, 3, 'Lection', 'consulta', '2019-04-29 08:11:22', 'Consultando datos de clase'),
(1048, 3, 'Inscription', 'consulta', '2019-04-29 08:11:25', 'Consultando lista de alumnos pre-inscritos.'),
(1049, 3, 'Lection', 'consulta', '2019-04-29 08:12:59', 'Consultando datos de clase'),
(1050, 3, 'Inscription', 'consulta', '2019-04-29 08:12:59', 'Consultando lista de alumnos pre-inscritos.'),
(1051, 3, 'Lection', 'consulta', '2019-04-29 08:13:11', 'Consultando datos de clase'),
(1052, 3, 'Inscription', 'consulta', '2019-04-29 08:13:11', 'Consultando lista de alumnos pre-inscritos.'),
(1053, 3, 'Lection', 'consulta', '2019-04-29 08:13:22', 'Consultando datos de clase'),
(1054, 3, 'Inscription', 'consulta', '2019-04-29 08:13:23', 'Consultando lista de alumnos pre-inscritos.'),
(1055, 3, 'Lection', 'consulta', '2019-04-29 08:14:07', 'Consultando datos de clase'),
(1056, 3, 'Inscription', 'consulta', '2019-04-29 08:14:07', 'Consultando lista de alumnos pre-inscritos.'),
(1057, 3, 'Lection', 'consulta', '2019-04-29 08:15:09', 'Consultando datos de clase'),
(1058, 3, 'Inscription', 'consulta', '2019-04-29 08:15:09', 'Consultando lista de alumnos pre-inscritos.'),
(1059, 3, 'Lection', 'consulta', '2019-04-29 08:18:14', 'Consultando datos de clase'),
(1060, 3, 'Inscription', 'consulta', '2019-04-29 08:18:15', 'Consultando lista de alumnos pre-inscritos.'),
(1061, 3, 'Lection', 'consulta', '2019-04-29 08:19:01', 'Consultando datos de clase'),
(1062, 3, 'Inscription', 'consulta', '2019-04-29 08:19:02', 'Consultando lista de alumnos pre-inscritos.'),
(1063, 3, 'Lection', 'consulta', '2019-04-29 08:20:32', 'Consultando datos de clase'),
(1064, 3, 'Inscription', 'consulta', '2019-04-29 08:20:33', 'Consultando lista de alumnos pre-inscritos.'),
(1065, 3, 'Lection', 'consulta', '2019-04-29 08:21:52', 'Consultando datos de clase'),
(1066, 3, 'Inscription', 'consulta', '2019-04-29 08:21:52', 'Consultando lista de alumnos pre-inscritos.'),
(1067, 3, 'Lection', 'consulta', '2019-04-29 08:22:50', 'Consultando datos de clase'),
(1068, 3, 'Inscription', 'consulta', '2019-04-29 08:22:51', 'Consultando lista de alumnos pre-inscritos.'),
(1069, 3, 'Lection', 'consulta', '2019-04-29 08:23:00', 'Consultando datos de clase'),
(1070, 3, 'Inscription', 'consulta', '2019-04-29 08:23:01', 'Consultando lista de alumnos pre-inscritos.'),
(1071, 3, 'Lection', 'consulta', '2019-04-29 08:23:14', 'Consultando datos de clase'),
(1072, 3, 'Inscription', 'consulta', '2019-04-29 08:23:14', 'Consultando lista de alumnos pre-inscritos.'),
(1073, 3, 'Lection', 'consulta', '2019-04-29 08:23:32', 'Consultando datos de clase'),
(1074, 3, 'Inscription', 'consulta', '2019-04-29 08:23:33', 'Consultando lista de alumnos pre-inscritos.'),
(1075, 3, 'Lection', 'consulta', '2019-04-29 08:23:52', 'Consultando datos de clase'),
(1076, 3, 'Inscription', 'consulta', '2019-04-29 08:23:52', 'Consultando lista de alumnos pre-inscritos.'),
(1077, 3, 'Lection', 'consulta', '2019-04-29 08:25:13', 'Consultando datos de clase'),
(1078, 3, 'Inscription', 'consulta', '2019-04-29 08:25:14', 'Consultando lista de alumnos pre-inscritos.'),
(1079, 3, 'Lection', 'consulta', '2019-04-29 08:28:12', 'Consultando datos de clase'),
(1080, 3, 'Lection', 'consulta', '2019-04-29 08:29:05', 'Consultando datos de clase'),
(1081, 3, 'Inscription', 'consulta', '2019-04-29 08:29:08', 'Consultando lista de alumnos pre-inscritos.'),
(1082, 3, 'Lection', 'consulta', '2019-04-29 08:37:42', 'Consultando datos de clase');
INSERT INTO `binnacle_actions` (`id`, `user_id`, `entity`, `action`, `date`, `description`) VALUES
(1083, 3, 'Inscription', 'consulta', '2019-04-29 08:37:42', 'Consultando lista de alumnos pre-inscritos.'),
(1084, 3, 'Lection', 'consulta', '2019-04-29 09:28:46', 'Consultando datos de clase'),
(1085, 3, 'Inscription', 'consulta', '2019-04-29 09:28:56', 'Consultando lista de alumnos pre-inscritos.'),
(1086, 3, 'Lection', 'consulta', '2019-04-29 09:29:05', 'Consultando datos de clase'),
(1087, 3, 'Inscription', 'consulta', '2019-04-29 09:29:06', 'Consultando lista de alumnos pre-inscritos.'),
(1088, 3, 'Lection', 'consulta', '2019-04-29 09:29:39', 'Consultando datos de clase'),
(1089, 3, 'Inscription', 'consulta', '2019-04-29 09:29:39', 'Consultando lista de alumnos pre-inscritos.'),
(1090, 3, 'Lection', 'consulta', '2019-04-29 09:30:02', 'Consultando datos de clase'),
(1091, 3, 'Inscription', 'consulta', '2019-04-29 09:30:03', 'Consultando lista de alumnos pre-inscritos.'),
(1092, 3, 'Lection', 'consulta', '2019-04-29 09:30:50', 'Consultando datos de clase'),
(1093, 3, 'Inscription', 'consulta', '2019-04-29 09:30:50', 'Consultando lista de alumnos pre-inscritos.'),
(1094, 3, 'Lection', 'consulta', '2019-04-29 09:34:11', 'Consultando datos de clase'),
(1095, 3, 'Inscription', 'consulta', '2019-04-29 09:34:12', 'Consultando lista de alumnos pre-inscritos.'),
(1096, 3, 'Lection', 'consulta', '2019-04-29 09:35:38', 'Consultando datos de clase'),
(1097, 3, 'Inscription', 'consulta', '2019-04-29 09:35:39', 'Consultando lista de alumnos pre-inscritos.'),
(1098, 3, 'Lection', 'consulta', '2019-04-29 09:37:01', 'Consultando datos de clase'),
(1099, 3, 'Inscription', 'consulta', '2019-04-29 09:37:01', 'Consultando lista de alumnos pre-inscritos.'),
(1100, 3, 'Lection', 'consulta', '2019-04-29 09:38:22', 'Consultando datos de clase'),
(1101, 3, 'Inscription', 'consulta', '2019-04-29 09:38:22', 'Consultando lista de alumnos pre-inscritos.'),
(1102, 3, 'Lection', 'consulta', '2019-04-29 09:43:25', 'Consultando datos de clase'),
(1103, 3, 'Lection', 'consulta', '2019-04-29 09:45:40', 'Consultando datos de clase'),
(1104, 3, 'Lection', 'consulta', '2019-04-29 09:46:35', 'Consultando datos de clase'),
(1105, 3, 'Lection', 'consulta', '2019-04-29 09:48:20', 'Consultando datos de clase'),
(1106, 3, 'Inscription', 'consulta', '2019-04-29 09:48:21', 'Consultando lista de alumnos pre-inscritos.'),
(1107, 3, 'Lection', 'consulta', '2019-04-29 09:49:14', 'Consultando datos de clase'),
(1108, 3, 'Inscription', 'consulta', '2019-04-29 09:49:14', 'Consultando lista de alumnos pre-inscritos.'),
(1109, 3, 'Lection', 'consulta', '2019-04-29 09:49:25', 'Consultando datos de clase'),
(1110, 3, 'Inscription', 'consulta', '2019-04-29 09:49:25', 'Consultando lista de alumnos pre-inscritos.'),
(1111, 3, 'Lection', 'consulta', '2019-04-29 09:49:50', 'Consultando datos de clase'),
(1112, 3, 'Inscription', 'consulta', '2019-04-29 09:49:51', 'Consultando lista de alumnos pre-inscritos.'),
(1113, 3, 'Lection', 'consulta', '2019-04-29 09:59:04', 'Consultando datos de clase'),
(1114, 3, 'Lection', 'consulta', '2019-04-29 09:59:50', 'Consultando datos de clase'),
(1115, 3, 'Inscription', 'consulta', '2019-04-29 09:59:51', 'Consultando lista de alumnos pre-inscritos.'),
(1116, 3, 'Qualification', 'registro', '2019-04-29 10:01:23', 'Agregando calificación a id=1.'),
(1117, 3, 'Cohort', 'consulta', '2019-04-29 10:01:29', 'Consultando lista de cohortes.'),
(1118, 3, 'Lection', 'consulta', '2019-04-29 10:01:50', 'Consultando lista de clases.'),
(1119, 3, 'Cohort', 'consulta', '2019-04-29 10:01:54', 'Consultando lista de cohortes'),
(1120, 3, 'Lection', 'consulta', '2019-04-29 10:01:54', 'Consultando datos de clase'),
(1121, 3, 'Inscription', 'consulta', '2019-04-29 10:01:55', 'Consultando lista de alumnos pre-inscritos.'),
(1122, 3, 'Lection', 'consulta', '2019-04-29 10:04:49', 'Consultando datos de clase'),
(1123, 3, 'Inscription', 'consulta', '2019-04-29 10:04:51', 'Consultando lista de alumnos pre-inscritos.'),
(1124, 3, 'Lection', 'consulta', '2019-04-29 10:06:09', 'Consultando datos de clase'),
(1125, 3, 'Inscription', 'consulta', '2019-04-29 10:06:25', 'Consultando lista de alumnos pre-inscritos.'),
(1126, 3, 'Lection', 'consulta', '2019-04-29 10:06:57', 'Consultando datos de clase'),
(1127, 3, 'Inscription', 'consulta', '2019-04-29 10:07:00', 'Consultando lista de alumnos pre-inscritos.'),
(1128, 3, 'Qualification', 'registro', '2019-04-29 10:07:06', 'Agregando calificación a id=1.'),
(1129, 3, 'Lection', 'consulta', '2019-04-29 10:07:53', 'Consultando datos de clase'),
(1130, 3, 'Lection', 'consulta', '2019-04-29 10:08:34', 'Consultando datos de clase'),
(1131, 3, 'Lection', 'consulta', '2019-04-29 10:09:10', 'Consultando datos de clase'),
(1132, 3, 'Lection', 'consulta', '2019-04-29 10:12:22', 'Consultando datos de clase'),
(1133, 3, 'Lection', 'consulta', '2019-04-29 10:12:58', 'Consultando datos de clase'),
(1134, 3, 'Lection', 'consulta', '2019-04-29 10:14:04', 'Consultando datos de clase'),
(1135, 3, 'Inscription', 'consulta', '2019-04-29 10:14:06', 'Consultando lista de alumnos pre-inscritos.'),
(1136, 3, 'Inscription', 'consulta', '2019-04-29 10:14:18', 'Consultando lista de alumnos pre-inscritos.'),
(1137, 3, 'Lection', 'consulta', '2019-04-29 10:14:37', 'Consultando datos de clase'),
(1138, 3, 'Inscription', 'consulta', '2019-04-29 10:14:38', 'Consultando lista de alumnos pre-inscritos.'),
(1139, 3, 'Lection', 'consulta', '2019-04-29 10:16:12', 'Consultando datos de clase'),
(1140, 3, 'Inscription', 'consulta', '2019-04-29 10:16:19', 'Consultando lista de alumnos pre-inscritos.'),
(1141, 3, 'Lection', 'consulta', '2019-04-29 10:16:49', 'Consultando datos de clase'),
(1142, 3, 'Inscription', 'consulta', '2019-04-29 10:16:53', 'Consultando lista de alumnos pre-inscritos.'),
(1143, 3, 'Qualification', 'registro', '2019-04-29 10:17:13', 'Agregando calificación a id=1.'),
(1144, 3, 'Inscription', 'consulta', '2019-04-29 10:17:14', 'Consultando lista de alumnos pre-inscritos.'),
(1145, 3, 'Lection', 'consulta', '2019-04-29 10:18:34', 'Consultando datos de clase'),
(1146, 3, 'Inscription', 'consulta', '2019-04-29 10:18:36', 'Consultando lista de alumnos pre-inscritos.'),
(1147, 3, 'Lection', 'consulta', '2019-04-29 10:18:54', 'Consultando datos de clase'),
(1148, 3, 'Inscription', 'consulta', '2019-04-29 10:18:54', 'Consultando lista de alumnos pre-inscritos.'),
(1149, 3, 'Lection', 'consulta', '2019-04-29 10:22:19', 'Consultando datos de clase'),
(1150, 3, 'Inscription', 'consulta', '2019-04-29 10:22:19', 'Consultando lista de alumnos pre-inscritos.'),
(1151, 3, 'Inscription', 'consulta', '2019-04-29 10:22:31', 'Consultando lista de alumnos pre-inscritos.'),
(1152, 3, 'Inscription', 'consulta', '2019-04-29 10:22:42', 'Consultando lista de alumnos pre-inscritos.'),
(1153, 3, 'Inscription', 'consulta', '2019-04-29 10:22:56', 'Consultando lista de alumnos pre-inscritos.'),
(1154, 3, 'Inscription', 'consulta', '2019-04-29 10:23:22', 'Consultando lista de alumnos pre-inscritos.'),
(1155, 3, 'Lection', 'consulta', '2019-04-29 10:23:55', 'Consultando datos de clase'),
(1156, 3, 'Inscription', 'consulta', '2019-04-29 10:23:58', 'Consultando lista de alumnos pre-inscritos.'),
(1157, 3, 'Qualification', 'registro', '2019-04-29 10:24:06', 'Agregando calificación a id=2.'),
(1158, 3, 'Inscription', 'consulta', '2019-04-29 10:24:07', 'Consultando lista de alumnos pre-inscritos.'),
(1159, 3, 'Lection', 'consulta', '2019-04-29 10:30:57', 'Consultando datos de clase'),
(1160, 3, 'Inscription', 'consulta', '2019-04-29 10:31:00', 'Consultando lista de alumnos pre-inscritos.'),
(1161, 3, 'Lection', 'consulta', '2019-04-29 10:35:40', 'Consultando datos de clase'),
(1162, 3, 'Inscription', 'consulta', '2019-04-29 10:35:40', 'Consultando lista de alumnos pre-inscritos.'),
(1163, 3, 'Lection', 'consulta', '2019-04-29 10:40:02', 'Consultando datos de clase'),
(1164, 3, 'Inscription', 'consulta', '2019-04-29 10:40:03', 'Consultando lista de alumnos pre-inscritos.'),
(1165, 3, 'Lection', 'consulta', '2019-04-29 10:41:47', 'Consultando datos de clase'),
(1166, 3, 'Inscription', 'consulta', '2019-04-29 10:41:59', 'Consultando lista de alumnos pre-inscritos.'),
(1167, 3, 'Lection', 'consulta', '2019-04-29 10:42:42', 'Consultando datos de clase'),
(1168, 3, 'Inscription', 'consulta', '2019-04-29 10:43:44', 'Consultando lista de alumnos pre-inscritos.'),
(1169, 3, 'Lection', 'consulta', '2019-04-29 10:45:22', 'Consultando datos de clase'),
(1170, 3, 'Inscription', 'consulta', '2019-04-29 10:45:26', 'Consultando lista de alumnos pre-inscritos.'),
(1171, 3, 'Lection', 'consulta', '2019-04-29 10:46:01', 'Consultando datos de clase'),
(1172, 3, 'Inscription', 'consulta', '2019-04-29 10:46:02', 'Consultando lista de alumnos pre-inscritos.'),
(1173, 3, 'Qualification', 'update', '2019-04-29 10:49:38', 'Cambiando calificación a id=1.'),
(1174, 3, 'Lection', 'consulta', '2019-04-29 10:49:56', 'Consultando datos de clase'),
(1175, 3, 'Inscription', 'consulta', '2019-04-29 10:49:57', 'Consultando lista de alumnos pre-inscritos.'),
(1176, 3, 'Lection', 'consulta', '2019-04-29 10:50:32', 'Consultando datos de clase'),
(1177, 3, 'Inscription', 'consulta', '2019-04-29 10:50:41', 'Consultando lista de alumnos pre-inscritos.'),
(1178, 3, 'Qualification', 'update', '2019-04-29 10:50:58', 'Cambiando calificación a id=2.'),
(1179, 3, 'Lection', 'consulta', '2019-04-29 10:51:36', 'Consultando datos de clase'),
(1180, 3, 'Inscription', 'consulta', '2019-04-29 10:51:37', 'Consultando lista de alumnos pre-inscritos.'),
(1181, 3, 'Qualification', 'update', '2019-04-29 10:51:41', 'Cambiando calificación a id=2.'),
(1182, 3, 'Inscription', 'consulta', '2019-04-29 10:51:42', 'Consultando lista de alumnos pre-inscritos.'),
(1183, 3, 'Lection', 'consulta', '2019-04-29 10:57:57', 'Consultando datos de clase'),
(1184, 3, 'Lection', 'consulta', '2019-04-29 10:58:53', 'Consultando datos de clase'),
(1185, 3, 'Inscription', 'consulta', '2019-04-29 10:58:55', 'Consultando lista de alumnos pre-inscritos.'),
(1186, 3, 'Qualification', 'update', '2019-04-29 10:59:07', 'Cambiando calificación a id=2.'),
(1187, 3, 'Inscription', 'consulta', '2019-04-29 10:59:07', 'Consultando lista de alumnos pre-inscritos.'),
(1188, 3, 'Lection', 'consulta', '2019-04-29 10:59:31', 'Consultando datos de clase'),
(1189, 3, 'Inscription', 'consulta', '2019-04-29 10:59:32', 'Consultando lista de alumnos pre-inscritos.'),
(1190, 3, 'Lection', 'consulta', '2019-04-29 11:02:47', 'Consultando datos de clase'),
(1191, 3, 'Inscription', 'consulta', '2019-04-29 11:02:48', 'Consultando lista de alumnos pre-inscritos.'),
(1192, 3, 'Lection', 'consulta', '2019-04-29 11:07:36', 'Consultando lista de clases.'),
(1193, 3, 'Lection', 'consulta', '2019-04-29 11:07:41', 'Consultando datos de clase'),
(1194, 3, 'Inscription', 'consulta', '2019-04-29 11:07:42', 'Consultando lista de alumnos pre-inscritos.'),
(1195, 2, 'Subject', 'consulta', '2019-04-29 11:20:58', 'Consultando lista de asignaturas.'),
(1196, 2, 'Lection', 'consulta', '2019-04-29 11:21:01', 'Consultando lista de clases.'),
(1197, 2, 'Lection', 'consulta', '2019-04-29 11:25:15', 'Consultando datos de clase'),
(1198, 2, 'Inscription', 'consulta', '2019-04-29 11:25:15', 'Consultando lista de alumnos pre-inscritos.'),
(1199, 2, 'Lection', 'consulta', '2019-04-29 11:25:20', 'Consultando lista de clases.'),
(1200, 2, 'Lection', 'consulta', '2019-04-29 11:25:22', 'Consultando datos de clase'),
(1201, 2, 'Inscription', 'consulta', '2019-04-29 11:25:23', 'Consultando lista de alumnos pre-inscritos.'),
(1202, 2, 'Lection', 'consulta', '2019-04-29 11:25:29', 'Consultando lista de clases.'),
(1203, 2, 'Subject', 'consulta', '2019-04-29 11:25:35', 'Consultando lista de asignaturas.'),
(1204, 2, 'Lection', 'consulta', '2019-04-29 11:25:39', 'Consultando lista de clases.'),
(1205, 2, 'Lection', 'consulta', '2019-04-29 11:25:43', 'Consultando datos de clase'),
(1206, 2, 'Inscription', 'consulta', '2019-04-29 11:25:43', 'Consultando lista de alumnos pre-inscritos.'),
(1207, 2, 'Lection', 'consulta', '2019-04-29 11:25:48', 'Consultando lista de clases.'),
(1208, 2, 'Lection', 'consulta', '2019-04-29 11:26:44', 'Consultando lista de clases.'),
(1209, 2, 'Lection', 'consulta', '2019-04-29 11:26:51', 'Consultando datos de clase'),
(1210, 2, 'DaysClass', 'consulta', '2019-04-29 11:26:51', 'Consultando lista de dias de clase.'),
(1211, 2, 'Lection', 'consulta', '2019-04-29 11:27:39', 'Consultando lista de clases.'),
(1212, 2, 'Lection', 'consulta', '2019-04-29 11:27:40', 'Consultando datos de clase'),
(1213, 2, 'DaysClass', 'consulta', '2019-04-29 11:27:40', 'Consultando lista de dias de clase.'),
(1214, 2, 'Lection', 'consulta', '2019-04-29 11:27:42', 'Consultando lista de clases.'),
(1215, 2, 'User', 'consulta', '2019-04-29 11:27:45', 'Consultando lista de facilitadores.'),
(1216, 2, 'User', 'consulta', '2019-04-29 11:27:47', 'Consultando lista de estudiantes.'),
(1217, 1, 'User', 'consulta', '2019-04-29 11:28:39', 'Consultando lista de usuarios.'),
(1218, 1, 'User', 'consulta', '2019-04-29 11:28:42', 'Consultando datos de usuario.'),
(1219, 1, 'User', 'consulta', '2019-04-29 11:28:47', 'Consultando lista de usuarios.'),
(1220, 1, 'NRequirementsStudent', 'consulta', '2019-04-29 15:42:36', 'Consultando lista de requerimientos de estudiante.'),
(1221, 1, 'User', 'consulta', '2019-04-29 15:42:39', 'Consultando lista de usuarios.'),
(1222, 1, 'User', 'consulta', '2019-04-29 23:36:21', 'Consultando lista de usuarios.'),
(1223, 1, 'User', 'consulta', '2019-04-29 23:36:23', 'Consultando datos de usuario.'),
(1224, 1, 'User', 'consulta', '2019-04-29 23:36:27', 'Consultando lista de usuarios.'),
(1225, 1, 'User', 'consulta', '2019-04-29 23:36:32', 'Consultando datos de usuario.'),
(1226, 1, 'Lection', 'consulta', '2019-04-29 23:36:32', 'Consultando asignaturas del estudiante id=6'),
(1227, 1, 'User', 'consulta', '2019-04-29 23:37:16', 'Consultando lista de usuarios.'),
(1228, 1, 'User', 'consulta', '2019-04-29 23:37:39', 'Consultando datos de usuario.'),
(1229, 1, 'Lection', 'consulta', '2019-04-29 23:37:39', 'Consultando asignaturas del estudiante id=6'),
(1230, 6, 'Lection', 'consulta', '2019-04-29 23:41:35', 'Consultando lista de clases.'),
(1231, 6, 'Lection', 'consulta', '2019-04-29 23:42:20', 'Consultando datos de clase'),
(1232, 6, 'Inscription', 'consulta', '2019-04-29 23:42:21', 'Consultando lista de alumnos pre-inscritos.'),
(1233, 6, 'Lection', 'consulta', '2019-04-29 23:42:27', 'Consultando lista de clases.'),
(1234, 6, 'Lection', 'consulta', '2019-04-29 23:45:39', 'Consultando lista de clases.'),
(1235, 6, 'Lection', 'consulta', '2019-04-29 23:55:25', 'Consultando lista de clases.'),
(1236, 6, 'Lection', 'consulta', '2019-04-29 23:56:43', 'Consultando lista de clases.'),
(1237, 6, 'Lection', 'consulta', '2019-04-29 23:57:43', 'Consultando lista de clases.'),
(1238, 6, 'Lection', 'consulta', '2019-04-30 15:02:16', 'Consultando lista de clases.'),
(1239, 6, 'Lection', 'consulta', '2019-04-30 15:02:29', 'Consultando lista de clases.'),
(1240, 6, 'Lection', 'consulta', '2019-04-30 15:03:47', 'Consultando lista de clases.'),
(1241, 6, 'Cohort', 'consulta', '2019-04-30 15:04:53', 'Consultando lista de clases.'),
(1242, 6, 'Cohort', 'consulta', '2019-04-30 15:05:02', 'Consultando datos del curso'),
(1243, 6, 'Subject', 'consulta', '2019-04-30 15:05:04', 'consulta de materias de la cohorte id=1'),
(1244, 6, 'Inscription', 'consulta', '2019-04-30 15:05:04', 'Consultando lista de alumnos pre-inscritos.'),
(1245, 6, 'Cohort', 'consulta', '2019-04-30 15:05:23', 'Consultando lista de clases.'),
(1246, 6, 'Cohort', 'consulta', '2019-04-30 15:19:33', 'Consultando lista de clases.'),
(1247, 6, 'Cohort', 'consulta', '2019-04-30 15:19:59', 'Consultando lista de clases.'),
(1248, 6, 'Cohort', 'consulta', '2019-04-30 15:21:04', 'Consultando lista de clases.'),
(1249, 6, 'Cohort', 'consulta', '2019-04-30 15:28:54', 'Consultando lista de clases.'),
(1250, 6, 'Cohort', 'consulta', '2019-04-30 15:30:26', 'Consultando lista de clases.'),
(1251, 6, 'Cohort', 'consulta', '2019-04-30 15:30:39', 'Consultando lista de clases.'),
(1252, 6, 'Cohort', 'consulta', '2019-04-30 15:30:59', 'Consultando lista de clases.'),
(1253, 6, 'Cohort', 'consulta', '2019-04-30 15:31:38', 'Consultando lista de clases.'),
(1254, 6, 'Cohort', 'consulta', '2019-04-30 15:34:47', 'Consultando lista de clases.'),
(1255, 6, 'Cohort', 'consulta', '2019-04-30 15:47:29', 'Consultando lista de cursos del estudiantes.'),
(1256, 6, 'Cohort', 'consulta', '2019-04-30 15:53:52', 'Consultando lista de cursos del estudiantes.'),
(1257, 6, 'Cohort', 'consulta', '2019-04-30 16:02:27', 'Consultando lista de cursos del estudiantes.'),
(1258, 6, 'Cohort', 'consulta', '2019-04-30 16:02:30', 'Consultando lista de cursos del estudiantes.'),
(1259, 6, 'Cohort', 'consulta', '2019-04-30 16:03:19', 'Consultando lista de cursos del estudiantes.'),
(1260, 6, 'Cohort', 'consulta', '2019-04-30 16:03:38', 'Consultando lista de cursos del estudiantes.'),
(1261, 6, 'Cohort', 'consulta', '2019-04-30 16:03:47', 'Consultando lista de cursos del estudiantes.'),
(1262, 6, 'Cohort', 'consulta', '2019-04-30 16:05:15', 'Consultando lista de cursos del estudiantes.'),
(1263, 6, 'Cohort', 'consulta', '2019-04-30 16:05:56', 'Consultando lista de cursos del estudiantes.'),
(1264, 6, 'Cohort', 'consulta', '2019-04-30 16:06:31', 'Consultando lista de cursos del estudiantes.'),
(1265, 6, 'Cohort', 'consulta', '2019-04-30 16:06:41', 'Consultando lista de cursos del estudiantes.'),
(1266, 6, 'Cohort', 'consulta', '2019-04-30 16:06:56', 'Consultando lista de cursos del estudiantes.'),
(1267, 6, 'Cohort', 'consulta', '2019-04-30 16:07:14', 'Consultando lista de cursos del estudiantes.'),
(1268, 6, 'Cohort', 'consulta', '2019-04-30 16:08:58', 'Consultando lista de cursos del estudiantes.'),
(1269, 6, 'Cohort', 'consulta', '2019-04-30 16:10:16', 'Consultando lista de cursos del estudiantes.'),
(1270, 6, 'Cohort', 'consulta', '2019-04-30 16:10:43', 'Consultando lista de cursos del estudiantes.'),
(1271, 6, 'Cohort', 'consulta', '2019-04-30 16:10:59', 'Consultando lista de cursos del estudiantes.'),
(1272, 6, 'Cohort', 'consulta', '2019-04-30 16:12:25', 'Consultando lista de cursos del estudiantes.'),
(1273, 6, 'Cohort', 'consulta', '2019-04-30 16:24:23', 'Consultando lista de cursos del estudiantes.'),
(1274, 6, 'Cohort', 'consulta', '2019-04-30 16:25:00', 'Consultando lista de cursos del estudiantes.'),
(1275, 6, 'Cohort', 'consulta', '2019-04-30 16:25:19', 'Consultando lista de cursos del estudiantes.'),
(1276, 6, 'Cohort', 'consulta', '2019-04-30 16:25:27', 'Consultando datos del curso'),
(1277, 6, 'Inscription', 'consulta', '2019-04-30 16:25:27', 'Consultando lista de alumnos pre-inscritos.'),
(1278, 6, 'Subject', 'consulta', '2019-04-30 16:25:27', 'consulta de materias de la cohorte id=1'),
(1279, 6, 'Cohort', 'consulta', '2019-04-30 16:25:30', 'Consultando lista de clases.'),
(1280, 6, 'Cohort', 'consulta', '2019-04-30 16:25:36', 'Consultando lista de clases.'),
(1281, 6, 'Cohort', 'consulta', '2019-04-30 16:25:57', 'Consultando lista de cursos del estudiantes.'),
(1282, 6, 'Cohort', 'consulta', '2019-04-30 16:26:00', 'Consultando datos del curso'),
(1283, 6, 'Inscription', 'consulta', '2019-04-30 16:26:00', 'Consultando lista de alumnos pre-inscritos.'),
(1284, 6, 'Subject', 'consulta', '2019-04-30 16:26:00', 'consulta de materias de la cohorte id=1'),
(1285, 6, 'Cohort', 'consulta', '2019-04-30 16:26:02', 'Consultando lista de cursos del estudiantes.'),
(1286, 6, 'Cohort', 'consulta', '2019-04-30 16:26:30', 'Consultando lista de cursos del estudiantes.'),
(1287, 6, 'Cohort', 'consulta', '2019-04-30 17:03:25', 'Consultando datos del curso'),
(1288, 6, 'Inscription', 'consulta', '2019-04-30 17:14:58', 'Consultando datos del curso como estudiante'),
(1289, 6, 'Inscription', 'consulta', '2019-04-30 17:20:05', 'Consultando datos del curso como estudiante'),
(1290, 6, 'Inscription', 'consulta', '2019-04-30 17:30:25', 'Consultando datos del curso como estudiante'),
(1291, 6, 'Inscription', 'consulta', '2019-04-30 17:31:06', 'Consultando datos del curso como estudiante'),
(1292, 6, 'Inscription', 'consulta', '2019-04-30 17:33:00', 'Consultando datos del curso como estudiante'),
(1293, 6, 'Inscription', 'consulta', '2019-04-30 17:33:49', 'Consultando datos del curso como estudiante'),
(1294, 6, 'Inscription', 'consulta', '2019-04-30 17:34:21', 'Consultando datos del curso como estudiante'),
(1295, 6, 'Inscription', 'consulta', '2019-04-30 17:35:10', 'Consultando datos del curso como estudiante'),
(1296, 6, 'Inscription', 'consulta', '2019-04-30 17:35:48', 'Consultando datos del curso como estudiante'),
(1297, 6, 'Inscription', 'consulta', '2019-04-30 17:36:45', 'Consultando datos del curso como estudiante'),
(1298, 6, 'Inscription', 'consulta', '2019-04-30 17:40:17', 'Consultando datos del curso como estudiante'),
(1299, 6, 'Inscription', 'consulta', '2019-04-30 17:40:42', 'Consultando datos del curso como estudiante'),
(1300, 6, 'Inscription', 'consulta', '2019-04-30 17:40:51', 'Consultando datos del curso como estudiante'),
(1301, 6, 'Inscription', 'consulta', '2019-04-30 17:42:12', 'Consultando datos del curso como estudiante'),
(1302, 6, 'Inscription', 'consulta', '2019-04-30 17:50:11', 'Consultando datos del curso como estudiante'),
(1303, 6, 'Inscription', 'consulta', '2019-04-30 17:50:20', 'Consultando datos del curso como estudiante'),
(1304, 6, 'Inscription', 'consulta', '2019-04-30 17:50:46', 'Consultando datos del curso como estudiante'),
(1305, 6, 'Inscription', 'consulta', '2019-04-30 17:51:08', 'Consultando datos del curso como estudiante'),
(1306, 6, 'Inscription', 'consulta', '2019-04-30 17:51:38', 'Consultando datos del curso como estudiante'),
(1307, 6, 'Inscription', 'consulta', '2019-04-30 17:51:55', 'Consultando datos del curso como estudiante'),
(1308, 6, 'Inscription', 'consulta', '2019-04-30 17:52:13', 'Consultando datos del curso como estudiante'),
(1309, 6, 'Inscription', 'consulta', '2019-04-30 17:52:33', 'Consultando datos del curso como estudiante'),
(1310, 6, 'Inscription', 'consulta', '2019-04-30 17:54:49', 'Consultando datos del curso como estudiante'),
(1311, 6, 'Inscription', 'consulta', '2019-04-30 17:54:57', 'Consultando datos del curso como estudiante'),
(1312, 6, 'Inscription', 'consulta', '2019-04-30 17:56:34', 'Consultando datos del curso como estudiante'),
(1313, 6, 'Inscription', 'consulta', '2019-04-30 17:56:59', 'Consultando datos del curso como estudiante'),
(1314, 6, 'Inscription', 'consulta', '2019-04-30 17:57:11', 'Consultando datos del curso como estudiante'),
(1315, 6, 'Inscription', 'consulta', '2019-04-30 17:57:32', 'Consultando datos del curso como estudiante'),
(1316, 6, 'Inscription', 'consulta', '2019-04-30 17:57:53', 'Consultando datos del curso como estudiante'),
(1317, 6, 'Inscription', 'consulta', '2019-04-30 17:58:01', 'Consultando datos del curso como estudiante'),
(1318, 6, 'Inscription', 'consulta', '2019-04-30 18:11:06', 'Consultando datos del curso como estudiante'),
(1319, 6, 'Inscription', 'consulta', '2019-04-30 18:11:50', 'Consultando datos del curso como estudiante'),
(1320, 6, 'Inscription', 'consulta', '2019-04-30 18:12:13', 'Consultando datos del curso como estudiante'),
(1321, 6, 'Inscription', 'consulta', '2019-04-30 18:14:41', 'Consultando datos del curso como estudiante'),
(1322, 6, 'Inscription', 'consulta', '2019-04-30 18:15:36', 'Consultando datos del curso como estudiante'),
(1323, 6, 'Inscription', 'consulta', '2019-04-30 18:18:07', 'Consultando datos del curso como estudiante'),
(1324, 6, 'Inscription', 'consulta', '2019-04-30 18:19:03', 'Consultando datos del curso como estudiante'),
(1325, 6, 'Inscription', 'consulta', '2019-04-30 18:30:20', 'Consultando datos del curso como estudiante'),
(1326, 6, 'Inscription', 'consulta', '2019-04-30 18:30:39', 'Consultando datos del curso como estudiante'),
(1327, 6, 'Inscription', 'consulta', '2019-04-30 22:09:59', 'Consultando datos del curso como estudiante'),
(1328, 6, 'Inscription', 'consulta', '2019-04-30 22:12:03', 'Consultando datos del curso como estudiante'),
(1329, 6, 'Inscription', 'consulta', '2019-04-30 22:17:09', 'Consultando datos del curso como estudiante'),
(1330, 6, 'Inscription', 'consulta', '2019-04-30 22:17:00', 'Consultando datos del curso como estudiante'),
(1331, 6, 'Inscription', 'consulta', '2019-04-30 22:18:17', 'Consultando datos del curso como estudiante'),
(1332, 6, 'Inscription', 'consulta', '2019-04-30 22:18:33', 'Consultando datos del curso como estudiante'),
(1333, 6, 'Inscription', 'consulta', '2019-04-30 22:19:17', 'Consultando datos del curso como estudiante'),
(1334, 6, 'Inscription', 'consulta', '2019-04-30 22:19:40', 'Consultando datos del curso como estudiante'),
(1335, 6, 'Inscription', 'consulta', '2019-04-30 22:20:14', 'Consultando datos del curso como estudiante'),
(1336, 6, 'Inscription', 'consulta', '2019-04-30 22:22:35', 'Consultando datos del curso como estudiante'),
(1337, 6, 'Inscription', 'consulta', '2019-04-30 22:23:31', 'Consultando datos del curso como estudiante'),
(1338, 6, 'Inscription', 'consulta', '2019-04-30 22:30:59', 'Consultando datos del curso como estudiante'),
(1339, 1, 'Lection', 'consulta', '2019-04-30 22:32:18', 'Consultando lista de clases.'),
(1340, 1, 'Lection', 'consulta', '2019-04-30 22:32:20', 'Consultando datos de clase'),
(1341, 1, 'DaysClass', 'consulta', '2019-04-30 22:32:23', 'Consultando lista de dias de clase.'),
(1342, 1, 'Cohort', 'consulta', '2019-04-30 22:32:24', 'Consultando lista de clases.'),
(1343, 1, 'Lection', 'consulta', '2019-04-30 22:32:25', 'Consultando datos de clase'),
(1344, 1, 'Cohort', 'consulta', '2019-04-30 22:32:25', 'Consultando datos del curso'),
(1345, 1, 'DaysClass', 'consulta', '2019-04-30 22:32:26', 'Consultando lista de dias de clase.'),
(1346, 1, 'Subject', 'consulta', '2019-04-30 22:32:27', 'consulta de materias de la cohorte id=1'),
(1347, 1, 'Inscription', 'consulta', '2019-04-30 22:32:27', 'Consultando lista de alumnos pre-inscritos.'),
(1348, 1, 'Cohort', 'consulta', '2019-04-30 22:32:36', 'Consultando lista de clases.'),
(1349, 1, 'Cohort', 'consulta', '2019-04-30 22:32:39', 'Consultando datos del curso'),
(1350, 1, 'Inscription', 'consulta', '2019-04-30 22:32:40', 'Consultando lista de alumnos pre-inscritos.'),
(1351, 1, 'Subject', 'consulta', '2019-04-30 22:32:40', 'consulta de materias de la cohorte id=2'),
(1352, 1, 'Cohort', 'consulta', '2019-04-30 22:32:45', 'Consultando lista de clases.'),
(1353, 1, 'Cohort', 'consulta', '2019-04-30 22:33:53', 'Consultando datos del curso'),
(1354, 1, 'Lection', 'consulta', '2019-04-30 22:33:53', 'Consultando datos de clase'),
(1355, 1, 'Subject', 'consulta', '2019-04-30 22:33:53', 'consulta de materias de la cohorte id=1'),
(1356, 1, 'Inscription', 'consulta', '2019-04-30 22:33:53', 'Consultando lista de alumnos pre-inscritos.'),
(1357, 1, 'DaysClass', 'consulta', '2019-04-30 22:33:53', 'Consultando lista de dias de clase.'),
(1358, 6, 'Cohort', 'consulta', '2019-04-30 22:35:44', 'Consultando lista de cursos del estudiantes.'),
(1359, 6, 'Inscription', 'consulta', '2019-04-30 22:35:46', 'Consultando datos del curso como estudiante'),
(1360, 6, 'Inscription', 'consulta', '2019-04-30 22:38:25', 'Consultando datos del curso como estudiante'),
(1361, 6, 'Inscription', 'consulta', '2019-04-30 22:42:05', 'Consultando datos del curso como estudiante'),
(1362, 6, 'Inscription', 'consulta', '2019-04-30 22:46:56', 'Consultando datos del curso como estudiante'),
(1363, 6, 'Inscription', 'consulta', '2019-04-30 22:48:01', 'Consultando datos del curso como estudiante'),
(1364, 6, 'Inscription', 'consulta', '2019-04-30 22:48:16', 'Consultando datos del curso como estudiante'),
(1365, 6, 'Inscription', 'consulta', '2019-04-30 22:50:18', 'Consultando datos del curso como estudiante'),
(1366, 6, 'Inscription', 'consulta', '2019-04-30 22:50:43', 'Consultando datos del curso como estudiante'),
(1367, 6, 'Inscription', 'consulta', '2019-04-30 22:52:11', 'Consultando datos del curso como estudiante'),
(1368, 6, 'Inscription', 'consulta', '2019-04-30 23:24:47', 'Consultando datos del curso como estudiante'),
(1369, 6, 'Inscription', 'consulta', '2019-04-30 23:37:26', 'Consultando datos del curso como estudiante'),
(1370, 6, 'Inscription', 'consulta', '2019-05-01 01:56:51', 'Consultando datos del curso como estudiante'),
(1371, 6, 'Inscription', 'consulta', '2019-05-01 02:01:52', 'Consultando datos del curso como estudiante'),
(1372, 6, 'Inscription', 'consulta', '2019-05-01 02:02:28', 'Consultando datos del curso como estudiante'),
(1373, 6, 'Inscription', 'consulta', '2019-05-01 02:04:22', 'Consultando datos del curso como estudiante'),
(1374, 6, 'Inscription', 'consulta', '2019-05-01 11:35:52', 'Consultando datos del curso como estudiante'),
(1375, 6, 'Inscription', 'consulta', '2019-05-01 11:43:35', 'Consultando datos del curso como estudiante'),
(1376, 6, 'Inscription', 'consulta', '2019-05-01 11:54:34', 'Consultando datos del curso como estudiante'),
(1377, 6, 'Inscription', 'consulta', '2019-05-01 11:56:40', 'Consultando datos del curso como estudiante'),
(1378, 6, 'Inscription', 'consulta', '2019-05-01 11:57:54', 'Consultando datos del curso como estudiante'),
(1379, 6, 'Inscription', 'consulta', '2019-05-01 11:58:15', 'Consultando datos del curso como estudiante'),
(1380, 6, 'Inscription', 'consulta', '2019-05-01 12:00:48', 'Consultando datos del curso como estudiante'),
(1381, 6, 'Inscription', 'consulta', '2019-05-01 12:01:31', 'Consultando datos del curso como estudiante'),
(1382, 6, 'Inscription', 'consulta', '2019-05-01 12:01:50', 'Consultando datos del curso como estudiante'),
(1383, 6, 'Cohort', 'consulta', '2019-05-01 12:02:11', 'Consultando lista de cursos del estudiantes.'),
(1384, 6, 'Cohort', 'consulta', '2019-05-01 12:02:29', 'Consultando lista de cursos del estudiantes.'),
(1385, 6, 'Inscription', 'consulta', '2019-05-01 12:02:38', 'Consultando datos del curso como estudiante'),
(1386, 6, 'Inscription', 'consulta', '2019-05-01 12:04:27', 'Consultando datos del curso como estudiante'),
(1387, 6, 'Inscription', 'consulta', '2019-05-01 12:07:07', 'Consultando datos del curso como estudiante'),
(1388, 6, 'Inscription', 'consulta', '2019-05-01 12:07:55', 'Consultando datos del curso como estudiante'),
(1389, 6, 'Inscription', 'consulta', '2019-05-01 12:08:17', 'Consultando datos del curso como estudiante'),
(1390, 6, 'Inscription', 'consulta', '2019-05-01 12:11:55', 'Consultando datos del curso como estudiante'),
(1391, 6, 'Cohort', 'consulta', '2019-05-01 12:12:19', 'Consultando lista de cursos del estudiantes.'),
(1392, 6, 'Inscription', 'consulta', '2019-05-01 12:12:27', 'Consultando datos del curso como estudiante'),
(1393, 6, 'Inscription', 'consulta', '2019-05-01 12:16:19', 'Consultando datos del curso como estudiante'),
(1394, 6, 'Inscription', 'consulta', '2019-05-01 12:17:23', 'Consultando datos del curso como estudiante'),
(1395, 6, 'Inscription', 'consulta', '2019-05-01 12:17:41', 'Consultando datos del curso como estudiante'),
(1396, 6, 'Inscription', 'consulta', '2019-05-01 12:19:49', 'Consultando datos del curso como estudiante'),
(1397, 6, 'Inscription', 'consulta', '2019-05-01 12:20:22', 'Consultando datos del curso como estudiante'),
(1398, 6, 'Inscription', 'consulta', '2019-05-01 12:24:32', 'Consultando datos del curso como estudiante'),
(1399, 6, 'Inscription', 'consulta', '2019-05-01 12:25:24', 'Consultando datos del curso como estudiante'),
(1400, 6, 'Inscription', 'consulta', '2019-05-01 12:25:40', 'Consultando datos del curso como estudiante'),
(1401, 6, 'Inscription', 'consulta', '2019-05-01 12:27:05', 'Consultando datos del curso como estudiante'),
(1402, 6, 'Inscription', 'consulta', '2019-05-01 12:27:37', 'Consultando datos del curso como estudiante'),
(1403, 6, 'Inscription', 'consulta', '2019-05-01 12:29:53', 'Consultando datos del curso como estudiante'),
(1404, 6, 'Inscription', 'consulta', '2019-05-01 12:30:15', 'Consultando datos del curso como estudiante'),
(1405, 6, 'Inscription', 'consulta', '2019-05-01 12:37:09', 'Consultando datos del curso como estudiante'),
(1406, 6, 'Inscription', 'consulta', '2019-05-01 12:37:56', 'Consultando datos del curso como estudiante'),
(1407, 6, 'Inscription', 'consulta', '2019-05-01 12:47:10', 'Consultando datos del curso como estudiante'),
(1408, 6, 'Inscription', 'consulta', '2019-05-01 12:49:19', 'Consultando datos del curso como estudiante'),
(1409, 6, 'Inscription', 'consulta', '2019-05-01 12:56:16', 'Consultando datos del curso como estudiante'),
(1410, 6, 'Inscription', 'consulta', '2019-05-01 12:56:30', 'Consultando datos del curso como estudiante'),
(1411, 6, 'Inscription', 'consulta', '2019-05-01 12:57:33', 'Consultando datos del curso como estudiante'),
(1412, 6, 'Inscription', 'consulta', '2019-05-01 12:58:33', 'Consultando datos del curso como estudiante'),
(1413, 6, 'Inscription', 'consulta', '2019-05-01 12:58:45', 'Consultando datos del curso como estudiante'),
(1414, 6, 'Inscription', 'consulta', '2019-05-01 13:08:12', 'Consultando datos del curso como estudiante'),
(1415, 6, 'Inscription', 'consulta', '2019-05-01 13:11:12', 'Consultando datos del curso como estudiante'),
(1416, 6, 'Inscription', 'consulta', '2019-05-01 13:11:25', 'Consultando datos del curso como estudiante'),
(1417, 6, 'Inscription', 'consulta', '2019-05-01 13:12:28', 'Consultando datos del curso como estudiante'),
(1418, 6, 'Inscription', 'consulta', '2019-05-01 13:15:29', 'Consultando datos del curso como estudiante'),
(1419, 6, 'Inscription', 'consulta', '2019-05-01 13:15:38', 'Consultando datos del curso como estudiante'),
(1420, 6, 'Inscription', 'consulta', '2019-05-01 13:16:24', 'Consultando datos del curso como estudiante'),
(1421, 6, 'Inscription', 'consulta', '2019-05-01 13:18:58', 'Consultando datos del curso como estudiante'),
(1422, 6, 'Inscription', 'consulta', '2019-05-01 13:19:51', 'Consultando datos del curso como estudiante'),
(1423, 6, 'Inscription', 'consulta', '2019-05-01 13:20:03', 'Consultando datos del curso como estudiante'),
(1424, 6, 'Inscription', 'consulta', '2019-05-01 13:23:37', 'Consultando datos del curso como estudiante'),
(1425, 6, 'Inscription', 'consulta', '2019-05-01 13:23:48', 'Consultando datos del curso como estudiante'),
(1426, 6, 'Inscription', 'consulta', '2019-05-01 13:25:00', 'Consultando datos del curso como estudiante'),
(1427, 6, 'Inscription', 'consulta', '2019-05-01 13:25:51', 'Consultando datos del curso como estudiante'),
(1428, 6, 'Inscription', 'consulta', '2019-05-01 13:25:59', 'Consultando datos del curso como estudiante'),
(1429, 6, 'Inscription', 'consulta', '2019-05-01 13:27:00', 'Consultando datos del curso como estudiante'),
(1430, 6, 'Inscription', 'consulta', '2019-05-01 13:27:18', 'Consultando datos del curso como estudiante'),
(1431, 6, 'Inscription', 'consulta', '2019-05-01 13:28:01', 'Consultando datos del curso como estudiante'),
(1432, 6, 'Inscription', 'consulta', '2019-05-01 13:28:17', 'Consultando datos del curso como estudiante'),
(1433, 6, 'Inscription', 'consulta', '2019-05-01 13:28:29', 'Consultando datos del curso como estudiante'),
(1434, 6, 'Inscription', 'consulta', '2019-05-01 13:30:34', 'Consultando datos del curso como estudiante'),
(1435, 6, 'Inscription', 'consulta', '2019-05-01 13:41:02', 'Consultando datos del curso como estudiante'),
(1436, 6, 'Inscription', 'consulta', '2019-05-01 13:48:25', 'Consultando datos del curso como estudiante'),
(1437, 6, 'Inscription', 'consulta', '2019-05-01 13:49:24', 'Consultando datos del curso como estudiante'),
(1438, 6, 'Inscription', 'consulta', '2019-05-01 13:54:28', 'Consultando datos del curso como estudiante'),
(1439, 6, 'Inscription', 'consulta', '2019-05-01 13:55:37', 'Consultando datos del curso como estudiante'),
(1440, 6, 'Inscription', 'consulta', '2019-05-01 13:56:06', 'Consultando datos del curso como estudiante'),
(1441, 6, 'Inscription', 'consulta', '2019-05-01 13:57:31', 'Consultando datos del curso como estudiante'),
(1442, 6, 'Inscription', 'consulta', '2019-05-01 13:58:34', 'Consultando datos del curso como estudiante'),
(1443, 6, 'Inscription', 'consulta', '2019-05-01 13:59:02', 'Consultando datos del curso como estudiante'),
(1444, 6, 'Inscription', 'consulta', '2019-05-01 14:03:19', 'Consultando datos del curso como estudiante'),
(1445, 6, 'Inscription', 'consulta', '2019-05-01 14:13:50', 'Consultando datos del curso como estudiante'),
(1446, 6, 'Inscription', 'consulta', '2019-05-01 14:14:08', 'Consultando datos del curso como estudiante'),
(1447, 6, 'Inscription', 'consulta', '2019-05-01 14:14:55', 'Consultando datos del curso como estudiante'),
(1448, 6, 'Inscription', 'consulta', '2019-05-01 14:16:29', 'Consultando datos del curso como estudiante'),
(1449, 6, 'Inscription', 'consulta', '2019-05-01 14:16:57', 'Consultando datos del curso como estudiante'),
(1450, 6, 'Inscription', 'consulta', '2019-05-01 14:17:07', 'Consultando datos del curso como estudiante'),
(1451, 6, 'Inscription', 'consulta', '2019-05-01 14:18:20', 'Consultando datos del curso como estudiante'),
(1452, 6, 'Inscription', 'consulta', '2019-05-01 14:18:44', 'Consultando datos del curso como estudiante'),
(1453, 6, 'Inscription', 'consulta', '2019-05-01 14:19:26', 'Consultando datos del curso como estudiante'),
(1454, 6, 'Inscription', 'consulta', '2019-05-01 14:21:06', 'Consultando datos del curso como estudiante'),
(1455, 6, 'Inscription', 'consulta', '2019-05-01 14:22:08', 'Consultando datos del curso como estudiante'),
(1456, 6, 'Inscription', 'consulta', '2019-05-01 14:23:47', 'Consultando datos del curso como estudiante'),
(1457, 6, 'Inscription', 'consulta', '2019-05-01 14:24:14', 'Consultando datos del curso como estudiante'),
(1458, 6, 'Inscription', 'consulta', '2019-05-01 14:26:16', 'Consultando datos del curso como estudiante'),
(1459, 6, 'Inscription', 'consulta', '2019-05-01 14:26:26', 'Consultando datos del curso como estudiante'),
(1460, 6, 'Inscription', 'consulta', '2019-05-01 14:27:26', 'Consultando datos del curso como estudiante'),
(1461, 6, 'Inscription', 'consulta', '2019-05-01 14:33:30', 'Consultando datos del curso como estudiante'),
(1462, 6, 'Inscription', 'consulta', '2019-05-01 14:33:44', 'Consultando datos del curso como estudiante'),
(1463, 6, 'Inscription', 'consulta', '2019-05-01 14:34:06', 'Consultando datos del curso como estudiante'),
(1464, 1, 'User', 'consulta', '2019-05-01 14:39:42', 'Consultando lista de usuarios.'),
(1465, 1, 'User', 'consulta', '2019-05-01 14:39:49', 'Consultando lista de usuarios.'),
(1466, 1, 'User', 'consulta', '2019-05-01 14:39:50', 'Consultando datos de usuario.'),
(1467, 1, 'User', 'consulta', '2019-05-01 14:39:54', 'Consultando lista de usuarios.'),
(1468, 1, 'User', 'consulta', '2019-05-01 14:39:55', 'Consultando datos de usuario.'),
(1469, 1, 'Lection', 'consulta', '2019-05-01 14:39:55', 'Consultando asignaturas del estudiante id=6'),
(1470, 1, 'User', 'consulta', '2019-05-01 14:39:59', 'Consultando lista de usuarios.'),
(1471, 1, 'User', 'consulta', '2019-05-01 14:40:01', 'Consultando datos de usuario.'),
(1472, 1, 'Lection', 'consulta', '2019-05-01 14:40:01', 'Consultando asignaturas del estudiante id=7'),
(1473, 1, 'User', 'consulta', '2019-05-01 14:40:04', 'Consultando lista de usuarios.'),
(1474, 1, 'User', 'consulta', '2019-05-01 14:40:06', 'Consultando datos de usuario.'),
(1475, 1, 'Lection', 'consulta', '2019-05-01 14:40:06', 'Consultando asignaturas del estudiante id=6'),
(1476, 1, 'User', 'consulta', '2019-05-01 14:40:18', 'Consultando datos de usuario.'),
(1477, 1, 'Lection', 'consulta', '2019-05-01 14:40:18', 'Consultando asignaturas del estudiante id=6'),
(1478, 1, 'User', 'consulta', '2019-05-01 15:59:45', 'Consultando datos de usuario.'),
(1479, 1, 'Lection', 'consulta', '2019-05-01 15:59:46', 'Consultando asignaturas del estudiante id=6'),
(1480, 1, 'User', 'consulta', '2019-05-01 16:02:58', 'Consultando datos de usuario.'),
(1481, 1, 'Lection', 'consulta', '2019-05-01 16:03:05', 'Consultando inscripciones del estudiante id=6'),
(1482, 1, 'User', 'consulta', '2019-05-01 16:04:17', 'Consultando datos de usuario.'),
(1483, 1, 'Lection', 'consulta', '2019-05-01 16:04:17', 'Consultando inscripciones del estudiante id=6'),
(1484, 1, 'User', 'consulta', '2019-05-01 16:05:08', 'Consultando datos de usuario.'),
(1485, 1, 'User', 'consulta', '2019-05-01 16:06:11', 'Consultando datos de usuario.'),
(1486, 1, 'User', 'consulta', '2019-05-01 16:07:23', 'Consultando datos de usuario.'),
(1487, 1, 'User', 'consulta', '2019-05-01 16:07:44', 'Consultando datos de usuario.'),
(1488, 1, 'User', 'consulta', '2019-05-01 16:08:51', 'Consultando datos de usuario.'),
(1489, 1, 'User', 'consulta', '2019-05-01 16:09:55', 'Consultando datos de usuario.'),
(1490, 1, 'Lection', 'consulta', '2019-05-01 16:09:55', 'Consultando inscripciones del estudiante id=6'),
(1491, 1, 'User', 'consulta', '2019-05-01 16:10:08', 'Consultando lista de usuarios.'),
(1492, 1, 'User', 'consulta', '2019-05-01 16:10:11', 'Consultando datos de usuario.'),
(1493, 1, 'User', 'consulta', '2019-05-01 16:10:12', 'Consultando lista de usuarios.'),
(1494, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 16:10:18', 'Consultando lista de requerimientos de estudiante.'),
(1495, 1, 'NRequirementsStudent', 'registro', '2019-05-01 16:10:34', 'Registrando requerimiento de estudiante.'),
(1496, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 16:10:37', 'Consultando lista de requerimientos de estudiante.'),
(1497, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 16:10:39', 'Consultando lista de requisitos de estudiante'),
(1498, 1, 'NRequirementsStudent', 'actualización', '2019-05-01 16:10:41', 'Modificando datos de requisito de estudiante.'),
(1499, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 16:10:44', 'Consultando lista de requerimientos de estudiante.'),
(1500, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 16:10:47', 'Consultando lista de requisitos de estudiante'),
(1501, 1, 'NRequirementsStudent', 'elimino', '2019-05-01 16:10:49', 'Se elimino requisito de estudiante.'),
(1502, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 16:10:55', 'Consultando lista de requerimientos de estudiante.'),
(1503, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 16:11:13', 'Consultando lista de requisitos de estudiante'),
(1504, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:17:53', 'Consultando lista de requerimientos de estudiante.'),
(1505, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:17:56', 'Consultando lista de requisitos de estudiante'),
(1506, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:23:58', 'Consultando lista de requisitos de estudiante'),
(1507, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:26:05', 'Consultando lista de requisitos de estudiante'),
(1508, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:26:46', 'Consultando lista de requisitos de estudiante'),
(1509, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:28:50', 'Consultando lista de requisitos de estudiante'),
(1510, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:29:24', 'Consultando lista de requisitos de estudiante'),
(1511, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:32:08', 'Consultando lista de requisitos de estudiante'),
(1512, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:32:25', 'Consultando lista de requisitos de estudiante'),
(1513, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:32:44', 'Consultando lista de requisitos de estudiante'),
(1514, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:33:11', 'Consultando lista de requisitos de estudiante'),
(1515, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:33:41', 'Consultando lista de requisitos de estudiante'),
(1516, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:34:52', 'Consultando lista de requisitos de estudiante'),
(1517, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:35:13', 'Consultando lista de requerimientos de estudiante.'),
(1518, 1, 'NRequirementsStudent', 'registro', '2019-05-01 17:35:20', 'Registrando requerimiento de estudiante.'),
(1519, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:35:27', 'Consultando lista de requerimientos de estudiante.'),
(1520, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:35:29', 'Consultando lista de requisitos de estudiante'),
(1521, 1, 'NRequirementsStudent', 'elimino', '2019-05-01 17:35:33', 'Se elimino requisito de estudiante.'),
(1522, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:35:34', 'Consultando lista de requerimientos de estudiante.'),
(1523, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:36:33', 'Consultando lista de requerimientos de estudiante.'),
(1524, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:37:06', 'Consultando lista de requerimientos de estudiante.'),
(1525, 1, 'NRequirementsStudent', 'registro', '2019-05-01 17:37:45', 'Registrando requerimiento de estudiante.'),
(1526, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:37:47', 'Consultando lista de requerimientos de estudiante.'),
(1527, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:37:50', 'Consultando lista de requisitos de estudiante'),
(1528, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:39:15', 'Consultando lista de requisitos de estudiante'),
(1529, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:49:34', 'Consultando lista de requisitos de estudiante'),
(1530, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:50:18', 'Consultando lista de requisitos de estudiante'),
(1531, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:51:00', 'Consultando lista de requisitos de estudiante'),
(1532, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:52:22', 'Consultando lista de requisitos de estudiante'),
(1533, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:52:43', 'Consultando lista de requisitos de estudiante'),
(1534, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:58:47', 'Consultando lista de requisitos de estudiante'),
(1535, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:59:16', 'Consultando lista de requisitos de estudiante'),
(1536, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 17:59:35', 'Consultando lista de requisitos de estudiante'),
(1537, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 18:00:34', 'Consultando lista de requisitos de estudiante'),
(1538, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 18:00:53', 'Consultando lista de requisitos de estudiante'),
(1539, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 18:01:27', 'Consultando lista de requisitos de estudiante'),
(1540, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 18:01:36', 'Consultando lista de requisitos de estudiante'),
(1541, 1, 'NRequirementsStudent', 'elimino', '2019-05-01 18:01:42', 'Se elimino requisito de estudiante.'),
(1542, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 18:03:12', 'Consultando lista de requerimientos de estudiante.'),
(1543, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 18:03:15', 'Consultando lista de requisitos de estudiante'),
(1544, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 18:03:22', 'Consultando lista de requisitos de estudiante'),
(1545, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 18:03:25', 'Consultando lista de requerimientos de estudiante.'),
(1546, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 18:04:07', 'Consultando lista de requerimientos de estudiante.'),
(1547, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 18:04:22', 'Consultando lista de requerimientos de estudiante.'),
(1548, 1, 'NRequirementsStudent', 'registro', '2019-05-01 18:04:27', 'Registrando requerimiento de estudiante.'),
(1549, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 18:04:29', 'Consultando lista de requerimientos de estudiante.'),
(1550, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 18:04:31', 'Consultando lista de requisitos de estudiante'),
(1551, 1, 'NRequirementsStudent', 'actualización', '2019-05-01 18:04:34', 'Modificando datos de requisito de estudiante.'),
(1552, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 18:04:36', 'Consultando lista de requerimientos de estudiante.'),
(1553, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 18:04:38', 'Consultando lista de requisitos de estudiante'),
(1554, 1, 'NRequirementsStudent', 'elimino', '2019-05-01 18:04:43', 'Se elimino requisito de estudiante.'),
(1555, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 18:04:43', 'Consultando lista de requerimientos de estudiante.'),
(1556, 1, 'NDays', 'consulta', '2019-05-01 18:05:30', 'Consultando lista de dias.'),
(1557, 1, 'NDays', 'registro', '2019-05-01 18:05:54', 'Registrando día en el modulo configuración.'),
(1558, 1, 'NDays', 'consulta', '2019-05-01 18:06:01', 'Consultando lista de dias.'),
(1559, 1, 'NDays', 'consulta', '2019-05-01 18:06:24', 'Consultando lista de dias'),
(1560, 1, 'NDays', 'consulta', '2019-05-01 18:09:09', 'Consultando lista de dias'),
(1561, 1, 'NDays', 'consulta', '2019-05-01 18:09:15', 'Consultando lista de dias'),
(1562, 1, 'NDays', 'consulta', '2019-05-01 18:09:29', 'Consultando lista de dias'),
(1563, 1, 'NDays', 'consulta', '2019-05-01 18:09:48', 'Consultando lista de dias'),
(1564, 1, 'NDays', 'consulta', '2019-05-01 18:10:05', 'Consultando lista de dias'),
(1565, 1, 'NDays', 'consulta', '2019-05-01 18:10:26', 'Consultando lista de dias'),
(1566, 1, 'NDays', 'elimino', '2019-05-01 18:10:36', 'Se elimino día '),
(1567, 1, 'NRequirementsStudent', 'consulta', '2019-05-01 18:10:37', 'Consultando lista de requerimientos de estudiante.'),
(1568, 1, 'NDays', 'consulta', '2019-05-01 18:10:45', 'Consultando lista de dias.'),
(1569, 1, 'NDays', 'consulta', '2019-05-01 18:10:57', 'Consultando lista de dias.'),
(1570, 1, 'NDays', 'registro', '2019-05-01 18:11:04', 'Registrando día en el modulo configuración.'),
(1571, 1, 'NDays', 'consulta', '2019-05-01 18:11:05', 'Consultando lista de dias.'),
(1572, 1, 'NDays', 'consulta', '2019-05-01 18:11:07', 'Consultando lista de dias'),
(1573, 1, 'NDays', 'actualización', '2019-05-01 18:11:10', 'Modificando datos de días.'),
(1574, 1, 'NDays', 'consulta', '2019-05-01 18:11:12', 'Consultando lista de dias.'),
(1575, 1, 'NDays', 'consulta', '2019-05-01 18:11:13', 'Consultando lista de dias'),
(1576, 1, 'NDays', 'elimino', '2019-05-01 18:11:16', 'Se elimino día '),
(1577, 1, 'NDays', 'consulta', '2019-05-01 18:11:17', 'Consultando lista de dias.'),
(1578, 1, 'NClassificationSubject', 'consulta', '2019-05-01 18:11:32', 'Consultando lista de clasificaciones.'),
(1579, 1, 'NClassificationSubject', 'consulta', '2019-05-01 18:11:49', 'Consultando lista de clasificaciones.'),
(1580, 1, 'NClassificationSubject', 'consulta', '2019-05-01 18:14:25', 'Consultando lista de clasificaciones.');
INSERT INTO `binnacle_actions` (`id`, `user_id`, `entity`, `action`, `date`, `description`) VALUES
(1581, 1, 'NClassificationSubject', 'registro', '2019-05-01 18:14:31', 'Registrando clasificacion de asignatura.'),
(1582, 1, 'NClassificationSubject', 'consulta', '2019-05-01 18:14:34', 'Consultando lista de clasificaciones.'),
(1583, 1, 'NClassificationSubject', 'consulta', '2019-05-01 18:14:37', 'Consultando lista de clasificaciones de asignatura'),
(1584, 1, 'NClassificationSubject', 'actualización', '2019-05-01 18:14:40', 'Modificando datos de clasificación de asignatura.'),
(1585, 1, 'NClassificationSubject', 'consulta', '2019-05-01 18:14:41', 'Consultando lista de clasificaciones.'),
(1586, 1, 'NClassificationSubject', 'consulta', '2019-05-01 18:14:43', 'Consultando lista de clasificaciones de asignatura'),
(1587, 1, 'NClassificationSubject', 'elimino', '2019-05-01 18:14:47', 'Se elimino clasificación de asignatura'),
(1588, 1, 'NClassificationSubject', 'consulta', '2019-05-01 18:14:47', 'Consultando lista de clasificaciones.'),
(1589, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:14:52', 'Consultando lista de clasificaciones.'),
(1590, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:17:19', 'Consultando lista de clasificaciones.'),
(1591, 1, 'NTypesSubject', 'registro', '2019-05-01 18:17:35', 'Registrando tipo de asignatura.'),
(1592, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:17:36', 'Consultando lista de clasificaciones.'),
(1593, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:17:38', 'Consultando lista de tipos de asignatura'),
(1594, 1, 'NTypesSubject', 'actualización', '2019-05-01 18:17:40', 'Modificando datos de tipo de asignatura.'),
(1595, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:17:41', 'Consultando lista de clasificaciones.'),
(1596, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:17:43', 'Consultando lista de tipos de asignatura'),
(1597, 1, 'NTypesSubject', 'elimino', '2019-05-01 18:17:46', 'Se elimino tipo de asignatura '),
(1598, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:17:46', 'Consultando lista de clasificaciones.'),
(1599, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:25:38', 'Consultando lista de clasificaciones.'),
(1600, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:27:12', 'Consultando lista de clasificaciones.'),
(1601, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:27:30', 'Consultando lista de clasificaciones.'),
(1602, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:27:39', 'Consultando lista de clasificaciones.'),
(1603, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:28:27', 'Consultando lista de clasificaciones.'),
(1604, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:28:53', 'Consultando lista de clasificaciones.'),
(1605, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:28:55', 'Consultando lista de tipos de asignatura'),
(1606, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:28:59', 'Consultando lista de clasificaciones.'),
(1607, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:29:00', 'Consultando lista de tipos de asignatura'),
(1608, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:29:02', 'Consultando lista de clasificaciones.'),
(1609, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:29:34', 'Consultando lista de clasificaciones.'),
(1610, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:30:28', 'Consultando lista de clasificaciones.'),
(1611, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:30:46', 'Consultando lista de clasificaciones.'),
(1612, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:33:31', 'Consultando lista de clasificaciones.'),
(1613, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:34:49', 'Consultando lista de clasificaciones.'),
(1614, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:35:11', 'Consultando lista de tipos de asignatura'),
(1615, 1, 'NTypesSubject', 'actualización', '2019-05-01 18:35:13', 'Modificando datos de tipo de asignatura.'),
(1616, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:36:06', 'Consultando lista de tipos de asignatura'),
(1617, 1, 'NTypesSubject', 'actualización', '2019-05-01 18:36:10', 'Modificando datos de tipo de asignatura.'),
(1618, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:36:12', 'Consultando lista de clasificaciones.'),
(1619, 1, 'NTypesSubject', 'registro', '2019-05-01 18:36:19', 'Registrando tipo de asignatura.'),
(1620, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:36:21', 'Consultando lista de clasificaciones.'),
(1621, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:36:23', 'Consultando lista de tipos de asignatura'),
(1622, 1, 'NTypesSubject', 'actualización', '2019-05-01 18:36:25', 'Modificando datos de tipo de asignatura.'),
(1623, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:37:55', 'Consultando lista de tipos de asignatura'),
(1624, 1, 'NTypesSubject', 'actualización', '2019-05-01 18:38:00', 'Modificando datos de tipo de asignatura.'),
(1625, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:39:24', 'Consultando lista de tipos de asignatura'),
(1626, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:39:34', 'Consultando lista de tipos de asignatura'),
(1627, 1, 'NTypesSubject', 'actualización', '2019-05-01 18:39:39', 'Modificando datos de tipo de asignatura.'),
(1628, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:41:03', 'Consultando lista de tipos de asignatura'),
(1629, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:41:15', 'Consultando lista de tipos de asignatura'),
(1630, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:41:51', 'Consultando lista de tipos de asignatura'),
(1631, 1, 'NTypesSubject', 'actualización', '2019-05-01 18:42:03', 'Modificando datos de tipo de asignatura.'),
(1632, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:43:00', 'Consultando lista de tipos de asignatura'),
(1633, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:43:21', 'Consultando lista de tipos de asignatura'),
(1634, 1, 'NTypesSubject', 'actualización', '2019-05-01 18:43:25', 'Modificando datos de tipo de asignatura.'),
(1635, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:45:53', 'Consultando lista de tipos de asignatura'),
(1636, 1, 'NTypesSubject', 'actualización', '2019-05-01 18:45:56', 'Modificando datos de tipo de asignatura.'),
(1637, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:46:26', 'Consultando lista de tipos de asignatura'),
(1638, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:46:42', 'Consultando lista de tipos de asignatura'),
(1639, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:46:59', 'Consultando lista de tipos de asignatura'),
(1640, 1, 'NTypesSubject', 'actualización', '2019-05-01 18:47:06', 'Modificando datos de tipo de asignatura.'),
(1641, 1, 'NTypesSubject', 'actualización', '2019-05-01 18:47:12', 'Modificando datos de tipo de asignatura.'),
(1642, 1, 'NTypesSubject', 'actualización', '2019-05-01 18:47:19', 'Modificando datos de tipo de asignatura.'),
(1643, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:47:34', 'Consultando lista de tipos de asignatura'),
(1644, 1, 'NTypesSubject', 'actualización', '2019-05-01 18:47:49', 'Modificando datos de tipo de asignatura.'),
(1645, 1, 'NTypesSubject', 'actualización', '2019-05-01 18:48:06', 'Modificando datos de tipo de asignatura.'),
(1646, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:49:53', 'Consultando lista de tipos de asignatura'),
(1647, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:50:06', 'Consultando lista de tipos de asignatura'),
(1648, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:50:27', 'Consultando lista de tipos de asignatura'),
(1649, 1, 'NTypesSubject', 'actualización', '2019-05-01 18:50:33', 'Modificando datos de tipo de asignatura.'),
(1650, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:52:06', 'Consultando lista de tipos de asignatura'),
(1651, 1, 'NTypesSubject', 'actualización', '2019-05-01 18:52:12', 'Modificando datos de tipo de asignatura.'),
(1652, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:58:34', 'Consultando lista de tipos de asignatura'),
(1653, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:58:47', 'Consultando lista de tipos de asignatura'),
(1654, 1, 'NTypesSubject', 'actualización', '2019-05-01 18:59:32', 'Modificando datos de tipo de asignatura.'),
(1655, 1, 'NTypesSubject', 'elimino', '2019-05-01 18:59:55', 'Se elimino tipo de asignatura '),
(1656, 1, 'NTypesSubject', 'consulta', '2019-05-01 18:59:55', 'Consultando lista de clasificaciones.'),
(1657, 1, 'Cohort', 'consulta', '2019-05-01 19:00:03', 'Consultando lista de cohortes.'),
(1658, 1, 'Cohort', 'consulta', '2019-05-01 19:00:26', 'Consultando lista de cohortes.'),
(1659, 1, 'Cohort', 'consulta', '2019-05-01 19:02:34', 'Consultando lista de cohortes.'),
(1660, 1, 'Cohort', 'registro', '2019-05-01 19:05:56', 'Registrando cohorte OO-21.'),
(1661, 1, 'Cohort', 'registro', '2019-05-01 19:09:11', 'Registrando cohorte 01-M21.'),
(1662, 1, 'Cohort', 'registro', '2019-05-01 19:11:22', 'Registrando cohorte AE-231.'),
(1663, 1, 'Cohort', 'consulta', '2019-05-01 19:11:31', 'Consultando lista de cohortes.'),
(1664, 1, 'Cohort', 'consulta', '2019-05-01 19:11:45', 'Consultando lista de cohortes'),
(1665, 1, 'Cohort', 'consulta', '2019-05-01 19:12:28', 'Consultando lista de cohortes'),
(1666, 1, 'Cohort', 'consulta', '2019-05-01 19:12:58', 'Consultando lista de cohortes'),
(1667, 1, 'Cohort', 'consulta', '2019-05-01 19:14:31', 'Consultando lista de cohortes'),
(1668, 1, 'Cohort', 'actualización', '2019-05-01 19:14:44', 'Modificando datos en cohortes.'),
(1669, 1, 'Cohort', 'consulta', '2019-05-01 19:14:55', 'Consultando lista de cohortes'),
(1670, 1, 'Cohort', 'consulta', '2019-05-01 19:16:06', 'Consultando lista de cohortes'),
(1671, 1, 'Cohort', 'actualización', '2019-05-01 19:16:16', 'Modificando datos en cohortes.'),
(1672, 1, 'Cohort', 'consulta', '2019-05-01 19:16:20', 'Consultando lista de cohortes.'),
(1673, 1, 'Cohort', 'consulta', '2019-05-01 19:16:22', 'Consultando lista de cohortes'),
(1674, 1, 'Cohort', 'consulta', '2019-05-01 19:20:25', 'Consultando lista de cohortes'),
(1675, 1, 'Cohort', 'consulta', '2019-05-01 19:20:37', 'Consultando lista de cohortes'),
(1676, 1, 'Cohort', 'consulta', '2019-05-01 19:20:55', 'Consultando lista de cohortes'),
(1677, 1, 'Cohort', 'elimino', '2019-05-01 19:21:47', 'Se elimino cohorte '),
(1678, 1, 'Cohort', 'consulta', '2019-05-01 19:21:53', 'Consultando lista de cohortes.'),
(1679, 1, 'Cohort', 'consulta', '2019-05-01 19:23:17', 'Consultando lista de cohortes.'),
(1680, 1, 'Classroom', 'consulta', '2019-05-01 19:23:58', 'Consultando lista de aulas.'),
(1681, 1, 'Classroom', 'registro', '2019-05-01 19:24:19', 'Registrando aula H-3.'),
(1682, 1, 'Classroom', 'consulta', '2019-05-01 19:24:27', 'Consultando lista de aulas.'),
(1683, 1, 'Cohort', 'consulta', '2019-05-01 19:24:31', 'Consultando lista de cohortes'),
(1684, 1, 'Classroom', 'consulta', '2019-05-01 19:24:31', 'Consultando lista de aulas'),
(1685, 1, 'Classroom', 'actualización', '2019-05-01 19:24:43', 'Modificando datos en aulas.'),
(1686, 1, 'Classroom', 'consulta', '2019-05-01 19:24:47', 'Consultando lista de aulas.'),
(1687, 1, 'Classroom', 'consulta', '2019-05-01 19:24:50', 'Consultando lista de aulas'),
(1688, 1, 'Cohort', 'consulta', '2019-05-01 19:24:50', 'Consultando lista de cohortes'),
(1689, 1, 'ClassRoom', 'elimino', '2019-05-01 19:24:56', 'Se elimino aula '),
(1690, 1, 'Classroom', 'consulta', '2019-05-01 19:25:03', 'Consultando lista de aulas.'),
(1691, 1, 'Classroom', 'consulta', '2019-05-01 19:27:53', 'Consultando lista de aulas.'),
(1692, 1, 'Classroom', 'consulta', '2019-05-01 19:30:49', 'Consultando lista de aulas.'),
(1693, 1, 'Classroom', 'consulta', '2019-05-01 19:31:13', 'Consultando lista de aulas.'),
(1694, 1, 'Classroom', 'consulta', '2019-05-01 19:33:37', 'Consultando lista de aulas.'),
(1695, 1, 'Classroom', 'consulta', '2019-05-01 19:34:05', 'Consultando lista de aulas.'),
(1696, 1, 'Classroom', 'consulta', '2019-05-01 19:35:17', 'Consultando lista de aulas.'),
(1697, 1, 'Cohort', 'consulta', '2019-05-01 19:35:23', 'Consultando lista de cohortes.'),
(1698, 1, 'Cohort', 'registro', '2019-05-01 19:35:44', 'Registrando cohorte AE-231.'),
(1699, 1, 'Cohort', 'consulta', '2019-05-01 19:35:52', 'Consultando lista de cohortes.'),
(1700, 1, 'Cohort', 'consulta', '2019-05-01 19:35:55', 'Consultando lista de cohortes'),
(1701, 1, 'Cohort', 'elimino', '2019-05-01 19:36:03', 'Se elimino cohorte '),
(1702, 1, 'Classroom', 'consulta', '2019-05-01 19:38:39', 'Consultando lista de aulas.'),
(1703, 1, 'Classroom', 'consulta', '2019-05-01 19:38:47', 'Consultando lista de aulas.'),
(1704, 1, 'Cohort', 'consulta', '2019-05-01 19:38:50', 'Consultando lista de cohortes.'),
(1705, 1, 'Cohort', 'registro', '2019-05-01 19:39:06', 'Registrando cohorte AE-231.'),
(1706, 1, 'Cohort', 'consulta', '2019-05-01 19:39:11', 'Consultando lista de cohortes.'),
(1707, 1, 'Cohort', 'consulta', '2019-05-01 19:39:14', 'Consultando lista de cohortes'),
(1708, 1, 'Cohort', 'consulta', '2019-05-01 19:39:29', 'Consultando lista de cohortes'),
(1709, 1, 'Cohort', 'consulta', '2019-05-01 19:39:37', 'Consultando lista de cohortes.'),
(1710, 1, 'Cohort', 'consulta', '2019-05-01 19:39:40', 'Consultando lista de cohortes'),
(1711, 1, 'Cohort', 'elimino', '2019-05-01 19:39:46', 'Se elimino cohorte '),
(1712, 1, 'Cohort', 'consulta', '2019-05-01 19:42:11', 'Consultando lista de cohortes.'),
(1713, 1, 'Cohort', 'consulta', '2019-05-01 19:42:24', 'Consultando lista de cohortes.'),
(1714, 1, 'Cohort', 'registro', '2019-05-01 19:43:52', 'Registrando cohorte MM-222.'),
(1715, 1, 'Cohort', 'consulta', '2019-05-01 19:43:56', 'Consultando lista de cohortes.'),
(1716, 1, 'Cohort', 'consulta', '2019-05-01 19:44:06', 'Consultando lista de cohortes'),
(1717, 1, 'Cohort', 'elimino', '2019-05-01 19:44:17', 'Se elimino cohorte '),
(1718, 1, 'Cohort', 'consulta', '2019-05-01 19:44:18', 'Consultando lista de cohortes.'),
(1719, 1, 'Classroom', 'consulta', '2019-05-01 19:44:22', 'Consultando lista de aulas.'),
(1720, 1, 'Classroom', 'consulta', '2019-05-01 19:45:44', 'Consultando lista de aulas.'),
(1721, 1, 'Classroom', 'registro', '2019-05-01 19:46:07', 'Registrando aula D-1.'),
(1722, 1, 'Classroom', 'consulta', '2019-05-01 19:46:10', 'Consultando lista de aulas.'),
(1723, 1, 'Classroom', 'consulta', '2019-05-01 19:46:12', 'Consultando lista de aulas'),
(1724, 1, 'Classroom', 'actualización', '2019-05-01 19:46:16', 'Modificando datos en aulas.'),
(1725, 1, 'Classroom', 'consulta', '2019-05-01 19:46:18', 'Consultando lista de aulas.'),
(1726, 1, 'Classroom', 'consulta', '2019-05-01 19:46:19', 'Consultando lista de aulas'),
(1727, 1, 'ClassRoom', 'elimino', '2019-05-01 19:46:22', 'Se elimino aula '),
(1728, 1, 'Classroom', 'consulta', '2019-05-01 19:46:23', 'Consultando lista de aulas.'),
(1729, 1, 'NDays', 'consulta', '2019-05-01 19:46:30', 'Consultando lista de dias.'),
(1730, 1, 'NDays', 'consulta', '2019-05-01 19:47:35', 'Consultando lista de dias.'),
(1731, 1, 'User', 'consulta', '2019-05-01 19:55:31', 'Consultando lista de usuarios.'),
(1732, 1, 'User', 'consulta', '2019-05-01 19:55:34', 'Consultando datos de usuario.'),
(1733, 1, 'Lection', 'consulta', '2019-05-01 19:55:35', 'Consultando inscripciones del estudiante id=6'),
(1734, 1, 'User', 'consulta', '2019-05-01 19:55:37', 'Consultando lista de usuarios.'),
(1735, 1, 'User', 'consulta', '2019-05-01 19:55:40', 'Consultando lista de usuarios.'),
(1736, 1, 'User', 'consulta', '2019-05-01 19:55:42', 'Consultando datos de usuario.'),
(1737, 1, 'Lection', 'consulta', '2019-05-01 19:55:43', 'Consultando inscripciones del estudiante id=6'),
(1738, 1, 'User', 'consulta', '2019-05-01 19:55:43', 'Consultando lista de usuarios.'),
(1739, 1, 'User', 'consulta', '2019-05-01 19:55:47', 'Consultando datos de usuario.'),
(1740, 1, 'Lection', 'consulta', '2019-05-01 19:55:47', 'Consultando inscripciones del estudiante id=6'),
(1741, 1, 'User', 'consulta', '2019-05-01 19:55:48', 'Consultando lista de usuarios.'),
(1742, 1, 'User', 'consulta', '2019-05-01 19:55:51', 'Consultando datos de usuario.'),
(1743, 1, 'Lection', 'consulta', '2019-05-01 19:55:52', 'Consultando inscripciones del estudiante id=7'),
(1744, 1, 'User', 'consulta', '2019-05-01 19:55:53', 'Consultando lista de usuarios.'),
(1745, 1, 'User', 'consulta', '2019-05-01 19:55:56', 'Consultando datos de usuario.'),
(1746, 1, 'User', 'consulta', '2019-05-01 19:59:56', 'Consultando datos de usuario.'),
(1747, 1, 'Lection', 'consulta', '2019-05-01 19:59:56', 'Consultando asignaturas del facilitador id=3'),
(1748, 1, 'User', 'consulta', '2019-05-01 20:00:42', 'Consultando datos de usuario.'),
(1749, 1, 'Lection', 'consulta', '2019-05-01 20:00:43', 'Consultando asignaturas del facilitador id=3'),
(1750, 1, 'User', 'consulta', '2019-05-01 20:01:21', 'Consultando datos de usuario.'),
(1751, 1, 'Lection', 'consulta', '2019-05-01 20:01:21', 'Consultando asignaturas del facilitador id=3'),
(1752, 1, 'User', 'consulta', '2019-05-01 20:01:35', 'Consultando datos de usuario.'),
(1753, 1, 'Lection', 'consulta', '2019-05-01 20:01:35', 'Consultando asignaturas del facilitador id=3'),
(1754, 1, 'User', 'consulta', '2019-05-01 20:02:02', 'Consultando datos de usuario.'),
(1755, 1, 'Lection', 'consulta', '2019-05-01 20:02:02', 'Consultando asignaturas del facilitador id=3'),
(1756, 1, 'User', 'consulta', '2019-05-01 20:02:10', 'Consultando lista de usuarios.'),
(1757, 1, 'User', 'consulta', '2019-05-01 20:02:13', 'Consultando datos de usuario.'),
(1758, 1, 'Lection', 'consulta', '2019-05-01 20:02:13', 'Consultando asignaturas del facilitador id=5'),
(1759, 1, 'User', 'consulta', '2019-05-01 20:02:39', 'Consultando datos de usuario.'),
(1760, 1, 'Lection', 'consulta', '2019-05-01 20:02:39', 'Consultando asignaturas del facilitador id=5'),
(1761, 1, 'User', 'consulta', '2019-05-01 20:03:13', 'Consultando lista de usuarios.'),
(1762, 1, 'User', 'consulta', '2019-05-01 23:20:30', 'Consultando lista de usuarios.'),
(1763, 1, 'Subject', 'consulta', '2019-05-01 23:23:14', 'Consultando lista de asignaturas.'),
(1764, 1, 'Subject', 'consulta', '2019-05-01 23:24:51', 'Consultando lista de asignaturas.'),
(1765, 1, 'Subject', 'consulta', '2019-05-01 23:25:56', 'Consultando lista de asignaturas.'),
(1766, 1, 'Subject', 'consulta', '2019-05-01 23:26:56', 'Consultando lista de asignaturas.'),
(1767, 1, 'Subject', 'consulta', '2019-05-01 23:28:18', 'Consultando lista de asignaturas.'),
(1768, 1, 'Subject', 'registro', '2019-05-01 23:32:52', 'Registrando asignatura Nuevo.'),
(1769, 1, 'Subject', 'consulta', '2019-05-01 23:32:56', 'Consultando lista de asignaturas.'),
(1770, 1, 'Subject', 'consulta', '2019-05-01 23:33:40', 'Consultando datos de asignatura'),
(1771, 1, 'Subject', 'consulta', '2019-05-01 23:34:33', 'Consultando datos de asignatura'),
(1772, 1, 'Subject', 'consulta', '2019-05-01 23:34:45', 'Consultando datos de asignatura'),
(1773, 1, 'Subject', 'consulta', '2019-05-01 23:34:55', 'Consultando datos de asignatura'),
(1774, 1, 'Subject', 'consulta', '2019-05-01 23:37:09', 'Consultando datos de asignatura'),
(1775, 1, 'Subject', 'consulta', '2019-05-01 23:38:36', 'Consultando datos de asignatura'),
(1776, 1, 'Subject', 'consulta', '2019-05-01 23:39:24', 'Consultando datos de asignatura'),
(1777, 1, 'Subject', 'consulta', '2019-05-01 23:39:41', 'Consultando datos de asignatura'),
(1778, 1, 'Subject', 'actualización', '2019-05-01 23:40:29', 'Modificando datos de asignatura.'),
(1779, 1, 'Subject', 'consulta', '2019-05-01 23:40:39', 'Consultando lista de asignaturas.'),
(1780, 1, 'Subject', 'consulta', '2019-05-01 23:40:41', 'Consultando datos de asignatura'),
(1781, 1, 'Subject', 'elimino', '2019-05-01 23:41:01', 'Se elimino la asignatura. '),
(1782, 1, 'Subject', 'consulta', '2019-05-01 23:41:01', 'Consultando lista de asignaturas.'),
(1783, 1, 'Lection', 'consulta', '2019-05-01 23:41:13', 'Consultando lista de clases.'),
(1784, 1, 'Lection', 'consulta', '2019-05-01 23:44:28', 'Consultando lista de clases.'),
(1785, 1, 'Lection', 'registro', '2019-05-02 00:06:38', 'Registrando clase AE-23133.'),
(1786, 1, 'Lection', 'consulta', '2019-05-02 00:06:48', 'Consultando lista de clases.'),
(1787, 1, 'Lection', 'consulta', '2019-05-02 00:13:35', 'Consultando datos de clase'),
(1788, 1, 'DaysClass', 'consulta', '2019-05-02 00:13:37', 'Consultando lista de dias de clase.'),
(1789, 1, 'Lection', 'consulta', '2019-05-02 00:14:59', 'Consultando datos de clase'),
(1790, 1, 'DaysClass', 'consulta', '2019-05-02 00:15:02', 'Consultando lista de dias de clase.'),
(1791, 1, 'Lection', 'consulta', '2019-05-02 00:15:20', 'Consultando datos de clase'),
(1792, 1, 'DaysClass', 'consulta', '2019-05-02 00:15:22', 'Consultando lista de dias de clase.'),
(1793, 1, 'Lection', 'consulta', '2019-05-02 00:16:35', 'Consultando datos de clase'),
(1794, 1, 'Lection', 'consulta', '2019-05-02 00:17:02', 'Consultando datos de clase'),
(1795, 1, 'DaysClass', 'consulta', '2019-05-02 00:17:03', 'Consultando lista de dias de clase.'),
(1796, 1, 'Lection', 'consulta', '2019-05-02 00:17:31', 'Consultando datos de clase'),
(1797, 1, 'DaysClass', 'consulta', '2019-05-02 00:17:32', 'Consultando lista de dias de clase.'),
(1798, 1, 'Lection', 'consulta', '2019-05-02 00:20:11', 'Consultando datos de clase'),
(1799, 1, 'DaysClass', 'consulta', '2019-05-02 00:20:12', 'Consultando lista de dias de clase.'),
(1800, 1, 'Lection', 'consulta', '2019-05-02 00:21:27', 'Consultando datos de clase'),
(1801, 1, 'DaysClass', 'consulta', '2019-05-02 00:21:27', 'Consultando lista de dias de clase.'),
(1802, 1, 'Lection', 'consulta', '2019-05-02 00:22:12', 'Consultando datos de clase'),
(1803, 1, 'DaysClass', 'consulta', '2019-05-02 00:22:12', 'Consultando lista de dias de clase.'),
(1804, 1, 'Lection', 'consulta', '2019-05-02 00:22:21', 'Consultando datos de clase'),
(1805, 1, 'DaysClass', 'consulta', '2019-05-02 00:22:22', 'Consultando lista de dias de clase.'),
(1806, 1, 'Lection', 'consulta', '2019-05-02 00:22:58', 'Consultando datos de clase'),
(1807, 1, 'DaysClass', 'consulta', '2019-05-02 00:22:59', 'Consultando lista de dias de clase.'),
(1808, 1, 'NDaysHasClass', 'registro', '2019-05-02 00:23:18', 'Registrando horario de la clase id=3.'),
(1809, 1, 'DaysClass', 'consulta', '2019-05-02 00:23:19', 'Consultando lista de dias de clase.'),
(1810, 1, 'Lection', 'consulta', '2019-05-02 00:23:34', 'Consultando datos de clase'),
(1811, 1, 'DaysClass', 'consulta', '2019-05-02 00:23:37', 'Consultando lista de dias de clase.'),
(1812, 1, 'Lection', 'consulta', '2019-05-02 00:26:13', 'Consultando datos de clase'),
(1813, 1, 'DaysClass', 'consulta', '2019-05-02 00:26:14', 'Consultando lista de dias de clase.'),
(1814, 1, 'Lection', 'consulta', '2019-05-02 00:26:36', 'Consultando datos de clase'),
(1815, 1, 'DaysClass', 'consulta', '2019-05-02 00:26:37', 'Consultando lista de dias de clase.'),
(1816, 1, 'Lection', 'consulta', '2019-05-02 00:30:56', 'Consultando datos de clase'),
(1817, 1, 'DaysClass', 'consulta', '2019-05-02 00:30:56', 'Consultando lista de dias de clase.'),
(1818, 1, 'Lection', 'consulta', '2019-05-02 00:31:07', 'Consultando datos de clase'),
(1819, 1, 'DaysClass', 'consulta', '2019-05-02 00:31:08', 'Consultando lista de dias de clase.'),
(1820, 1, 'NDaysHasClass', 'registro', '2019-05-02 00:31:43', 'Registrando horario de la clase id=3.'),
(1821, 1, 'DaysClass', 'consulta', '2019-05-02 00:31:44', 'Consultando lista de dias de clase.'),
(1822, 1, 'NDaysHasClass', 'elimino', '2019-05-02 00:31:57', 'Se elimino horario de la clase id=3. '),
(1823, 1, 'DaysClass', 'consulta', '2019-05-02 00:31:58', 'Consultando lista de dias de clase.'),
(1824, 1, 'Lection', 'consulta', '2019-05-02 00:39:01', 'Consultando datos de clase'),
(1825, 1, 'DaysClass', 'consulta', '2019-05-02 00:39:08', 'Consultando lista de dias de clase.'),
(1826, 1, 'Lection', 'consulta', '2019-05-02 00:39:25', 'Consultando datos de clase'),
(1827, 1, 'DaysClass', 'consulta', '2019-05-02 00:39:28', 'Consultando lista de dias de clase.'),
(1828, 1, 'Lection', 'consulta', '2019-05-02 00:41:01', 'Consultando datos de clase'),
(1829, 1, 'DaysClass', 'consulta', '2019-05-02 00:41:02', 'Consultando lista de dias de clase.'),
(1830, 1, 'Lection', 'consulta', '2019-05-02 00:41:45', 'Consultando datos de clase'),
(1831, 1, 'DaysClass', 'consulta', '2019-05-02 00:41:46', 'Consultando lista de dias de clase.'),
(1832, 1, 'Lection', 'consulta', '2019-05-02 00:42:30', 'Consultando datos de clase'),
(1833, 1, 'DaysClass', 'consulta', '2019-05-02 00:42:30', 'Consultando lista de dias de clase.'),
(1834, 1, 'Lection', 'consulta', '2019-05-02 00:44:04', 'Consultando datos de clase'),
(1835, 1, 'DaysClass', 'consulta', '2019-05-02 00:44:04', 'Consultando lista de dias de clase.'),
(1836, 1, 'Lection', 'consulta', '2019-05-02 00:44:50', 'Consultando datos de clase'),
(1837, 1, 'DaysClass', 'consulta', '2019-05-02 00:44:51', 'Consultando lista de dias de clase.'),
(1838, 1, 'Lection', 'consulta', '2019-05-02 00:44:58', 'Consultando datos de clase'),
(1839, 1, 'DaysClass', 'consulta', '2019-05-02 00:44:59', 'Consultando lista de dias de clase.'),
(1840, 1, 'Lection', 'consulta', '2019-05-02 00:47:37', 'Consultando datos de clase'),
(1841, 1, 'DaysClass', 'consulta', '2019-05-02 00:47:38', 'Consultando lista de dias de clase.'),
(1842, 1, 'NDaysHasClass', 'registro', '2019-05-02 00:48:10', 'Registrando horario de la clase id=3.'),
(1843, 1, 'DaysClass', 'consulta', '2019-05-02 00:48:11', 'Consultando lista de dias de clase.'),
(1844, 1, 'Lection', 'consulta', '2019-05-02 00:49:18', 'Consultando datos de clase'),
(1845, 1, 'DaysClass', 'consulta', '2019-05-02 00:49:18', 'Consultando lista de dias de clase.'),
(1846, 1, 'Lection', 'consulta', '2019-05-02 00:50:23', 'Consultando datos de clase'),
(1847, 1, 'DaysClass', 'consulta', '2019-05-02 00:50:23', 'Consultando lista de dias de clase.'),
(1848, 1, 'Lection', 'consulta', '2019-05-02 00:50:34', 'Consultando datos de clase'),
(1849, 1, 'DaysClass', 'consulta', '2019-05-02 00:50:34', 'Consultando lista de dias de clase.'),
(1850, 1, 'NDaysHasClass', 'registro', '2019-05-02 00:50:46', 'Registrando horario de la clase id=3.'),
(1851, 1, 'DaysClass', 'consulta', '2019-05-02 00:50:46', 'Consultando lista de dias de clase.'),
(1852, 1, 'NDaysHasClass', 'elimino', '2019-05-02 00:50:58', 'Se elimino horario de la clase id=3. '),
(1853, 1, 'DaysClass', 'consulta', '2019-05-02 00:50:58', 'Consultando lista de dias de clase.'),
(1854, 1, 'Lection', 'consulta', '2019-05-02 00:53:51', 'Consultando datos de clase'),
(1855, 1, 'DaysClass', 'consulta', '2019-05-02 00:53:51', 'Consultando lista de dias de clase.'),
(1856, 1, 'Lection', 'actualización', '2019-05-02 00:55:56', 'Modificando datos de clase. id=3'),
(1857, 1, 'Lection', 'consulta', '2019-05-02 00:56:04', 'Consultando lista de clases.'),
(1858, 1, 'Lection', 'consulta', '2019-05-02 00:56:09', 'Consultando datos de clase'),
(1859, 1, 'DaysClass', 'consulta', '2019-05-02 00:56:09', 'Consultando lista de dias de clase.'),
(1860, 1, 'Lection', 'actualización', '2019-05-02 00:56:15', 'Modificando datos de clase. id=3'),
(1861, 1, 'Lection', 'consulta', '2019-05-02 00:56:17', 'Consultando lista de clases.'),
(1862, 1, 'Lection', 'consulta', '2019-05-02 00:56:21', 'Consultando datos de clase'),
(1863, 1, 'DaysClass', 'consulta', '2019-05-02 00:56:22', 'Consultando lista de dias de clase.'),
(1864, 1, 'Lection', 'consulta', '2019-05-02 00:57:34', 'Consultando datos de clase'),
(1865, 1, 'DaysClass', 'consulta', '2019-05-02 00:58:15', 'Consultando lista de dias de clase.'),
(1866, 1, 'Lection', 'elimino', '2019-05-02 00:58:27', 'Se elimino la clase. '),
(1867, 1, 'Lection', 'consulta', '2019-05-02 00:58:28', 'Consultando lista de clases.'),
(1868, 1, 'Cohort', 'consulta', '2019-05-02 01:01:22', 'Consultando lista de clases.'),
(1869, 1, 'Cohort', 'consulta', '2019-05-02 01:02:29', 'Consultando datos del curso'),
(1870, 1, 'Inscription', 'consulta', '2019-05-02 01:02:29', 'Consultando lista de alumnos pre-inscritos.'),
(1871, 1, 'Cohort', 'consulta', '2019-05-02 01:04:47', 'Consultando datos del curso'),
(1872, 1, 'Inscription', 'consulta', '2019-05-02 01:04:48', 'Consultando lista de alumnos pre-inscritos.'),
(1873, 1, 'Lection', 'consulta', '2019-05-02 01:04:48', 'consulta de materias de la cohorte id=1'),
(1874, 1, 'Cohort', 'consulta', '2019-05-02 01:05:07', 'Consultando lista de clases.'),
(1875, 1, 'Cohort', 'consulta', '2019-05-02 01:05:08', 'Consultando datos del curso'),
(1876, 1, 'Inscription', 'consulta', '2019-05-02 01:05:09', 'Consultando lista de alumnos pre-inscritos.'),
(1877, 1, 'Lection', 'consulta', '2019-05-02 01:05:09', 'consulta de materias de la cohorte id=1'),
(1878, 1, 'Cohort', 'consulta', '2019-05-02 01:05:12', 'Consultando lista de clases.'),
(1879, 1, 'Cohort', 'consulta', '2019-05-02 01:05:14', 'Consultando datos del curso'),
(1880, 1, 'Lection', 'consulta', '2019-05-02 01:05:15', 'consulta de materias de la cohorte id=2'),
(1881, 1, 'Inscription', 'consulta', '2019-05-02 01:05:15', 'Consultando lista de alumnos pre-inscritos.'),
(1882, 1, 'Cohort', 'consulta', '2019-05-02 01:05:17', 'Consultando lista de clases.'),
(1883, 1, 'Cohort', 'consulta', '2019-05-02 01:05:20', 'Consultando datos del curso'),
(1884, 1, 'Inscription', 'consulta', '2019-05-02 01:05:20', 'Consultando lista de alumnos pre-inscritos.'),
(1885, 1, 'Lection', 'consulta', '2019-05-02 01:05:20', 'consulta de materias de la cohorte id=1'),
(1886, 1, 'Cohort', 'consulta', '2019-05-02 01:05:22', 'Consultando lista de clases.'),
(1887, 1, 'User', 'consulta', '2019-05-02 01:05:26', 'Consultando lista de facilitadores.'),
(1888, 1, 'User', 'consulta', '2019-05-02 01:06:19', 'Consultando lista de facilitadores.'),
(1889, 1, 'User', 'consulta', '2019-05-02 01:06:25', 'Consultando lista de facilitadores.'),
(1890, 1, 'User', 'consulta', '2019-05-02 01:06:33', 'Consultando datos de usuario.'),
(1891, 1, 'Lection', 'consulta', '2019-05-02 01:06:33', 'Consultando asignaturas del facilitador id=5'),
(1892, 1, 'User', 'actualización', '2019-05-02 01:06:47', 'Modificando datos de usuario.'),
(1893, 1, 'User', 'consulta', '2019-05-02 01:06:50', 'Consultando lista de facilitadores.'),
(1894, 1, 'User', 'consulta', '2019-05-02 01:06:52', 'Consultando datos de usuario.'),
(1895, 1, 'Lection', 'consulta', '2019-05-02 01:06:52', 'Consultando asignaturas del facilitador id=5'),
(1896, 1, 'User', 'actualización', '2019-05-02 01:07:00', 'Modificando datos de usuario.'),
(1897, 1, 'User', 'consulta', '2019-05-02 01:07:03', 'Consultando lista de facilitadores.'),
(1898, 1, 'User', 'consulta', '2019-05-02 01:07:04', 'Consultando datos de usuario.'),
(1899, 1, 'Lection', 'consulta', '2019-05-02 01:07:04', 'Consultando asignaturas del facilitador id=3'),
(1900, 1, 'User', 'consulta', '2019-05-02 01:07:06', 'Consultando lista de facilitadores.'),
(1901, 1, 'User', 'consulta', '2019-05-02 01:07:19', 'Consultando lista de facilitadores.'),
(1902, 1, 'User', 'consulta', '2019-05-02 01:07:20', 'Consultando datos de usuario.'),
(1903, 1, 'Lection', 'consulta', '2019-05-02 01:07:20', 'Consultando asignaturas del facilitador id=5'),
(1904, 1, 'User', 'consulta', '2019-05-02 01:09:34', 'Consultando datos de usuario.'),
(1905, 1, 'Lection', 'consulta', '2019-05-02 01:09:34', 'Consultando asignaturas del facilitador id=5'),
(1906, 1, 'User', 'consulta', '2019-05-02 01:09:47', 'Consultando datos de usuario.'),
(1907, 1, 'Lection', 'consulta', '2019-05-02 01:09:47', 'Consultando asignaturas del facilitador id=5'),
(1908, 1, 'User', 'consulta', '2019-05-02 01:09:48', 'Consultando lista de facilitadores.'),
(1909, 1, 'User', 'consulta', '2019-05-02 01:09:50', 'Consultando datos de usuario.'),
(1910, 1, 'Lection', 'consulta', '2019-05-02 01:09:50', 'Consultando asignaturas del facilitador id=5'),
(1911, 1, 'User', 'consulta', '2019-05-02 01:09:52', 'Consultando lista de facilitadores.'),
(1912, 1, 'User', 'consulta', '2019-05-02 01:09:54', 'Consultando datos de usuario.'),
(1913, 1, 'Lection', 'consulta', '2019-05-02 01:09:54', 'Consultando asignaturas del facilitador id=3'),
(1914, 1, 'User', 'consulta', '2019-05-02 01:09:56', 'Consultando lista de facilitadores.'),
(1915, 1, 'Facilitator', 'registro', '2019-05-02 01:10:20', 'Agregando datos de usuario facilitador.'),
(1916, 1, 'User', 'registro', '2019-05-02 01:10:20', 'Agregando usuario.'),
(1917, 1, 'User', 'consulta', '2019-05-02 01:10:24', 'Consultando lista de facilitadores.'),
(1918, 1, 'User', 'consulta', '2019-05-02 01:10:26', 'Consultando datos de usuario.'),
(1919, 1, 'Lection', 'consulta', '2019-05-02 01:10:26', 'Consultando asignaturas del facilitador id=9'),
(1920, 1, 'User', 'consulta', '2019-05-02 01:12:23', 'Consultando lista de facilitadores.'),
(1921, 1, 'User', 'consulta', '2019-05-02 01:12:49', 'Consultando lista de facilitadores.'),
(1922, 1, 'User', 'consulta', '2019-05-02 01:12:51', 'Consultando datos de usuario.'),
(1923, 1, 'Lection', 'consulta', '2019-05-02 01:12:52', 'Consultando asignaturas del facilitador id=9'),
(1924, 1, 'User', 'consulta', '2019-05-02 01:13:13', 'Se elimino el usuario metiene.'),
(1925, 1, 'User', 'consulta', '2019-05-02 01:13:14', 'Consultando lista de facilitadores.'),
(1926, 1, 'User', 'consulta', '2019-05-02 01:13:20', 'Consultando lista de estudiantes.'),
(1927, 1, 'Student', 'registro', '2019-05-02 01:14:28', 'Inscribiendo estudiante.'),
(1928, 1, 'User', 'registro', '2019-05-02 01:14:28', 'Agregando usuario.'),
(1929, 1, 'Inscription', 'registro', '2019-05-02 01:14:28', 'Pre-inscripción registrada.'),
(1930, 1, 'User', 'consulta', '2019-05-02 01:14:37', 'Consultando lista de estudiantes.'),
(1931, 1, 'User', 'consulta', '2019-05-02 01:14:41', 'Consultando datos de usuario.'),
(1932, 1, 'User', 'consulta', '2019-05-02 01:14:41', 'Consultando datos de usuario.'),
(1933, 1, 'Lection', 'consulta', '2019-05-02 01:14:42', 'Consultando inscripciones del estudiante id=10'),
(1934, 1, 'User', 'consulta', '2019-05-02 01:15:36', 'Consultando datos de usuario.'),
(1935, 1, 'Lection', 'consulta', '2019-05-02 01:15:36', 'Consultando inscripciones del estudiante id=10'),
(1936, 1, 'User', 'consulta', '2019-05-02 01:15:49', 'Consultando datos de usuario.'),
(1937, 1, 'Lection', 'consulta', '2019-05-02 01:15:50', 'Consultando inscripciones del estudiante id=10'),
(1938, 1, 'User', 'actualización', '2019-05-02 01:16:13', 'Modificando datos de usuario.'),
(1939, 1, 'User', 'consulta', '2019-05-02 01:16:15', 'Consultando lista de estudiantes.'),
(1940, 1, 'User', 'consulta', '2019-05-02 01:16:17', 'Consultando datos de usuario.'),
(1941, 1, 'Lection', 'consulta', '2019-05-02 01:16:17', 'Consultando inscripciones del estudiante id=10'),
(1942, 1, 'User', 'consulta', '2019-05-02 01:18:22', 'Consultando datos de usuario.'),
(1943, 1, 'Lection', 'consulta', '2019-05-02 01:18:22', 'Consultando inscripciones del estudiante id=10'),
(1944, 1, 'User', 'consulta', '2019-05-02 01:18:28', 'Consultando lista de estudiantes.'),
(1945, 1, 'User', 'consulta', '2019-05-02 01:18:30', 'Consultando datos de usuario.'),
(1946, 1, 'Lection', 'consulta', '2019-05-02 01:18:30', 'Consultando inscripciones del estudiante id=10'),
(1947, 1, 'User', 'consulta', '2019-05-02 01:18:59', 'Consultando lista de estudiantes.'),
(1948, 1, 'User', 'consulta', '2019-05-02 01:19:00', 'Consultando datos de usuario.'),
(1949, 1, 'Lection', 'consulta', '2019-05-02 01:19:00', 'Consultando inscripciones del estudiante id=10'),
(1950, 1, 'User', 'consulta', '2019-05-02 01:19:04', 'Consultando lista de estudiantes.'),
(1951, 1, 'User', 'consulta', '2019-05-02 01:19:05', 'Consultando datos de usuario.'),
(1952, 1, 'Lection', 'consulta', '2019-05-02 01:19:05', 'Consultando inscripciones del estudiante id=8'),
(1953, 1, 'User', 'consulta', '2019-05-02 01:19:07', 'Consultando lista de estudiantes.'),
(1954, 1, 'User', 'consulta', '2019-05-02 01:19:10', 'Consultando datos de usuario.'),
(1955, 1, 'Lection', 'consulta', '2019-05-02 01:19:10', 'Consultando inscripciones del estudiante id=10'),
(1956, 1, 'User', 'consulta', '2019-05-02 01:20:03', 'Consultando datos de usuario.'),
(1957, 1, 'Lection', 'consulta', '2019-05-02 01:20:03', 'Consultando inscripciones del estudiante id=10'),
(1958, 1, 'User', 'consulta', '2019-05-02 01:20:06', 'Se elimino el usuario confundo.'),
(1959, 1, 'User', 'consulta', '2019-05-02 01:20:06', 'Consultando lista de estudiantes.'),
(1960, 1, 'User', 'consulta', '2019-05-02 01:20:14', 'Consultando lista de usuarios.'),
(1961, 1, 'User', 'consulta', '2019-05-02 01:20:25', 'Consultando datos de usuario.'),
(1962, 1, 'User', 'consulta', '2019-05-02 01:20:25', 'Consultando datos de usuario.'),
(1963, 1, 'Lection', 'consulta', '2019-05-02 01:20:25', 'Consultando inscripciones del estudiante id=6'),
(1964, 1, 'User', 'consulta', '2019-05-02 01:21:50', 'Consultando lista de usuarios.'),
(1965, 1, 'User', 'consulta', '2019-05-02 01:21:54', 'Consultando datos de usuario.'),
(1966, 1, 'User', 'consulta', '2019-05-02 01:21:54', 'Consultando datos de usuario.'),
(1967, 1, 'User', 'consulta', '2019-05-02 01:21:56', 'Consultando lista de usuarios.'),
(1968, 1, 'NRequirementsStudent', 'consulta', '2019-05-02 01:22:09', 'Consultando lista de requerimientos de estudiante.'),
(1969, 1, 'User', 'consulta', '2019-05-02 01:22:13', 'Consultando lista de estudiantes.'),
(1970, 1, 'Cohort', 'consulta', '2019-05-02 01:22:15', 'Consultando lista de clases.'),
(1971, 1, 'User', 'consulta', '2019-05-02 01:22:17', 'Consultando lista de facilitadores.'),
(1972, 1, 'User', 'consulta', '2019-05-02 01:22:19', 'Consultando lista de usuarios.'),
(1973, 1, 'User', 'consulta', '2019-05-02 01:22:23', 'Consultando datos de usuario.'),
(1974, 1, 'User', 'consulta', '2019-05-02 01:22:23', 'Consultando datos de usuario.'),
(1975, 1, 'User', 'consulta', '2019-05-02 01:22:23', 'Consultando datos de usuario.'),
(1976, 1, 'User', 'consulta', '2019-05-02 01:22:24', 'Consultando datos de usuario.'),
(1977, 1, 'User', 'consulta', '2019-05-02 01:22:24', 'Consultando datos de usuario.'),
(1978, 1, 'Lection', 'consulta', '2019-05-02 01:22:24', 'Consultando inscripciones del estudiante id=7'),
(1979, 1, 'User', 'consulta', '2019-05-02 01:22:27', 'Consultando lista de usuarios.'),
(1980, 1, 'Cohort', 'consulta', '2019-05-02 01:22:28', 'Consultando lista de clases.'),
(1981, 1, 'Lection', 'consulta', '2019-05-02 01:22:32', 'Consultando lista de clases.'),
(1982, 1, 'NRequirementsStudent', 'consulta', '2019-05-02 01:22:34', 'Consultando lista de requerimientos de estudiante.'),
(1983, 1, 'Cohort', 'consulta', '2019-05-02 01:22:36', 'Consultando lista de cohortes.'),
(1984, 1, 'Classroom', 'consulta', '2019-05-02 01:22:37', 'Consultando lista de aulas.'),
(1985, 1, 'NDays', 'consulta', '2019-05-02 01:22:39', 'Consultando lista de dias.'),
(1986, 1, 'NClassificationSubject', 'consulta', '2019-05-02 01:22:41', 'Consultando lista de clasificaciones.'),
(1987, 1, 'NTypesSubject', 'consulta', '2019-05-02 01:22:43', 'Consultando lista de clasificaciones.'),
(1988, 1, 'User', 'consulta', '2019-05-02 01:22:45', 'Consultando lista de usuarios.'),
(1989, 1, 'BinnacleAccessUser', 'consulta', '2019-05-02 01:22:48', 'Consulta de registros de acceso.'),
(1990, 1, 'Subject', 'consulta', '2019-05-02 01:24:22', 'Consultando lista de asignaturas.'),
(1991, 1, 'Lection', 'consulta', '2019-05-02 01:24:25', 'Consultando lista de clases.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `classroom`
--

CREATE TABLE `classroom` (
  `id` int(11) NOT NULL,
  `edifice` varchar(45) DEFAULT NULL,
  `floor` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `classroom`
--

INSERT INTO `classroom` (`id`, `edifice`, `floor`, `name`, `create_time`, `update_time`, `user_id`) VALUES
(1, 'A', '2', 'A-02', '2019-04-24 21:07:33', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cohort`
--

CREATE TABLE `cohort` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `initial_date` datetime DEFAULT NULL,
  `final_date` datetime DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `limix` varchar(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cohort`
--

INSERT INTO `cohort` (`id`, `active`, `initial_date`, `final_date`, `year`, `code`, `limix`, `create_time`, `update_time`, `user_id`) VALUES
(1, 1, '2019-04-23 04:00:00', '2019-07-31 04:00:00', '2019', 'M1-01', '2', '2019-04-24 21:07:17', NULL, 1),
(2, 1, '2019-04-16 22:44:27', '2019-04-30 22:44:27', '2019', 'MM-22', '20', '2019-04-28 19:50:47', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facilitator`
--

CREATE TABLE `facilitator` (
  `id` int(11) NOT NULL,
  `identification` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `profession` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facilitator`
--

INSERT INTO `facilitator` (`id`, `identification`, `name`, `surname`, `phone`, `profession`, `create_time`, `update_time`, `user_id`) VALUES
(1, '84932345', 'Sergio', 'Patruyo', '0414-4123323', 'Ninguno', '2019-04-24 21:16:57', NULL, 1),
(3, '147258', 'Maid', 'Maiii', '0414-4123323', 'Ninguno', '2019-04-24 21:35:47', '2019-05-02 01:07:00', 1),
(4, '12345678', 'Metiene', 'Loquito', '0414-4123323', 'Ninguno', '2019-05-02 01:10:20', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscription`
--

CREATE TABLE `inscription` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `aproved` tinyint(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cohort_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inscription`
--

INSERT INTO `inscription` (`id`, `student_id`, `aproved`, `create_time`, `update_time`, `user_id`, `cohort_id`) VALUES
(1, 3, 1, '2019-04-24 23:16:19', NULL, 6, 1),
(2, 4, 0, '2019-04-26 16:51:46', NULL, 7, 1),
(3, 5, 1, '2019-04-26 18:24:12', NULL, 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscription_has_n_requirements_student`
--

CREATE TABLE `inscription_has_n_requirements_student` (
  `inscription_id` int(11) NOT NULL,
  `n_requirements_student_id` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inscription_has_n_requirements_student`
--

INSERT INTO `inscription_has_n_requirements_student` (`inscription_id`, `n_requirements_student_id`, `create_time`, `update_time`, `user_id`) VALUES
(1, 2, '2019-04-26 19:05:13', NULL, 1),
(1, 3, '2019-04-26 19:05:13', NULL, 1),
(3, 1, '2019-04-26 19:06:30', NULL, 1),
(3, 3, '2019-04-26 19:06:30', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lection`
--

CREATE TABLE `lection` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `classroom_id` int(11) DEFAULT NULL,
  `facilitator_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cohort_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lection`
--

INSERT INTO `lection` (`id`, `code`, `subject_id`, `classroom_id`, `facilitator_id`, `create_time`, `update_time`, `user_id`, `cohort_id`) VALUES
(1, 'AE-231', 1, 1, 1, '2019-04-24 21:45:13', NULL, 1, 1),
(2, 'IN-32', 2, 1, 3, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `n_classification_subject`
--

CREATE TABLE `n_classification_subject` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `n_classification_subject`
--

INSERT INTO `n_classification_subject` (`id`, `name`, `create_time`, `update_time`, `user_id`) VALUES
(1, 'Teorica', '2019-04-24 21:11:37', NULL, 1),
(2, 'Teorica-Practica', '2019-04-24 21:11:54', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `n_days`
--

CREATE TABLE `n_days` (
  `id` int(11) NOT NULL,
  `day` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `n_days`
--

INSERT INTO `n_days` (`id`, `day`, `create_time`, `update_time`, `user_id`) VALUES
(1, 'Lunes', '2019-04-24 21:07:44', NULL, 1),
(2, 'Martes', '2019-04-24 21:07:47', NULL, 1),
(3, 'Miércoles', '2019-04-24 21:07:56', NULL, 1),
(4, 'Jueves', '2019-04-24 21:07:59', NULL, 1),
(5, 'Viernes', '2019-04-24 21:08:01', NULL, 1),
(6, 'Sábado', '2019-04-24 21:08:13', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `n_days_has_class`
--

CREATE TABLE `n_days_has_class` (
  `n_days_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `class_time` varchar(45) DEFAULT NULL,
  `hours` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `n_days_has_class`
--

INSERT INTO `n_days_has_class` (`n_days_id`, `class_id`, `class_time`, `hours`, `create_time`, `update_time`, `user_id`) VALUES
(1, 1, '08:00', '3', '2019-04-24 22:15:21', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `n_requirements_student`
--

CREATE TABLE `n_requirements_student` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `n_requirements_student`
--

INSERT INTO `n_requirements_student` (`id`, `name`, `create_time`, `update_time`, `user_id`) VALUES
(1, 'Cédula', '2019-04-24 21:06:05', NULL, 1),
(2, 'Título', '2019-04-24 21:06:12', NULL, 1),
(3, 'Rif', '2019-04-24 21:06:23', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `n_types_subject`
--

CREATE TABLE `n_types_subject` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `n_types_subject`
--

INSERT INTO `n_types_subject` (`id`, `name`, `create_time`, `update_time`, `user_id`) VALUES
(1, 'Obligatoria', '2019-04-24 21:12:03', NULL, 1),
(2, 'Electiva', '2019-04-24 21:12:06', '2019-05-01 18:36:10', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `qualification`
--

CREATE TABLE `qualification` (
  `id` int(11) NOT NULL,
  `qualification` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `inscription_id` int(11) NOT NULL,
  `lection_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `qualification`
--

INSERT INTO `qualification` (`id`, `qualification`, `create_time`, `update_time`, `user_id`, `inscription_id`, `lection_id`) VALUES
(3, 12, '2019-04-29 10:49:38', NULL, 3, 1, 1),
(4, 8, '2019-04-29 10:59:07', NULL, 3, 2, 1),
(5, 10, '2019-05-01 00:00:00', NULL, 3, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `name2` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `surname2` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `identification` varchar(45) DEFAULT NULL,
  `admitted` tinyint(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `student`
--

INSERT INTO `student` (`id`, `name`, `name2`, `surname`, `surname2`, `phone`, `identification`, `admitted`, `create_time`, `update_time`, `user_id`) VALUES
(3, 'estudiante', 'estudiante', 'estudiante', 'estudiante', '0414-4123323', '20861233', 0, '2019-04-24 23:16:19', NULL, NULL),
(4, 'Estududia', 'Estududia', 'Estududia', 'Estududia', '0414-4123323', '123456', 0, '2019-04-26 16:51:46', NULL, NULL),
(5, 'Recuerdo', 'MeGolpea', 'Aqui', 'EnAlma', '0414-4123322', '909876', 0, '2019-04-26 18:24:12', NULL, NULL),
(6, 'Confundod', 'Tusonrisa', 'Caramelos', 'Mentiras', '0414-7421902', '12345671', 0, '2019-05-02 01:14:28', '2019-05-02 01:16:13', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `n_classification_subject_id` int(11) DEFAULT NULL,
  `n_types_subject_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subject`
--

INSERT INTO `subject` (`id`, `name`, `description`, `n_classification_subject_id`, `n_types_subject_id`, `create_time`, `update_time`, `user_id`) VALUES
(1, 'Matemática ', 'Matemática divertida ', 1, 1, '2019-04-24 21:14:36', NULL, 1),
(2, 'Ingles', 'Importante para establecer comunicación', 1, 1, '2019-04-26 23:35:12', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `user_data_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `facilitator_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `attempts` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `email`, `is_active`, `role`, `user_data_id`, `student_id`, `facilitator_id`, `create_time`, `update_time`, `attempts`) VALUES
(1, 'admin', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'admin@admin.com', 1, 'ROLE_ADMIN', 1, NULL, NULL, '2019-04-24 00:00:00', NULL, 0),
(2, 'usuario', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'usuario@usuario.com', 1, 'ROLE_USER', 2, NULL, NULL, '2019-04-24 21:05:32', NULL, 0),
(3, 'sergio', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'sergio@sergio.com', 1, 'ROLE_USER_F', NULL, NULL, 1, '2019-04-24 21:16:57', NULL, 0),
(5, 'maibe', '7a2ec40ff8a1247c532309355f798a779e00acff579c63eec3636ffb2902c1ac', 'maibe@maibe.com', 1, 'ROLE_USER_F', NULL, NULL, 3, '2019-04-24 21:35:47', NULL, 0),
(6, 'estudiante', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'estudiante@gmail.com', 1, 'ROLE_USER_S', NULL, 3, NULL, '2019-04-24 23:16:19', NULL, 0),
(7, 'estudiante2', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'estudiante2@gmail.com', 1, 'ROLE_USER_S', NULL, 4, NULL, '2019-04-26 16:51:46', NULL, 0),
(8, 'estudiante3', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'estudiante3@gmail.com', 1, 'ROLE_USER_S', NULL, 5, NULL, '2019-04-26 18:24:12', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_data`
--

CREATE TABLE `user_data` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_data`
--

INSERT INTO `user_data` (`id`, `name`, `surname`, `phone`) VALUES
(1, 'admin', 'admin', '0414-4142341'),
(2, 'usuario', 'usuario', '0414-7412223');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `binnacle_access_user`
--
ALTER TABLE `binnacle_access_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_binnacle_access_user_user1_idx` (`user_id`);

--
-- Indices de la tabla `binnacle_actions`
--
ALTER TABLE `binnacle_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_binnacle_actions_user1_idx` (`user_id`);

--
-- Indices de la tabla `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_classroom_user1_idx` (`user_id`);

--
-- Indices de la tabla `cohort`
--
ALTER TABLE `cohort`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cohort_user1_idx` (`user_id`);

--
-- Indices de la tabla `facilitator`
--
ALTER TABLE `facilitator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_facilitator_user1_idx` (`user_id`);

--
-- Indices de la tabla `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inscription_student1_idx` (`student_id`),
  ADD KEY `fk_inscription_user1_idx` (`user_id`),
  ADD KEY `fk_inscription_cohort1_idx` (`cohort_id`);

--
-- Indices de la tabla `inscription_has_n_requirements_student`
--
ALTER TABLE `inscription_has_n_requirements_student`
  ADD PRIMARY KEY (`inscription_id`,`n_requirements_student_id`),
  ADD KEY `fk_inscription_has_n_requirements_student_n_requirements_st_idx` (`n_requirements_student_id`),
  ADD KEY `fk_inscription_has_n_requirements_student_inscription1_idx` (`inscription_id`),
  ADD KEY `fk_inscription_has_n_requirements_student_user1_idx` (`user_id`);

--
-- Indices de la tabla `lection`
--
ALTER TABLE `lection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_class_subject1_idx` (`subject_id`),
  ADD KEY `fk_class_classroom1_idx` (`classroom_id`),
  ADD KEY `fk_class_facilitator1_idx` (`facilitator_id`),
  ADD KEY `fk_class_user1_idx` (`user_id`),
  ADD KEY `fk_lection_cohort1_idx` (`cohort_id`);

--
-- Indices de la tabla `n_classification_subject`
--
ALTER TABLE `n_classification_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_n_classification_subject_user1_idx` (`user_id`);

--
-- Indices de la tabla `n_days`
--
ALTER TABLE `n_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_n_days_user1_idx` (`user_id`);

--
-- Indices de la tabla `n_days_has_class`
--
ALTER TABLE `n_days_has_class`
  ADD PRIMARY KEY (`class_id`,`n_days_id`),
  ADD KEY `fk_n_days_has_class_class1_idx` (`class_id`),
  ADD KEY `fk_n_days_has_class_n_days1_idx` (`n_days_id`),
  ADD KEY `fk_n_days_has_class_user1_idx` (`user_id`);

--
-- Indices de la tabla `n_requirements_student`
--
ALTER TABLE `n_requirements_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_n_requirements_student_user1_idx` (`user_id`);

--
-- Indices de la tabla `n_types_subject`
--
ALTER TABLE `n_types_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_n_types_subject_user1_idx` (`user_id`);

--
-- Indices de la tabla `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_qualification_user1_idx` (`user_id`),
  ADD KEY `fk_qualification_inscription1_idx` (`inscription_id`),
  ADD KEY `fk_qualification_lection1_idx` (`lection_id`);

--
-- Indices de la tabla `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_student_user1_idx` (`user_id`);

--
-- Indices de la tabla `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_subject_n_classification_subject1_idx` (`n_classification_subject_id`),
  ADD KEY `fk_subject_n_types_subject1_idx` (`n_types_subject_id`),
  ADD KEY `fk_subject_user1_idx` (`user_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_user_data_idx` (`user_data_id`),
  ADD KEY `fk_user_student1_idx` (`student_id`),
  ADD KEY `fk_user_facilitator1_idx` (`facilitator_id`);

--
-- Indices de la tabla `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `binnacle_access_user`
--
ALTER TABLE `binnacle_access_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT de la tabla `binnacle_actions`
--
ALTER TABLE `binnacle_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1992;
--
-- AUTO_INCREMENT de la tabla `classroom`
--
ALTER TABLE `classroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `cohort`
--
ALTER TABLE `cohort`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `facilitator`
--
ALTER TABLE `facilitator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `inscription`
--
ALTER TABLE `inscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `lection`
--
ALTER TABLE `lection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `n_classification_subject`
--
ALTER TABLE `n_classification_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `n_days`
--
ALTER TABLE `n_days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `n_requirements_student`
--
ALTER TABLE `n_requirements_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `n_types_subject`
--
ALTER TABLE `n_types_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `qualification`
--
ALTER TABLE `qualification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `binnacle_access_user`
--
ALTER TABLE `binnacle_access_user`
  ADD CONSTRAINT `fk_binnacle_access_user_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `binnacle_actions`
--
ALTER TABLE `binnacle_actions`
  ADD CONSTRAINT `fk_binnacle_actions_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `classroom`
--
ALTER TABLE `classroom`
  ADD CONSTRAINT `fk_classroom_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cohort`
--
ALTER TABLE `cohort`
  ADD CONSTRAINT `fk_cohort_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `facilitator`
--
ALTER TABLE `facilitator`
  ADD CONSTRAINT `fk_facilitator_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `inscription`
--
ALTER TABLE `inscription`
  ADD CONSTRAINT `fk_inscription_cohort1` FOREIGN KEY (`cohort_id`) REFERENCES `cohort` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inscription_student1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inscription_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `inscription_has_n_requirements_student`
--
ALTER TABLE `inscription_has_n_requirements_student`
  ADD CONSTRAINT `fk_inscription_has_n_requirements_student_inscription1` FOREIGN KEY (`inscription_id`) REFERENCES `inscription` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inscription_has_n_requirements_student_n_requirements_stud1` FOREIGN KEY (`n_requirements_student_id`) REFERENCES `n_requirements_student` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inscription_has_n_requirements_student_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `lection`
--
ALTER TABLE `lection`
  ADD CONSTRAINT `fk_class_classroom1` FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_class_facilitator1` FOREIGN KEY (`facilitator_id`) REFERENCES `facilitator` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_class_subject1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_class_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lection_cohort1` FOREIGN KEY (`cohort_id`) REFERENCES `cohort` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `n_classification_subject`
--
ALTER TABLE `n_classification_subject`
  ADD CONSTRAINT `fk_n_classification_subject_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `n_days`
--
ALTER TABLE `n_days`
  ADD CONSTRAINT `fk_n_days_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `n_days_has_class`
--
ALTER TABLE `n_days_has_class`
  ADD CONSTRAINT `fk_n_days_has_class_class1` FOREIGN KEY (`class_id`) REFERENCES `lection` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_n_days_has_class_n_days1` FOREIGN KEY (`n_days_id`) REFERENCES `n_days` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_n_days_has_class_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `n_requirements_student`
--
ALTER TABLE `n_requirements_student`
  ADD CONSTRAINT `fk_n_requirements_student_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `n_types_subject`
--
ALTER TABLE `n_types_subject`
  ADD CONSTRAINT `fk_n_types_subject_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `qualification`
--
ALTER TABLE `qualification`
  ADD CONSTRAINT `fk_qualification_inscription1` FOREIGN KEY (`inscription_id`) REFERENCES `inscription` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_qualification_lection1` FOREIGN KEY (`lection_id`) REFERENCES `lection` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_qualification_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_student_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `fk_subject_n_classification_subject1` FOREIGN KEY (`n_classification_subject_id`) REFERENCES `n_classification_subject` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_subject_n_types_subject1` FOREIGN KEY (`n_types_subject_id`) REFERENCES `n_types_subject` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_subject_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_facilitator1` FOREIGN KEY (`facilitator_id`) REFERENCES `facilitator` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_student1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_user_data` FOREIGN KEY (`user_data_id`) REFERENCES `user_data` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
