-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 27-04-2019 a las 11:33:32
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
(34, 1, '2019-04-26 16:53:08', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'ordenador', '::1');

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
(99, NULL, 'Inscription', 'registro', '2019-04-24 23:16:19', 'Pre-inscripción registrada.'),
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
(149, NULL, 'Student', 'registro', '2019-04-26 16:51:46', 'Inscribiendo estudiante.'),
(150, NULL, 'User', 'registro', '2019-04-26 16:51:46', 'Agregando usuario.'),
(151, NULL, 'Inscription', 'registro', '2019-04-26 16:51:46', 'Pre-inscripción registrada.'),
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
(252, NULL, 'Student', 'registro', '2019-04-26 18:24:12', 'Inscribiendo estudiante.'),
(253, NULL, 'User', 'registro', '2019-04-26 18:24:12', 'Agregando usuario.'),
(254, NULL, 'Inscription', 'registro', '2019-04-26 18:24:12', 'Pre-inscripción registrada.'),
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
(562, 1, 'Cohort', 'consulta', '2019-04-27 11:16:42', 'Consultando datos del curso');

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
  `limit` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cohort`
--

INSERT INTO `cohort` (`id`, `active`, `initial_date`, `final_date`, `year`, `code`, `limit`, `create_time`, `update_time`, `user_id`) VALUES
(1, 1, '2019-04-23 04:00:00', '2019-07-31 04:00:00', '2019', 'M1-01', 2, '2019-04-24 21:07:17', NULL, 1);

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
(3, '147258', 'Mai', 'Mai', '0414-4123323', 'Ninguno', '2019-04-24 21:35:47', NULL, 1);

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
  `user_id` int(11) DEFAULT NULL
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
  `user_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
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
(3, 'estudiante', 'estudiante', 'estudiante', 'estudiante', '0414-4123323', '20861233', 0, '2019-04-24 23:16:19', NULL, NULL),
(4, 'Estududia', 'Estududia', 'Estududia', 'Estududia', '0414-4123323', '123456', 0, '2019-04-26 16:51:46', NULL, NULL),
(5, 'Recuerdo', 'MeGolpea', 'Aqui', 'EnAlma', '0414-4123322', '909876', 0, '2019-04-26 18:24:12', NULL, NULL);

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
  `cohort_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subject`
--

INSERT INTO `subject` (`id`, `name`, `description`, `n_classification_subject_id`, `n_types_subject_id`, `cohort_id`, `create_time`, `update_time`, `user_id`) VALUES
(1, 'Matemática ', 'Matemática divertida ', 1, 1, 1, '2019-04-24 21:14:36', NULL, 1),
(2, 'Ingles', 'Importante para establecer comunicación', 1, 1, 1, '2019-04-26 23:35:12', NULL, 1);

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
(3, 'sergio', 'baf37a0722c8bff52e200e5df8e9823a6cdccc8e28ae615263f6668d5a0c4f40', 'sergio@sergio.com', 1, 'ROLE_USER_F', NULL, NULL, 1, '2019-04-24 21:16:57', NULL, 0),
(5, 'maibe', '7a2ec40ff8a1247c532309355f798a779e00acff579c63eec3636ffb2902c1ac', 'maibe@maibe.com', 1, 'ROLE_USER_F', NULL, NULL, 3, '2019-04-24 21:35:47', NULL, 0),
(6, 'estudiante', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'estudiante@gmail.com', 0, 'ROLE_USER_S', NULL, 3, NULL, '2019-04-24 23:16:19', NULL, 0),
(7, 'estudiante2', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'estudiante2@gmail.com', 0, 'ROLE_USER_S', NULL, 4, NULL, '2019-04-26 16:51:46', NULL, 0),
(8, 'estudiante3', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'estudiante3@gmail.com', 0, 'ROLE_USER_S', NULL, 5, NULL, '2019-04-26 18:24:12', NULL, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `binnacle_actions`
--
ALTER TABLE `binnacle_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
