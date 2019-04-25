-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 25-04-2019 a las 10:19:14
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
  `user_id` int(11) NOT NULL,
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
(28, 6, '2019-04-25 01:23:46', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1');

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
(97, NULL, 'Student', 'registro', '2019-04-24 23:16:19', 'Inscribiendo estudiante.'),
(98, NULL, 'User', 'registro', '2019-04-24 23:16:19', 'Agregando usuario.'),
(99, NULL, 'Inscription', 'registro', '2019-04-24 23:16:19', 'Pre-inscripción registrada.');

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
  `user_id` int(11) NOT NULL
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
  `limit` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cohort`
--

INSERT INTO `cohort` (`id`, `active`, `initial_date`, `final_date`, `year`, `code`, `limit`, `create_time`, `update_time`, `user_id`) VALUES
(1, 1, '2019-04-23 04:00:00', '2019-07-31 04:00:00', '2019', 'M1-01', NULL, '2019-04-24 21:07:17', NULL, 1);

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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facilitator`
--

INSERT INTO `facilitator` (`id`, `identification`, `name`, `surname`, `phone`, `profession`, `create_time`, `update_time`, `user_id`) VALUES
(1, '84932345', 'Sergio', 'Patruyo', '0414-4123323', 'Ninguno', '2019-04-24 21:16:57', NULL, 1),
(3, '147258', 'Mai', 'Mai', '0414-4123323', 'Ninguno', '2019-04-24 21:35:47', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscription`
--

CREATE TABLE `inscription` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `aproved` tinyint(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cohort_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inscription`
--

INSERT INTO `inscription` (`id`, `student_id`, `aproved`, `create_time`, `update_time`, `user_id`, `cohort_id`) VALUES
(1, 3, 0, '2019-04-24 23:16:19', NULL, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscription_has_n_requirements_student`
--

CREATE TABLE `inscription_has_n_requirements_student` (
  `inscription_id` int(11) NOT NULL,
  `n_requirements_student_id` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lection`
--

CREATE TABLE `lection` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `facilitator_id` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lection`
--

INSERT INTO `lection` (`id`, `code`, `subject_id`, `classroom_id`, `facilitator_id`, `create_time`, `update_time`, `user_id`) VALUES
(1, 'AE-231', 1, 1, 1, '2019-04-24 21:45:13', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `n_classification_subject`
--

CREATE TABLE `n_classification_subject` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
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
  `user_id` int(11) NOT NULL
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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `n_days_has_class`
--

INSERT INTO `n_days_has_class` (`n_days_id`, `class_id`, `class_time`, `hours`, `create_time`, `update_time`, `user_id`) VALUES
(1, 1, '08:00', NULL, '2019-04-24 22:15:21', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `n_requirements_student`
--

CREATE TABLE `n_requirements_student` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `n_types_subject`
--

INSERT INTO `n_types_subject` (`id`, `name`, `create_time`, `update_time`, `user_id`) VALUES
(1, 'Obligatoria', '2019-04-24 21:12:03', NULL, 1),
(2, 'Electiva', '2019-04-24 21:12:06', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `qualification`
--

CREATE TABLE `qualification` (
  `id` int(11) NOT NULL,
  `note` varchar(45) DEFAULT NULL,
  `inscription_id` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(3, 'estudiante', 'estudiante', 'estudiante', 'estudiante', '0414-4123323', '20861233', 0, '2019-04-24 23:16:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `n_classification_subject_id` int(11) NOT NULL,
  `n_types_subject_id` int(11) NOT NULL,
  `cohort_id` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subject`
--

INSERT INTO `subject` (`id`, `name`, `description`, `n_classification_subject_id`, `n_types_subject_id`, `cohort_id`, `create_time`, `update_time`, `user_id`) VALUES
(1, 'Matemática ', 'Matemática divertida ', 1, 1, 1, '2019-04-24 21:14:36', NULL, 1);

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
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `email`, `is_active`, `role`, `user_data_id`, `student_id`, `facilitator_id`, `create_time`, `update_time`) VALUES
(1, 'admin', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'admin@admin.com', 1, 'ROLE_ADMIN', 1, NULL, NULL, '2019-04-24 00:00:00', NULL),
(2, 'usuario', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'usuario@usuario.com', 1, 'ROLE_USER', 2, NULL, NULL, '2019-04-24 21:05:32', NULL),
(3, 'sergio', 'baf37a0722c8bff52e200e5df8e9823a6cdccc8e28ae615263f6668d5a0c4f40', 'sergio@sergio.com', 1, 'ROLE_USER_F', NULL, NULL, 1, '2019-04-24 21:16:57', NULL),
(5, 'maibe', '7a2ec40ff8a1247c532309355f798a779e00acff579c63eec3636ffb2902c1ac', 'maibe@maibe.com', 1, 'ROLE_USER_F', NULL, NULL, 3, '2019-04-24 21:35:47', NULL),
(6, 'estudiante', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'estudiante@gmail.com', 0, 'ROLE_USER_S', NULL, 3, NULL, '2019-04-24 23:16:19', NULL);

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
  ADD KEY `fk_class_user1_idx` (`user_id`);

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
  ADD PRIMARY KEY (`n_days_id`,`class_id`),
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
  ADD KEY `fk_qualification_subject1_idx` (`subject_id`);

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
  ADD KEY `fk_subject_cohort1_idx` (`cohort_id`),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `binnacle_actions`
--
ALTER TABLE `binnacle_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT de la tabla `classroom`
--
ALTER TABLE `classroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `cohort`
--
ALTER TABLE `cohort`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `facilitator`
--
ALTER TABLE `facilitator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `inscription`
--
ALTER TABLE `inscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `lection`
--
ALTER TABLE `lection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `n_classification_subject`
--
ALTER TABLE `n_classification_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `n_days`
--
ALTER TABLE `n_days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `n_requirements_student`
--
ALTER TABLE `n_requirements_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `n_types_subject`
--
ALTER TABLE `n_types_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `qualification`
--
ALTER TABLE `qualification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
  ADD CONSTRAINT `fk_class_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `fk_qualification_subject1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
  ADD CONSTRAINT `fk_subject_cohort1` FOREIGN KEY (`cohort_id`) REFERENCES `cohort` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
