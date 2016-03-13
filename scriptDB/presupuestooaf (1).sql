-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-03-2016 a las 16:28:58
-- Versión del servidor: 5.5.44-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `presupuestooaf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('julio.rayo@ucr.ac.cr', '301b5aa4536421f92a9d851ce8850aee1f6d5fc574643e100fe5a403a89c847b', '2016-02-23 22:06:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tconfiguracion`
--

CREATE TABLE IF NOT EXISTS `tconfiguracion` (
  `idConfiguracion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vConfiguracion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iValor` int(11) NOT NULL DEFAULT '2016',
  `tUsuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idConfiguracion`),
  KEY `tUsuario_idUsuario` (`tUsuario_idUsuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `tconfiguracion`
--

INSERT INTO `tconfiguracion` (`idConfiguracion`, `vConfiguracion`, `iValor`, `tUsuario_idUsuario`) VALUES
(7, 'Periodo', 2016, 1),
(8, 'Periodo', 2016, 2),
(9, 'Periodo', 2016, 3),
(10, 'Periodo', 2016, 4),
(11, 'Periodo', 2016, 5),
(12, 'Periodo', 2016, 6),
(13, 'Periodo', 2015, 7),
(14, 'Periodo', 2016, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcoordinacion`
--

CREATE TABLE IF NOT EXISTS `tcoordinacion` (
  `idCoordinacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vNombreCoordinacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idCoordinacion`),
  UNIQUE KEY `tcoordinacion_idcoordinacion_unique` (`idCoordinacion`),
  UNIQUE KEY `vNombreCoordinacion` (`vNombreCoordinacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tcoordinacion`
--

INSERT INTO `tcoordinacion` (`idCoordinacion`, `vNombreCoordinacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
('1050', 'DOCENCIA', '0000-00-00 00:00:00', '2016-01-28 17:30:06', NULL),
('1051', 'INVESTIGACIÓN', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('1052', 'ACCIÓN SOCIAL', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('1053', 'VIDA ESTUDIANTIL', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('1054', 'ADMINISTRACIÓN', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('1055', 'DIRECCIÓN SUPERIOR DE LA SEDE DEL PACÍFICO', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('1056', 'Coord Adm', '2016-01-28 20:16:08', '2016-01-28 20:16:08', NULL),
('1057', 'Coord TCU', '2016-01-28 20:19:27', '2016-01-28 20:19:27', NULL),
('1077', 'PBDIRECCION', '2016-01-29 16:18:44', '2016-01-29 16:18:44', NULL),
('1088', 'PBDOC', '2016-01-29 16:17:41', '2016-01-29 16:17:41', NULL),
('1099', 'Pruebas ATIC 99', '2016-01-26 21:52:19', '2016-01-26 21:52:19', NULL),
('1234', 'La Coordinacion De Prueba', '2016-01-26 20:33:58', '2016-01-26 20:33:58', NULL),
('1942', 'LEY DE PESCA NO. 8436 SEDE PACÍFICO', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('2', 'cf', '2016-01-28 18:07:33', '2016-01-28 18:07:33', NULL),
('2009', 'ACTIVIDAD DEPORTIVA SEDE REG. PACÍFICO', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('2047', 'MAESTRÍA PROFESIONAL EN GESTIÓN HOTELERA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('2980', 'SERVICIOS DE MUELLE SEDE REG. PACÍFICO', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('2981', 'RESIDENCIAS ESTUDIANTILES S.R.P.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('5907', 'SEDE REGIONAL PACÍFICO, ADMINISTRACIÓN', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('6005', 'BACH. Y LIC. ADM. EMP. C/ENF. PROD. UNED-UCR', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('6456', 'ORESTES', '2016-01-25 19:22:07', '2016-01-25 19:22:07', NULL),
('6555', 'HOLA', '2016-01-25 19:23:55', '2016-01-25 19:23:55', NULL),
('7508', 'PACÍFICO CENTRAL', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('9999', 'COORDINACION DE PRUEBA', '2016-01-28 17:30:48', '2016-01-28 17:31:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tfactura`
--

CREATE TABLE IF NOT EXISTS `tfactura` (
  `idFactura` int(10) NOT NULL AUTO_INCREMENT,
  `tPartida_idPartida` int(255) NOT NULL,
  `vTipoFactura` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dFechaFactura` date NOT NULL,
  `vDocumento` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vDescripcionFactura` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vDetalleFactura` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iMontoFactura` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `tReserva_vReserva` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFactura`),
  KEY `tfactura_tpartida_idpartida_foreign` (`tPartida_idPartida`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=45 ;

--
-- Volcado de datos para la tabla `tfactura`
--

INSERT INTO `tfactura` (`idFactura`, `tPartida_idPartida`, `vTipoFactura`, `dFechaFactura`, `vDocumento`, `vDescripcionFactura`, `vDetalleFactura`, `iMontoFactura`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `tReserva_vReserva`) VALUES
(2, 16, 'Factura pendiente', '2016-01-15', 'N/A', 'prueba', 'ppp', 9000, '2016-01-25 20:00:55', '2016-01-25 20:00:55', NULL, NULL, NULL),
(3, 14, 'Factura pendiente', '2016-01-15', 'N/A', 'prueba', 'uu', 9000, '2016-01-25 20:00:55', '2016-01-25 20:00:55', NULL, NULL, NULL),
(4, 15, 'Factura pendiente', '2016-01-26', 'N/A', 'dasda', 'hhh', 9000, '2016-01-25 21:32:26', '2016-01-25 21:32:26', NULL, NULL, NULL),
(5, 14, 'Factura pendiente', '2016-01-26', 'N/A', 'dasda', 'ddfsd', 33, '2016-01-25 21:32:26', '2016-01-25 21:32:26', NULL, NULL, NULL),
(6, 17, 'Orden de servicio', '2016-01-25', 'N/A', '', 'a', 50000, '2016-01-25 22:00:19', '2016-01-25 22:00:19', NULL, NULL, NULL),
(7, 12, 'Orden de servicio', '2016-01-25', 'N/A', '', 'w', 1000, '2016-01-25 22:00:19', '2016-01-25 22:00:19', NULL, NULL, NULL),
(8, 17, 'Solicitud GECO', '2016-01-25', 'N/A', '', 'Reserva para galletas', 25000, '2016-01-25 22:05:09', '2016-01-25 22:05:09', NULL, NULL, 8),
(9, 17, 'Cancelacion GECO', '2016-01-25', 'N/A', '', 'Cancelacion de la reserva N/A Reserva para galletas', 2000, '2016-01-25 22:07:02', '2016-01-25 22:07:02', NULL, NULL, 8),
(10, 17, 'Pases Adicionales', '2016-01-25', 'N/A', '', 'Aumento en la reserva N/A Reserva para galletas', 2000, '2016-01-25 22:08:21', '2016-01-25 22:08:21', NULL, NULL, 8),
(11, 17, 'Pases Anulacion', '2016-01-25', 'N/A', '', 'Reduccion en la reserva N/A Reserva para galletas', 25000, '2016-01-25 22:09:09', '2016-01-25 22:09:09', NULL, NULL, 8),
(12, 17, 'Orden de servicio', '2016-01-25', 'N/A', '', 'Detalle', 5000, '2016-01-25 22:16:12', '2016-01-25 22:16:12', NULL, NULL, NULL),
(13, 15, 'Factura credito', '2016-01-25', 'N/A', '', 'prueba', 15000, '2016-01-25 22:20:03', '2016-01-25 22:20:03', NULL, NULL, NULL),
(15, 20, 'Reintegro de caja chica', '2016-01-28', 'N/A', 'NO posee ninguna observacion', 'Pago 2', 2000, '2016-01-28 17:45:21', '2016-01-28 17:45:21', NULL, NULL, NULL),
(16, 26, 'Factura pendiente', '2016-01-28', 'N/A', '', 'Pago', 25000000, '2016-01-28 17:47:06', '2016-01-28 17:47:06', NULL, NULL, NULL),
(17, 26, 'Solicitud GECO', '2016-01-28', 'N/A', '', 'Reserva para equipo de computo', 5000000, '2016-01-28 17:47:30', '2016-01-28 17:47:30', NULL, NULL, 17),
(19, 26, 'Factura credito', '2016-01-28', 'N/A', '', 'a', 22, '2016-01-28 18:08:25', '2016-01-28 18:08:25', NULL, NULL, NULL),
(21, 30, 'Solicitud GECO', '0000-00-00', 'GEco-202', 'Para adjudicarva Cartel SPUN-CD-001-2016, Compra de Equipo de Cómputo.', '20 cuadernos', 5000, '2016-01-28 21:06:54', '2016-01-28 21:06:54', NULL, NULL, 21),
(22, 19, 'Factura credito', '2016-01-28', 'SP-DIR-009-2016', 'Compras Varias', 'Acidos TIpo A', 1000000, '2016-01-28 21:17:24', '2016-01-28 21:17:24', NULL, NULL, NULL),
(23, 29, 'Factura credito', '2016-01-28', 'SP-DIR-009-2016', 'Compras Varias', 'Reactivos ', 1000000, '2016-01-28 21:17:24', '2016-01-28 21:17:24', NULL, NULL, NULL),
(24, 30, 'Cancelacion GECO', '2016-01-28', 'SP-02', 'Cancelación al cartel XXXX', 'Cancelacion de la reserva GEco-202 20 cuadernos', 3500, '2016-01-28 21:27:17', '2016-01-28 21:27:17', NULL, NULL, 21),
(25, 30, 'Cancelacion GECO', '2016-01-28', 'N/A', '', 'Cancelacion de la reserva GEco-202 20 cuadernos', 1500, '2016-01-28 21:45:47', '2016-01-28 21:45:48', NULL, NULL, 21),
(26, 30, 'Solicitud GECO', '2016-01-28', 'N/A', '', 'Solicitud de prieba', 1000000, '2016-01-28 21:54:13', '2016-01-28 21:54:13', NULL, NULL, 26),
(27, 30, 'Pases Adicionales', '2016-01-28', 'N/A', 'PB', 'Aumento en la reserva N/A Solicitud de prieba', 500000, '2016-01-28 21:55:43', '2016-01-28 21:55:43', NULL, NULL, 26),
(28, 30, 'Cancelacion GECO', '2016-01-28', 'N/A', '', 'Cancelacion de la reserva N/A Solicitud de prieba', 500000, '2016-01-28 22:12:47', '2016-01-28 22:12:47', NULL, NULL, 26),
(29, 30, 'Pases Anulacion', '2016-01-28', 'N/A', '', 'Reduccion en la reserva N/A Solicitud de prieba', 500000, '2016-01-28 22:13:13', '2016-01-28 22:13:13', NULL, NULL, 26),
(30, 30, 'Pases Anulacion', '2016-01-28', 'N/A', '', 'Reduccion en la reserva N/A Solicitud de prieba', 500000, '2016-01-28 22:13:39', '2016-01-28 22:13:40', NULL, NULL, 26),
(31, 30, 'Factura credito', '2016-01-28', 'N/A', '', 'Prueb Julio', 9000000, '2016-01-28 22:22:21', '2016-01-28 22:22:21', NULL, NULL, NULL),
(32, 36, 'Solicitud GECO', '2016-01-21', '2016-200', 'COMPRA ROTULOS', 'COMPRA ROTULOS', 200000, '2016-01-29 16:32:11', '2016-01-29 16:32:11', NULL, NULL, 32),
(33, 31, 'Solicitud GECO', '2016-01-21', '2016-200', 'COMPRA ROTULOS', 'ROTULOS', 300000, '2016-01-29 16:32:11', '2016-01-29 16:32:11', NULL, NULL, 33),
(34, 36, 'Cancelacion GECO', '2016-01-29', 'OCC 999866', '', 'Cancelacion de la reserva 2016-200 COMPRA ROTULOS', 200000, '2016-01-29 16:38:11', '2016-01-29 16:38:11', NULL, NULL, 32),
(35, 31, 'Cancelacion GECO', '2016-01-29', 'OCC 999866', '', 'Cancelacion de la reserva 2016-200 ROTULOS', 300000, '2016-01-29 16:38:11', '2016-01-29 16:38:11', NULL, NULL, 33),
(36, 35, 'Solicitud GECO', '2016-01-13', '2016-100', 'LAPICEROS', 'LAPICEROS', 200000, '2016-01-29 16:46:56', '2016-01-29 16:46:56', NULL, NULL, 36),
(37, 35, 'Pases Adicionales', '2016-01-29', '2016-100', 'LAPICEROS', 'Aumento en la reserva 2016-100 LAPICEROS', 100000, '2016-01-29 16:48:35', '2016-01-29 16:48:35', NULL, NULL, 36),
(38, 30, 'Solicitud GECO', '2016-02-02', 'Oficio SP-001-2016', 'Cartel SPUN-CD-001-2016', 'Cuadernos', 100000, '2016-02-02 17:22:31', '2016-02-02 17:22:31', NULL, NULL, 38),
(39, 30, 'Cancelacion GECO', '2016-02-02', 'Fatura 0001', 'Pagó de Factura CArtel SPUN-CD-001-2016', 'Cancelacion de la reserva Oficio SP-001-2016 Cuadernos', 50000, '2016-02-02 17:25:44', '2016-02-02 17:25:44', NULL, NULL, 38),
(40, 30, 'Pases Anulacion', '2016-02-02', 'PB', '', 'Reduccion en la reserva Oficio SP-001-2016 Cuadernos', 20000, '2016-02-02 17:29:22', '2016-02-02 17:29:22', NULL, NULL, 38),
(41, 30, 'Pases Anulacion', '2016-02-02', 'PB02', '', 'Reduccion en la reserva Oficio SP-001-2016 Cuadernos', 30000, '2016-02-02 17:30:25', '2016-02-02 17:30:25', NULL, NULL, 38),
(42, 24, 'Solicitud GECO', '2016-02-25', '111', 'prueba julio', 'prueba julio', 50000, '2016-02-25 21:10:41', '2016-02-25 21:10:41', NULL, NULL, 42),
(43, 12, 'Solicitud GECO', '2016-02-25', '112', 'otra prueba', 'prueba julio', 50000, '2016-02-25 21:11:17', '2016-02-25 21:11:17', NULL, NULL, 43),
(44, 24, 'Pases Adicionales', '2016-02-25', '020202', 'prueba julio', 'Aumento en la reserva 111 prueba julio', 20000, '2016-02-25 21:13:17', '2016-02-25 21:13:17', NULL, NULL, 42);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpartida`
--

CREATE TABLE IF NOT EXISTS `tpartida` (
  `idPartida` int(11) NOT NULL AUTO_INCREMENT,
  `codPartida` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `vNombrePartida` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vDescripcion` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idPartida`),
  UNIQUE KEY `codPartida` (`codPartida`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=227 ;

--
-- Volcado de datos para la tabla `tpartida`
--

INSERT INTO `tpartida` (`idPartida`, `codPartida`, `vNombrePartida`, `vDescripcion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(18, '1-11-11-11', 'Sueldos para cargos fijos', 'Remuneración básica o salario base que se otorga al personal fijo, permanente o interino por la prestación de servicios, de acuerdo con la naturaleza del trabajo, grado de especialización y la responsabilidad asignada al puesto o nivel jerárquico correspondiente, con sujeción a las regulaciones de las leyes laborales vigentes.', '0000-00-00 00:00:00', '2016-01-27 21:42:30', NULL),
(19, '0-01-01-01', 'Salario base', 'Corresponde al sueldo para remunerar al personal administrativo y al personal docente, de acuerdo a la escala salarial vigente.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(20, '0-01-01-02', 'Derechos adquiridos', 'Sumas originadas de cualquier concepto de pago consolidado en la relación laboral con la Institución, provenientes de modificaciones contractuales que deben otorgarse, tales como: fondo consolidado y fondo congelado.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(21, '0-01-01-03', 'Fondo disponible para revaloraciones', 'Son las sumas que reconoce la Institución a los funcionarios administrativos en virtud de cambios salariales por aumentos en el costo de la vida. De este fondo se toma lo correspondiente para financiar aumentos en el salario base. Sobre este fondo no se calcula anualidad y conjuntamente con el salario base, conforma el salario de contratación de un puesto.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(22, '0-01-01-04', 'Reajuste por reasignación', 'Corresponde a la diferencia entre los sueldos totales de un puesto que es reasignado a una categoría inferior. Se utiliza para conservar el nivel salarial del puesto al aplicar una reasignación negativa.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(23, '0-01-02-00', 'Jornales', 'Remuneraciones al personal no profesional que la institución contrata para que efectúe trabajos primordialmente de carácter manual, cuya retribución se establece por hora, día o destajo. Se excluye el personal de este tipo que se ha incorporado en el manual de clasificación de puestos.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(24, '0-01-03-00', 'Servicios especiales', 'Remuneraciones al personal profesional, técnico o administrativo que mantienen una relación laboral no mayor de un año, para realizar trabajos de carácter especial y temporal. El personal debe sujetarse a subordinación jerárquica y al cumplimiento de un determinado horario de trabajo, por tanto, la retribución económica respectiva, se establece de acuerdo con la clasificación y valoración del régimen que corresponda.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(25, '0-01-03-01', 'Servicios especiales', 'Incluye las remuneraciones al personal contratado con carácter temporal o transitorio, sujetos a un determinado horario de trabajo. Estos cargos y su remuneración se detallan y valoran de acuerdo al sistema de clasificación vigente y su aplicación debe contar con el correspondiente detalle de plazas a pagar.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(26, '0-01-03-02', 'Sobresueldos', 'Comprende el pago de aquellos gastos que como complementos salariales se otorgan a profesores investigadores, en reconocimiento a su trabajo adicional a la dedicación que normalmente desempeña. Además, se utiliza para el pago de los coordinadores y asistentes del examen de admisión y ubicación.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(27, '0-01-03-03', 'Salario Contractual Posgrado', 'Incluye las remuneraciones al personal docente del Sistema de Estudios de Posgrado con cargo a financiamiento complementario, es decir, quienes realizaran las actividades señaladas en la Escala Salarial de Máximos, definidas por la Rectoría en la Resolución R-192-2012. El monto de salario contractual corresponde al que determine la Comisión del Programa de Posgrado y según la Escala en mención. Este pago opera como “pago único” y no se aplican los conceptos de escalafón, pasos académicos, anualidad ni ningún otro concepto salarial. Se deben considerar las respectivas cargas sociales y se aplicará a los nombramientos tanto de los profesores de posgrado que se encuentran en régimen académico, como a los que no están en régimen y de igual forma, para los profesores que no tienen vinculación con la Universidad.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(28, '0-01-04-00', 'Sueldos a base de comisión', 'Retribución que se otorga a aquellas personas contratadas para el cumplimiento de actividades como la venta de bienes o servicios (seguros, libros, contratos de ahorro y crédito) o bien labores de recaudación mediante agentes al servicio de la entidad. Dichas personas mantienen una relación laboral con la entidad contratante.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(29, '0-01-05-00', 'Suplencias Prueba', 'Remuneraciones al personal que sustituye temporalmcente al titular de un puesto, que se encuentra de vacaciones, permiso con goce de salario del titular (permisos con goce de salario, permisos posparto), por un periodo predefinido e implica relación laboral con la institución. Las sustituciones por incapacidad se cargan a la cuenta presupuestaria en que esté nombrada la persona incapacitada, sea presupuesto ordinario o de vínculo externo.', '0000-00-00 00:00:00', '2016-01-27 20:22:42', NULL),
(30, '0-02-01-00', 'Tiempo extraordinario', 'Retribución eventual al personal que presta sus servicios en horas adicionales a la jornada ordinaria de trabajo, cuando necesidades impostergables de la entidad así lo requiera, ajustándose a las disposiciones legales y técnicas vigentes.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(31, '0-02-02-00', 'Recargo de funciones', 'Retribuciones que la Institución destina a los funcionarios, que en adición a sus propias funciones asumen temporalmente los deberes y responsabilidades de un cargo de nivel superior por ausencia temporal de su titular. También incluye los recargos por dirección, los conocimientos por elección y dirección, la remuneración especial y los recargos por jornada especial.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(32, '0-02-05-00', 'Dietas', 'Es el pago que se efectúa por la asistencia a sesiones o reuniones ante el Consejo Universitario del Representante Estudiantil y del representante de Colegios Profesionales.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(33, '0-03-01-00', 'Retribución por años servidos', 'Reconocimientos adicionales que la institución destina como remuneración a sus trabajadores por concepto de años laborados en el sector público y de acuerdo con lo que establece el ordenamiento jurídico correspondiente.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(34, '0-03-01-01', 'Escalafón', 'Comprende los pagos por concepto de aumento anual que reciben los docentes en propiedad y los funcionarios administrativos por cada año de servicio continuo en un mismo puesto.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(35, '0-03-01-02', 'Anualidad', 'Retribución adicional al salario base que se paga cada vez que el trabajador cumple aniversario de laborar en una institución pública, de acuerdo con la categoría de salarios en que esté ubicado su puesto. A dicha remuneración, también se le denomina "antigüedad", "aumentos anuales", "reconocimientos anuales", "retribuciones por antigüedad", pasos, entre otros. Incluye las sumas a que tienen derecho los servidores universitarios por cada año de servicio completo en la Institución.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(36, '0-03-02-00', 'Restricción al ejercicio liberal de la profesión', 'Compensación económica al servidor al que por legislación vigente se le ha impuesto restricción al ejercicio de la profesión que ostenta en su cargo.Prohibición del ejercicio liberal de la profesión: Compensación económica que se asigna a un servidor público, al que por vía de ley se le prohíbe ejercer en forma particular o privada la profesión que ostenta. Este reconocimiento es excluyente del reconocimiento por dedicación exclusiva.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(37, '0-03-03-00', 'Décimo tercer mes', 'Retribución extraordinaria de un mes de salario adicional o proporcional al tiempo laboral que otorga la institución por una sola vez, cada fin de año, a todos sus trabajadores. Calculado con el promedio de los salarios pagados a cada servidor por el período comprendido entre el 1 de diciembre de cada año y el 30 de noviembre del siguiente.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(38, '0-03-04-00', 'Salario escolar', 'Retribución salarial que consiste en un porcentaje calculado sobre el salario nominal mensual de cada trabajador. Dicho porcentaje se paga en forma acumulada en el mes de enero siguiente de cada año y se rige de conformidad con lo que disponga el ordenamiento jurídico correspondiente. El mismo lo acumula el patrono mensualmente a partir de la vigencia del decreto Nº 23495-MTSS (1 de julio de 1994 Gaceta N°138). Para efectos de cálculo, se tomarán en consideración los mismos componentes salariales que se utilizan para determinar el aguinaldo. El “Salario Escolar” esta sujeto a las cargas sociales de ley y al aguinaldo del período correspondiente.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(39, '0-03-99-00', 'Otros incentivos salariales (solo incentivo salarial)', 'Remuneraciones salariales no enunciadas en las subpartidas anteriores, caracterizadas principalmente por constituir erogaciones adicionales al salario base del personal que labora al servicio de la entidad, de acuerdo con la normativa jurídica y técnica que lo autorice.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(40, '0-03-99-01', 'Reconocimiento por régimen académico', 'Se incluye la remuneración que recibe el personal docente en régimen académico, correspondiente a los méritos académicos, antigüedad y grados de conformidad con la evaluación y aprobación de la Comisión de Régimen Académico.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(41, '0-03-99-02', 'Asignación profesional', 'Corresponde al estímulo que se otorga a los funcionarios universitarios, adicional al salario normal por dedicar sus servicios en forma exclusiva o extraordinaria a la Institución. También se ubica dentro de este renglón el incentivo salarial que recibe el funcionario administrativo por tener más requisitos académicos de los que exige el puesto que ocupa. Los componentes de este renglón son: dedicación exclusiva docente y administrativa, incentivo salarial administrativo, dedicación extraordinaria docente y dedicación exclusiva profesional en ciencias médicas.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(42, '0-03-99-03', 'Otros incentivos', 'Para efectos de presentar los informes de ejecución presupuestaria a la Contraloría General de la República, en este renglón se agrupan los siguientes conceptos salariales: escalafón, reconocimiento por régimen académico, recargos, derechos adquiridos, asignación profesional, fondo disponible para revaloraciones, reajuste por reasignación y otras remuneraciones.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(43, '0-03-99-04', 'Reconocimiento regional', 'Incluye los gastos derivados por el pago de un estímulo adicional, a funcionarios destacados en zonas alejadas a los principales centros poblacionales del país, de acuerdo a las normas fijadas por la Institución. Zonaje: Compensación adicional que reciben los servidores del sector público cuando prestan sus servicios permanentemente en un lugar distinto a su domicilio legal, o que eventualmente permanecen fuera de la circunscripción territorial de éste por más de un mes, en forma continua, y cuando la zona en donde realicen su trabajo tenga condiciones que justifiquen tal compensación.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(44, '0-03-99-05', 'Reconocimiento por Riesgo Policial', 'Corresponde al plus salarial pagaderos a aquellos funcionarios que en el desempeño de sus funciones se corra algún riesgo inminente para la integridad física en razón de la peligrosidad que pueda la función policial pueda significar.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(45, '0-04-01-00', 'Contribución patronal al seguro de salud de la CCSS', 'Aporte que las instituciones del Estado en su condición de patronos destinan a la Caja Costarricense de Seguro Social, para el seguro de salud de los trabajadores. Correspondientes al 9.25%.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(46, '0-04-05-00', 'Contribución patronal al Banco Popular y Desarrollo Comunal', 'Aportes que instituciones del Estado en su condición de patronos, destinan al Banco Popular y de Desarrollo Comunal, con el fin de incrementar su patrimonio, así como a la creación de reservas, bonificaciones a los ahorros o a proyectos de desarrollo a juicio de la Junta Directiva Nacional. Correspondiente al 0.50%.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(47, '0-05-01-00', 'Contribución patronal al seguro de pensiones de la CCSS', 'Contempla las cuotas que las instituciones del Estado como patronos destinan a la Caja Costarricense de Seguro Social, para financiar el seguro de pensiones de sus trabajadores y pensionados cubiertos por ese seguro. Correspondiente al 5.25%.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(48, '0-05-02-00', 'Aporte patronal al régimen obligatorio de pensiones complement.', 'Aportes que las instituciones del Estado como patronos aportan para el financiamiento al Régimen Obligatorio de Pensiones Complementarias de cada trabajador, según lo establecido por la Ley de Protección al Trabajador. Dicho pago se calcula como un porcentaje sobre el salario mensual del trabajador y se deposita en las cuentas individuales de éste en la operadora de pensiones de su elección. Correspondiente al 1,5%.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(49, '0-05-03-00', 'Aporte patronal fondo de capitalización laboral', 'Erogaciones que las instituciones del Estado como patronos aportan para el financiamiento del Fondo de Capitalización Laboral de cada trabajador establecido mediante Ley de Protección al Trabajador. Dicho aporte se calcula como un porcentaje sobre el salario mensual del trabajador y se deposita en las cuentas individuales de éste en la operadora de pensiones de su elección. Correspondiente al 3,0%.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(50, '0-05-05-00', 'Contribución patronal a fondos administrados por entes privados', 'Sumas que las instituciones del Estado como patrono aportan a aquellas instituciones de carácter privado que la ley autorice para administrar fondos de asociaciones solidaristas, fondos de pensiones complementarios y otros fondos de capitalización.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(51, '0-05-05-01', 'Cuota patronal Fondo de Pensiones y Jubilaciones Magisterio Nacional', 'Corresponde a la cuota patronal que por ley la Institución le gira al Fondo de Pensiones y Jubilaciones del Magisterio Nacional, correspondiente al 0.50% de Reparto y 7.25% de Capitalización', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(52, '0-05-05-02', 'Cuota patronal J.A.P. U.C.R.', 'Corresponde a la cuota patronal que la Institución le gira a la Junta Administradora del Fondo de Ahorro y Préstamo de la Universidad de Costa Rica (2.50%).', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(53, '0-99-99-00', 'Otras remuneraciones', 'Contratación de otros servicios personales no descritos en las subpartidas anteriores.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(54, '0-99-99-01', 'Otras remuneraciones', 'Comprende otras remuneraciones no contempladas en ninguno de los renglones anteriores, tales como: remuneración extraordinaria administrativa y docente, reajuste de vacaciones, etc.0-99-99-02. Diferencias en caja. Se destina para cubrir el fondo de los cajeros de la Institución en el desempeño de sus funciones, el cual se liquida semestralmente contra las diferencias de caja existentes en el período, de acuerdo a la reglamentación vigente.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(55, '0-99-99-03', 'Amortización cuentas pendientes ejercicios anteriores', 'Esta partida se destina para cubrir los egresos que la Institución debe cancelar, pero que corresponden a compromisos de períodos anteriores que no se cancelaron oportunamente: tales como diferencias salariales adeudadas a funcionarios o exfuncionarios, vacaciones proporcionales a funcionarios docentes, reasignaciones, reclasificaciones, revaloraciones.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(56, '0-99-99-05', 'Cuotas patronales y aguinaldo salario escolar amortización cuentas pendientes ejercicios anteriores', 'Se destina esta partida para cubrir los egresos que la Institución debe cancelar, pero que corresponde a compromisos del período anterior por concepto de las cuotas patronales y aguinaldo del Salario Escolar.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(57, '1-01-01-00', 'Alquiler de edificios, locales y terrenos', 'Corresponde al arrendamiento por periodos fijos y ocasionales, para uso de oficinas, bodegas, estacionamientos, centros de salud y locales diversos. Se excluye el alquiler de locales para impartir cursos, seminarios, charlas y otros similares que se deben clasificar en la subpartida 1-07-01 " Actividades de capacitación"', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(58, '1-01-02-00', 'Alquiler de maquinaria, equipo y mobiliario', 'Gastos por alquiler de todo tipo de maquinaria, equipo y mobiliario necesario para realizar las actividades de la institución. Considera además el servicio de operación de los equipos, si así lo consigna el contrato de alquiler. Incluye el alquiler de vehículos por kilometraje, el cual corresponde a las sumas que se reconocen a aquellos funcionarios que utilizan el vehículo de su propiedad en la ejecución de sus funciones, según el marco legal vigente. Se excluye el alquiler de equipo de cómputo el cual se registra en la subpartida 1-01-03 "Alquiler de equipo de cómputo".', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(59, '1-01-02-01', 'Alquiler de maquinaria, equipo y mobiliario', 'Incluye los pagos derivados de contratos de arriendo por uso de equipo que no pertenecen a la Institución (por ejemplo: alquiler de maquinaria y equipo, mobiliario y equipo de oficina, maquinaria y equipo de construcción, etc.).', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(60, '1-01-02-02', 'Gastos de kilometraje', 'Se utiliza para cargar el egreso por concepto del pago de kilometraje por el uso de vehículos propiedad de los funcionarios en giras oficiales de la Institución, de acuerdo con lo estipulado en el reglamento del servicio de transportes y el artículo 79 del reglamento de contratación administrativa.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(61, '1-01-03-00', 'Alquiler de equipo de cómputo', 'Contempla el arrendamiento de equipo para el procesamiento electrónico de datos, incluye toda clase de aplicaciones comerciales de "software". El alquiler de computadoras de propósito especial, dedicadas a realizar tareas específicas tales como las usadas en servicios de salud o producción se clasifican en la subpartida 1-01-02 "Alquiler de maquinaria, equipo y mobiliario.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(62, '1-01-03-01', 'Alquiler de equipo de cómputo', 'Comprende los egresos derivados de contratos de arriendo por uso de todo equipo o sistema digital (incluyendo sus componentes) que opera bajo control interno programable y de propósito general, tales como: computadores, microcomputadores, memorias, pantallas, teclados, dispositivos de almacenamiento magnético y óptico, impresoras, digitalizadores, graficadores, etc.; que no pertenecen a la Institución.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(63, '1-01-03-02', 'Alquiler de programas de computación', 'Incluye los pagos derivados de contratos de arriendo por uso de todo sistema o programa de instrucciones que gobiernan la operación de los equipos de cómputo, utilizando lenguajes de programación; que no pertenecen a la Institución.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(64, '1-01-04-00', 'Alquiler y derechos para telecomunicaciones', 'Abarca las obligaciones derivadas de contratos por alquileres y pago de derechos de telecomunicaciones, tales como alquiler de canales digitales, alquiler de líneas directas, participación de líneas extranjeras, entre otros.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(65, '1-01-99-00', 'Otros alquileres', 'Incluye el arrendamiento de otros bienes o derechos no contemplados en los conceptos anteriores.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(66, '1-02-01-00', 'Servicio de agua y alcantarillado', 'Gastos por servicio de agua para uso residencial, industrial y comercial; así como el servicio de alcantarillado.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(67, '1-02-02-00', 'Servicio de energía eléctrica', 'Incluye el pago de servicio de energía eléctrica para alumbrado, fuerza motriz y otros usos.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(68, '1-02-03-00', 'Servicio de correo', 'Contempla el pago de servicio de traslado nacional e internacional de toda clase de correspondencia postal, el alquiler de apartados postales, la adquisición de estampillas, y otros servicios conexos como respuesta comercial pagada.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(69, '1-02-04-00', 'Servicio de telecomunicaciones', 'Comprende el pago de servicios nacionales e internacionales necesarios para el acceso a los servicios de telefonía, cablegrafía, télex, facsímile, radio localizador y a redes de información como "Internet" y otros servicios similares.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(70, '1-02-99-00', 'Otros servicios básicos', 'Corresponde al pago de servicios básicos no considerados en los conceptos anteriores, por ejemplo los servicios que brindan las municipalidades como recolección de desechos sólidos, aseo de vías y sitios públicos, alumbrado público y otros.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(71, '1-03-01-00', 'Información', 'Corresponde a los gastos por servicios de publicación e información que utilizan las instituciones públicas para efecto de dar a conocer asuntos de carácter oficial, de tipo administrativo, cultural, educativo, científicos o técnicos. Incluye la publicación de anuncios avisos, edictos, acuerdos, reglamentos, decretos, leyes, la preparación de guiones, documentales y similares, trasmitidos a través de medios de comunicación masiva, escritos, radiales, audiovisuales o cualquier otro medio. La característica del gasto incluido en esta subpartida es la de mantener informada a la ciudadanía en general, y no de resaltar aspectos de imagen de las instituciones publicas, los cuales se deben registrar en la subpartida siguiente de 1-03-02 "Publicidad y propaganda". De acuerdo a las Normas Generales y Específicas para la formulación, ejecución y evaluación del presupuesto de la Universidad de Costa Rica E1.12, se requiere VºBº de la ODI para su ejecución.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(72, '1-03-02-00', 'Publicidad y propaganda', 'Corresponde a los gastos por servicios de publicidad y propaganda que utilizan las instituciones públicas, tales como anuncios, cuñas, avisos, patrocinios, preparación de guiones y documentales de carácter comercial, y otros, los cuales llegan a la ciudadanía a través de los medios de comunicación masiva, escritos, radiales, audiovisuales o cualquier otro medio, que tienen como fin atraer a posibles compradores, espectadores y usuarios o bien resaltar la imagen institucional. Incluye los contratos para servicios de impresión, relacionados con la publicidad y propaganda institucional tales como: revistas, periódicos, libretas, agendas y similares, así como impresión de artículos como llaveros y lapiceros.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(73, '1-03-03-00', 'Impresión, encuadernación y otros', 'Contempla los gastos por concepto de servicios de impresión, encuadernación y reproducción de revistas, libros, periódicos, comprobantes, títulos valores, especies fiscales y papelería en general utilizada en la operación propia de las instituciones. Además, incluye los servicios de reproducción fotostática.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(74, '1-03-04-00', 'Transporte de bienes', 'Erogaciones por concepto de transporte de carga de objetos y animales, hacia el exterior, desde el exterior o dentro del territorio nacional. Comprende además el servicio de remolque. Se excluyen las sumas que se destinan al transporte o flete del equipo, el mobiliario o la maquinaria que adquiere la Institución, las cuales se registran en la partida 5 "Bienes duraderos" en las subpartidas respectivas.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(75, '1-03-05-00', 'Servicios aduaneros', 'Contempla la atención de servicios relacionados con las importaciones y exportaciones de mercancías tales como bodegaje, almacenaje, desalmacenaje y otros. Los gastos por servicios aduaneros en que se incurre por la adquisición de bienes duraderos, forman parte del costo total de adquisición de los mismos y como tal se deben imputar en la subpartida correspondiente.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(76, '1-03-06-00', 'Comisiones y gastos por servicios financieros y comerciales', 'Incluye los gastos por concepto de comisiones, variaciones cambiarias y otros cargos en que incurre la Institución al utilizar el sistema bancario nacional y a organismos financieros públicos o privados, como recaudadores de ingresos y como agentes pagadores.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(77, '1-03-07-00', 'Servicios de transferencia electrónica de información', 'Abarca la cancelación de los servicios de acceso a información especializada, cuya obtención se realice a través de medios informáticos, telemáticos y/o electrónicos.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(78, '1-04-01-00', 'Servicios médicos y de laboratorio', 'Comprende las erogaciones por concepto de servicios profesionales y técnicos para realizar trabajos en el campo de la salud. Incluye los servicios integrales de salud.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(79, '1-04-02-00', 'Servicios jurídicos', 'Incluye los pagos por servicios profesionales y técnicos para elaborar trabajos en el campo de la abogacía y el notariado.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(80, '1-04-03-00', 'Servicios de ingeniería', 'Gastos destinados al pago de servicios profesionales y técnicos para realizar trabajos en los diferentes campos de la ingeniería tales como la ingeniería civil, eléctrica, forestal, química, mecánica, etc. Se excluyen los gastos relativos a la supervisión de la construcción de obras públicas las cuales se registran en el grupo 5-02 "Construcciones, adiciones y mejoras" en las subpartidas correspondientes.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(81, '1-04-04-00', 'Servicios de ciencias económicas y sociales', 'Corresponde a la cancelación de servicios profesionales y técnicos para la elaboración de trabajos en las áreas de contaduría, economía, finanzas, sociología y las demás áreas de las ciencias económicas y sociales.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(82, '1-04-05-00', 'Servicios de desarrollo de sistemas informáticos', 'Atención al pago de servicios profesionales o técnicos que se contratan, para el desarrollo de "software" a la medida o de nuevos sistemas informáticos. Además del soporte técnico y el mantenimiento a dichos sistemas.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(83, '1-04-06-00', 'Servicios Generales', 'Incluye los gastos por concepto de servicios contratados con personas físicas o jurídicas, para que realicen trabajos específicos de apoyo a las actividades sustantivas de la institución, tales como servicios de vigilancia, de aseo y limpieza, de confección y lavandería, de manejo de automóvil y otros servicios misceláneos.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(84, '1-04-99-00', 'Otros Servicios de gestión y apoyo', 'Comprende el pago por concepto de servicios profesionales y técnicos con personas físicas o jurídicas, tanto nacionales como extranjeras para la realización de trabajos específicos en campos no contemplados en las subpartidas anteriores.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(85, '1-05-01-00', 'Transporte dentro del país', 'Contempla los gastos por concepto de servicio de traslado que las instituciones públicas reconocen a sus servidores cuando éstos deban desplazarse en forma transitoria de su centro de trabajo a algún lugar del territorio nacional, con el propósito de cumplir con las funciones de su cargo.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(86, '1-05-02-00', 'Viáticos dentro del país', 'Erogaciones por concepto de atención de hospedaje, alimentación y otros gastos menores relacionados, que las instituciones públicas reconocen a sus servidores, cuando éstos deban desplazarse en forma transitoria de su centro de trabajo a algún lugar del territorio nacional, con el propósito de cumplir con las funciones a su cargo. El monto se establece con base en una cuota diaria que no puede ser superior a la establecida en el reglamento de viáticos aprobado por la Contraloría General de la República.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(87, '1-05-03-00', 'Transporte en el exterior', 'Corresponde al pago de los servicios de traslado que las instituciones públicas reconocen a sus funcionarios o a aquellos a quien la legislación autorice, cuando deban desplazarse hacia el exterior o desde el exterior, con el propósito de cumplir con las funciones a su cargo.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(88, '1-05-04-00', 'Viáticos en el exterior', 'Erogaciones por concepto de hospedaje, alimentación y otros gastos menores relacionados (impuestos de salida), que las instituciones públicas reconocen a sus servidores o a aquellos que la legislación autorice, cuando estos deban desplazarse en forma transitoria de su centro de trabajo al exterior o desde el exterior, con el propósito de cumplir con las funciones a su cargo.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(89, '1-06-01-00', 'Seguros', 'Corresponde a las erogaciones para la cobertura de seguros de daños que cubren todos los riesgos asegurables a que están expuestas las instituciones y sus trabajadores, tales como el seguro obligatorio de vehículos, seguro de incendio, responsabilidad civil.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(90, '1-06-01-01', 'Seguros', 'Pago de primas para el seguro tanto de personas (al servicio de la Institución) como: edificios, vehículos, equipo, mobiliario, dinero en tránsito, riesgos diversos. Excluye los gastos por seguridad social.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(91, '1-06-01-02', 'Seguro de riesgos profesionales', 'Este renglón comprende el pago que realiza la Institución por concepto de primas sobre la póliza de riesgos profesionales (riesgos del trabajo), que cubre a los funcionarios al servicio de la Universidad', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(92, '1-06-01-03', 'Seguros de automóviles', 'En este reglón se registran todos los pagos por seguros de vehículos que se cancelan ante el Instituto Nacional de Seguros, así como los pagos por derecho de circulación y la Revisión Técnica Vehicular.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(93, '1-07-01-00', 'Actividades de capacitación', 'Gastos por servicios inherentes a la organización y participación en eventos de formación. Se excluyen las becas que se clasifican en la subpartida 6-02-01 "Becas a funcionarios". Esta subpartida considera los siguientes conceptos: Organización de congresos, seminarios, cursos y actividades afines: Servicios y bienes inherentes a la organización y realización de eventos de capacitación y aprendizaje como seminarios, charlas, congresos, simposios, cursos y similares. Se pueden contratar de manera integral o bien por separado. Se incluyen por ejemplo, las contrataciones de instructores y de personal de apoyo; salas de instrucción, de maquinaria, equipo y mobiliario; útiles, materiales y suministros como cartapacios, afiches, flores, placas, pergaminos, alimentación y similares. Incluye las comidas que se brinda a los participantes de los eventos en el transcurso de los mismos. En este concepto se excluyen las sumas asignadas a las recepciones por inauguración, clausuras y otras atencione', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(94, '1-07-02-00', 'Actividades protocolarias y sociales', 'Están constituidos por erogaciones destinadas al pago de los servicios, útiles, materiales y suministros diversos, necesarios para efectuar celebraciones y cualquier otra atención que se brinde a funcionarios o personas ajenas a la entidad, tales como recepciones oficiales, conmemoraciones, agasajos, atención en reuniones oficiales, exposiciones, congresos, seminarios, cursos de capacitación, eventos especiales y otros con características similares, los que deben estar acorde a las restricciones técnicas y jurídicas correspondientes. Incluye las cuotas periódicas de pertenencia o afiliación a organizaciones que desarrollan actividades de esta naturaleza. Se excluyen los gastos por servicios de alimentación en la organización de congresos, seminarios, cursos de capacitación, simposios, charlas y otras afines, los que se clasifican en la subpartida 1-07-01 "Actividades de capacitación"', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(95, '1-07-03-00', 'Gastos de Representación Institucional', 'Contemplan las sumas sujetas a la liquidación y a la verificación posterior, que se asignan a funcionarios debidamente autorizados para la atención oficial de personas ajenas a la institución para la cual laboran. Sin embargo, su liquidación queda sujeta a rendición de cuentas con base en las respectivas facturas.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(96, '1-08-01-00', 'Mantenimiento de edificios y locales', 'Corresponde a gasto por concepto de mantenimiento preventivo y habitual de oficinas, bodegas, locales diversos, museos, hospitales y similares, por ejemplo: pintura de paredes, reparaciones y remodelaciones menores en techos, paredes y pisos. Se incluye el mantenimiento y reparación de los sistemas internos eléctricos, telefónicos y de cómputo, así como los sistemas de seguridad de los edificios.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(97, '1-08-02-00', 'Mantenimiento de vías de comunicación', 'Contempla el mantenimiento preventivo y habitual de las vías de comunicación.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(98, '1-08-03-00', 'Mantenimiento de instalaciones y otras obras', 'Gastos relacionados con el mantenimiento y reparación preventivo y habitual de obras de diversa naturaleza, tales como obras eléctricas y de telecomunicaciones.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(99, '1-08-04-00', 'Mantenimiento y reparación de maquinaria y equipo de produc.', 'Asignaciones para la atención de gastos por mantenimiento y reparaciones preventivo y habitual de la maquinaria y equipo de producción, tales como tractores agrícolas, cosechadoras, excavadoras, equipo de imprenta, incubadoras, equipo de fumigación, equipo de riego, calderas, y generadores.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(100, '1-08-05-00', 'Mantenimiento y reparación de equipo de transporte', 'Contempla los gastos por mantenimiento y reparaciones preventivo y habitual de toda clase de equipo de transporte, tracción y elevación, tales como automóviles, buses, camiones, grúas, embarcaciones, motocicletas y cualquier otro equipo de naturaleza similar.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(101, '1-08-06-00', 'Mantenimiento y reparación de equipo de comunicación', 'Corresponde al mantenimiento y reparaciones preventivos y habituales de equipos de comunicación tales como centrales telefónicas, antenas, transmisores, receptores, teléfonos, faxes, equipo de radio, video filmador, equipo de cine, entre otros.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(102, '1-08-07-00', 'Mantenimiento y reparación de equipo y mobiliario de oficina', 'Comprende el mantenimiento y reparaciones preventivos y habituales de equipo y mobiliario que se requiere para el funcionamiento de oficinas como máquinas de escribir, archivadores, calculadoras, mimeógrafos, ventiladores, fotocopiadoras, escritorios, sillas.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(103, '1-08-08-00', 'Mantenimiento y reparación de equipo de cómputo y sistemas de información', 'Contempla los gastos por concepto de mantenimiento y reparaciones preventivos y habituales de computadoras tanto la parte física como en el conjunto de programas y sus equipos auxiliares y otros. Se excluye el mantenimiento y reparación de equipos de propósito especial, dedicadas a realizar tareas específicas, los cuales deben clasificarse según su propósito en las demás subpartidas correspondientes al grupo 1-08 "Mantenimiento y reparac."', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(104, '1-08-99-00', 'Mantenimiento y reparación de otros equipos', 'En esta subpartida se incluye el mantenimiento y reparación preventivos y habituales de otros equipos no contemplados en las subpartidas anteriores, comprenden entre otros el mantenimiento y reparación de equipo y mobiliario médico, hospitalario, de laboratorio, de investigación y protección ambiental.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(105, '1-99-05-00', 'Deducibles', 'Corresponde a sumas previamente establecidas dentro de las condiciones de la póliza de seguro, que se reconocen al momento de indemnizar una pérdida.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(106, '1-99-99-00', 'Otros servicios no especificados', 'Contempla otros servicios no considerados en los grupos y subpartidas anteriores.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(107, '1-99-99-01', 'Otros servicios', 'Gastos por concepto de servicios no personales, no incluido en ninguno de los renglones anteriores, tales como: derechos de autor, derechos telefónicos, premios por concursos. Mensualidad de servicio de beeper, parqueos, carga de extinguidores, servicios de fumigación, polarizado de vidrios, servicio de cable, parqueos, lavado de autos, lavado de manteles.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(108, '1-99-99-02', 'Servicios administrativos', 'Monto porcentual que percibe la Institución por la administración de los recursos no considerados como corrientes y que tienen un objetivo o fin específico tales como: Fondos Restringidos, Cursos Especiales y las Empresas Auxiliares.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(109, '1-99-99-03', 'Servicios actividades estudiantiles', 'Atención a los grupos estudiantiles que representan a la Universidad en actividades académicas, culturales, deportivas entre otras. (Acuerdo Consejo Universitario sesión N° 5013 artículo 3, del 20 de septiembre de 2005).', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(110, '1-99-99-04', 'Pago de servicios de periodos anteriores', 'Pago por servicios de periodos anteriores de diversa naturaleza, incluyendo servicios por mantenimiento, gastos por servicios de limpieza y para el pago de devoluciones de derecho de matrícula y cualquier otro gasto no considerado dentro de los conceptos anteriores', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(111, '2-01-01-00', 'Combustibles y lubricantes', 'Abarca toda clase de sustancias, combustibles, lubricantes y aditivos de origen vegetal, animal o mineral tales como gasolina, diesel, carbón mineral, canfín, búnker, gas propano, aceite lubricante para motor, aceite de transmisión, grasas, aceite hidráulico y otros; usados generalmente en equipos de transporte, plantas eléctricas, calderas y otros. De acuerdo a la Normas Generales y Específicas para la formulación, ejecucuión y evaluación del presupuesto de la Universidad de Costa Rica E-1.9, la Sección de Transportes será la única unidad autorizada para la compra y distribución de combustible que utilizan los vehículos de la institución', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(112, '2-01-02-00', 'Productos farmacéuticos y medicinales', 'Contempla cualquier tipo de sustancia o producto natural, sintético o semisintético y toda mezcla de esas sustancias o productos que se utilicen en personas, para el diagnóstico, prevención, curación y modificación de cualquier función fisiológica.Incluye los preparados farmacéuticos para uso médico, preparados genéricos y de marcas registradas como ampollas, cápsulas, tabletas, grageas, jarabes, ungüentos, preparados para la higiene bucal y dental, así como productos botánicos pulverizados, molidos o preparados de otra forma, entre otros.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(113, '2-01-03-00', 'Productos veterinarios', 'Incluye los gastos por concepto de sustancias o productos naturales, sintéticos o semisintéticos y su mezcla, que se usan para el diagnóstico, prevención, tratamiento, curación y alivio de enfermedades y síntomas en animales de cualquier especie.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(114, '2-01-04-00', 'Tintas, pintura y diluyentes', 'Comprende los gastos por concepto de productos y sustancias naturales o artificiales que se emplean para teñir, pintar y dar un color determinado a un objeto, como por ejemplo: tintas para escribir, dibujar y para imprenta; pinturas, barnices, esmaltes y lacas; pigmentos y colores preparados; diluyentes y removedores de pintura, entre otros.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(115, '2-01-99-00', 'Otros productos químicos', 'Abarca los pagos por concepto de productos químicos no enunciados en las subpartidas anteriores, caracterizados principalmente por constituir sustancias químicas naturales o artificiales, entre ellos: Abonos y fertilizantes: Sustancias y productos que se emplean para suplir los nutrientes de las plantas, sean estos orgánicos como la fórmula orgánica básica o químicos como son los abonos nitrogenados, fosfatados, potásicos y otros. Insecticidas, fungicidas y similares: Sustancias y productos que se usan para eliminar insectos o destruir gérmenes nocivos, tales como, insecticidas, raticidas, fungicidas, plaguicidas, herbicidas, productos antigerminantes, y otros productos químicos de similares características y usos.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(116, '2-01-99-01', 'Reactivos y útiles de laboratorio', 'Comprende todos los gastos por la compra de productos químicos y útiles para la operación de los laboratorios de enseñanza o utilizados en las investigaciones.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(117, '2-01-99-02', 'Abonos, insecticidas, herbicidas y otros', 'Son los egresos provenientes de la adquisición de abonos y fertilizantes naturales o químicos; gastos por la compra de insecticidas y otros productos químicos para combatir plagas, insectos y plantas dañinas.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(118, '2-02-01-00', 'Productos pecuarios y otras especies', 'Comprende la adquisición de ganado y otras especies animales cuyo uso no está dirigido a la reproducción, comercialización o trabajo. Incluye aquellas especies destinadas a la investigación u otros usos. Los bienes incorporados en esta subpartida tienen la característica de no ser capitalizables; en caso contrario se deben clasificar en la subpartida 5-99-01 "Semovientes". Cuando se asignen recursos para la compra de productos pecuarios destinados a la alimentación humana o animal, deben clasificarse en la subpartida 2-02-03 "Alimentos y bebidas" 2-02-04 "Alimentos para animales" según corresponda.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(119, '2-02-02-00', 'Productos agroforestales', 'Abarca la adquisición de productos agroforestales sometidos en alguna medida a técnicas de cultivo y desarrollo en los sectores agrícola y forestal tales como: semillas, almácigo de todo tipo y plantas en general, que se utilizan con fines de investigación, reforestación y otros. La madera en sus diferentes formas se clasifica en la subpartida 2-03-03 “Maderas y sus derivados"', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(120, '2-02-03-00', 'Alimentos y bebidas', 'Corresponde a la compra de alimentos y bebidas naturales, semimanufacturados o industrializados para el consumo humano. Incluye los gastos de comida y otros servicios de restaurante brindados al personal que labora en las instituciones públicas, así como a usuarios de los servicios que estas brindan. No se aplican para actividades de capacitación, protocolarias o sociales las cuales se deben imputar a las subpartidas incorporadas en el grupo 1-07 "Capacitación y protocolo".', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(121, '2-02-04-00', 'Alimentos para animales', 'Incluye los gastos de alimentos y bebidas naturales, semimanufacturados o industrializados para el consumo animal, como por ejemplo: concentrados, mezclas para engorde y otros similares.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(122, '2-03-01-00', 'Materiales y productos metálicos', 'Comprende la adquisición de materiales y productos fabricados con minerales metálicos, como hierro, acero, aluminio, cobre, zinc, bronce y otros, por ejemplo: lingotes, varillas, planchas, planchones, perfiles, alambres, hojalatas, cerraduras, candados, entre otros.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(123, '2-03-02-00', 'Materiales y productos minerales y asfálticos', 'Contempla la adquisición de materiales y productos fabricados con minerales no metálicos así como con la mezcla de ellos. Incluye entre otros los productos de barro, asbesto, cemento y similares; asfalto natural, asfalto artificial y mezclas asfálticas, obtenidas como un producto derivado del proceso de refinamiento del petróleo; cemento, cal y otros similares; piedra, arcilla y arena.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(124, '2-03-03-00', 'Madera y sus derivados', 'Corresponde a la compra de todo tipo de madera sujeta a algún grado de elaboración o semielaboración tales como: madera en trozas, madera aserrada (tablas, reglas, tablilla, etc.), madera prensada, puertas, ventanas y marcos. No incluye el mobiliario elaborado con madera, el cual se registra en la partida 5 "Bienes duraderos" en las subpartidas correspondientes.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(125, '2-03-04-00', 'Materiales y productos eléctricos, telefónicos y de cómputo', 'Adquisición de materiales y productos que se requieren en la construcción, mantenimiento y reparación de los sistemas eléctricos, telefónicos y de cómputo. Como ejemplo se citan los siguientes: todo tipo de cable, tubos, conectadores, uniones, cajas octogonales, toma corrientes, cajas telefónicas.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(126, '2-03-05-00', 'Materiales y productos de vidrio', 'Gastos por concepto de toda clase de vidrio y piezas de vidrio necesarios para la construcción, mantenimiento y reparación de activos, tales como: vidrio colado o laminado, cristales, vidrios de seguridad, espejos o envolturas tubulares de vidrios, vidrio óptico, etc.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(127, '2-03-06-00', 'Materiales y productos de plástico', 'Incluye la adquisición de artículos de plástico que se requieren en labores de construcción, mantenimiento y reparación, tales como: mangueras, recipientes, tubos y accesorios de tipo P.V.C, láminas, entre otros. Se excluyen los productos de plástico que se destinan a otras actividades ajenas a la construcción, mantenimiento y reparación de activos, los cuales se deben registrar en las subpartidas que correspondan.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(128, '2-03-99-00', 'Otros materiales y productos de uso en la construcción', 'Comprende la compra de otros materiales y productos de uso en la construcción, mantenimiento y reparación no considerados en las subpartidas anteriores.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(129, '2-04-01-00', 'Herramientas e instrumentos', 'Incluye la adquisición de implementos no capitalizables que se requieren para realizar actividades manuales como la carpintería, mecánica, electricidad, artesanía, agricultura, instrumentos médico, hospitalarios y de investigación, entre otras. A manera de ejemplo se citan: martillos, cepillos, palas, carretilla tenazas, alicates, cintas métricas, llaves fijas y brújulas, etc.Las herramientas e instrumentos, que por su precio y durabilidad se capitalicen, se consideran como equipo y por lo tanto se clasifican en la partida 5 "BIENES DURADEROS" en las partidas correspondientes.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `tpartida` (`idPartida`, `codPartida`, `vNombrePartida`, `vDescripcion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(130, '2-04-02-00', 'Repuestos y accesorios', 'Abarca los gastos por concepto de compra de partes y accesorios que se usan en el mantenimiento y reparaciones de maquinaria y equipo, siempre y cuando los repuestos y accesorios no incrementen la vida útil del bien, en cuyo caso se clasificará en el grupo 5-01 "MAQUINARIA, EQUIPO Y MOBILIARIO" en las partidas correspondientes. Se excluyen los repuestos y accesorios destinados al mantenimiento y reparación de los sistemas eléctricos, telefónicos y de cómputo que forman parte integral de las obras, los cuales se clasifican en la subpartida 2-03-04 "Materiales y productos eléctricos, telefónicos y de cómputo".', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(131, '2-99-01-00', 'Útiles y materiales de oficina y cómputo', 'Corresponde a la adquisición de artículos que se requieren para realizar labores de oficina, de cómputo y para la enseñanza, tales como: bolígrafos, disquetes, discos compactos y otros artículos de respaldo magnético, cintas para máquinas, lápices, engrapadoras, reglas, borradores, clips, perforadoras, tiza, cintas adhesivas, punteros, rotuladores, pizarras no capitalizables, láminas plásticas de transparencias y artículos similares. Excluye todo tipo de papel de oficina que se incluye en la subpartida 2-99-03 "Productos de papel, cartón e impresos".', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(132, '2-99-01-01', 'Útiles y materiales de oficina', 'Son los egresos constituidos por la adquisición de útiles y materiales necesarios para el desempeño de las labores normales de la oficina, tales como: lápices, lapiceros, bolígrafos, grapadoras, reglas, plumas, clips, perforadoras, papeleras, cintas adhesivas, sacapuntas, fechadores, correctores, ampos, carpetas colgantes, etc.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(133, '2-99-01-03', 'Útiles, materiales educacionales y deportivos', 'Gastos por la compra de útiles educacionales y culturales, tales como: mapas, esferas y material didáctico en general. Además incluye la adquisición de artículos para el deporte en general, tales como: fútbol, béisbol, baloncesto, atletismo, etc. Se incluye también la compra de trofeos y medallas.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(134, '2-99-01-04', 'Útiles y materiales de imprenta y fotografía', 'Son las erogaciones ocasionadas en la compra de útiles, materiales básicos y especializados para el funcionamiento de talleres de impresión, reproducción y encuadernación, comprende además los útiles y materiales que se utilizan en los diferentes procesos fotográficos.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(135, '2-99-01-05', 'Útiles y materiales de computación', 'Incluye los egresos constituidos por la adquisición de útiles y materiales de cómputo, necesarios para el desempeño de las labores normales de oficina e investigación, tales como: instalación, ordenamiento, utilización y funcionamiento del equipo de cómputo, incluyendo cintas y toner para impresora, diskettes, mouse, protectores de picos, patch panel, rack, c.d., memorias USB, etc.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(136, '2-99-01-06', 'Útiles y materiales de información bibliográfica', 'Corresponde a la adquisición de cualquier material impreso, catalogado como de información bibliográfica y que no forma parte del la partida de bienes duraderos, tales como: mapas, esferas, publicaciones.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(137, '2-99-02-00', 'Útiles y materiales médico, hospitalario y de investigación', 'Comprende la adquisición de útiles y materiales no capitalizables que se utilizan en las actividades médico-quirúrgicas, de enfermería, farmacia, laboratorio e investigación, tales como agujas hipodérmicas, jeringas, material de sutura, guantes, catéter y otros.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(138, '2-99-03-00', 'Productos de papel, cartón e impresos', 'Incluye la adquisición de papel y cartón de toda clase, así como sus productos. Se cita como ejemplo: papel bond, papel periódico, sobres, papel para impresoras, cajas de cartón, papel engomado y adhesivo en sus diversas formas. También comprende los productos de imprenta tales como: formularios, folletos de cualquier índole, tarjetas, calendarios, partituras, periódicos por compra directa o suscripción y demás productos de las artes gráficas. Incluye además los libros, revistas, textos de enseñanza y guías de estudio, que por su costo relativo y vida útil no son capitalizables, en caso contrario, deben clasificarse en la subpartida "Equipo y mobiliario educacional, deportivo y educativo”. Cuando la Institución los adquiera para la venta, se clasifican en la subpartida 2-05-02 "Productos terminados".', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(139, '2-99-04-00', 'Textiles y vestuario', 'Contempla las compras de todo tipo de hilados, tejidos de fibras artificiales y naturales y prendas de vestir, incluye tanto la adquisición de los bienes terminados como los materiales para elaborarlos. Se cita como ejemplo: paraguas, uniformes, ropa de cama, cortinas, persianas, alfombras, colchones, cordeles, redes, calzado de todo tipo, bolsos y otros artículos similares. Los servicios de confección se clasifican en la subpartida 1-04-06 "Servicios generales"', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(140, '2-99-05-00', 'Útiles y materiales de limpieza', 'Adquisición de artículos necesarios para el aseo general de los bienes públicos, tales como bolsas plásticas, escobas, cepillos de fibras naturales y sintéticas, ceras, desinfectantes, jabón de todo tipo, desodorante ambiental, exprimidor de estropajo (exprimidor de mechas) y cualquier otro artículo o material similar.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(141, '2-99-06-00', 'Útiles y materiales de resguardo y seguridad', 'Incluye los útiles, materiales y suministros de seguridad ocupacional que utilizan las instituciones para brindar seguridad a sus trabajadores tales como, guantes, cascos de protección, mascarillas, municiones, cascos y cartuchos', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(142, '2-99-07-00', 'Útiles y materiales de cocina y comedor', 'Corresponde a la adquisición de útiles que se necesitan en las actividades culinarias y para el comedor, por ejemplo: sartenes, artículos de cuchillería, saleros, coladores, vasos, picheles, platos y otros similares. Considera además, los utensilios desechables de papel, cartón y plástico.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(143, '2-99-99-00', 'Otros útiles, materiales y suministros', 'Incorpora la compra de útiles, materiales y suministros no incluidos en las subpartidas anteriores tales como mesas de concreto, sillas plásticas, arreglos florales, copias de llaves y otros. Se incluye en este grupo las cuentas correspondientes al gasto por material dañado y/o obsoleto, así como lo correspondiente a faltantes de inventario.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(144, '2-99-99-01', 'Material dañado y obsoleto', 'Son todos aquellos materiales, artículos educativos, insumos, suministros de oficina o laboratorio que se adquirieron por medio de las bodegas institucionales y que por razones de obsolescencia, vencimiento, manipulación inadecuada u otra razón, pierden su utilidad para los fines por los cuales fueron adquiridos y que por tanto no pueden ser despachados a las unidades solicitantes.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(145, '2-99-99-02', 'Faltantes de Inventario', 'Son todos aquellos materiales, artículos educativos, insumos, suministros de oficina o laboratorio que se adquirieron por medio de las bodegas institucionales y que, posterior a una toma física se determinó su inexistencia y cuyo valor, de conformidad con las políticas instituciones no va ser recuperado por parte de los responsables de las bodegas.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(146, '2-99-99-03', 'Otros útiles, materiales y suministros', 'Incorpora la compra de útiles, materiales y suministros no incluidos en las subpartidas anteriores tales como mesas de concreto, sillas plásticas, arreglos florales, copias de llaves y otros.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(147, '2-99-99-04', 'Pago de materiales y suministros de periodos anteriores', 'Pago de materiales y suministros de periodos anteriores necesarios para el cumplimiento de las actividades normales de la institución. Estos pagos comprenden la compra de útiles y materiales de oficina, repuestos y accesorios, reactivos de laboratorio y cualquier otro gasto no considerado dentro de los conceptos anteriores.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(148, '3-02-06-00', 'Intereses sobre préstamos de Instituciones Públicas Financieras', 'Incluye los gastos destinados al pago de intereses de las deudas contraídas por concepto de préstamos directos y avales asumidos, concedidos por las Instituciones Públicas Financieras, bancarias y no bancarias.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(149, '3-02-07-00', 'Intereses sobre préstamos del Sector Privado', 'Contempla los gastos destinados al pago de los intereses de las deudas contraídas por concepto de préstamos directos, avales asumidos y créditos de proveedores, concedidos por entidades del sector privado.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(150, '3-04-05-00', 'Diferencias por Tipo de Cambio', 'Incluye los gastos por fluctuaciones cambiarias negativas, producto de transacciones y operaciones en moneda extranjera derivadas de actividades de intermediación financiera. No contempla las diferencias cambiarias generadas en la variación de precios en los bienes y servicios o en la actualización de pasivos, los cuales se deben registrar en el rubro de ingresos o gastos correspondientes.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(151, '4-01-07-00', 'Préstamos al sector privado', 'Desembolsos financieros que la institución destina a operaciones de crédito, para otorgarlos a una persona física o jurídica del sector privado residente en el territorio nacional.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(152, '4-01-07-01', 'Préstamos a Estudiantes Corto Plazo', 'Préstamos a estudiantes que concede la Universidad y que deben ser cancelados antes de un año, con el propósito de facilitar la conclusión de sus estudios.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(153, '4-01-07-02', 'Arreglos de Pago', 'Préstamos a estudiantes que concede la Universidad cuyo pago debe efectuarse antes de un año, con el propósito de que cancelen las deudas a la Institución por concepto de matrícula.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(154, '4-01-07-03', 'Préstamos a estudiantes largo plazo', 'Préstamos a estudiantes que concede la Universidad, y que se deben cancelar en plazos mayores de un año, con el propósito de facilitar la conclusión de sus estudios.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(155, '4-01-07-04', 'Préstamo a profesores', 'Préstamos otorgados por la Universidad a profesores y funcionarios administrativos, con plazos a corto, mediano y largo plazo, a fin de que puedan financiar estudios y actividades que redundarán finalmente en beneficio de la Institución.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(156, '5-01-01-00', 'Maquinaria y equipo para la producción', 'Está constituida por la adquisición de maquinaria y equipo para diversas actividades productivas de tipo industrial, de construcción, agropecuario, energético, equipo para talleres entre otros. Forman parte de esta subpartida, entre otros, la maquinaria y el equipo que se detalla a continuación: Maquinaria y equipo industrial: Maquinaria y equipo que se utiliza en la industria para transformar las materias primas o semimanufacturadas en productos acabados, como por ejemplo: prensas industriales, equipo de litografía, máquinas de coser y bloqueras, esmiraladoras, taladros entre otros. Maquinaria y equipo agropecuario: Maquinaria y equipo que se emplea en la agricultura, las actividades forestales y la ganadería, como por ejemplo tractores agrícolas, cosechadoras, arados, equipo de salud animal, incubadoras, ordenadoras, equipo de fumigación, equipo de riego y extractores.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(157, '5-01-02-00', 'Equipo de transporte', 'Corresponde a la compra de equipo que se utiliza para el traslado de personas y objetos por vía terrestre, marítima y fluvial. Algunos de los equipos que se incluyen en la presente subpartida son: Equipo de transporte automotor: Constituido por automóviles, camionetas, autobuses, motocicletas, y otros similares. Equipo de transporte marítimo y fluvial: Embarcaciones de toda clase, destinadas a la navegación en alta mar, costera y fluvial. Equipo de tracción mecánica: Aquel que se utiliza para mover o tirar de algún objeto mediante la acción animal y humana para moverla o arrastrarla, por ejemplo, carretas, bicicletas, plataformas o carros de arrastre, remolques y otros similares.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(158, '5-01-03-00', 'Equipo de comunicación', 'Erogaciones por concepto de equipo para trasmitir y recibir información, haciendo partícipe a terceros mediante comunicaciones telefónicas, satelitales, de microondas, radiales, audiovisuales y otras, ya sea para el desempeño de las labores normales de la entidad, o para ser utilizados en labores de capacitación o educación en general. Comprende los artículos complementarios capitalizables e indispensables para el funcionamiento de los equipos. Se incluyen en esta subpartida por ejemplo, centrales telefónicas, antenas, transmisores, receptores, teléfonos, teléfonos celulares, faxes, equipo de radio, conmutadores convencionales, enrutadores y puntos de acceso.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(159, '5-01-04-00', 'Equipo y mobiliario de oficina', 'Adquisición de equipo y mobiliario necesario para la realización de labores administrativas. Incluye calculadoras, sumadoras, fotocopiadoras, ventiladores, archivadores entre otros. Además, considera el mobiliario de toda clase que se utiliza en esas oficinas, como mesas, sillas, sillones, escritorios, estantes, armarios, entre otros.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(160, '5-01-05-00', 'Equipo y programas de cómputo', 'Contempla los gastos por concepto de equipo para el procesamiento electrónico de datos, tanto de la parte física como el conjunto de programas. Se citan como ejemplos: procesadores, monitores, lectoras, impresoras, aplicaciones comerciales de "software", licencias, terminales. Se exceptúa la contratación de programas hechos a la medida o adaptados, que se clasifica en la subpartida 1-04-05 "Servicios de desarrollo de sistemas informáticos". Se excluyen los equipos de propósito especial con algún grado de informatización, como las utilizadas en el campo de la medicina, la ingeniería o manufactura, los cuales se deben clasificar en las subpartidas de maquinaria y equipo correspondientes a esos campos.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(161, '5-01-05-01', 'Mobiliario y equipo de computación', 'Comprende los egresos por la adquisición de equipos especiales para computación, unidades centrales de proceso, terminales, monitores, impresoras, lectoras, scaner, y todos los accesorios que aumentan el valor, uso y duración del equipo, tales como: discos duros, unidades de diskette externos, fuentes de poder, modems, tarjetas de comunicación y de video, etc. Además, incluyen la compra del mobiliario para el equipo de cómputo.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(162, '5-01-05-02', 'Adquisición de programas de cómputo', 'Son los egresos que realiza la Institución por concepto de programas o sistemas de instrucciones que gobiernan la operación de los equipos de cómputo, utilizando lenguajes de programación.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(163, '5-01-06-00', 'Equipo sanitario, de laboratorio e investigación', 'Comprende la compra del equipo requerido para las labores sustantivas en hospitales y centros de salud, laboratorios, centros de investigación y de protección ambiental, así como el mobiliario necesario para la instalación de ese equipo. Se incluye aquel equipo y mobiliario médico quirúrgico, como equipos para cirugías, equipos para exámenes y diagnósticos de enfermedades y para el tratamiento de las mismas. Incluye el equipo que se utiliza en los laboratorios sanitario, industrial, agroindustrial, de investigación y otros, tales como microscopios, autoclaves, centrifugadoras, balanzas de precisión, telescopios, equipos de pruebas y experimentos, equipos de medición como amperímetros y teodolitos, entre otros. Así como aire acondicionado especial para laboratorio. Incluye la adquisición del equipo que se utiliza en las acciones de vigilancia y control de la contaminación del medio ambiente, como: peachímetros, sonómetros, analizadores de emisión de gases y opacidad en vehículos de gaso', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(164, '5-01-07-00', 'Equipo y mobiliario educacional, deportivo y recreativo', 'Corresponde a erogaciones que se efectúan para la adquisición de equipo y mobiliario para la enseñanza, la práctica de deportes y la realización de actividades de entretenimiento. Incluye entre otros, el equipo y mobiliario que se utiliza en el desarrollo de las labores educacionales, los que se requieren en los centros de estudio como sillas, pupitres, estantes y vitrinas para las bibliotecas, museos, salas de exposición, de conferencias y otras. Además, se consideran los libros, colecciones de libros, enciclopedias, obras literarias y revistas técnicas, que por su valor monetario, cultural o científico deben capitalizarse. Se excluye el equipo de comunicación que se utiliza para cumplir con la labor educacional, el cual se debe clasificar en la subpartida 5-01-03 "Equipo para comunicación". El equipo y mobiliario deportivo corresponde al que se utiliza en la práctica de actividades deportivas como gimnasia, atletismo; el recreativo se refiere al que se emplea en actividades de entret', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(165, '5-01-07-01', 'Equipo Educacional y Cultural', 'Egresos por la adquisición de equipos educacionales y culturales, tales como: equipos deportivos y recreativos, equipos audiovisuales (proyectores de multimedios, televisores, equipo de sonido, videograbadoras, proyector de transparencias, pantallas electrónicas, cámaras digitales y de video proyección), DVD, VHS, instrumentos musicales, obras de arte, pizarras, pupitres, butacas para auditorios, sillas para niños (auditorio) y otros.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(166, '5-01-07-02', 'Adquisición de libros', 'Incluye los egresos que surjan por la adquisición de libros dentro y fuera del país. Incluye también los gastos adicionales por trámite de compra, de transporte, des almacenaje y bodegaje.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(167, '5-01-07-03', 'Recursos de información bibliográfica electrónicos', 'Se incluyen los pagos por servicios de acceso a información especializada, cuya obtención se realice a través de medios informáticos, telemáticos y/o electrónicos, clasificados como bienes duraderos tales como: bases de datos, publicaciones periódicas científicas, libros, mapas, atlas, audiovisuales, enciclopedias y otros recursos de información bibliográfica en formato electrónico, bajo la modalidad de suscripción anual. Incluye también, los recursos de información bibliográfica en formato electrónico a los cuales se pueda tener acceso en forma retrospectiva a la información contratada, aun cuando no se mantenga la suscripción en el futuro. Se incluye también los gastos adicionales por trámite de compra, transporte, desalmacenaje y bodegaje.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(168, '5-01-99-00', 'Maquinaria y equipo diverso', 'Se refiere a la adquisición de maquinaria, equipo y mobiliario que no se contemplan en las subpartidas anteriores, tales como: Equipo y mobiliario de ingeniería y dibujo: Para labores en el campo de la ingeniería, arquitectura y dibujo técnico. Por ejemplo, mesa para dibujar y escalímetros. Maquinaria y equipo de refrigeración: Para sistemas de refrigeración, por ejemplo, cámaras frigoríficas, congeladores, equipo de refrigeración y otros. Equipo y mobiliario doméstico: Para sodas, comedores y residencias estudiantiles, como mesas, sillas, juegos de sala, juegos de dormitorio; cocinas y hornos, camas entre otros. Maquinaria, equipo y mobiliario de resguardo y seguridad: Para la protección de personas y bienes, como: armas de fuego, sistemas de alarma, cajas de seguridad, extintores y otros similares. Equipo fotográfico y de revelado: Para la toma y revelado de fotografías, por ejemplo, cámaras fotográficas, trípodes, lentes, lámparas, equipo de revelado, ampliadoras y otros.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(169, '5-01-99-01', 'Equipo doméstico', 'Gastos por la compra de muebles y equipo domestico, tales como: muebles de cocina, lavadoras, equipo de dormitorio y de cocina, cepillo eléctrico, microondas, refrigeradores, percoladores, etc.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(170, '5-01-99-02', 'Otros equipos', 'Son los egresos por concepto de equipos no especificados en los otros renglones del presente sub-grupo. Comprenden lámparas de emergencia, instalación de elevadores, extinguidores.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(171, '5-02-01-00', 'Edificios', 'Se refiere a la construcción, adición y mejoras por contrato, de todo tipo de edificios, tales como oficinas, centros de enseñanza, viviendas, bodegas, museos, laboratorios y hospitales. Además, comprende todos aquellos trabajos electromecánicos y electrónicos necesarios para la finalización del edificio como son las instalaciones eléctricas, telefónicas, de seguridad y para cómputo.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(172, '5-02-02-00', 'Vías de comunicación terrestre', 'Incluye la construcción, adición, y mejoramiento por contrato, de toda clase de vías de comunicación terrestre como calles y caminos. Comprende tareas constructivas de pavimentos, puentes, muros de contención, cunetas, aceras, cordón y caño, drenajes, alcantarillas, entre otros.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(173, '5-02-04-00', 'Obras marítimas y fluviales', 'Incluye la construcción, adición, y mejoramiento por contrato de obras portuarias, marítimas y fluviales, por ejemplo: diques, muelles, marinas, rompeolas, obras de defensa y protección.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(174, '5-02-07-00', 'Instalaciones', 'Incluye la construcción, adición y mejoras por contrato, de obras para telecomunicaciones, electricidad, acueductos y alcantarillados pluvial y sanitario, entre otros. Se excluyen los edificios que forman parte integral de las instalaciones, los cuales se clasifican en la subpartida 5-02-01 "Edificios".', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(175, '5-02-99-00', 'Otras construcciones, adiciones y mejoras', 'Corresponde a construcciones, adiciones y mejoras, de obras no descritas anteriormente y que se ejecutan por contrato con personas físicas o jurídicas. Se excluyen los edificios que forman parte integral de las construcciones, en cuyo caso se deben clasificar en la subpartida 5-02-01 "Edificios". Algunos de los conceptos que se incluyen son: Obras para actividades deportivas, culturales y recreativas: Obras necesarias para la práctica de deportes y la recreación, tales como: campos de fútbol, de béisbol, gimnasios, polideportivos, centros de juegos infantiles. Además, las destinadas al fomento de la cultura, como por ejemplo: conchas acústicas, campos de exposición; las obras de embellecimiento y ornato, como plazas, parques, jardines, monumentos, estatuas; así como las de restauración y embellecimiento de obras coloniales o de importancia histórica. Obras para la producción agropecuaria: Obras destinadas a la producción agrícola, pecuaria y de otras especies, como por ejemplo: albergu', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(176, '5-03-01-00', 'Terrenos', 'Incluye la adquisición de terrenos para la construcción de edificios, vías de comunicación, instalaciones, vivienda, centros de enseñanza, museos, mercados, así como para parques nacionales, terrenos de valor histórico y arqueológico y otros usos. Además, se incluyen dentro del valor del terreno, los gastos de escritura, trazado de planos, comisiones y demoliciones.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(177, '5-03-02-00', 'Edificios preexistentes', 'Adquisición de todo tipo de edificios para uso de oficinas, centros de enseñanza, viviendas, bodegas, hospitales, etc. Incluye aquellas obras que interesan por su valor histórico o arquitectónico.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(178, '5-03-99-00', 'Otros bienes preexistentes', 'Erogaciones para la compra de obras ya construidas para diversos usos, como instalaciones y otras construcciones. Pueden ser adquiridas por los procedimientos usuales de contratación o expropiación.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(179, '5-99-01-00', 'Semovientes', 'Contempla la compra de ganado y otras especies de animales que se adquieren para trabajo o con fines de reproducción y se clasifican como un activo fijo. Aquellos que no se capitalizan se clasifican en la subpartida 2-02-01 "Productos pecuarios y otras especies". Los destinados al consumo, se deben clasificar en las subpartidas 2-02-03 "Alimentos y bebidas" o 2-02-04 "Alimentos para animales", según corresponda.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(180, '5-99-03-00', 'Bienes intangibles', 'Incluye las erogaciones de un derecho o beneficio para ser utilizado por la entidad, los derechos garantizados por ley, que mediante determinados trámites se adquieren para realizar ciertas actividades, los permisos para el uso de bienes o activos de propiedad industrial, comercial, intelectual y otros, tales como derechos de autor y derechos de explotación. Se considera también dentro de esta subpartida, la adquisición de patentes, o sea el derecho o privilegio de usar, fabricar o vender un producto durante cierto tiempo. Igualmente, incorpora la adquisición de derechos que se generan por el traslado de valores o dinero, los cuales quedan bajo la tenencia y custodia de una institución pública o privada, en forma temporal, como por ejemplo los depósitos telefónicos, depósitos de garantía, depósitos judiciales y los depósitos por importaciones temporales de equipo que realiza la institución.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(181, '6-01-03-00', 'Transferencias corrientes a instituciones descentralizadas no empresariales.', 'Aportes que la institución concede a las Instituciones Descentralizadas no Empresariales, para aplicarlos como gastos corrientes, incluye entre otras, las cuotas estatales, cuotas trabajadores independientes, cuotas convenios especiales, cuotas centros penales, cuotas por concepto estipendios, aportes al régimen no contributivo de pensiones que administra la Caja Costarricense del Seguro Social.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(182, '6-01-03-01', 'Transferencias Universidad Nacional', 'Egresos que la universidad debe pagar originados en la formalización de convenios entre ambas instituciones.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(183, '6-01-03-02', 'Transferencias Universidad Estatal a Distancia', 'Egresos que la universidad debe pagar originados en la formalización de convenios entre ambas instituciones.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(184, '6-01-03-03', 'Transferencias Instituto Tecnológico de Costa Rica', 'Egresos que la universidad debe pagar originados en la formalización de convenios entre ambas instituciones.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(185, '6-02-01-00', 'Becas a funcionarios', 'Monto que se destina en forma temporal a funcionarios para que inicien, continúe o completen sus estudios, en el país o en el exterior. Dicha suma puede cubrir parcial o totalmente el costo del estudio. Además, puede incluir los gastos de transporte, alimentación, hospedaje y graduación, aún cuando no se otorguen los recursos monetarios directamente al beneficiario y otros gastos complementarios, cuando así lo contemple el contrato de "Beca".', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(186, '6-02-02-00', 'Becas a terceras personas', 'Suma que se destina en forma temporal a personas que no son funcionarios, para que inicien, continúen o completen sus estudios, sea en el país o en el exterior. Dicha suma puede cubrir parcial o totalmente el costo del estudio. Además, puede incluir los gastos de transporte, alimentación, hospedaje y graduación, aún cuando no se otorguen los recursos monetarios directamente al beneficiario y otros gastos complementarios, cuando así lo contemple el contrato de "Beca".', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(187, '6-02-02-01', 'Becas horas estudiante', 'Es la ayuda que se brinda a los estudiantes de la Institución, como retribución por su colaboración en el campo de la docencia, la investigación y la acción social en la Universidad de Costa Rica, de conformidad con lo estipulado en el reglamento respectivo.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(188, '6-02-02-02', 'Becas horas asistente', 'Es la ayuda que se brinda a los estudiantes de la Institución, como retribución por su colaboración en el campo de la docencia, la investigación y la acción social en la Universidad de Costa Rica, de conformidad con lo estipulado en el reglamento respectivo.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(189, '6-02-02-03', 'Becas categoría E', 'Ayuda económica que se le otorga a los estudiantes de la Institución de escasos recursos económicos, cuando su condición socioeconómica lo amerite.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(190, '6-02-02-04', 'Becas a profesores', 'Becas que otorga la Universidad a sus funcionarios para cursar estudios superiores en el exterior con periodos de 3 a 5 años. Comprende becas de posgrado (maestría, doctorado y post doctorado).', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(191, '6-02-02-05', 'Becas servicio comedor', 'Ayuda económica que se le otorga a los estudiantes de la Institución de escasos recursos económicos y que son exclusivamente para pago de alimentación.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(192, '6-02-02-06', 'Otras becas', 'Becas a estudiantes no contempladas en los renglones anteriores.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(193, '6-02-02-07', 'Becas horas asistente graduado', 'Es la ayuda que se brinda a los estudiantes graduados de la Institución, como retribución por su colaboración en el campo de la docencia, la investigación y la acción social en la Universidad de Costa Rica, de conformidad con lo estipulado en el reglamento respectivo', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(194, '6-02-03-00', 'Ayudas a funcionarios', 'Previsiones para ayudas a funcionarios públicos acogiéndose a lo señalado en las convenciones colectivas y demás disposiciones legales que rigen esta materia, por ejemplo: ayudas para adquisición de anteojos o prótesis, sepelios, nacimientos de hijos, entre otros.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(195, '6-02-99-00', 'Otras transferencias a personas', 'Sumas destinadas a funcionarios o terceras personas que no están contempladas en ninguna de las subpartidas antes descritas. Por ejemplo los premios en efectivo que se entregan a ganadores de certámenes literarios, científicos, musicales, artísticos, deportivos, teatrales, cinematográficos, entre otros, de acuerdo con la legislación vigente en este campo.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(196, '6-02-99-01', 'Subsidios por incapacidades', 'Comprende el pago que la Universidad hace a sus funcionarios por concepto de subsidio durante el período de incapacidad ya sea por enfermedad, maternidad o por riesgos de trabajo.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(197, '6-02-99-02', 'Al sector privado', 'Incluye los egresos por concepto de transferencias a personas, empresas o asociaciones con personería jurídica.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(198, '6-02-99-03', 'Transferencias del Fondo Solidario Estudiantil a los(as) Estudiantes', 'Incluye los egresos por concepto de ayuda a la población estudiantil de escasos recursos económicos que presente situaciones calificadas, de acuerdo a lo establecido en el “Reglamento General del Fondo Solidario Estudiantil para el Apoyo a Estudiantes con Situaciones Calificadas de Salud”.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(199, '6-03-01-00', 'Prestaciones legales', 'Sumas que asignan las instituciones públicas para cubrir el pago por concepto de preaviso y cesantía, además de otros a que tengan derecho los funcionarios una vez concluida la relación laboral con la entidad de conformidad con las regulaciones establecidas. Esta obligación se deriva de una resolución administrativa o sentencia judicial, para ésta última se deben de incluir las costas y honorarios respectivos.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(200, '6-04-01-00', 'Transferencias corrientes a asociaciones', 'Asignación de recursos que la institución destina a entidades constituidas como asociaciones que no persiguen fines de lucro. Tienen personalidad jurídica y se forman para el cumplimiento de diversos propósitos. Entre ellas se encuentran las asociaciones solidaristas, que no incluye aportes patronales y las asociaciones de desarrollo comunal. Además, se consideran las federaciones, ligas y uniones de asociaciones.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(201, '6-04-01-01', 'Transferencias Asociación Deportiva', 'Aporte que la Institución le asigna a la Asociación Deportiva Universitaria, financiados con fondos estudiantiles y de JUNCOS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(202, '6-04-01-02', 'Asociación Deportiva Interestatal Universitaria de Costa Rica', 'Cuota anual que la Institución debe girar para cubrir las obligaciones derivadas del convenio suscrito con la Federación Costarricense Universitaria Deportiva (FECUNDE).', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(203, '6-04-01-03', 'Transferencias Filial Club de Fútbol', 'Aporte que la Institución le asigna a la Filial Club de Fútbol, para atender los gastos relacionados con las participaciones en los torneos y competiciones deportivas.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(204, '6-04-04-00', 'Transferencias corrientes a otras entidades privadas sin fines de lucro', 'Asignación de recursos que la institución destina a otras entidades que se rigen por el derecho privado y que no persiguen fines de lucro, no consideradas en las subpartidas anteriores. Se citan como ejemplo las Temporalidades de la Iglesia Católica, organismos internacionales radicados en el país, los sindicatos, cámaras, federaciones, confederaciones y otras.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(205, '6-06-01-00', 'Indemnizaciones', 'Contempla el resarcimiento económico por el daño o perjuicio causado por la institución a personas físicas o jurídicas, incluyendo las costas judiciales o cualquier gasto similar, el cual debe tener respaldo en una sentencia judicial o una resolución administrativa. Incluye la indemnización generada como producto de juicios laborales por salarios caídos, independientemente del periodo a los cuales pertenecen. Excluye las indemnizaciones originadas en la expropiación de terrenos y edificios, los que se registran en las subpartidas 5-03-01 "Terrenos" y 5-03-02 "Edificios preexistentes" respectivamente, así como los juicios laborales por pago de prestaciones legales que se deben registrar en la subpartida 6-03-01 "Prestaciones legales".', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(206, '6-07-02-00', 'Otras transferencias corrientes al sector externo', 'Asignación de recursos que destina el sector público nacional para gastos corrientes de acuerdo con el ordenamiento jurídico correspondiente, a otros gobiernos y a entidades en el exterior no consideradas en las subpartidas citadas anteriormente. Incluye los egresos por concepto de cuotas para cubrir las obligaciones con organismos de carácter internacional o extranjero, de acuerdo a convenios suscritos.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(207, '8-02-06-00', 'Amortización de préstamos a Instituciones Públicas Financieras', 'Se refiere a los pagos que realiza la institución para atender el principal de las deudas contraídas por concepto de préstamos directos y avales asumidos, concedidos por las Instituciones Públicas Financieras, bancarias y no bancarias.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(208, '8-02-07-00', 'Amortización de préstamos del Sector Privado', 'Corresponde a los pagos que realiza la institución para atender el principal de las deudas contraídas por concepto de préstamos directos, avales asumidos y créditos de proveedores, concedidos por entes del sector privado.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(209, '9-02-01-00', 'Sumas libres sin asignación presupuestaria', 'Incluye los montos a las que por diversas circunstancias no se les ha dado una asignación en las partidas, grupos y subpartidas presupuestarias.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(210, '9-02-02-00', 'Sumas con destino específico sin asignación presupuestaria', 'Contempla las sumas que por ley u otras disposiciones tienen señalado un fin específico, pero que por diversas razones no se han asignado en las partidas, grupos y subpartidas presupuestarias.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(211, '0-90-90-22', 'prueba88', 'hbhhb', '2016-01-25 19:51:53', '2016-01-25 19:51:53', NULL),
(212, '0-01-01-00', 'pruebas89', 'dasdasd', '2016-01-25 19:54:08', '2016-01-25 19:54:08', NULL),
(213, '0-05-05-05', 'CampodePrueba', 'Este es un campo de prueba', '2016-01-25 21:55:48', '2016-01-25 21:55:48', NULL),
(216, '9-99-99-99', 'Prueba99', 'Comprende los egresos por la adquisición de equipos especiales para computación, unidades centrales de proceso, terminales, monitores, impresoras, lectoras, scaner, y todos los accesorios que aumentan el valor, uso y duración del equipo, tales como: discos duros, unidades de diskette externos, fuentes de poder, podems, tarjetas de comunicación y de video, etc.\r\nAdemás, incluyen la compra del mobiliario para el equipo de cómputo.', '2016-01-26 21:47:19', '2016-01-26 21:47:19', NULL),
(218, '8-88-88-88', 'Partida de Prueba', 'Vamos a ver si se duplica', '2016-01-28 18:03:32', '2016-01-28 18:03:32', NULL),
(220, '7-77-77-77', 'P', 'Copia 2', '2016-01-28 18:04:20', '2016-01-28 18:04:20', NULL),
(222, '6-66-66-66', 'Ultima Prueba', 'La ultima prueba', '2016-01-28 18:06:24', '2016-01-28 18:06:24', NULL),
(225, '9-99-99-98', 'Cohetes espaciales', 'Pruebas de computo asjdbfklbfkasbfbasf  sbfksbfksdbfksbfksbfkbsd skfbsdkfb  sdkffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffba   errrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr    wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  tttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt', '2016-01-28 20:22:15', '2016-01-28 20:22:15', NULL),
(226, '9-99-99-88', 'Partida de prueba', 'Esta es una descripcion de pruieba', '2016-01-28 22:20:57', '2016-01-28 22:20:57', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpermiso`
--

CREATE TABLE IF NOT EXISTS `tpermiso` (
  `idPermiso` int(11) NOT NULL AUTO_INCREMENT,
  `nombrePermiso` varchar(45) NOT NULL,
  PRIMARY KEY (`idPermiso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Volcado de datos para la tabla `tpermiso`
--

INSERT INTO `tpermiso` (`idPermiso`, `nombrePermiso`) VALUES
(1, 'Ver Menu'),
(2, 'Ver Partida'),
(3, 'Agregar Partida'),
(4, 'Editar Partida'),
(5, 'Borrar Partida'),
(6, 'Administrar Usuarios'),
(7, 'Ver Coordinacion'),
(9, 'Agregar Coordinacion'),
(10, 'Editar Coordinacion'),
(11, 'Borrar Coordinacion'),
(12, 'Configurar Sistema'),
(13, 'Ver Presupuesto'),
(14, 'Agregar Presupuesto'),
(15, 'Editar Presupuesto'),
(16, 'Borrar Presupuesto'),
(17, 'Ver Transaccion'),
(18, 'Agregar Transaccion'),
(19, 'Borrar Transaccion'),
(20, 'Ver Transferencia'),
(21, 'Agregar Transferencia'),
(22, 'Respaldar Sistema'),
(23, 'Ver Respaldos'),
(24, 'Editar Monto Partida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpresupuesto`
--

CREATE TABLE IF NOT EXISTS `tpresupuesto` (
  `idPresupuesto` int(11) NOT NULL AUTO_INCREMENT,
  `anno` int(11) NOT NULL,
  `tCoordinacion_idCoordinacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vNombrePresupuesto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iPresupuestoInicial` int(11) NOT NULL,
  `iPresupuestoModificado` int(11) NOT NULL,
  `iReserva` int(11) NOT NULL DEFAULT '0',
  `iGasto` int(11) NOT NULL DEFAULT '0',
  `iSaldo` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idPresupuesto`),
  UNIQUE KEY `tpresupuesto_idpresupuesto_unique` (`idPresupuesto`),
  KEY `tpresupuesto_tcoordinacion_idcoordinacion_foreign` (`tCoordinacion_idCoordinacion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `tpresupuesto`
--

INSERT INTO `tpresupuesto` (`idPresupuesto`, `anno`, `tCoordinacion_idCoordinacion`, `vNombrePresupuesto`, `iPresupuestoInicial`, `iPresupuestoModificado`, `iReserva`, `iGasto`, `iSaldo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 2016, '1050', 'Presupuesto', 49106456, 78106456, 70000, 59000, 77977456, '2016-01-21 22:26:00', '2016-02-25 22:07:02', NULL),
(11, 2016, '1050', 'BEBIDASAS', 100027, 100027, 50000, 1000, 49027, '2016-01-21 22:43:46', '2016-02-25 22:07:14', NULL),
(12, 2016, '6555', 'El presupuesto de prueba', 991231, 991231, 0, 0, 991231, '2016-01-25 19:32:02', '2016-01-25 19:44:18', NULL),
(13, 2016, '6456', '099 888', 9000, 9000, 0, 9000, 0, '2016-01-25 19:53:13', '2016-01-25 20:01:33', NULL),
(14, 2016, '1055', '123456', 0, 0, 0, 0, 0, '2016-01-25 22:23:17', '2016-01-25 22:23:17', NULL),
(15, 2016, '1234', 'Otra prueba', 0, 0, 0, 0, 0, '2016-01-26 20:34:25', '2016-01-26 20:34:25', NULL),
(16, 2016, '1099', 'Ordinario', 48000000, 48000000, 0, 0, 48000000, '2016-01-26 21:54:09', '2016-01-26 22:50:00', NULL),
(19, 2016, '9999', 'PRESUPUESTO ORDINARIO PRUEBA', 100000000, 71000000, 5000000, 25000022, 40999978, '2016-01-28 17:37:26', '2016-01-28 18:15:13', NULL),
(20, 2016, '1051', 'PRUEBA', 0, 0, 0, 0, 0, '2016-01-28 17:42:53', '2016-01-28 17:42:53', NULL),
(23, 2016, '1052', 'a', 0, 0, 0, 0, 0, '2016-01-28 18:07:50', '2016-01-28 18:07:50', NULL),
(25, 2016, '1056', 'Presu Ordinario', 0, 0, 0, 0, 0, '2016-01-28 20:18:01', '2016-01-28 20:18:01', NULL),
(26, 2016, '1056', 'Presu Apoyo', 67000000, 67000000, 0, 0, 67000000, '2016-01-28 20:18:23', '2016-01-28 20:35:29', NULL),
(27, 2016, '1057', 'Presu Apoyo', 0, 10000000, 0, 505000, 9495000, '2016-01-28 20:19:46', '2016-01-28 22:17:39', NULL),
(29, 2016, '1077', 'APOYO', 10500000, 10500000, 0, 0, 10500000, '2016-01-29 16:20:11', '2016-01-29 16:22:23', NULL),
(30, 2016, '1088', 'ORDINARIO', 2100000, 1900000, 300000, 200000, 1400000, '2016-01-29 16:26:40', '2016-01-29 16:48:40', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpresupuesto_tpartida`
--

CREATE TABLE IF NOT EXISTS `tpresupuesto_tpartida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tPresupuesto_idPresupuesto` int(11) NOT NULL,
  `tPartida_idPartida` int(11) NOT NULL,
  `iPresupuestoInicial` int(11) NOT NULL DEFAULT '0',
  `iPresupuestoModificado` int(11) NOT NULL DEFAULT '0',
  `iReserva` int(11) NOT NULL DEFAULT '0',
  `iGasto` int(11) NOT NULL DEFAULT '0',
  `iSaldo` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tPresupuesto_idPresupuesto` (`tPresupuesto_idPresupuesto`),
  KEY `tPartida_idPartida` (`tPartida_idPartida`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Volcado de datos para la tabla `tpresupuesto_tpartida`
--

INSERT INTO `tpresupuesto_tpartida` (`id`, `tPresupuesto_idPresupuesto`, `tPartida_idPartida`, `iPresupuestoInicial`, `iPresupuestoModificado`, `iReserva`, `iGasto`, `iSaldo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 10, 200, 40000000, 39000000, 0, 0, 39000000, '2016-01-21 22:26:53', '2016-01-21 23:00:01', NULL),
(12, 11, 29, 100027, 100027, 50000, 1000, 49027, '2016-01-21 22:58:52', '2016-02-25 21:11:18', NULL),
(13, 12, 199, 888898, 888898, 0, 0, 888898, '2016-01-25 19:34:29', '2016-01-25 19:35:39', NULL),
(14, 12, 34, 12333, 12333, 0, 9033, 3300, '2016-01-25 19:40:40', '2016-01-25 21:32:28', NULL),
(15, 12, 18, 90000, 90000, 0, 24000, 66000, '2016-01-25 19:41:50', '2016-01-25 22:20:04', NULL),
(16, 13, 211, 9000, 9000, 0, 9000, 0, '2016-01-25 19:56:49', '2016-01-25 20:00:56', NULL),
(17, 10, 213, 100000, 30100000, 0, 57000, 30043000, '2016-01-25 21:56:39', '2016-01-28 17:57:44', NULL),
(18, 16, 216, 0, 0, 0, 0, 0, '2016-01-26 22:01:55', '2016-01-26 22:19:15', NULL),
(19, 16, 163, 30000000, 30000000, 0, 1000000, 29000000, '2016-01-26 22:10:15', '2016-01-28 21:17:25', NULL),
(20, 10, 36, 6456, 6456, 0, 2000, 4456, '2016-01-26 22:29:31', '2016-01-28 17:45:22', NULL),
(23, 16, 158, 18000000, 18000000, 0, 0, 18000000, '2016-01-26 22:49:50', '2016-01-26 22:49:50', NULL),
(24, 10, 31, 9000000, 9000000, 70000, 0, 8930000, '2016-01-27 20:06:56', '2016-02-25 21:13:18', NULL),
(26, 19, 18, 100000000, 71000000, 5000000, 25000022, 40999978, '2016-01-28 17:41:28', '2016-01-28 18:14:33', NULL),
(27, 26, 225, 60000000, 50000000, 0, 0, 50000000, '2016-01-28 20:25:16', '2016-01-28 20:46:46', NULL),
(28, 26, 165, 5000000, 5000000, 0, 0, 5000000, '2016-01-28 20:33:50', '2016-01-28 20:33:50', NULL),
(29, 26, 163, 2000000, 2000000, 0, 1000000, 1000000, '2016-01-28 20:34:57', '2016-01-28 21:17:25', NULL),
(30, 27, 132, 0, 10000000, 0, 9555000, 445000, '2016-01-28 20:45:20', '2016-02-02 17:30:25', NULL),
(31, 29, 97, 2000000, 2000000, 0, 300000, 1700000, '2016-01-29 16:21:27', '2016-01-29 16:38:12', NULL),
(32, 29, 33, 500000, 500000, 0, 0, 500000, '2016-01-29 16:21:52', '2016-01-29 16:21:53', NULL),
(33, 29, 22, 8000000, 8200000, 0, 0, 8200000, '2016-01-29 16:22:13', '2016-01-29 16:43:09', NULL),
(34, 30, 80, 600000, 600000, 0, 0, 600000, '2016-01-29 16:27:00', '2016-01-29 16:27:00', NULL),
(35, 30, 30, 1000000, 800000, 300000, 0, 500000, '2016-01-29 16:27:12', '2016-01-29 16:48:36', NULL),
(36, 30, 146, 500000, 500000, 0, 200000, 300000, '2016-01-29 16:27:22', '2016-01-29 16:38:12', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `treserva`
--

CREATE TABLE IF NOT EXISTS `treserva` (
  `idReserva` int(11) NOT NULL AUTO_INCREMENT,
  `vReserva` int(11) NOT NULL,
  `vDocumento` varchar(50) NOT NULL,
  `vDetalle` varchar(50) NOT NULL,
  `iMontoFactura` int(11) NOT NULL,
  `tPartida_idPartida` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`idReserva`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `treserva`
--

INSERT INTO `treserva` (`idReserva`, `vReserva`, `vDocumento`, `vDetalle`, `iMontoFactura`, `tPartida_idPartida`, `deleted_at`) VALUES
(1, 17, 'N/A', 'Reserva para equipo de computo', 5000000, 26, NULL),
(4, 36, '2016-100', 'LAPICEROS', 300000, 35, NULL),
(5, 42, '111', 'prueba julio', 70000, 24, NULL),
(6, 43, '112', 'prueba julio', 50000, 12, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trol`
--

CREATE TABLE IF NOT EXISTS `trol` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `nombreRol` varchar(45) DEFAULT NULL,
  `descripcionRol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRol`),
  UNIQUE KEY `nombreRol` (`nombreRol`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `trol`
--

INSERT INTO `trol` (`idRol`, `nombreRol`, `descripcionRol`) VALUES
(1, 'default', 'Rol por defecto'),
(2, 'Administrador', 'Acceso total'),
(3, 'Prueba', 'Rol de Prueba'),
(4, 'SoporteATIC', 'Área Informática'),
(5, 'Coordinador', 'Resonsable de Presupuesto'),
(6, 'Administración ', 'Dirección y Jefatuta Adm.'),
(7, 'OAF', 'Encargado de Financiero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trol_tiene_tpermiso`
--

CREATE TABLE IF NOT EXISTS `trol_tiene_tpermiso` (
  `tRol_idRol` int(11) NOT NULL,
  `tPermiso_idPermiso` int(11) NOT NULL,
  PRIMARY KEY (`tRol_idRol`,`tPermiso_idPermiso`),
  KEY `fk_tRol_has_tPermiso_tPermiso1_idx` (`tPermiso_idPermiso`),
  KEY `fk_tRol_has_tPermiso_tRol_idx` (`tRol_idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `trol_tiene_tpermiso`
--

INSERT INTO `trol_tiene_tpermiso` (`tRol_idRol`, `tPermiso_idPermiso`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(2, 2),
(5, 2),
(6, 2),
(7, 2),
(2, 3),
(7, 3),
(2, 4),
(7, 4),
(2, 5),
(7, 5),
(2, 6),
(4, 6),
(2, 7),
(5, 7),
(6, 7),
(7, 7),
(2, 9),
(7, 9),
(2, 10),
(7, 10),
(2, 11),
(7, 11),
(2, 12),
(4, 12),
(5, 12),
(7, 12),
(2, 13),
(5, 13),
(6, 13),
(7, 13),
(2, 14),
(7, 14),
(2, 15),
(7, 15),
(2, 16),
(7, 16),
(2, 17),
(6, 17),
(7, 17),
(2, 18),
(7, 18),
(2, 19),
(7, 19),
(2, 20),
(6, 20),
(7, 20),
(2, 21),
(7, 21),
(2, 22),
(4, 22),
(7, 22),
(2, 23),
(3, 23),
(4, 23),
(7, 23),
(2, 24),
(7, 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ttranferencia_partida`
--

CREATE TABLE IF NOT EXISTS `ttranferencia_partida` (
  `idTransferencia` int(11) NOT NULL AUTO_INCREMENT,
  `tPresupuestoPartidaDe` int(11) NOT NULL,
  `tPresupuestoPartidaA` int(11) NOT NULL,
  `vDocumento` varchar(50) NOT NULL,
  `iMontoTransferencia` int(11) NOT NULL,
  `tUsuario_idUsuario` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idTransferencia`),
  KEY `tPresupuestoPartidaDe` (`tPresupuestoPartidaDe`),
  KEY `tPresupuestoPartidaA` (`tPresupuestoPartidaA`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `ttranferencia_partida`
--

INSERT INTO `ttranferencia_partida` (`idTransferencia`, `tPresupuestoPartidaDe`, `tPresupuestoPartidaA`, `vDocumento`, `iMontoTransferencia`, `tUsuario_idUsuario`, `created_at`, `updated_at`) VALUES
(3, 11, 12, 'PASE 11', 1000000, 1, '2016-01-21 23:00:01', '2016-01-21 23:00:01'),
(4, 26, 17, 'Documento 1', 30000000, 3, '2016-01-28 17:57:44', '2016-01-28 17:57:44'),
(5, 12, 26, '0', 1000000, 3, '2016-01-28 18:14:32', '2016-01-28 18:14:32'),
(6, 27, 30, 'SP-DIR-006-2016', 10000000, 6, '2016-01-28 20:46:46', '2016-01-28 20:46:46'),
(7, 35, 33, 'SP-D-001-2016', 200000, 7, '2016-01-29 16:43:09', '2016-01-29 16:43:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE IF NOT EXISTS `tusuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tRol_idRol` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_tUsuario_tRol1_idx` (`tRol_idRol`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `tusuario`
--

INSERT INTO `tusuario` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `tRol_idRol`) VALUES
(1, 'Arturo Madrigal Villalobos', 'arturo.madrigal@ucr.ac.cr', '$2y$10$71R51ASjouWA1HetFm5YJu9BoXW3KN18zuwV5D7p6NQ27PQrIzpei', 'alwQHE4AvDExOclGpn0bOb1wCvjwA0LehaazG6pgZRKrJFrQ5lewuxUznElC', '2015-10-22 02:45:21', '2016-01-28 20:13:21', 2),
(2, 'Julio', 'julio.rayo@ucr.ac.cr', '$2y$10$Y0BWksl5WM.33rsEc5.hre5lUiEubgZgYuOYk6kKxJ0MwY70UWW46', 'oAGA3Z9eFfdcRLRQcONGahrpJ58X2eS9DRuIpbOsTy5OBp9gDOqG4UethlVP', '2016-01-26 21:25:01', '2016-01-29 17:25:04', 6),
(3, 'Miguel Castro', 'miguel.castro@ucr.ac.cr', '$2y$10$6lrFu9loKVW/RarKyS0ETeV9KN55FX34Swa9JEUsbWcZ13QkPF27W', 'fXUl9IYLf63RHunuiX0GA3RwiRxhSixuHOepnBux5O7sriP9jtqIra93wPOJ', '2016-01-26 21:31:54', '2016-02-23 22:15:50', 2),
(4, 'Prueba', 'prueba@ucr.ac.cr', '$2y$10$iGh82LmnLr1Kd8vV.JCTWO2qBo7tuXqaPLR0NizpGDX94edq2pGWa', 'mhKRG0E1q3io258dx6Zy2EiNEjZtMni7ARC22yqCLPqBtbLTsQ9xgxhlJKrV', '2016-01-26 23:00:11', '2016-02-23 22:10:32', 5),
(5, 'Manuel Gonzalez', 'manuel@ucr.ac.cr', '$2y$10$q8t0uAf51uu6O4QXX0CWxuvxwKs3YBQZ166pcQKEDZ/ihHy4XGC.a', 'oDqc80jTl9t4wmXOH2XJwKOTZrdlKjRMm8QlTcYNdBZX60pZi7XrLxFGvrfp', '2016-01-28 18:21:50', '2016-01-28 18:56:13', 1),
(6, 'ATIC', 'atic.sp@ucr.ac.cr', '$2y$10$BMQ0PvFl8zU8UP6d7QB9xe9KlLBCxXMbTWW7L1sZ.tQkKByUFQ66C', 'W3e3x5O4mHXkIue2apqLz6M02hwuRiLkE9xwKivo6AfgKCaQ73IB4zHEV7eT', '2016-01-28 19:51:12', '2016-01-29 14:17:54', 7),
(7, 'JESSICA MADRIGAL ROMAN', 'jessica.madrigal@ucr.ac.cr', '$2y$10$2xI3AXt35XVgqEzcaH6X/uHBp5sWw/GC6gYEAMyULMFxGOaSD/jYi', '3RxDqEaYTRS9pFaAVpGGzVVwHWm0elpQmMv1fAK09PIN2QS9VPUbn4Ykrpfy', '2016-01-29 16:15:24', '2016-01-29 17:32:47', 7),
(8, 'prueba02', 'prueba02@ucr.ac.cr', '$2y$10$pJEsZJs2lejhsTpwOgqzruSqUplYBEeX5WlH7QRs/PAbEuT8ICOrC', 'k9iMgcN4JqSU47gDcRfQD3N2iWcLYUdNr8gvMIhn4rm5OBWVDyg6A7tHWw6M', '2016-02-23 22:11:48', '2016-02-23 22:14:48', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario_tcoordinacion`
--

CREATE TABLE IF NOT EXISTS `tusuario_tcoordinacion` (
  `idUsuarioCoordinacion` int(11) NOT NULL AUTO_INCREMENT,
  `tUsuario_idUsuario` int(11) NOT NULL,
  `tCoordi_idCoordinacion` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idUsuarioCoordinacion`),
  KEY `tUsuario_idUsuario` (`tUsuario_idUsuario`),
  KEY `tCoordinacion_idCoordinacion` (`tCoordi_idCoordinacion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=232 ;

--
-- Volcado de datos para la tabla `tusuario_tcoordinacion`
--

INSERT INTO `tusuario_tcoordinacion` (`idUsuarioCoordinacion`, `tUsuario_idUsuario`, `tCoordi_idCoordinacion`) VALUES
(115, 1, '1050'),
(116, 1, '1051'),
(117, 1, '1052'),
(118, 1, '1053'),
(119, 1, '1054'),
(120, 1, '1055'),
(121, 1, '1942'),
(122, 1, '2009'),
(123, 1, '2047'),
(124, 1, '2980'),
(125, 1, '2981'),
(126, 1, '5907'),
(127, 1, '6005'),
(128, 1, '7508'),
(131, 1, '6456'),
(132, 1, '6555'),
(133, 1, '1234'),
(135, 1, '1099'),
(181, 6, '1054'),
(182, 6, '1099'),
(183, 6, '9999'),
(185, 6, '1056'),
(186, 6, '1057'),
(188, 3, '1050'),
(189, 3, '1051'),
(190, 3, '1052'),
(191, 3, '1053'),
(192, 3, '1054'),
(193, 3, '1055'),
(194, 3, '1056'),
(195, 3, '1057'),
(196, 3, '1099'),
(197, 3, '1234'),
(198, 3, '1942'),
(199, 3, '2'),
(200, 3, '2009'),
(201, 3, '2047'),
(202, 3, '2980'),
(203, 3, '2981'),
(204, 3, '5907'),
(205, 3, '6005'),
(206, 3, '6456'),
(207, 3, '6555'),
(208, 3, '7508'),
(209, 3, '9999'),
(210, 3, '1088'),
(211, 7, '1088'),
(212, 7, '1077'),
(215, 4, '1088'),
(216, 2, '1050'),
(217, 2, '1051'),
(218, 2, '1052'),
(219, 2, '1053'),
(220, 2, '1054'),
(221, 2, '1056'),
(222, 2, '1057'),
(223, 2, '1077'),
(224, 2, '1088'),
(225, 2, '1099'),
(226, 8, '1050'),
(227, 8, '1051'),
(228, 8, '1052'),
(229, 8, '1053'),
(230, 8, '1054'),
(231, 8, '1055');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tconfiguracion`
--
ALTER TABLE `tconfiguracion`
  ADD CONSTRAINT `tconfiguracion_ibfk_1` FOREIGN KEY (`tUsuario_idUsuario`) REFERENCES `tusuario` (`id`);

--
-- Filtros para la tabla `tfactura`
--
ALTER TABLE `tfactura`
  ADD CONSTRAINT `tfactura_ibfk_1` FOREIGN KEY (`tPartida_idPartida`) REFERENCES `tpresupuesto_tpartida` (`id`);

--
-- Filtros para la tabla `tpresupuesto`
--
ALTER TABLE `tpresupuesto`
  ADD CONSTRAINT `tpresupuesto_tcoordinacion_idcoordinacion_foreign` FOREIGN KEY (`tCoordinacion_idCoordinacion`) REFERENCES `tcoordinacion` (`idCoordinacion`);

--
-- Filtros para la tabla `tpresupuesto_tpartida`
--
ALTER TABLE `tpresupuesto_tpartida`
  ADD CONSTRAINT `tpresupuesto_tpartida_ibfk_1` FOREIGN KEY (`tPresupuesto_idPresupuesto`) REFERENCES `tpresupuesto` (`idPresupuesto`),
  ADD CONSTRAINT `tpresupuesto_tpartida_ibfk_2` FOREIGN KEY (`tPartida_idPartida`) REFERENCES `tpartida` (`idPartida`);

--
-- Filtros para la tabla `trol_tiene_tpermiso`
--
ALTER TABLE `trol_tiene_tpermiso`
  ADD CONSTRAINT `fk_tRol_has_tPermiso_tPermiso1` FOREIGN KEY (`tPermiso_idPermiso`) REFERENCES `tpermiso` (`idPermiso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tRol_has_tPermiso_tRol` FOREIGN KEY (`tRol_idRol`) REFERENCES `trol` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ttranferencia_partida`
--
ALTER TABLE `ttranferencia_partida`
  ADD CONSTRAINT `ttranferencia_partida_ibfk_1` FOREIGN KEY (`tPresupuestoPartidaDe`) REFERENCES `tpresupuesto_tpartida` (`id`),
  ADD CONSTRAINT `ttranferencia_partida_ibfk_2` FOREIGN KEY (`tPresupuestoPartidaA`) REFERENCES `tpresupuesto_tpartida` (`id`);

--
-- Filtros para la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD CONSTRAINT `fk_tUsuario_tRol1` FOREIGN KEY (`tRol_idRol`) REFERENCES `trol` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tusuario_tcoordinacion`
--
ALTER TABLE `tusuario_tcoordinacion`
  ADD CONSTRAINT `tusuario_tcoordinacion_ibfk_1` FOREIGN KEY (`tCoordi_idCoordinacion`) REFERENCES `tcoordinacion` (`idCoordinacion`),
  ADD CONSTRAINT `tusuario_tcoordinacion_ibfk_2` FOREIGN KEY (`tUsuario_idUsuario`) REFERENCES `tusuario` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
