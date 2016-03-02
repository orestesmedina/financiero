-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-02-2016 a las 22:44:54
-- Versión del servidor: 5.5.46-0+deb8u1
-- Versión de PHP: 5.6.14-0+deb8u1


CREATE DATABASE presupuestooaf;
USE presupuestooaf;

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
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tconfiguracion`
--

CREATE TABLE IF NOT EXISTS `tconfiguracion` (
`idConfiguracion` int(10) unsigned NOT NULL,
  `vConfiguracion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iValor` int(11) NOT NULL DEFAULT '2016',
  `tUsuario_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcoordinacion`
--

CREATE TABLE IF NOT EXISTS `tcoordinacion` (
  `idCoordinacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vNombreCoordinacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tfactura`
--

CREATE TABLE IF NOT EXISTS `tfactura` (
`idFactura` int(10) NOT NULL,
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
  `tReserva_vReserva` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpartida`
--

CREATE TABLE IF NOT EXISTS `tpartida` (
`idPartida` int(11) NOT NULL,
  `codPartida` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `vNombrePartida` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vDescripcion` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=706 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpermiso`
--

CREATE TABLE IF NOT EXISTS `tpermiso` (
`idPermiso` int(11) NOT NULL,
  `nombrePermiso` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

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
(23, 'Ver Respaldos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpresupuesto`
--

CREATE TABLE IF NOT EXISTS `tpresupuesto` (
`idPresupuesto` int(11) NOT NULL,
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
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



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
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `treserva`
--

CREATE TABLE IF NOT EXISTS `treserva` (
`idReserva` int(11) NOT NULL,
  `vReserva` int(11) NOT NULL,
  `vDocumento` varchar(50) NOT NULL,
  `vDetalle` varchar(50) NOT NULL,
  `iMontoFactura` int(11) NOT NULL,
  `tPartida_idPartida` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trol`
--

CREATE TABLE IF NOT EXISTS `trol` (
`idRol` int(11) NOT NULL,
  `nombreRol` varchar(45) DEFAULT NULL,
  `descripcionRol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `trol`
--

INSERT INTO `trol` (`idRol`, `nombreRol`, `descripcionRol`) VALUES
(1, 'default', 'Rol por defecto'),
(2, 'Administrador', 'Acceso total');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trol_tiene_tpermiso`
--

CREATE TABLE IF NOT EXISTS `trol_tiene_tpermiso` (
  `tRol_idRol` int(11) NOT NULL,
  `tPermiso_idPermiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `trol_tiene_tpermiso`
--

INSERT INTO `trol_tiene_tpermiso` (`tRol_idRol`, `tPermiso_idPermiso`) VALUES
(1, 1),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ttranferencia_partida`
--

CREATE TABLE IF NOT EXISTS `ttranferencia_partida` (
`idTransferencia` int(11) NOT NULL,
  `tPresupuestoPartidaDe` int(11) NOT NULL,
  `tPresupuestoPartidaA` int(11) NOT NULL,
  `vDocumento` varchar(50) NOT NULL,
  `iMontoTransferencia` int(11) NOT NULL,
  `tUsuario_idUsuario` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE IF NOT EXISTS `tusuario` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tRol_idRol` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tusuario`
--

INSERT INTO `tusuario` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `tRol_idRol`) VALUES
(1, 'administrador', 'admin@ucr.ac.cr', '$2y$10$71R51ASjouWA1HetFm5YJu9BoXW3KN18zuwV5D7p6NQ27PQrIzpei', 'M0GkGasoDT6XTkC0PP2XMJHsCdwyqeqGqGzl5ZovRSXSO25TmwkP0mU4Wnnh', '2015-10-22 02:45:21', '2016-01-21 20:37:29', 2);-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario_tcoordinacion`
--

CREATE TABLE IF NOT EXISTS `tusuario_tcoordinacion` (
`idUsuarioCoordinacion` int(11) NOT NULL,
  `tUsuario_idUsuario` int(11) NOT NULL,
  `tCoordi_idCoordinacion` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tusuario_tcoordinacion`
--



CREATE TABLE IF NOT EXISTS treintegro_tfactura (
id int NOT NULL AUTO_INCREMENT,
documento  varchar(255) NOT NULL,
tfactura_idFactura int NOT NULL,
fechaReintegro DATE NOT NULL,
observacion TEXT,
PRIMARY KEY (id));


 
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `tconfiguracion`
--
ALTER TABLE `tconfiguracion`
 ADD PRIMARY KEY (`idConfiguracion`), ADD KEY `tUsuario_idUsuario` (`tUsuario_idUsuario`);

--
-- Indices de la tabla `tcoordinacion`
--
ALTER TABLE `tcoordinacion`
 ADD PRIMARY KEY (`idCoordinacion`), ADD UNIQUE KEY `tcoordinacion_idcoordinacion_unique` (`idCoordinacion`), ADD UNIQUE KEY `vNombreCoordinacion` (`vNombreCoordinacion`);

--
-- Indices de la tabla `tfactura`
--
ALTER TABLE `tfactura`
 ADD PRIMARY KEY (`idFactura`), ADD KEY `tfactura_tpartida_idpartida_foreign` (`tPartida_idPartida`);

--
-- Indices de la tabla `tpartida`
--
ALTER TABLE `tpartida`
 ADD PRIMARY KEY (`idPartida`), ADD UNIQUE KEY `codPartida` (`codPartida`);

--
-- Indices de la tabla `tpermiso`
--
ALTER TABLE `tpermiso`
 ADD PRIMARY KEY (`idPermiso`);

--
-- Indices de la tabla `tpresupuesto`
--
ALTER TABLE `tpresupuesto`
 ADD PRIMARY KEY (`idPresupuesto`), ADD UNIQUE KEY `tpresupuesto_idpresupuesto_unique` (`idPresupuesto`), ADD KEY `tpresupuesto_tcoordinacion_idcoordinacion_foreign` (`tCoordinacion_idCoordinacion`);

--
-- Indices de la tabla `tpresupuesto_tpartida`
--
ALTER TABLE `tpresupuesto_tpartida`
 ADD PRIMARY KEY (`id`), ADD KEY `tPresupuesto_idPresupuesto` (`tPresupuesto_idPresupuesto`), ADD KEY `tPartida_idPartida` (`tPartida_idPartida`);

--
-- Indices de la tabla `treserva`
--
ALTER TABLE `treserva`
 ADD PRIMARY KEY (`idReserva`);

--
-- Indices de la tabla `trol`
--
ALTER TABLE `trol`
 ADD PRIMARY KEY (`idRol`), ADD UNIQUE KEY `nombreRol` (`nombreRol`);

--
-- Indices de la tabla `trol_tiene_tpermiso`
--
ALTER TABLE `trol_tiene_tpermiso`
 ADD PRIMARY KEY (`tRol_idRol`,`tPermiso_idPermiso`), ADD KEY `fk_tRol_has_tPermiso_tPermiso1_idx` (`tPermiso_idPermiso`), ADD KEY `fk_tRol_has_tPermiso_tRol_idx` (`tRol_idRol`);

--
-- Indices de la tabla `ttranferencia_partida`
--
ALTER TABLE `ttranferencia_partida`
 ADD PRIMARY KEY (`idTransferencia`), ADD KEY `tPresupuestoPartidaDe` (`tPresupuestoPartidaDe`), ADD KEY `tPresupuestoPartidaA` (`tPresupuestoPartidaA`);

--
-- Indices de la tabla `tusuario`
--
ALTER TABLE `tusuario`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email_UNIQUE` (`email`), ADD KEY `fk_tUsuario_tRol1_idx` (`tRol_idRol`);

--
-- Indices de la tabla `tusuario_tcoordinacion`
--
ALTER TABLE `tusuario_tcoordinacion`
 ADD PRIMARY KEY (`idUsuarioCoordinacion`), ADD KEY `tUsuario_idUsuario` (`tUsuario_idUsuario`), ADD KEY `tCoordinacion_idCoordinacion` (`tCoordi_idCoordinacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tconfiguracion`
--
ALTER TABLE `tconfiguracion`
MODIFY `idConfiguracion` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `tfactura`
--
ALTER TABLE `tfactura`
MODIFY `idFactura` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `tpartida`
--
ALTER TABLE `tpartida`
MODIFY `idPartida` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=706;
--
-- AUTO_INCREMENT de la tabla `tpermiso`
--
ALTER TABLE `tpermiso`
MODIFY `idPermiso` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `tpresupuesto`
--
ALTER TABLE `tpresupuesto`
MODIFY `idPresupuesto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `tpresupuesto_tpartida`
--
ALTER TABLE `tpresupuesto_tpartida`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `treserva`
--
ALTER TABLE `treserva`
MODIFY `idReserva` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `trol`
--
ALTER TABLE `trol`
MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `ttranferencia_partida`
--
ALTER TABLE `ttranferencia_partida`
MODIFY `idTransferencia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tusuario`
--
ALTER TABLE `tusuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `tusuario_tcoordinacion`
--
ALTER TABLE `tusuario_tcoordinacion`
MODIFY `idUsuarioCoordinacion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=122;
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

ALTER TABLE treintegro_tfactura
ADD FOREIGN KEY (tfactura_idFactura) REFERENCES tfactura (idFactura);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
