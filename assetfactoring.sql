-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-05-2016 a las 10:28:05
-- Versión del servidor: 5.6.26-cll-lve
-- Versión de PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `assetsfa_sistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avales_contrato`
--

CREATE TABLE IF NOT EXISTS `avales_contrato` (
  `id_avales_cm` int(11) NOT NULL AUTO_INCREMENT,
  `id_solicitud` int(11) NOT NULL,
  `id_nom_accionista` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_avales_cm`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Volcado de datos para la tabla `avales_contrato`
--

INSERT INTO `avales_contrato` (`id_avales_cm`, `id_solicitud`, `id_nom_accionista`, `status`) VALUES
(43, 22, 5, 0),
(44, 22, 6, 0),
(45, 22, 9, 0),
(46, 23, 2, 0),
(47, 23, 3, 0),
(48, 23, 4, 0),
(49, 24, 2, 0),
(50, 24, 3, 0),
(51, 24, 4, 0),
(52, 27, 2, 0),
(53, 27, 3, 0),
(54, 27, 4, 0),
(55, 29, 3, 0),
(56, 29, 4, 0),
(57, 1, 7, 0),
(58, 1, 8, 0),
(62, 32, 3, 0),
(63, 32, 4, 0),
(64, 34, 3, 0),
(65, 34, 4, 0),
(66, 36, 2, 0),
(67, 36, 3, 0),
(68, 36, 4, 0),
(69, 35, 2, 0),
(70, 35, 3, 0),
(71, 35, 4, 0),
(75, 41, 2, 0),
(76, 41, 3, 0),
(77, 41, 4, 0),
(78, 44, 2, 0),
(79, 44, 3, 0),
(80, 44, 4, 0),
(81, 52, 2, 0),
(82, 52, 3, 0),
(83, 52, 4, 0),
(84, 55, 7, 0),
(85, 55, 8, 0),
(86, 64, 7, 0),
(87, 64, 8, 0),
(88, 67, 7, 0),
(89, 67, 8, 0),
(90, 69, 7, 0),
(91, 69, 8, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `id_number` int(11) NOT NULL,
  `nacionality` enum('v','e') NOT NULL DEFAULT 'v',
  `sex` enum('f','m') NOT NULL DEFAULT 'm',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `attemps` tinyint(4) NOT NULL DEFAULT '0',
  `tipo` tinyint(4) NOT NULL DEFAULT '1',
  `reset` varchar(32) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `access` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `email` (`email`),
  KEY `pass` (`pass`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `id_number`, `nacionality`, `sex`, `first_name`, `last_name`, `email`, `pass`, `attemps`, `tipo`, `reset`, `status`, `access`) VALUES
(1, 0, 'v', 'm', 'admin', 'admin', 'admin@localhost.com', '05898727aa1a01ffa94b4d455818954a', 0, 1, NULL, 1, NULL),
(2, 0, '', '', 'trade service', 'panama inc', 'avillavicencio@tradeservicepanama.com', '42a72fd1d5b2d4de0cdbea91a2821c19', 0, 1, NULL, 1, '2016-04-07 17:59:48'),
(3, 0, '', '', 'willian', 'ramirez', 'willyra2003@yahoo.com', '7f57f9962f679e4dd288e0d1c325b5a7', 0, 1, NULL, 1, '2016-03-09 02:08:44'),
(5, 0, '', '', 'bermudez global company ', 'c.a', 'bermudezglobalcompany@gmail.com', 'd6368a1eeebe01dc5a6ca8ce1cdb5070', 0, 1, NULL, 1, '2014-10-08 14:24:00'),
(6, 0, '', '', 'luis', 'guerra', 'guerral@hotmail.com', 'c9baa02ccdd12a3ddf3bc7e7a0471178', 0, 1, NULL, 1, '2015-02-18 21:48:19'),
(7, 0, '', '', 'carlos ', 'angulo', 'presidencia@tealca.com', '5585eb4d23e633f4d172d6c0ae758eeb', 0, 1, NULL, 1, '2014-10-30 16:34:01'),
(8, 0, '', '', 'cesar ', 'garcia davila', 'cegarda@hotmail.com', '64b4a89f4b0f9f7a2f5c757d9abb4dec', 0, 0, NULL, 1, '2016-03-11 22:20:38'),
(10, 0, '', '', 'dayan ', 'castillo', 'daycas.m@hotmail.com', '1f5ba8462c2a4aa478f8a73b52835a93', 0, 0, NULL, 1, '2016-03-07 21:35:50'),
(11, 0, '', '', 'jorge', 'jerez', 'jjerez@cps.la', 'd5b25d835045e466685c8cb9ec37ed2a', 0, 1, NULL, 1, '2014-12-01 13:35:30'),
(13, 0, '', '', 'ingenieria in limites', 's.a.', 'ingenieriasinlimites@yahoo.com', '579567036424bbd0d83caf7b2ff1f01b', 0, 1, NULL, 1, '2014-12-28 23:31:40'),
(14, 0, '', '', 'andres mauricio', 'cardenas ballesteros', 'andresch1987@gmail.com', '5bf264276f39b8e8e442c9ca830599f5', 0, 0, NULL, 1, '2015-10-26 19:37:13'),
(15, 0, '', '', 'andres mauricio', 'cardenas', 'ideasptyservices@gmail.com', 'f5c0b89cf43f760ac34216a9d2933d50', 0, 1, NULL, 1, '2015-01-06 15:27:14'),
(16, 0, '', '', 'guillermo', 'ramirez', 'darcowboy@gmail.com', 'ac2b6d03af4e10260f3f9a9a226e6036', 0, 0, NULL, 1, '2015-01-20 21:15:46'),
(17, 0, '', '', 'eduardo', 'grijalva', 'edgrijalva@tradeservicepanama.com', '324b5d38d2de1e789f36878e1cddb722', 0, 0, NULL, 1, '2016-04-20 00:20:50'),
(18, 0, '', '', 'pedro', 'perez', 'pedro@hot.com', '8024ace082ea63c68963ee6cea4e9063', 0, 0, NULL, 1, '2015-05-04 21:56:42'),
(19, 0, '', '', 'iraidis', 'tineo', 'iraidis_tineo@hotmail.com', 'dc975db7b42e47cc352df581294b906b', 0, 0, NULL, 1, '2015-01-30 23:50:32'),
(20, 0, '', '', 'mauricio', 'cartin f', 'merpatsamauricio@yahoo.com', 'a07f16274410bbb2959d591903851cda', 0, 0, NULL, 1, '2015-02-03 22:20:57'),
(21, 0, '', '', 'alberto jesus', 'villavicencio fernandez', 'albertojesusvillavicencio@hotmail.com', '5d5123bbcd46a0a37c92ac07bbb22ff3', 0, 0, NULL, 1, '2015-03-20 16:40:25'),
(22, 0, '', '', 'juan', 'posada', 'juangonzaloposada@yahoo.com', 'f1485b509e4d850f52b527f5d3232fed', 0, 1, NULL, 1, '2015-05-13 16:45:48'),
(23, 0, '', '', 'cinthia', 'perez', 'cinthiamilitza@hotmail.com', 'f7cd579845f11ef31de0a27ef4891dfc', 0, 0, NULL, 1, '2015-10-22 11:50:10'),
(24, 0, '', '', 'jose', 'ramos', 'ramosvjm@gmail.com', '14c4430d7d939499dde3135d72b64605', 0, 0, NULL, 1, '2015-07-15 00:56:41'),
(25, 0, '', '', 'iluminada del carmen', 'batista jimenez', 'jmindugrafica@gmail.com', 'cea2eb671c977beaf4d2b570c2591032', 0, 0, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codeudores`
--

CREATE TABLE IF NOT EXISTS `codeudores` (
  `id_codeudor` int(11) NOT NULL AUTO_INCREMENT,
  `id_solicitud` int(11) NOT NULL,
  `nom_apell_codeudor` text NOT NULL,
  `nacionalidad_codeudor` text NOT NULL,
  `genero_codeudor` text NOT NULL,
  `cedula_codeudor` text NOT NULL,
  PRIMARY KEY (`id_codeudor`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `codeudores`
--

INSERT INTO `codeudores` (`id_codeudor`, `id_solicitud`, `nom_apell_codeudor`, `nacionalidad_codeudor`, `genero_codeudor`, `cedula_codeudor`) VALUES
(1, 42, 'OGLEIDIS VIRGINIA SUAREZ MONTILLA', 'venezolana', 'Mujer', '052049493'),
(2, 46, 'Rhonald Alejandro Brito', 'Venezolano', 'Varon', '065442485'),
(3, 47, 'Rhonald Alejandro Brito', 'Venezolano', 'Varon', '05646416'),
(4, 48, 'rhonald', 'PA', 'Varon', '654824'),
(5, 49, 'OGLEIDIS VIRGINIA SUAREZ MONTILLA', 'venezolana', 'Mujer', '052049493'),
(6, 50, 'aLBERTO JESUS VILLAVICENCIO FERNANDEZ', 'VENEZOLANO', 'Varon', '088268581'),
(10, 54, 'Cesar Ignacio Garcia Davila', 'venezolano', 'Varon', '043153990'),
(11, 56, 'EDUARDO JOSE GRIJALBA MARTINEZ', '', 'Varon', '0622310198'),
(12, 57, 'EDUARDO JOSE GRIJALVA MARTINEZ', '', 'Varon', '062310198'),
(13, 58, 'EDUARDO JOSE GRIJALVA MARTINEZ', '', 'Varon', '062310198'),
(14, 59, 'ALBERTO JESUS VILLAVICENCIO FERNANDEZ', '', 'Varon', '088268581'),
(15, 60, 'cesar ignacio garcia davila', '', 'Varon', '043153990'),
(16, 61, 'alberto jesus villavicencio fernandez', 'venezolano', 'Varon', '088268581'),
(17, 62, ' CESAR IGNACIO GARCIA DAVILA,', 'venezolano', 'Varon', '043153990'),
(18, 63, 'ALBERTO JESUS VILLAVICENCIO FERNANDEZ', '', 'Varon', '088268581'),
(19, 66, 'cesar ignacio garcia davila', '', 'Varon', '043153990'),
(20, 68, 'CESAR IGNACIO GARCIA DAVILA', 'VENEZOLANO', 'Varon', '043153990'),
(21, 70, 'CESAR IGNACIO GARCIA DAVILA', 'VENEZOLANO', 'Varon', '043153990'),
(22, 71, 'cesar ignacio garcia davila', '', 'Varon', '043153990');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id_config` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id_config`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id_config`, `name`, `label`, `value`) VALUES
(1, 'max_attemps', 'Máximo de intentos fallidos', '5'),
(2, 'declaracion_jurada', 'declaracion_jurada', 'Actuando en nombre y por cuenta de mi (nuestra) representada y de manera voluntaria, declaro (declaramos) bajo fe de juramento: Que los capitales, bienes, haberes o títulos valores o de crédito que sean presentados, entregados, depositados o declarados a ASSETS FACTORING, INC., durante todo el período que permanezca vigente la relación contractual de mi (nuestra) representada con la antes mencionada empresa, tienen una fuente y procedencia lícita y por lo tanto no tienen relación alguna con dinero, capitales, bienes, haberes, valores o títulos, facturas, giros que se consideren producto de actividades o acciones ilícitas en general, y en especial, no tiene relación alguna con dinero, capitales, bienes, haberes, valores o títulos producto de actividades referidas con el blanqueo de Capitales y/o con el Financiamiento al terrorismo. Mi (nuestra) representada suministrará a ASSETS FACTORING, INC. cualquier información y/o recaudo que le sea exigido por ésta. Por último, declaro (amos) en nombre de mi (nuestra) representada de que toda la información y documentación suministrada a ASSETS FACTORING, INC. es verdadera y autorizo (amos) expresamente a ASSETS FACTORING, INC. Para que haga la  verificación correspondiente de los datos y Documentos suministrados por mi (nuestra) representada.'),
(3, 'declaracion_jurada_pn', 'declaracion_jurada_pn', 'Actuando por voluntad propia, declaro  bajo fe de juramento: Que los capitales, bienes, haberes, títulos valores o de crédito que sean presentados, entregados, depositados o declarados a ASSETS FACTORING, INC., durante todo el período que permanezca vigente la relación contractual de mi (nuestra) representada con la antes mencionada empresa, tienen una fuente y procedencia lícita y por lo tanto no tienen relación alguna con dinero, capitales, bienes, haberes, valores o títulos, facturas, giros que se consideren producto de actividades o acciones ilícitas en general, y en especial, no tiene relación alguna con dinero, capitales, bienes, haberes, valores o títulos producto de actividades referidas con el blanqueo de Capitales y/o con el Financiamiento al terrorismo. De ser el caso suministrare a ASSETS FACTORING, INC. Cualquier información y/o recaudo que me sea exigido. Por último, declaro que toda la información y documentación suministrada a ASSETS FACTORING UP, INC. Es verdadera y autorizo expresamente a ASSETS FACTORING, INC. Para que haga la  verificación correspondiente de los datos y Documentos suministrados por mí.'),
(4, 'DOLARES AMERICANOS', 'moneda', 'USD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_bancarios`
--

CREATE TABLE IF NOT EXISTS `datos_bancarios` (
  `id_dat_banca_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `id_pj` int(11) NOT NULL,
  `banco_ref_pj` text NOT NULL,
  `n_cuenta_ref_pj` text NOT NULL,
  `cuenta_ref_pj` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_dat_banca_empresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Volcado de datos para la tabla `datos_bancarios`
--

INSERT INTO `datos_bancarios` (`id_dat_banca_empresa`, `id_pj`, `banco_ref_pj`, `n_cuenta_ref_pj`, `cuenta_ref_pj`, `status`) VALUES
(31, 3, 'a:3:{i:0;s:15:"cREDICORP TRUST";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:10:"1641651561";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:9:"cORRIENTE";i:1;s:0:"";i:2;s:0:"";}', 1),
(39, 4, 'a:3:{i:0;s:6:"banisi";i:1;s:9:"multibank";i:2;s:0:"";}', 'a:3:{i:0;s:11:"10007016712";i:1;s:11:"10702103408";i:2;s:0:"";}', 'a:3:{i:0;s:9:"corriente";i:1;s:9:"corriente";i:2;s:0:"";}', 1),
(40, 1, 'a:3:{i:0;s:7:"BANESCO";i:1;s:10:"SCOTIABANK";i:2;s:0:"";}', 'a:3:{i:0;s:12:"110000011638";i:1;s:9:"850045844";i:2;s:0:"";}', 'a:3:{i:0;s:9:"CORREINTE";i:1;s:9:"CORRIENTE";i:2;s:0:"";}', 1),
(43, 5, 'a:3:{i:0;s:29:"banco occidental de descuento";i:1;s:7:"banesco";i:2;s:9:"mercantil";}', 'a:3:{i:0;s:20:"01160121990186924747";i:1;s:20:"01340073340731060665";i:2;s:20:"01050129611129208141";}', 'a:3:{i:0;s:23:"corriente con intereses";i:1;s:9:"corriente";i:2;s:9:"corriente";}', 1),
(44, 2, 'a:3:{i:0;s:9:"credicorp";i:1;s:7:"banesco";i:2;s:6:"balboa";}', 'a:3:{i:0;s:11:"12365987452";i:1;s:7:"1236548";i:2;s:9:"123659874";}', 'a:3:{i:0;s:9:"corriente";i:1;s:6:"ahorro";i:2;s:9:"corriente";}', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_registros`
--

CREATE TABLE IF NOT EXISTS `datos_registros` (
  `id_registro_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `id_pj` int(11) NOT NULL,
  `of_reg_pj` text,
  `nom_reg_pj` varchar(60) DEFAULT NULL,
  `num_reg_pj` varchar(11) DEFAULT NULL,
  `num_doc_pj` varchar(30) DEFAULT NULL,
  `num_ficha_pj` varchar(30) DEFAULT NULL,
  `tomo_reg_pj` varchar(11) DEFAULT NULL,
  `fecha_reg_pj` date DEFAULT NULL,
  `ciudad_reg_pj` varchar(60) DEFAULT NULL,
  `estado_reg_pj` varchar(60) DEFAULT NULL,
  `dura_reg_pj` int(11) DEFAULT NULL,
  `num_emp_reg_pj` int(11) DEFAULT NULL,
  `rep_leg_reg_pj` varchar(70) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_registro_empresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Volcado de datos para la tabla `datos_registros`
--

INSERT INTO `datos_registros` (`id_registro_empresa`, `id_pj`, `of_reg_pj`, `nom_reg_pj`, `num_reg_pj`, `num_doc_pj`, `num_ficha_pj`, `tomo_reg_pj`, `fecha_reg_pj`, `ciudad_reg_pj`, `estado_reg_pj`, `dura_reg_pj`, `num_emp_reg_pj`, `rep_leg_reg_pj`, `status`) VALUES
(31, 3, NULL, NULL, NULL, '6456', '56466', NULL, '2007-10-18', NULL, NULL, NULL, NULL, NULL, 1),
(39, 4, NULL, NULL, NULL, '1281841', '600729', NULL, '2008-01-24', NULL, NULL, NULL, NULL, NULL, 1),
(40, 1, NULL, NULL, NULL, '1805806', '706217', NULL, '2010-07-07', NULL, NULL, NULL, NULL, NULL, 1),
(43, 5, 'Registro mercantil primero', 'Registro mercantil primero', '3', NULL, NULL, '35-A', '1994-12-19', 'maracaibo', 'zulia', 20, 94, NULL, 1),
(44, 2, NULL, NULL, NULL, '365987', '126598', NULL, '2014-09-02', NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_empresa` text NOT NULL,
  `rif_empresa` text NOT NULL,
  `direccion_empresa` text NOT NULL,
  `telefonos_empresa` varchar(255) NOT NULL,
  `numero_registro` varchar(255) NOT NULL,
  `tomo_registro` varchar(255) NOT NULL,
  `fecha_registro` varchar(255) NOT NULL,
  `ciudad_registro` varchar(255) NOT NULL,
  `nombre_registro` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `nombre_empresa`, `rif_empresa`, `direccion_empresa`, `telefonos_empresa`, `numero_registro`, `tomo_registro`, `fecha_registro`, `ciudad_registro`, `nombre_registro`, `status`) VALUES
(1, 'ASSETS FACTORING INC', '2593450-1-832669', '', '507 2944419', '2593450', '832669', '05 DE MAYO DE 2014', 'PANAMA', 'REGISTRO PUBLICO DE PANAMA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE IF NOT EXISTS `facturas` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
  `id_solicitud` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `numero_factura` varchar(50) NOT NULL,
  `deudor` varchar(255) NOT NULL,
  `rif` varchar(30) NOT NULL,
  `fecha_emision` varchar(30) NOT NULL,
  `fecha_vencimiento` varchar(30) NOT NULL,
  `valor_nominal` float(11,2) NOT NULL,
  `iva` float(11,2) NOT NULL,
  `valor_con_iva` float(11,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_factura`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=123 ;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id_factura`, `id_solicitud`, `numero`, `numero_factura`, `deudor`, `rif`, `fecha_emision`, `fecha_vencimiento`, `valor_nominal`, `iva`, `valor_con_iva`, `status`) VALUES
(91, 41, 7, 'A-174971', 'INVERSIONES UNI COMARCA, C.A', 'J295923309', '10/29/2013', '12/28/2013', 84031.90, 12.00, 94115.73, -1),
(101, 41, 5, 'A-174969', 'INVERSIONES VENEZUELA 385, C.A.', 'J298166665', '10/27/2013', '12/26/2013', 90606.00, 12.00, 101478.72, 0),
(102, 41, 6, 'A-174970', 'DISJOGRECA SUCRE, C.A.', 'J400621143', '10/28/2013', '12/27/2013', 84510.18, 12.00, 94651.40, -1),
(103, 41, 9, 'A-174973', 'INVERSIONES HUA MAO C.A.', 'J296556822', '10/31/2013', '12/30/2013', 102960.00, 12.00, 115315.20, -1),
(104, 41, 3, 'A-174967', 'RED DE ABASTOS BICENTENARIO, S.A.', 'J302321581', '10/25/2013', '12/24/2013', 116640.00, 12.00, 130636.80, -1),
(105, 41, 10, 'A-154568', 'CLOUDS BUSINESSTECH S.A.', 'J29991599-8', '10/29/2013', '12/28/2013', 1500.00, 10.00, 1650.00, -1),
(106, 41, 8, 'A-174972', 'CENTRAL MADEIRENSE, C.A.', 'J000062757', '10/30/2013', '12/29/2013', 31977.60, 12.00, 35814.91, 0),
(107, 41, 4, 'A-174968', 'COMERCIAL LA GRAN PARADA C.A.', 'J302754550', '10/26/2013', '12/25/2013', 101143.78, 12.00, 113281.03, 0),
(108, 41, 2, 'A-174966', 'B & P DISTRIBUCIONES DE VENEZUELA 2012, C.A.', 'J400963940', '10/24/2013', '12/23/2013', 120338.30, 12.00, 134778.91, 0),
(109, 41, 1, 'A-174965', 'RED DE ABASTOS BICENTENARIO, S.A.', 'J302321581', '10/23/2013', '12/22/2013', 164285.00, 12.00, 183999.20, 0),
(110, 41, 11, 'A-444555', 'CANTV', 'J561651566', '10/23/2013', '12/22/2013', 10000.00, 12.00, 11200.00, -1),
(111, 41, 12, 'A-216496', 'ABC SUPLY', 'J-568194541', '10/27/2013', '12/26/2013', 15200.00, 12.00, 17024.00, -1),
(112, 41, 12, 'A-65956', 'GIGANET', 'J5415415', '10/28/2013', '12/27/2013', 15000.00, 12.00, 16800.00, -1),
(113, 41, 13, 'A-654956', 'HJKAS C.A.', 'J-45848545', '10/29/2013', '10/29/2013', 15000.00, 12.00, 16800.00, -1),
(114, 44, 1, 'A-17496540', 'RED DE ABASTOS BICENTENARIO, S.A.', 'J302321581', '10/23/2013', '12/22/2013', 164285.00, 12.00, 183999.20, -1),
(115, 44, 2, 'A-1749660', 'B & P DISTRIBUCIONES DE VENEZUELA 2012, C.A.', 'J400963940', '10/24/2013', '12/23/2013', 120338.30, 12.00, 134778.91, 0),
(116, 44, 3, 'A-1749670', 'RED DE ABASTOS BICENTENARIO, S.A.', 'J302321581', '10/25/2013', '12/24/2013', 116640.00, 12.00, 130636.80, 0),
(117, 44, 4, 'A-1749680', 'COMERCIAL LA GRAN PARADA C.A.', 'J302754550', '10/26/2013', '12/25/2013', 101143.78, 12.00, 113281.03, 0),
(118, 44, 5, 'A-1749690', 'INVERSIONES VENEZUELA 385, C.A.', 'J298166665', '10/27/2013', '12/26/2013', 90606.00, 12.00, 101478.72, 0),
(119, 44, 6, 'A-1749700', 'DISJOGRECA SUCRE, C.A.', 'J400621143', '10/28/2013', '12/27/2013', 84510.18, 12.00, 94651.40, -1),
(120, 52, 3, '1236589', 'TELARES CD', '13256985 DV45', '2015-01-20', '2015-01-30', 35698.25, 7.00, 38197.13, 0),
(121, 52, 2, '1256847', 'GRAND PRIX TOUR', 'J-236598-6', '2015-01-17', '2015-02-26', 55632.25, 7.00, 59526.51, 0),
(122, 52, 1, '1258478', 'REMIX', '123356-25698-25', '2015-01-15', '2015-02-20', 125000.00, 7.00, 133750.00, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `firma_contrato_marco`
--

CREATE TABLE IF NOT EXISTS `firma_contrato_marco` (
  `id_firma_cm` int(11) NOT NULL AUTO_INCREMENT,
  `id_solicitud` int(11) NOT NULL,
  `id_jun_directiva` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_firma_cm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion_pn`
--

CREATE TABLE IF NOT EXISTS `inscripcion_pn` (
  `id_pn` int(11) NOT NULL AUTO_INCREMENT,
  `id_jun_directiva` int(11) NOT NULL DEFAULT '0',
  `id_cliente` int(11) NOT NULL DEFAULT '0',
  `nom_apell_pn` varchar(255) NOT NULL,
  `nacionalidad_pn` varchar(255) NOT NULL,
  `cedula_pn` varchar(255) NOT NULL,
  `sexo_pn` varchar(60) NOT NULL,
  `lug_nac_pn` varchar(255) NOT NULL,
  `fecha_nac_pn` varchar(255) NOT NULL,
  `o_naciona_pn` varchar(255) NOT NULL,
  `e_civil_pn` varchar(255) NOT NULL,
  `nom_apell_cony` varchar(255) NOT NULL,
  `nacionalidad_cony` varchar(255) NOT NULL,
  `cedula_cony` varchar(255) NOT NULL,
  `telefono_cony` varchar(255) NOT NULL,
  `telefono_pn` varchar(255) NOT NULL,
  `email_pn` varchar(255) NOT NULL,
  `direccion_pn` varchar(255) NOT NULL,
  `banco_ref_pn` varchar(255) NOT NULL,
  `n_cuenta_ref_pn` varchar(255) NOT NULL,
  `cuenta_ref_pn` varchar(255) NOT NULL,
  `nom_rz_dl_pn` varchar(255) NOT NULL,
  `rif_dl_pn` varchar(255) NOT NULL,
  `telefono_dl_pn` varchar(255) NOT NULL,
  `email_dl_pn` varchar(255) NOT NULL,
  `direccion_dl_pn` varchar(255) NOT NULL,
  `act_aeco_dl_pn` varchar(255) NOT NULL,
  `cargo_dl_pn` varchar(255) NOT NULL,
  `ant_dl_pn` varchar(255) NOT NULL,
  `exp_con_neg_pc` varchar(255) NOT NULL,
  `o_inversion_pn` varchar(255) NOT NULL,
  `n_academico_pn` varchar(255) NOT NULL,
  `activo_pn` varchar(260) NOT NULL,
  `pasivo_pn` varchar(260) NOT NULL,
  `ing_anua_pn` varchar(255) NOT NULL,
  `pat_total_pn` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_pn`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `inscripcion_pn`
--

INSERT INTO `inscripcion_pn` (`id_pn`, `id_jun_directiva`, `id_cliente`, `nom_apell_pn`, `nacionalidad_pn`, `cedula_pn`, `sexo_pn`, `lug_nac_pn`, `fecha_nac_pn`, `o_naciona_pn`, `e_civil_pn`, `nom_apell_cony`, `nacionalidad_cony`, `cedula_cony`, `telefono_cony`, `telefono_pn`, `email_pn`, `direccion_pn`, `banco_ref_pn`, `n_cuenta_ref_pn`, `cuenta_ref_pn`, `nom_rz_dl_pn`, `rif_dl_pn`, `telefono_dl_pn`, `email_dl_pn`, `direccion_dl_pn`, `act_aeco_dl_pn`, `cargo_dl_pn`, `ant_dl_pn`, `exp_con_neg_pc`, `o_inversion_pn`, `n_academico_pn`, `activo_pn`, `pasivo_pn`, `ing_anua_pn`, `pat_total_pn`, `status`) VALUES
(2, 2, 17, 'Eduardo jose grijalva martinez', 'VANEZOLANO', '062310198', 'Varon', 'Venezuela', '1975-09-21', '', 'Casado', '', '', '', '', '65751469', 'edgrijalva@tradeservicepanama.com', 'torre trump, punta paitilla, panama', 'a:3:{i:0;s:7:"banesco";i:1;s:7:"banesco";i:2;s:0:"";}', 'a:3:{i:0;s:12:"201000989832";i:1;s:12:"120000065784";i:2;s:0:"";}', 'a:3:{i:0;s:6:"ahorro";i:1;s:9:"corriente";i:2;s:0:"";}', 'trade service panama', '1805806-1-706217', '3001032', 'EDGRIJALVA@TRADESERVICEPANAMA.COM', 'panama pacifico, panamerica corporate center, galera 9080, local 1', 'logistica', 'director', '3 años', 'b', 'mo', 'u', '1552791.09', '54.20', '846000.00', '1552736.89', 1),
(3, 3, 0, 'ERNESTO  HURTADO', 'venezolano', '0855229', 'Varon', 'caracas', '2014-10-06', 'n/a', 'Casado', '', '', '', '', '12564789', 'ehu@gmail.com', 'caracas', 'a:3:{i:0;s:7:"banesco";i:1;s:6:"balboa";i:2;s:6:"balboa";}', 'a:3:{i:0;s:9:"123654789";i:1;s:9:"123456789";i:2;s:9:"123456987";}', 'a:3:{i:0;s:9:"corriente";i:1;s:9:"corriente";i:2;s:6:"ahorro";}', 'abc suplies', '236598-125698', '507 265984', 'willyra2003@yahoo.com', 'torre las americas, piso 44, ofic 44-b', 'financiera', 'director', '12 años', 'e', 'a', 'u', '100000.00', '25000.00', '500.00', '75000.00', 1),
(4, 4, 0, 'ALEXIS  LA TORRE', 'venezolano', '0665544', 'Varon', 'caracas', '2007-03-05', 'n/a', 'Soltero', '', '', '', '', '1236589', 'alexis@gmail.com', 'caracas', 'a:3:{i:0;s:7:"banesco";i:1;s:9:"credicorp";i:2;s:6:"balboa";}', 'a:3:{i:0;s:10:"1236985478";i:1;s:7:"1236598";i:2;s:8:"12547895";}', 'a:3:{i:0;s:9:"corriente";i:1;s:6:"ahorro";i:2;s:9:"corriente";}', 'abc suplies', '236598-125698', '507 265984', 'willyra2003@yahoo.com', 'torre las americas, piso 44, ofic 44-b', 'financiera', 'director', '12 años', 'e', 'a', 'u', '100000.00', '20000.00', '50000.00', '80000.00', 1),
(5, 5, 0, 'WILLIAN RAMIREZ', 'panameño', '05466987', 'Varon', 'caracas', '2004-10-05', 'n/a', 'Casado', '', '', '', '', '125698547', 'willyra2003@yahoo.com', 'caracas', 'a:3:{i:0;s:7:"banesco";i:1;s:6:"balboa";i:2;s:9:"credicorp";}', 'a:3:{i:0;s:9:"326598745";i:1;s:10:"2589632147";i:2;s:9:"147852369";}', 'a:3:{i:0;s:9:"corriente";i:1;s:6:"ahorro";i:2;s:9:"corriente";}', 'abc suplies', '236598-125698', '507 265984', 'willyra2003@yahoo.com', 'torre las americas, piso 44, ofic 44-b', 'financiera', 'director', '12 años', 'e', 'a', 'u', '100000.00', '80000.00', '50000.00', '20000.00', 1),
(7, 7, 0, 'LUIS SALVADOR GUERRA', 'espanol', '501922', 'Varon', 'caracas', '1970-07-18', 'venezolano', 'Soltero', '', '', '', '', '0050765807844', 'guerral@hotmail.com', 'av. principal costa del este edificio green bay torre 4 piso 11 apto 11b', 'a:3:{i:0;s:6:"banisi";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:11:"10006716224";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:9:"corriente";i:1;s:9:"corriente";i:2;s:0:"";}', 'corporacion de suministros regionales inc', '1281841 1 600729 dv 05', '0507 3984690 ext 126', 'corp.csr.@hotmail.com', 'trump ocean club office tower piso 6, oficina 6-01. punta pacifica', 'importacion y exportacion de suministros', 'presidente', '6 anos', 'e', 'a', 'u', '1605388.00', '39166.00', '84000.00', '1566222.00', 1),
(8, 8, 0, 'MICHEL VIEIRA PITA', 'venezolano', '033060149', 'Varon', 'caracas', '1966-09-18', 'portugues', 'Soltero', '', '', '', '', '00584143204698', 'michelvieira20@gmail.com', 'av orinoco edificio nalania piso 3 ofic 41', 'a:3:{i:0;s:9:"multibank";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:11:"10352103815";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:9:"corriente";i:1;s:0:"";i:2;s:0:"";}', 'corporacion de suministros regionales inc', '1281841 1 600729 dv 05', '0507 3984690 ext 126', 'corp.csr.@hotmail.com', 'trump ocean club office tower piso 6, oficina 6-01. punta pacifica', 'importacion y exportacion de suministros', 'secretario', '6 anos', 'e', 'a', 'u', '1500000.00', '35000.00', '84000.00', '1465000.00', 1),
(9, 0, 8, 'CESAR IGNACIO GARCIA DAVILA', 'venezolano', '043153990', 'Varon', 'venezuela', '1973-08-14', 'española', 'Soltero', '', '', '', '', '0050764307651 / 0050765969329', 'cegar@tradeservicepanama.com', 'barriada costa bay  casa N°48 costa del este', 'a:3:{i:0;s:14:"banesco panama";i:1;s:14:"banesco panama";i:2;s:0:"";}', 'a:3:{i:0;s:12:"120000038617";i:1;s:12:"201000413687";i:2;s:0:"";}', 'a:3:{i:0;s:9:"corriente";i:1;s:6:"ahorro";i:2;s:0:"";}', 'TRADE SERVICE PANAMA INC', '1805806-1-706217 DV 30', '3001032 /33 /34', 'cegar@tradeservicepanama.com', 'Panamerica Borporate Benter, Galera PCC 9080, Local 1, panama pacifico (Howard)', 'operador logistico / avituallamiento naviero', 'presidente', '4 AÑOS', 'e', 'mo', 'u', '4000000.00', '580000.00', '600000.00', '3420000.00', 1),
(10, 0, 10, 'dayan castillo MARTINEZ', 'PA', '8485565', 'Varon', 'Republica de Panama', '1979-04-01', '', 'Soltero', '', '', '', '', '3979450', 'daycas.m@hotmail.com', 'via ricardo j alfaro, edif. los libertadores z-1 apto 9-7', 'a:3:{i:0;s:13:"banco general";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:13:"0419011307648";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:6:"ahorro";i:1;s:0:"";i:2;s:0:"";}', 'transporte daycas ', '8485565', '69071017', 'daycas.m@hotmail.com', 'puetro de de Manzanillo, balboa', 'transporte de carga pesada', 'chofer de carga pesada', '22', 'e', '', 's', '150000.00', '2200.00', '36000.00', '147800.00', 1),
(11, 9, 0, 'ALEXANDER DE JESUS MORALES SALAZAR', 'venezolano', '046977177', 'Varon', 'Maracaibo', '1972-08-02', '', 'Soltero', '', '', '', '', '+582616352539 +584143621084', 'amorales@cps.la', 'av. Fuerzas armadas conjunto residencial lago country ii villas, no. 12-2 maracaibo', 'a:3:{i:0;s:9:"Mercantil";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:10:"1129214680";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:9:"corriente";i:1;s:0:"";i:2;s:0:"";}', 'COMPUSERVICE C.A. ', 'j-30231690-1', '(261)4002050', 'amorales@cps.la', 'av 13A con 67B Qta 67a-58 sector tierra negra maracaibo estado zulia zona postal 4002', 'tecnologias de informacion', 'presidente', '20 años', 'e', 'm', 'u', '80620289.13', '2181798.28', '119928.00', '78438490.85', 1),
(12, 10, 0, 'FREDDY JOSE ROMERO OCANDO', 'venezolano', '036108275', 'Varon', 'Maracaibo', '1974-12-17', '', 'Soltero', '', '', '', '', '+582616357356 +584143621083', 'fromero@cps.la', 'Av. Fuerzas Armadas Conjunto Residencial Lago Country II Villas, no. 12-3 Mcbo', 'a:3:{i:0;s:29:"Banco Occidental de Descuento";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:23:"0116-0121-95-0004164717";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:9:"corriente";i:1;s:0:"";i:2;s:0:"";}', 'COMPUSERVICE C.A. ', 'j-30231690-1', '(261)4002050', 'fromero@cps.la', 'av 13A con 67B Qta 67a-58 sector tierra negra maracaibo estado zulia zona postal 4002', 'tecnologias de informacion', 'vicepresidente corporativo de mercadeo y comunicaciones VPC Tecnologia e investigacion', '20 años', 'e', 'm', 'u', '53061328.71', '43563.57', '11992800.00', '53017765.14', 1),
(13, 11, 0, 'OSCAR EDUARDO MORAN BERROETA', 'venezolano', '048423227', 'Varon', 'Maracaibo', '1972-10-25', '', 'Casado', '', '', '', '', '+5826117930534 +584143625533', 'omoran@cps.la', 'Av. El Milagro, Sector La Calzada, Edificio Faraya Piso 2 Apto 1-B. 4002.\nMaracaibo Estado Zulia. \n', 'a:3:{i:0;s:29:"Banco Occidental de Descuento";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:23:"0116-0121-99-0180895257";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:3:"fal";i:1;s:0:"";i:2;s:0:"";}', 'COMPUSERVICE C.A. ', 'j-30231690-1', '(261)4002050', 'jjerez@cps.la', 'av 13A con 67B Qta 67a-58 sector tierra negra maracaibo estado zulia zona postal 4002', 'tecnologias de informacion', 'vicepresidente corporativo de procura y logistica', '20 años', 'e', 'm', 'u', '37101386.91', '15906.27', '11992800.00', '37085480.64', 1),
(14, 12, 0, 'JOHER ALBERTO CARABALLO MANJARRES', 'venezolano', '046965509', 'Varon', 'Maracaibo', '1973-04-29', '', 'Soltero', '', '', '', '', '+582616356276 +584146178591', 'jcaraballo@cps.la', 'Av. Fuerzas Armadas Conjunto Residencial Lago Country II Villas, No. 11-6 \nMaracaibo, Edo Zulia\n', 'a:3:{i:0;s:29:"Banco Occidental de Descuento";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:23:"0116-0121-99-0180900757";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:9:"corriente";i:1;s:0:"";i:2;s:0:"";}', 'COMPUSERVICE C.A. ', 'j-30231690-1', '(261)4002050', 'jcaraballo@cps.la', 'av 13A con 67B Qta 67a-58 sector tierra negra maracaibo estado zulia zona postal 4002', 'tecnologias de informacion', 'Vicepresidente Corporativo de Operaciones de Servicios', '20 años', 'e', 'm', 'u', '57795065.36', '338642.04', '2793000.00', '57456423.32', 1),
(15, 13, 0, 'DORIS BORJAS MEJIAS', 'venezolano', '041400331', 'Varon', 'Maracaibo', '1978-04-03', '', 'Casado', '', '', '', '', '+582617536373 +584146026034', 'dborjas@cps.la', 'Urbanización Los Aceitunos. Conjunto Residencial Santa Ana Av. 69A . Casa No. 4. Parroquia: Raul Leoni  Código Postal: 4005. Maracaibo Estado Zulia. ', 'a:3:{i:0;s:29:"Banco Occidental de Descuento";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:10:"0005405084";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:9:"corriente";i:1;s:0:"";i:2;s:0:"";}', 'COMPUSERVICE C.A. ', 'j-30231690-1', '(261)4002050', 'jjerez@cps.la', 'av 13A con 67B Qta 67a-58 sector tierra negra maracaibo estado zulia zona postal 4002', 'tecnologias de informacion', 'Gerente Regional de Administración y Tesorería', '9 años', 'e', 'm', 'u', '6800000.00', '300000.00', '1500000.00', '6500000.00', 1),
(16, 14, 0, 'JOAN ENRIQUE LARREAL MESTRE', 'venezolano', '047981159', 'Varon', 'Maracaibo', '1976-01-29', '', 'Soltero', '', '', '', '', '+584146249877', 'jlarreal@cps.la', 'AV. 11D CON CALLE 35, CONJ. RED. CAMINOS DEL DORAL. II ETAPA, CASA #2-75. MARACAIBO, EDO. ZULIA. Parroquia: COQUIVACOA. Código Postal: 4002', 'a:3:{i:0;s:29:"Banco Occidental de Descuento";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:18:"011600581400044762";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:9:"corriente";i:1;s:0:"";i:2;s:0:"";}', 'COMPUSERVICE C.A. ', 'j-30231690-1', '(261)4002050', 'jlarreal@cps.la', 'av 13A con 67B Qta 67a-58 sector tierra negra maracaibo estado zulia zona postal 4002', 'tecnologias de informacion', 'gerente general ', '4 años', 'e', 'm', 'u', '7750000.00', '250000.00', '1250000.00', '7500000.00', 1),
(17, 15, 0, 'NELIO GALUE ALVARADO', 'venezolano', '9762182', 'Varon', 'Maracaibo', '1969-04-07', '', 'Casado', '', '', '', '', '+584146010227', 'ngalue@cps.la', 'Av. Fuerzas Armadas Conjunto Residencial Lago Country II Villas,  No. 6-2', 'a:3:{i:0;s:29:"Banco Occidental de Descuento";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:23:"0116-0103-11-0004307038";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:9:"corriente";i:1;s:0:"";i:2;s:0:"";}', 'COMPUSERVICE C.A. ', 'j-30231690-1', '(261)4002050', 'ngalue@cps.la', 'av 13A con 67B Qta 67a-58 sector tierra negra maracaibo estado zulia zona postal 4002', 'tecnologias de informacion', 'vicepresidente corporativo de ventas', '10 años', 'e', 'm', 'u', '30000000.00', '25643.21', '4945200.00', '29974356.79', 1),
(19, 0, 14, 'Andres mauricio cardenas ballesteros', 'COLOMBIANO', '1053777567', 'Varon', 'Manizales caldas colombia', '1987-04-16', '', 'Soltero', '', '', '', '', '63214257', 'Andresch1987@gmail.com', 'Via argentina eSificio ratan apto 08', 'a:3:{i:0;s:11:"BAC PANAMÁ";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:9:"110674066";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:6:"Ahorro";i:1;s:0:"";i:2;s:0:"";}', 'IDE@S pty', '8nt-2-33942 dv 20', '63214257', 'Andresch1987@gmail.com', 'Registrada el cangrejo via argentina en edificio ratan nivel 2', 'Prestacion de servicios en construccion y remodelacion', 'Manager', '1 año', 'b', '', 's', '5000.00', '0.00', '1200.00', '5000.00', 1),
(20, 0, 18, 'pedro perez', 'EX', '06529102', 'Varon', 'caracas', '1990-01-01', '', 'Soltero', '', '', '', '', '582122567892', 'pedro@hot.com', 'caracas cafetin libertado', 'a:3:{i:0;s:15:"Bank of america";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:14:"01242574930352";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:6:"ahorro";i:1;s:0:"";i:2;s:0:"";}', 'freelance', '187292516', '582122568903', 'pedro@hot.com', 'caracas venezuela', 'comerciante independiente', 'jefe', '2', 'e', '', 's', '10000.00', '3000.00', '120000.00', '7000.00', 1),
(21, 0, 21, 'aLBERTO JESUS VILLAVICENCIO FERNANDEZ', 'VENEZOLANO', '088268581', 'Varon', 'VENEZUELA', '1977-04-02', '', 'Soltero', '', '', '', '', '0050768163902', 'ALBERTOJESUSVILLAVICENCIO@HOTMAIL.COM', 'AV BALBOA CALLE 40 ESTE EDIFICIO VISTA BALBOA APART 11-A CALIDONIA-PANAMA ', 'a:3:{i:0;s:8:"BANESCO ";i:1;s:8:"CITIBANK";i:2;s:7:"GENERAL";}', 'a:3:{i:0;s:12:"110000019685";i:1;s:15:"269301000004333";i:2;s:13:"0435991526804";}', 'a:3:{i:0;s:9:"CORRIENTE";i:1;s:9:"CORRIENTE";i:2;s:6:"AHORRO";}', 'TRADE SERVICE PANAMA INC', '1805806-1-706217 DV 30', '3001032/33/34', 'INFO@TRADESERVICEPANAMA.COM', 'PANAMERICA CORPORATE CENTER; GALERA PCC9080; PANAMA PACIFICO', 'OPERADOR LOGISTICO / AVITUALLADOR NAVIERO', 'REPRESENTANTE LEGAL / DIRECTOR ADMINIS.', '3 AÑOS', 'e', '', 'u', '180000.00', '30000.00', '90000.00', '150000.00', 1),
(22, 0, 23, 'CINTHIA MILITZA PEREZ', 'PA', '87681066', 'Mujer', 'PANAMA', '1981-10-22', '', 'Casado', '', '', '', '', '65087337 / 63474202', 'cinthiamilitza@hotmail.com', 'Res tierra bella casa 41', 'a:3:{i:0;s:15:"caja de ahorros";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:12:"530000179230";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:6:"ahorro";i:1;s:0:"";i:2;s:0:"";}', 'multisuplidora giavic', '8-768-1066', '65087337', 'cinthiamilitza@hotmail.com', 'res nvo arraijan', 'ventas al gobirno', 'gerente', '4 años', 'e', '', 'u', '3000.00', '1000.00', '36000.00', '2000.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jun_directiva_empresas`
--

CREATE TABLE IF NOT EXISTS `jun_directiva_empresas` (
  `id_jun_directiva` int(11) NOT NULL AUTO_INCREMENT,
  `id_pj` int(11) NOT NULL,
  `nombres_dir` varchar(60) NOT NULL,
  `apellidos_dir` varchar(60) NOT NULL,
  `nacionalidad_dir` varchar(80) NOT NULL,
  `genero_dir` varchar(6) NOT NULL,
  `cedula_dir` varchar(60) NOT NULL,
  `cargo_dir` varchar(60) NOT NULL,
  `tipo_firma_dir` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_jun_directiva`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `jun_directiva_empresas`
--

INSERT INTO `jun_directiva_empresas` (`id_jun_directiva`, `id_pj`, `nombres_dir`, `apellidos_dir`, `nacionalidad_dir`, `genero_dir`, `cedula_dir`, `cargo_dir`, `tipo_firma_dir`, `status`) VALUES
(1, 1, 'cesar ignacio', 'garcia davila', 'venezolano', 'Varon', '043153990', 'presidente', 'Unica', 1),
(2, 1, 'EDUARDO JOSE', 'GRIJALVA MARTINEZ', 'VENEZOLANO', 'Varon', '062310198', 'SECRETARIO', 'Unica', 1),
(3, 2, 'ernesto antonio', 'hurtado', 'venezolano', 'Varon', '0855229', 'presidente', 'Unica', 1),
(4, 2, 'ALEXIS ', 'LA TORRE', 'venezolano', 'Varon', '0665544', 'secretario', 'Unica', 1),
(5, 2, 'willian', 'ramirez', 'panameño', 'Varon', '05466987', 'tesorero', 'Unica', 1),
(6, 3, 'Yamir jose ', 'Urbina', 'Venezolano', 'Varon', '0445451559', 'dIRECTOR', 'Unica', 1),
(7, 4, 'luis salvador', 'guerra hernandez', 'espanol', 'Varon', '5501922', 'presidente', 'Unica', 1),
(8, 4, 'michel', 'vieira pita', 'venezolano', 'Varon', '033060149', 'secretario', 'Unica', 1),
(9, 5, 'alexander de jesus', 'morales salazar', 'venezolano', 'Varon', '10437025', 'presidente', 'Unica', 1),
(10, 5, 'freddy jose', 'romero ocando', 'venezolano', 'Varon', '11394067', 'director', 'Unica', 1),
(11, 5, 'oscar eduardo', 'moran berroeta', 'venezolano', 'Varon', '11861345', 'director', 'Unica', 1),
(12, 5, 'joher alberto', 'caraballo manjarres', 'venezolano', 'Varon', '11071403', 'gerente general', 'Unica', 1),
(13, 5, 'doris', 'borjas mejias', '14207540', 'Varon', '14207540', 'gerente general', 'Unica', 1),
(14, 5, 'joan enrique', 'larreal mestre', 'venezolano', 'Varon', '12695403', 'gerente general', 'Unica', 1),
(15, 5, 'nelio', 'galue alvarado', 'venezolano', 'Varon', '9762182', 'gerente general', 'Unica', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `j_d_empresa`
--

CREATE TABLE IF NOT EXISTS `j_d_empresa` (
  `id_directivo_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `id_empresa` int(11) NOT NULL,
  `nombre_directivo_empresa` varchar(250) NOT NULL,
  `apellido_directivo_empresa` varchar(250) NOT NULL,
  `t_document_directivo_empresa` varchar(10) NOT NULL,
  `ci_rif_directivo_empresa` varchar(30) NOT NULL,
  `tip_firma` varchar(10) NOT NULL,
  `cargo_directivo_empresa` varchar(100) NOT NULL,
  PRIMARY KEY (`id_directivo_empresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `j_d_empresa`
--

INSERT INTO `j_d_empresa` (`id_directivo_empresa`, `id_empresa`, `nombre_directivo_empresa`, `apellido_directivo_empresa`, `t_document_directivo_empresa`, `ci_rif_directivo_empresa`, `tip_firma`, `cargo_directivo_empresa`) VALUES
(1, 0, 'ERNESTO ANTONIO ', 'HURTADO UBEDA', 'v', '083460951', 'unica', 'PRESIDENTE'),
(2, 0, 'ALEXIS RAFAEL ', 'LA TORRE SALAS', 'v', '065105542', 'unica', 'SECRETARIO'),
(3, 0, 'WILLIAN DIONICIO', 'RAMIREZ MONTES', 'v', '054896299', 'unica', 'TESORERO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nom_accionista_empresas`
--

CREATE TABLE IF NOT EXISTS `nom_accionista_empresas` (
  `id_nom_accionista` int(11) NOT NULL AUTO_INCREMENT,
  `id_pj` int(11) NOT NULL,
  `nom_raz_na` varchar(60) NOT NULL,
  `nacionalidad_na` varchar(60) NOT NULL,
  `genero_na` varchar(6) NOT NULL,
  `cedula_na` varchar(60) NOT NULL,
  `cap_sus_na` float(11,2) NOT NULL,
  `cap_pag_na` float(11,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_nom_accionista`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `nom_accionista_empresas`
--

INSERT INTO `nom_accionista_empresas` (`id_nom_accionista`, `id_pj`, `nom_raz_na`, `nacionalidad_na`, `genero_na`, `cedula_na`, `cap_sus_na`, `cap_pag_na`, `status`) VALUES
(1, 1, 'Rhonald alejandro Brito Querales', 'venezolano', 'Varon', '68554549', 1500.00, 1500.00, -1),
(2, 2, 'Willian dionicio  Ramirez montes', 'panameño', 'Varon', '05466987', 4000.00, 4000.00, 1),
(3, 2, 'ernesto antonio hurtado ubeda', 'Venezolano', 'Varon', '0855229', 4000.00, 4000.00, 1),
(4, 2, 'alexis rafael la torre ', 'venezolano', 'Varon', '0665544', 4000.00, 4000.00, 1),
(5, 3, 'Yamir jose Urbina', 'Venezolano', 'Varon', '0445451556', 15000.00, 15000.00, 1),
(6, 3, 'Rhonald alejandro Brito Querales', 'venezolano', 'Varon', '068554549', 15000.00, 15000.00, 1),
(7, 1, 'CESAR IGNACIO GARCIA DAVILA', 'Venezolano', 'Varon', '043153990', 7000.00, 7000.00, 1),
(8, 1, 'EDUARDO JOSE GRIJALVA MARTINEZ', 'VENEZOLANO', 'Varon', '062310198', 3000.00, 3000.00, 1),
(9, 3, 'Roberto Jose Brito', 'Venezolano', 'Varon', '056545888', 20000.00, 20000.00, 1),
(10, 4, 'luis salvador guerra hernandez', 'espanol', 'Varon', '5501922', 250000.00, 250000.00, 1),
(11, 4, 'michel viera pita', 'venezolano', 'Varon', '033060149', 250000.00, 250000.00, 1),
(12, 5, 'alexander morales salazar', 'venezolano', 'Varon', '10437025', 1000000.00, 1000000.00, 1),
(13, 5, 'freddy jose romero ocando', 'venezolano', 'Varon', '11394067', 1000000.00, 1000000.00, 1),
(14, 5, 'oscar eduardo moran barroeta', 'venezolano', 'Varon', '11861345', 1000000.00, 1000000.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_empresas`
--

CREATE TABLE IF NOT EXISTS `perfil_empresas` (
  `id_perfil_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `id_pj` int(11) NOT NULL,
  `ing_anuales_pe` text NOT NULL,
  `activo_pt` float(11,2) NOT NULL,
  `pasivo_pt` float(11,2) NOT NULL,
  `cap_soc_pt` float(11,2) NOT NULL,
  `cap_con_pt` float(11,2) NOT NULL,
  `experiencia_pt` text NOT NULL,
  `tipo_inversion_pt` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_perfil_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE IF NOT EXISTS `personas` (
  `id_persona` int(11) NOT NULL AUTO_INCREMENT,
  `id_number` int(11) NOT NULL,
  `nacionality` enum('v','e') NOT NULL DEFAULT 'v',
  `sex` enum('f','m') NOT NULL DEFAULT 'm',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `attemps` tinyint(4) NOT NULL DEFAULT '0',
  `tipo` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `access` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  UNIQUE KEY `id_number` (`id_number`),
  UNIQUE KEY `email` (`email`),
  KEY `pass` (`pass`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_persona`, `id_number`, `nacionality`, `sex`, `first_name`, `last_name`, `email`, `pass`, `attemps`, `tipo`, `status`, `access`) VALUES
(1, 0, 'v', 'm', 'admin', 'admin', 'admin@localhost.com', '05898727aa1a01ffa94b4d455818954a', 0, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_juridicas`
--

CREATE TABLE IF NOT EXISTS `personas_juridicas` (
  `id_pj` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `nacionalidad_emp` varchar(3) NOT NULL,
  `nom_rz_pj` varchar(255) NOT NULL,
  `rif_pj` varchar(255) NOT NULL,
  `telefono_pj` varchar(32) NOT NULL,
  `email_pj` varchar(255) NOT NULL,
  `direccion_pj` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_pj`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `personas_juridicas`
--

INSERT INTO `personas_juridicas` (`id_pj`, `id_cliente`, `nacionalidad_emp`, `nom_rz_pj`, `rif_pj`, `telefono_pj`, `email_pj`, `direccion_pj`, `status`) VALUES
(1, 2, 'p', 'TRADE SERVICE PANAMA INC', '1805806-1-706217 DV 30', '3001032 /33 /34', 'cegar@tradeservicepanama.com', 'Panamerica Corporate Center, Galera PCC 9080, Local 1, panama pacifico (Howard)', 1),
(2, 3, 'p', 'abc suplies', '236598-125698', '507 265984', 'willyra2003@yahoo.com', 'torre las americas, piso 44, ofic 44-b', 1),
(4, 6, 'p', 'corporacion de suministros regionales inc', '1281841 1 600729 dv 05', '0507 3984690 ext 126', 'corp.csr.@hotmail.com', 'trump ocean club office tower piso 6, oficina 6-01. punta pacifica', 1),
(5, 11, 'v', 'COMPUSERVICE C.A. ', 'j-30231690-1', '(261)4002050', 'jjerez@cps.la', 'av 13A con 67B Qta 67a-58 sector tierra negra maracaibo estado zulia zona postal 4002', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principales_clientes`
--

CREATE TABLE IF NOT EXISTS `principales_clientes` (
  `id_principales_clientes` int(11) NOT NULL AUTO_INCREMENT,
  `id_pj` int(11) NOT NULL,
  `nombre_rz_pc` text NOT NULL,
  `num_rif_pc` varchar(255) NOT NULL,
  `persona_contacto_pc` text NOT NULL,
  `tel_email_pc` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_principales_clientes`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Volcado de datos para la tabla `principales_clientes`
--

INSERT INTO `principales_clientes` (`id_principales_clientes`, `id_pj`, `nombre_rz_pc`, `num_rif_pc`, `persona_contacto_pc`, `tel_email_pc`, `status`) VALUES
(31, 3, 'a:3:{i:0;s:11:"rIGTONE inc";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:13:"1264185546-21";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:10:"jOSE PEREZ";i:1;s:0:"";i:2;s:0:"";}', 'a:3:{i:0;s:12:"041271564266";i:1;s:0:"";i:2;s:0:"";}', 1),
(39, 4, 'a:3:{i:0;s:22:"procesadora uniagro sa";i:1;s:22:"industrias bayona c.a.";i:2;s:23:"desarrollos urbanica ca";}', 'a:3:{i:0;s:14:"11832411578641";i:1;s:9:"314137271";i:2;s:9:"295115911";}', 'a:3:{i:0;s:11:"maira ponte";i:1;s:22:"maria isabel hernandez";i:2;s:13:"yuraima dorta";}', 'a:3:{i:0;s:31:"64235653 / pontemaira@gmail.com";i:1;s:40:"00582129925154 / hernanmaria25@gmail.com";i:2;s:38:"00582129910290 / yurys2000@hotmail.com";}', 1),
(40, 1, 'a:3:{i:0;s:33:"atlas copco mexicana s.a. de c.v.";i:1;s:12:"damco panama";i:2;s:24:"wakefield marine energys";}', 'a:3:{i:0;s:5:"00000";i:1;s:22:"108910-1-1379740 dv 88";i:2;s:22:"1962789-1-733918 dv 77";}', 'a:3:{i:0;s:17:"victorina mendoza";i:1;s:15:"eric santamaria";i:2;s:12:"luis vidal /";}', 'a:3:{i:0;s:52:"00525522820617 / victorina.mendoza@mx.atlascopco.com";i:1;s:36:"64000044 / eric.santamaria@damco.com";i:2;s:33:"64340219 / lvidal@wakefieldme.com";}', 1),
(43, 5, 'a:3:{i:0;s:37:"C.A. Nacional Teléfonos de Venezuela";i:1;s:37:"universidad dr rafael belloso chacin ";i:2;s:29:"banco occidental de descuento";}', 'a:3:{i:0;s:12:"J-00124134-5";i:1;s:12:"j-07034507-1";i:2;s:12:"j-30061946-0";}', 'a:3:{i:0;s:15:"orlando cordero";i:1;s:14:"alexander meza";i:2;s:15:"ricardo morales";}', 'a:3:{i:0;s:13:"+582125001111";i:1;s:13:"+582617573508";i:2;s:13:"+582617593011";}', 1),
(44, 2, 'a:3:{i:0;s:6:"abcygr";i:1;s:5:"yutre";i:2;s:6:"tretre";}', 'a:3:{i:0;s:6:"265987";i:1;s:10:"j-12587458";i:2;s:8:"12658974";}', 'a:3:{i:0;s:10:"juan perez";i:1;s:5:"pedro";i:2;s:5:"edgar";}', 'a:3:{i:0;s:28:"507 6658974 erered@gmail.com";i:1;s:29:"+58 4212565897 frerd@frey.com";i:2;s:7:"1254878";}', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reclasificaciones`
--

CREATE TABLE IF NOT EXISTS `reclasificaciones` (
  `id_reclasificacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_pj` int(11) NOT NULL,
  `hd_id_act_circ` float(11,2) NOT NULL,
  `fecha1` varchar(60) NOT NULL,
  `fecha2` varchar(60) NOT NULL,
  `fecha3` varchar(60) NOT NULL,
  `txtcajachica` float(11,2) NOT NULL,
  `txtcajachica2` float(11,2) NOT NULL,
  `txtcajachica3` float(11,2) NOT NULL,
  `txtFFBenefNetoDespNoUsu` float(11,2) NOT NULL,
  `txtFFBenefNetoDespNoUsu1` float(11,2) NOT NULL,
  `txtcajabancos` float(11,2) NOT NULL,
  `txtcajabancos2` float(11,2) NOT NULL,
  `txtcajabancos3` float(11,2) NOT NULL,
  `txtDepreciacion0` float(11,2) NOT NULL,
  `txtDepreciacion1` float(11,2) NOT NULL,
  `txtctascobrar` float(11,2) NOT NULL,
  `txtctascobrar2` float(11,2) NOT NULL,
  `txtctascobrar3` float(11,2) NOT NULL,
  `txtProvImp0` float(11,2) NOT NULL,
  `txtProvImp1` float(11,2) NOT NULL,
  `txtefeccobrar` float(11,2) NOT NULL,
  `txtefeccobrar2` float(11,2) NOT NULL,
  `txtefeccobrar3` float(11,2) NOT NULL,
  `txtProvCtasInco0` float(11,2) NOT NULL,
  `txtProvCtasInco1` float(11,2) NOT NULL,
  `txtincobrables` float(11,2) NOT NULL,
  `txtincobrables2` float(11,2) NOT NULL,
  `txtincobrables3` float(11,2) NOT NULL,
  `txtProvObsolencia0` float(11,2) NOT NULL,
  `txtProvObsolencia1` float(11,2) NOT NULL,
  `txtinvmateriaprima` float(11,2) NOT NULL,
  `txtinvmateriaprima2` float(11,2) NOT NULL,
  `txtinvmateriaprima3` float(11,2) NOT NULL,
  `txtGenerAbsobOper0` float(11,2) NOT NULL,
  `txtGenerAbsobOper1` float(11,2) NOT NULL,
  `txtinvmaterialproc` float(11,2) NOT NULL,
  `txtinvmaterialproc2` float(11,2) NOT NULL,
  `txtinvmaterialproc3` float(11,2) NOT NULL,
  `txtCtasCobrar0` float(11,2) NOT NULL,
  `txtCtasCobrar1` float(11,2) NOT NULL,
  `txtinvprodterminado` float(11,2) NOT NULL,
  `txtinvprodterminado2` float(11,2) NOT NULL,
  `txtinvprodterminado3` float(11,2) NOT NULL,
  `txtEfecCobrar0` float(11,2) NOT NULL,
  `txtEfecCobrar1` float(11,2) NOT NULL,
  `txtobsolencia` float(11,2) NOT NULL,
  `txtobsolencia2` float(11,2) NOT NULL,
  `txtobsolencia3` float(11,2) NOT NULL,
  `txtInventario0` float(11,2) NOT NULL,
  `txtInventario1` float(11,2) NOT NULL,
  `txtTotalActCirc` float(11,2) NOT NULL,
  `txtTotalActCirc2` float(11,2) NOT NULL,
  `txtTotalActCirc3` float(11,2) NOT NULL,
  `txtCtasPagar0` float(11,2) NOT NULL,
  `txtCtasPagar1` float(11,2) NOT NULL,
  `hd_id_act_fijo` float(11,2) NOT NULL,
  `txtEfecPagar0` float(11,2) NOT NULL,
  `txtEfecPagar1` float(11,2) NOT NULL,
  `txtterrenos` float(11,2) NOT NULL,
  `txtterrenos2` float(11,2) NOT NULL,
  `txtterrenos3` float(11,2) NOT NULL,
  `txtGastosAcum0` float(11,2) NOT NULL,
  `txtGastosAcum1` float(11,2) NOT NULL,
  `txtedif` float(11,2) NOT NULL,
  `txtedif2` float(11,2) NOT NULL,
  `txtedif3` float(11,2) NOT NULL,
  `txtGenerAbsorInvTrab0` float(11,2) NOT NULL,
  `txtGenerAbsorInvTrab1` float(11,2) NOT NULL,
  `txtmaquinaria` float(11,2) NOT NULL,
  `txtmaquinaria2` float(11,2) NOT NULL,
  `txtmaquinaria3` float(11,2) NOT NULL,
  `txtGastoInvPlanta0` float(11,2) NOT NULL,
  `txtGastoInvPlanta1` float(11,2) NOT NULL,
  `txtinstmejoras` float(11,2) NOT NULL,
  `txtinstmejoras2` float(11,2) NOT NULL,
  `txtinstmejoras3` float(11,2) NOT NULL,
  `txtDepoGaran0` float(11,2) NOT NULL,
  `txtDepoGaran1` float(11,2) NOT NULL,
  `txtmobiliario` float(11,2) NOT NULL,
  `txtmobiliario2` float(11,2) NOT NULL,
  `txtmobiliario3` float(11,2) NOT NULL,
  `txtCargoDifOtroAct0` float(11,2) NOT NULL,
  `txtCargoDifOtroAct1` float(11,2) NOT NULL,
  `txtRespAccHerra` float(11,2) NOT NULL,
  `txtRespAccHerra2` float(11,2) NOT NULL,
  `txtRespAccHerra3` float(11,2) NOT NULL,
  `txtCredFiscalGastoPrep0` float(11,2) NOT NULL,
  `txtCredFiscalGastoPrep1` float(11,2) NOT NULL,
  `txtvehiculo` float(11,2) NOT NULL,
  `txtvehiculo2` float(11,2) NOT NULL,
  `txtvehiculo3` float(11,2) NOT NULL,
  `txtCtasCobrarAccRel0` float(11,2) NOT NULL,
  `txtCtasCobrarAccRel1` float(11,2) NOT NULL,
  `txtdepreciacion` float(11,2) NOT NULL,
  `txtdepreciacion2` float(11,2) NOT NULL,
  `txtdepreciacion3` float(11,2) NOT NULL,
  `txtImpPagarReten0` float(11,2) NOT NULL,
  `txtImpPagarReten1` float(11,2) NOT NULL,
  `txtContrucEnProceso` float(11,2) NOT NULL,
  `txtContrucEnProceso2` float(11,2) NOT NULL,
  `txtContrucEnProceso3` float(11,2) NOT NULL,
  `txtRetenPagar0` float(11,2) NOT NULL,
  `txtRetenPagar1` float(11,2) NOT NULL,
  `txtTotalActFijo` float(11,2) NOT NULL,
  `txtTotalActFijo2` float(11,2) NOT NULL,
  `txtTotalActFijo3` float(11,2) NOT NULL,
  `txtPrestSocialesPagar0` float(11,2) NOT NULL,
  `txtPrestSocialesPagar1` float(11,2) NOT NULL,
  `hd_id_otro_act` float(11,2) NOT NULL,
  `txtOtrosPasivosCorr0` float(11,2) NOT NULL,
  `txtOtrosPasivosCorr1` float(11,2) NOT NULL,
  `txtdepgarantia` float(11,2) NOT NULL,
  `txtdepgarantia2` float(11,2) NOT NULL,
  `txtdepgarantia3` float(11,2) NOT NULL,
  `txtGenerAbsorbActPas0` float(11,2) NOT NULL,
  `txtGenerAbsorbActPas1` float(11,2) NOT NULL,
  `txtcargosdif` float(11,2) NOT NULL,
  `txtcargosdif2` float(11,2) NOT NULL,
  `txtcargosdif3` float(11,2) NOT NULL,
  `txtInversiones0` float(11,2) NOT NULL,
  `txtInversiones1` float(11,2) NOT NULL,
  `txtcredfiscal` float(11,2) NOT NULL,
  `txtcredfiscal2` float(11,2) NOT NULL,
  `txtcredfiscal3` float(11,2) NOT NULL,
  `txtPagoDivRepoPerd0` float(11,2) NOT NULL,
  `txtPagoDivRepoPerd1` float(11,2) NOT NULL,
  `txtctascobraracc` float(11,2) NOT NULL,
  `txtctascobraracc2` float(11,2) NOT NULL,
  `txtctascobraracc3` float(11,2) NOT NULL,
  `txtGenerAbsorbInvDiv0` float(11,2) NOT NULL,
  `txtGenerAbsorbInvDiv1` float(11,2) NOT NULL,
  `txtotrosact` float(11,2) NOT NULL,
  `txtotrosact2` float(11,2) NOT NULL,
  `txtotrosact3` float(11,2) NOT NULL,
  `txtGenerAbsorbAntesFinanc0` float(11,2) NOT NULL,
  `txtGenerAbsorbAntesFinanc1` float(11,2) NOT NULL,
  `txtTotalOtrosAct` float(11,2) NOT NULL,
  `txtTotalOtrosAct2` float(11,2) NOT NULL,
  `txtTotalOtrosAct3` float(11,2) NOT NULL,
  `txtPrestamoCP0` float(11,2) NOT NULL,
  `txtPrestamoCP1` float(11,2) NOT NULL,
  `txtPrestamoLP0` float(11,2) NOT NULL,
  `txtPrestamoLP1` float(11,2) NOT NULL,
  `txtTotalAct` float(11,2) NOT NULL,
  `txtTotalAct2` float(11,2) NOT NULL,
  `txtTotalAct3` float(11,2) NOT NULL,
  `txtCtasPagarRel0` float(11,2) NOT NULL,
  `txtCtasPagarRel1` float(11,2) NOT NULL,
  `txtVentaAccAumCapSoc0` float(11,2) NOT NULL,
  `txtVentaAccAumCapSoc1` float(11,2) NOT NULL,
  `hd_id_pasivo` float(11,2) NOT NULL,
  `txtAumReserLegal0` float(11,2) NOT NULL,
  `txtAumReserLegal1` float(11,2) NOT NULL,
  `txtobligbancarias` float(11,2) NOT NULL,
  `txtobligbancarias2` float(11,2) NOT NULL,
  `txtobligbancarias3` float(11,2) NOT NULL,
  `txtCtasPagarObligBancLP0` float(11,2) NOT NULL,
  `txtCtasPagarObligBancLP1` float(11,2) NOT NULL,
  `txtdeudalp` float(11,2) NOT NULL,
  `txtdeudalp2` float(11,2) NOT NULL,
  `txtdeudalp3` float(11,2) NOT NULL,
  `txtMontoSinConci0` float(11,2) NOT NULL,
  `txtMontoSinConci1` float(11,2) NOT NULL,
  `txtctaspagar` float(11,2) NOT NULL,
  `txtctaspagar2` float(11,2) NOT NULL,
  `txtctaspagar3` float(11,2) NOT NULL,
  `txtGenerAbsorPorFinanc0` float(11,2) NOT NULL,
  `txtGenerAbsorPorFinanc1` float(11,2) NOT NULL,
  `txtefecpagar` float(11,2) NOT NULL,
  `txtefecpagar2` float(11,2) NOT NULL,
  `txtefecpagar3` float(11,2) NOT NULL,
  `txtCambioCtaCaja0` float(11,2) NOT NULL,
  `txtCambioCtaCaja1` float(11,2) NOT NULL,
  `txtretenciones` float(11,2) NOT NULL,
  `txtretenciones2` float(11,2) NOT NULL,
  `txtretenciones3` float(11,2) NOT NULL,
  `txtEfecIniAno0` float(11,2) NOT NULL,
  `txtEfecIniAno1` float(11,2) NOT NULL,
  `txtgastosacum` float(11,2) NOT NULL,
  `txtgastosacum2` float(11,2) NOT NULL,
  `txtgastosacum3` float(11,2) NOT NULL,
  `txtEfecFinAno0` float(11,2) NOT NULL,
  `txtEfecFinAno1` float(11,2) NOT NULL,
  `txtimpuestospagar` float(11,2) NOT NULL,
  `txtimpuestospagar2` float(11,2) NOT NULL,
  `txtimpuestospagar3` float(11,2) NOT NULL,
  `txtprestaciones` float(11,2) NOT NULL,
  `txtprestaciones2` float(11,2) NOT NULL,
  `txtprestaciones3` float(11,2) NOT NULL,
  `txtotrospasivos` float(11,2) NOT NULL,
  `txtotrospasivos2` float(11,2) NOT NULL,
  `txtotrospasivos3` float(11,2) NOT NULL,
  `txtVarVentasNetas0` float(11,2) NOT NULL,
  `txtVarVentasNetas1` float(11,2) NOT NULL,
  `txtTotalPasivoCirc` float(11,2) NOT NULL,
  `txtTotalPasivoCirc2` float(11,2) NOT NULL,
  `txtTotalPasivoCirc3` float(11,2) NOT NULL,
  `txtPorcCostoVentas0` float(11,2) NOT NULL,
  `txtPorcCostoVentas1` float(11,2) NOT NULL,
  `txtPorcCostoVentas2` float(11,2) NOT NULL,
  `txtCtasAccionistas` float(11,2) NOT NULL,
  `txtCtasAccionistas2` float(11,2) NOT NULL,
  `txtCtasAccionistas3` float(11,2) NOT NULL,
  `txtPorcBeneficioBruto0` float(11,2) NOT NULL,
  `txtPorcBeneficioBruto1` float(11,2) NOT NULL,
  `txtPorcBeneficioBruto2` float(11,2) NOT NULL,
  `txtctaspagarlp` float(11,2) NOT NULL,
  `txtctaspagarlp2` float(11,2) NOT NULL,
  `txtctaspagarlp3` float(11,2) NOT NULL,
  `txtPorcGastosAdminGenr0` float(11,2) NOT NULL,
  `txtPorcGastosAdminGenr1` float(11,2) NOT NULL,
  `txtPorcGastosAdminGenr2` float(11,2) NOT NULL,
  `txtTotalPasivoLP` float(11,2) NOT NULL,
  `txtTotalPasivoLP2` float(11,2) NOT NULL,
  `txtTotalPasivoLP3` float(11,2) NOT NULL,
  `txtPorcGastosFinancieros0` float(11,2) NOT NULL,
  `txtPorcGastosFinancieros1` float(11,2) NOT NULL,
  `txtPorcGastosFinancieros2` float(11,2) NOT NULL,
  `txtTotalPasivos` float(11,2) NOT NULL,
  `txtTotalPasivos2` float(11,2) NOT NULL,
  `txtTotalPasivos3` float(11,2) NOT NULL,
  `txtPorcBenefNetoUsua0` float(11,2) NOT NULL,
  `txtPorcBenefNetoUsua1` float(11,2) NOT NULL,
  `txtPorcBenefNetoUsua2` float(11,2) NOT NULL,
  `hd_id_capital` float(11,2) NOT NULL,
  `txtRentaCapitalNetoTan0` float(11,2) NOT NULL,
  `txtRentaCapitalNetoTan1` float(11,2) NOT NULL,
  `txtRentaCapitalNetoTan2` float(11,2) NOT NULL,
  `txtcapitalsocial` float(11,2) NOT NULL,
  `txtcapitalsocial2` float(11,2) NOT NULL,
  `txtcapitalsocial3` float(11,2) NOT NULL,
  `txtRentaCapitalNetoInver0` float(11,2) NOT NULL,
  `txtRentaCapitalNetoInver1` float(11,2) NOT NULL,
  `txtRentaCapitalNetoInver2` float(11,2) NOT NULL,
  `txtcapitalnopago` float(11,2) NOT NULL,
  `txtcapitalnopago2` float(11,2) NOT NULL,
  `txtcapitalnopago3` float(11,2) NOT NULL,
  `txtRentaSobreVentas0` float(11,2) NOT NULL,
  `txtRentaSobreVentas1` float(11,2) NOT NULL,
  `txtRentaSobreVentas2` float(11,2) NOT NULL,
  `txtreserva` float(11,2) NOT NULL,
  `txtreserva2` float(11,2) NOT NULL,
  `txtreserva3` float(11,2) NOT NULL,
  `txtSuperavitAcum` float(11,2) NOT NULL,
  `txtSuperavitAcum2` float(11,2) NOT NULL,
  `txtSuperavitAcum3` float(11,2) NOT NULL,
  `txtCapitalTrabajo0` float(11,2) NOT NULL,
  `txtCapitalTrabajo1` float(11,2) NOT NULL,
  `txtCapitalTrabajo2` float(11,2) NOT NULL,
  `txtSuperavitReeval` float(11,2) NOT NULL,
  `txtSuperavitReeval2` float(11,2) NOT NULL,
  `txtSuperavitReeval3` float(11,2) NOT NULL,
  `txtSolvencia0` float(11,2) NOT NULL,
  `txtSolvencia1` float(11,2) NOT NULL,
  `txtSolvencia2` float(11,2) NOT NULL,
  `txt_ejercicio` float(11,2) NOT NULL,
  `txt_ejercicio2` float(11,2) NOT NULL,
  `txt_ejercicio3` float(11,2) NOT NULL,
  `txtSolvenciaGeneral0` float(11,2) NOT NULL,
  `txtSolvenciaGeneral1` float(11,2) NOT NULL,
  `txtSolvenciaGeneral2` float(11,2) NOT NULL,
  `txtTotalCapital` float(11,2) NOT NULL,
  `txtTotalCapital2` float(11,2) NOT NULL,
  `txtTotalCapital3` float(11,2) NOT NULL,
  `txtLiquidez0` float(11,2) NOT NULL,
  `txtLiquidez1` float(11,2) NOT NULL,
  `txtLiquidez2` float(11,2) NOT NULL,
  `txtTotalPasCap` float(11,2) NOT NULL,
  `txtTotalPasCap2` float(11,2) NOT NULL,
  `txtTotalPasCap3` float(11,2) NOT NULL,
  `txtVentasCreditosDia0` float(11,2) NOT NULL,
  `txtVentasCreditosDia1` float(11,2) NOT NULL,
  `txtVentasCreditosDia2` float(11,2) NOT NULL,
  `txtNumDiariManoVent0` float(11,2) NOT NULL,
  `txtNumDiariManoVent1` float(11,2) NOT NULL,
  `txtNumDiariManoVent2` float(11,2) NOT NULL,
  `hd_id_capital2` float(11,2) NOT NULL,
  `txtPeriodoPromCobros0` float(11,2) NOT NULL,
  `txtPeriodoPromCobros1` float(11,2) NOT NULL,
  `txtPeriodoPromCobros2` float(11,2) NOT NULL,
  `txtVentasNetas` float(11,2) NOT NULL,
  `txtVentasNetas2` float(11,2) NOT NULL,
  `txtVentasNetas3` float(11,2) NOT NULL,
  `txtCostoVentas` float(11,2) NOT NULL,
  `txtCostoVentas2` float(11,2) NOT NULL,
  `txtCostoVentas3` float(11,2) NOT NULL,
  `txtTotacionCuentasCobrar0` float(11,2) NOT NULL,
  `txtTotacionCuentasCobrar1` float(11,2) NOT NULL,
  `txtTotacionCuentasCobrar2` float(11,2) NOT NULL,
  `txtBenefBruto` float(11,2) NOT NULL,
  `txtBenefBruto2` float(11,2) NOT NULL,
  `txtBenefBruto3` float(11,2) NOT NULL,
  `txtRotacionInventarios0` float(11,2) NOT NULL,
  `txtRotacionInventarios1` float(11,2) NOT NULL,
  `txtRotacionInventarios2` float(11,2) NOT NULL,
  `txtGastosAdm` float(11,2) NOT NULL,
  `txtGastosAdm2` float(11,2) NOT NULL,
  `txtGastosAdm3` float(11,2) NOT NULL,
  `txtNumDiasManInventa0` float(11,2) NOT NULL,
  `txtNumDiasManInventa1` float(11,2) NOT NULL,
  `txtNumDiasManInventa2` float(11,2) NOT NULL,
  `txtBenefNetoOper` float(11,2) NOT NULL,
  `txtBenefNetoOper2` float(11,2) NOT NULL,
  `txtBenefNetoOper3` float(11,2) NOT NULL,
  `txtCostVentsServDiar0` float(11,2) NOT NULL,
  `txtCostVentsServDiar1` float(11,2) NOT NULL,
  `txtCostVentsServDiar2` float(11,2) NOT NULL,
  `txtOtrosIngresos` float(11,2) NOT NULL,
  `txtOtrosIngresos2` float(11,2) NOT NULL,
  `txtOtrosIngresos3` float(11,2) NOT NULL,
  `txtRotacionCuentasPagar0` float(11,2) NOT NULL,
  `txtRotacionCuentasPagar1` float(11,2) NOT NULL,
  `txtRotacionCuentasPagar2` float(11,2) NOT NULL,
  `txtOtrosEgresos` float(11,2) NOT NULL,
  `txtOtrosEgresos2` float(11,2) NOT NULL,
  `txtOtrosEgresos3` float(11,2) NOT NULL,
  `txtNumDiasManCuantasPagar0` float(11,2) NOT NULL,
  `txtNumDiasManCuantasPagar1` float(11,2) NOT NULL,
  `txtNumDiasManCuantasPagar2` float(11,2) NOT NULL,
  `txtGastosFinanc` float(11,2) NOT NULL,
  `txtGastosFinanc2` float(11,2) NOT NULL,
  `txtGastosFinanc3` float(11,2) NOT NULL,
  `txtCicloEfectivo0` float(11,2) NOT NULL,
  `txtCicloEfectivo1` float(11,2) NOT NULL,
  `txtCicloEfectivo2` float(11,2) NOT NULL,
  `txtBenefAntesImpNoUsuales` float(11,2) NOT NULL,
  `txtBenefAntesImpNoUsuales2` float(11,2) NOT NULL,
  `txtBenefAntesImpNoUsuales3` float(11,2) NOT NULL,
  `txtCompras0` float(11,2) NOT NULL,
  `txtCompras1` float(11,2) NOT NULL,
  `txtCompras2` float(11,2) NOT NULL,
  `txtislr` float(11,2) NOT NULL,
  `txtislr2` float(11,2) NOT NULL,
  `txtislr3` float(11,2) NOT NULL,
  `txtComprasDiarias0` float(11,2) NOT NULL,
  `txtComprasDiarias1` float(11,2) NOT NULL,
  `txtComprasDiarias2` float(11,2) NOT NULL,
  `txtAjustePlanta` float(11,2) NOT NULL,
  `txtAjustePlanta2` float(11,2) NOT NULL,
  `txtAjustePlanta3` float(11,2) NOT NULL,
  `txtEndeudamientoTotal0` float(11,2) NOT NULL,
  `txtEndeudamientoTotal1` float(11,2) NOT NULL,
  `txtEndeudamientoTotal2` float(11,2) NOT NULL,
  `txtAjusteInv` float(11,2) NOT NULL,
  `txtAjusteInv2` float(11,2) NOT NULL,
  `txtAjusteInv3` float(11,2) NOT NULL,
  `txtEndeudamientoCirculante0` float(11,2) NOT NULL,
  `txtEndeudamientoCirculante1` float(11,2) NOT NULL,
  `txtEndeudamientoCirculante2` float(11,2) NOT NULL,
  `txtBenefDespNoUsuales` float(11,2) NOT NULL,
  `txtBenefDespNoUsuales2` float(11,2) NOT NULL,
  `txtBenefDespNoUsuales3` float(11,2) NOT NULL,
  `txtEndeuBancTotal0` float(11,2) NOT NULL,
  `txtEndeuBancTotal1` float(11,2) NOT NULL,
  `txtEndeuBancTotal2` float(11,2) NOT NULL,
  `txtDivPagosEfect` float(11,2) NOT NULL,
  `txtDivPagosEfect2` float(11,2) NOT NULL,
  `txtDivPagosEfect3` float(11,2) NOT NULL,
  `txtEndeuLargoPlazo0` float(11,2) NOT NULL,
  `txtEndeuLargoPlazo1` float(11,2) NOT NULL,
  `txtEndeuLargoPlazo2` float(11,2) NOT NULL,
  `txtEjercicio` float(11,2) NOT NULL,
  `txtEjercicio2` float(11,2) NOT NULL,
  `txtEjercicio3` float(11,2) NOT NULL,
  `txtRotaciPlanta0` float(11,2) NOT NULL,
  `txtRotaciPlanta1` float(11,2) NOT NULL,
  `txtRotaciPlanta2` float(11,2) NOT NULL,
  `txtAumCapSocial` float(11,2) NOT NULL,
  `txtAumCapSocial2` float(11,2) NOT NULL,
  `txtAumCapSocial3` float(11,2) NOT NULL,
  `txtProducEmpre0` float(11,2) NOT NULL,
  `txtProducEmpre1` float(11,2) NOT NULL,
  `txtProducEmpre2` float(11,2) NOT NULL,
  `txtDismCapSocial` float(11,2) NOT NULL,
  `txtDismCapSocial2` float(11,2) NOT NULL,
  `txtDismCapSocial3` float(11,2) NOT NULL,
  `txtAumReservaLegal` float(11,2) NOT NULL,
  `txtAumReservaLegal2` float(11,2) NOT NULL,
  `txtAumReservaLegal3` float(11,2) NOT NULL,
  `txtAumDismCapContable` float(11,2) NOT NULL,
  `txtAumDismCapContable2` float(11,2) NOT NULL,
  `txtAumDismCapContable3` float(11,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_reclasificacion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `reclasificaciones`
--

INSERT INTO `reclasificaciones` (`id_reclasificacion`, `id_pj`, `hd_id_act_circ`, `fecha1`, `fecha2`, `fecha3`, `txtcajachica`, `txtcajachica2`, `txtcajachica3`, `txtFFBenefNetoDespNoUsu`, `txtFFBenefNetoDespNoUsu1`, `txtcajabancos`, `txtcajabancos2`, `txtcajabancos3`, `txtDepreciacion0`, `txtDepreciacion1`, `txtctascobrar`, `txtctascobrar2`, `txtctascobrar3`, `txtProvImp0`, `txtProvImp1`, `txtefeccobrar`, `txtefeccobrar2`, `txtefeccobrar3`, `txtProvCtasInco0`, `txtProvCtasInco1`, `txtincobrables`, `txtincobrables2`, `txtincobrables3`, `txtProvObsolencia0`, `txtProvObsolencia1`, `txtinvmateriaprima`, `txtinvmateriaprima2`, `txtinvmateriaprima3`, `txtGenerAbsobOper0`, `txtGenerAbsobOper1`, `txtinvmaterialproc`, `txtinvmaterialproc2`, `txtinvmaterialproc3`, `txtCtasCobrar0`, `txtCtasCobrar1`, `txtinvprodterminado`, `txtinvprodterminado2`, `txtinvprodterminado3`, `txtEfecCobrar0`, `txtEfecCobrar1`, `txtobsolencia`, `txtobsolencia2`, `txtobsolencia3`, `txtInventario0`, `txtInventario1`, `txtTotalActCirc`, `txtTotalActCirc2`, `txtTotalActCirc3`, `txtCtasPagar0`, `txtCtasPagar1`, `hd_id_act_fijo`, `txtEfecPagar0`, `txtEfecPagar1`, `txtterrenos`, `txtterrenos2`, `txtterrenos3`, `txtGastosAcum0`, `txtGastosAcum1`, `txtedif`, `txtedif2`, `txtedif3`, `txtGenerAbsorInvTrab0`, `txtGenerAbsorInvTrab1`, `txtmaquinaria`, `txtmaquinaria2`, `txtmaquinaria3`, `txtGastoInvPlanta0`, `txtGastoInvPlanta1`, `txtinstmejoras`, `txtinstmejoras2`, `txtinstmejoras3`, `txtDepoGaran0`, `txtDepoGaran1`, `txtmobiliario`, `txtmobiliario2`, `txtmobiliario3`, `txtCargoDifOtroAct0`, `txtCargoDifOtroAct1`, `txtRespAccHerra`, `txtRespAccHerra2`, `txtRespAccHerra3`, `txtCredFiscalGastoPrep0`, `txtCredFiscalGastoPrep1`, `txtvehiculo`, `txtvehiculo2`, `txtvehiculo3`, `txtCtasCobrarAccRel0`, `txtCtasCobrarAccRel1`, `txtdepreciacion`, `txtdepreciacion2`, `txtdepreciacion3`, `txtImpPagarReten0`, `txtImpPagarReten1`, `txtContrucEnProceso`, `txtContrucEnProceso2`, `txtContrucEnProceso3`, `txtRetenPagar0`, `txtRetenPagar1`, `txtTotalActFijo`, `txtTotalActFijo2`, `txtTotalActFijo3`, `txtPrestSocialesPagar0`, `txtPrestSocialesPagar1`, `hd_id_otro_act`, `txtOtrosPasivosCorr0`, `txtOtrosPasivosCorr1`, `txtdepgarantia`, `txtdepgarantia2`, `txtdepgarantia3`, `txtGenerAbsorbActPas0`, `txtGenerAbsorbActPas1`, `txtcargosdif`, `txtcargosdif2`, `txtcargosdif3`, `txtInversiones0`, `txtInversiones1`, `txtcredfiscal`, `txtcredfiscal2`, `txtcredfiscal3`, `txtPagoDivRepoPerd0`, `txtPagoDivRepoPerd1`, `txtctascobraracc`, `txtctascobraracc2`, `txtctascobraracc3`, `txtGenerAbsorbInvDiv0`, `txtGenerAbsorbInvDiv1`, `txtotrosact`, `txtotrosact2`, `txtotrosact3`, `txtGenerAbsorbAntesFinanc0`, `txtGenerAbsorbAntesFinanc1`, `txtTotalOtrosAct`, `txtTotalOtrosAct2`, `txtTotalOtrosAct3`, `txtPrestamoCP0`, `txtPrestamoCP1`, `txtPrestamoLP0`, `txtPrestamoLP1`, `txtTotalAct`, `txtTotalAct2`, `txtTotalAct3`, `txtCtasPagarRel0`, `txtCtasPagarRel1`, `txtVentaAccAumCapSoc0`, `txtVentaAccAumCapSoc1`, `hd_id_pasivo`, `txtAumReserLegal0`, `txtAumReserLegal1`, `txtobligbancarias`, `txtobligbancarias2`, `txtobligbancarias3`, `txtCtasPagarObligBancLP0`, `txtCtasPagarObligBancLP1`, `txtdeudalp`, `txtdeudalp2`, `txtdeudalp3`, `txtMontoSinConci0`, `txtMontoSinConci1`, `txtctaspagar`, `txtctaspagar2`, `txtctaspagar3`, `txtGenerAbsorPorFinanc0`, `txtGenerAbsorPorFinanc1`, `txtefecpagar`, `txtefecpagar2`, `txtefecpagar3`, `txtCambioCtaCaja0`, `txtCambioCtaCaja1`, `txtretenciones`, `txtretenciones2`, `txtretenciones3`, `txtEfecIniAno0`, `txtEfecIniAno1`, `txtgastosacum`, `txtgastosacum2`, `txtgastosacum3`, `txtEfecFinAno0`, `txtEfecFinAno1`, `txtimpuestospagar`, `txtimpuestospagar2`, `txtimpuestospagar3`, `txtprestaciones`, `txtprestaciones2`, `txtprestaciones3`, `txtotrospasivos`, `txtotrospasivos2`, `txtotrospasivos3`, `txtVarVentasNetas0`, `txtVarVentasNetas1`, `txtTotalPasivoCirc`, `txtTotalPasivoCirc2`, `txtTotalPasivoCirc3`, `txtPorcCostoVentas0`, `txtPorcCostoVentas1`, `txtPorcCostoVentas2`, `txtCtasAccionistas`, `txtCtasAccionistas2`, `txtCtasAccionistas3`, `txtPorcBeneficioBruto0`, `txtPorcBeneficioBruto1`, `txtPorcBeneficioBruto2`, `txtctaspagarlp`, `txtctaspagarlp2`, `txtctaspagarlp3`, `txtPorcGastosAdminGenr0`, `txtPorcGastosAdminGenr1`, `txtPorcGastosAdminGenr2`, `txtTotalPasivoLP`, `txtTotalPasivoLP2`, `txtTotalPasivoLP3`, `txtPorcGastosFinancieros0`, `txtPorcGastosFinancieros1`, `txtPorcGastosFinancieros2`, `txtTotalPasivos`, `txtTotalPasivos2`, `txtTotalPasivos3`, `txtPorcBenefNetoUsua0`, `txtPorcBenefNetoUsua1`, `txtPorcBenefNetoUsua2`, `hd_id_capital`, `txtRentaCapitalNetoTan0`, `txtRentaCapitalNetoTan1`, `txtRentaCapitalNetoTan2`, `txtcapitalsocial`, `txtcapitalsocial2`, `txtcapitalsocial3`, `txtRentaCapitalNetoInver0`, `txtRentaCapitalNetoInver1`, `txtRentaCapitalNetoInver2`, `txtcapitalnopago`, `txtcapitalnopago2`, `txtcapitalnopago3`, `txtRentaSobreVentas0`, `txtRentaSobreVentas1`, `txtRentaSobreVentas2`, `txtreserva`, `txtreserva2`, `txtreserva3`, `txtSuperavitAcum`, `txtSuperavitAcum2`, `txtSuperavitAcum3`, `txtCapitalTrabajo0`, `txtCapitalTrabajo1`, `txtCapitalTrabajo2`, `txtSuperavitReeval`, `txtSuperavitReeval2`, `txtSuperavitReeval3`, `txtSolvencia0`, `txtSolvencia1`, `txtSolvencia2`, `txt_ejercicio`, `txt_ejercicio2`, `txt_ejercicio3`, `txtSolvenciaGeneral0`, `txtSolvenciaGeneral1`, `txtSolvenciaGeneral2`, `txtTotalCapital`, `txtTotalCapital2`, `txtTotalCapital3`, `txtLiquidez0`, `txtLiquidez1`, `txtLiquidez2`, `txtTotalPasCap`, `txtTotalPasCap2`, `txtTotalPasCap3`, `txtVentasCreditosDia0`, `txtVentasCreditosDia1`, `txtVentasCreditosDia2`, `txtNumDiariManoVent0`, `txtNumDiariManoVent1`, `txtNumDiariManoVent2`, `hd_id_capital2`, `txtPeriodoPromCobros0`, `txtPeriodoPromCobros1`, `txtPeriodoPromCobros2`, `txtVentasNetas`, `txtVentasNetas2`, `txtVentasNetas3`, `txtCostoVentas`, `txtCostoVentas2`, `txtCostoVentas3`, `txtTotacionCuentasCobrar0`, `txtTotacionCuentasCobrar1`, `txtTotacionCuentasCobrar2`, `txtBenefBruto`, `txtBenefBruto2`, `txtBenefBruto3`, `txtRotacionInventarios0`, `txtRotacionInventarios1`, `txtRotacionInventarios2`, `txtGastosAdm`, `txtGastosAdm2`, `txtGastosAdm3`, `txtNumDiasManInventa0`, `txtNumDiasManInventa1`, `txtNumDiasManInventa2`, `txtBenefNetoOper`, `txtBenefNetoOper2`, `txtBenefNetoOper3`, `txtCostVentsServDiar0`, `txtCostVentsServDiar1`, `txtCostVentsServDiar2`, `txtOtrosIngresos`, `txtOtrosIngresos2`, `txtOtrosIngresos3`, `txtRotacionCuentasPagar0`, `txtRotacionCuentasPagar1`, `txtRotacionCuentasPagar2`, `txtOtrosEgresos`, `txtOtrosEgresos2`, `txtOtrosEgresos3`, `txtNumDiasManCuantasPagar0`, `txtNumDiasManCuantasPagar1`, `txtNumDiasManCuantasPagar2`, `txtGastosFinanc`, `txtGastosFinanc2`, `txtGastosFinanc3`, `txtCicloEfectivo0`, `txtCicloEfectivo1`, `txtCicloEfectivo2`, `txtBenefAntesImpNoUsuales`, `txtBenefAntesImpNoUsuales2`, `txtBenefAntesImpNoUsuales3`, `txtCompras0`, `txtCompras1`, `txtCompras2`, `txtislr`, `txtislr2`, `txtislr3`, `txtComprasDiarias0`, `txtComprasDiarias1`, `txtComprasDiarias2`, `txtAjustePlanta`, `txtAjustePlanta2`, `txtAjustePlanta3`, `txtEndeudamientoTotal0`, `txtEndeudamientoTotal1`, `txtEndeudamientoTotal2`, `txtAjusteInv`, `txtAjusteInv2`, `txtAjusteInv3`, `txtEndeudamientoCirculante0`, `txtEndeudamientoCirculante1`, `txtEndeudamientoCirculante2`, `txtBenefDespNoUsuales`, `txtBenefDespNoUsuales2`, `txtBenefDespNoUsuales3`, `txtEndeuBancTotal0`, `txtEndeuBancTotal1`, `txtEndeuBancTotal2`, `txtDivPagosEfect`, `txtDivPagosEfect2`, `txtDivPagosEfect3`, `txtEndeuLargoPlazo0`, `txtEndeuLargoPlazo1`, `txtEndeuLargoPlazo2`, `txtEjercicio`, `txtEjercicio2`, `txtEjercicio3`, `txtRotaciPlanta0`, `txtRotaciPlanta1`, `txtRotaciPlanta2`, `txtAumCapSocial`, `txtAumCapSocial2`, `txtAumCapSocial3`, `txtProducEmpre0`, `txtProducEmpre1`, `txtProducEmpre2`, `txtDismCapSocial`, `txtDismCapSocial2`, `txtDismCapSocial3`, `txtAumReservaLegal`, `txtAumReservaLegal2`, `txtAumReservaLegal3`, `txtAumDismCapContable`, `txtAumDismCapContable2`, `txtAumDismCapContable3`, `status`) VALUES
(1, 1, 0.00, '31/12/2013', '30/06/2014', '', 0.00, 1000.00, 0.00, 51093.00, 0.00, 14014.00, 75914.00, 0.00, -41667.00, -142694.00, 38352.00, 88625.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 9426.00, -142694.00, 0.00, 0.00, 0.00, -50273.00, 88625.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 52366.00, 165539.00, 0.00, 193738.00, -219613.00, 0.00, -16458.00, -135762.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 127007.00, -266750.00, 0.00, 0.00, 0.00, -84187.00, 444185.00, 0.00, 0.00, 0.00, -57437.00, 153944.00, 544359.00, 586879.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -184361.00, -142694.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 6310.00, -7358.00, 359998.00, 444185.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 96507.00, 153944.00, 0.00, -51127.00, 146586.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -100283.00, 0.00, 0.00, 0.00, 0.00, -100283.00, 0.00, 0.00, 0.00, 1119.00, 81044.00, 96507.00, 153944.00, 0.00, -55000.00, -45000.00, 0.00, 0.00, 508871.00, 763668.00, 0.00, -83829.00, 0.00, 1.00, -10001.00, 0.00, 0.00, 0.00, 100000.00, 45000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 158942.00, -245651.00, 25875.00, 219613.00, 0.00, 20114.00, -300652.00, 152220.00, 135762.00, 0.00, 21233.00, -219608.00, 1048.00, 7358.00, 0.00, 14014.00, 76914.00, 0.00, 0.00, 0.00, 76914.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -21.00, -100.00, 279143.00, 407733.00, 0.00, 28.00, 16.00, 0.00, 83829.00, 0.00, 0.00, 72.00, 84.00, 0.00, 0.00, 0.00, 0.00, 65.00, 75.00, 0.00, 83829.00, 0.00, 0.00, 0.00, 0.00, 0.00, 362972.00, 407733.00, 0.00, 7.00, 9.00, 0.00, 0.00, 34.00, 14.00, 0.00, 10000.00, 10001.00, 0.00, 492.00, 511.00, 0.00, 0.00, 0.00, 0.00, 7.00, 9.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -226777.00, -242194.00, 0.00, 86709.00, 245651.00, 0.00, 0.19, 0.41, 0.00, 49190.00, 100283.00, 0.00, 0.14, 0.41, 0.00, 145899.00, 355935.00, 0.00, 0.19, 0.41, 0.00, 508871.00, 763668.00, 0.00, 2052.03, 1620.33, 0.00, 18.69, 54.70, 0.00, 0.00, 18.69, 54.70, 0.00, 738731.00, 583320.00, 0.00, 206844.00, 92374.00, 0.00, 19.26, 6.58, 0.00, 531887.00, 490946.00, 0.00, 0.00, 0.00, 0.00, 482697.00, 439853.00, 0.00, 0.00, 0.00, 0.00, 49190.00, 51093.00, 0.00, 574.57, 256.59, 0.00, 0.00, 0.00, 0.00, 0.00, 0.26, 0.26, 0.00, 0.00, 0.00, 0.00, 1384.99, 0.00, 0.00, 0.00, 0.00, 18.69, 1439.69, 0.00, 49190.00, 51093.00, 0.00, 0.00, 92374.00, 0.00, 0.00, 0.00, 0.00, 0.00, 256.59, 0.00, 0.00, 0.00, 0.00, 2.49, 1.15, 0.00, 0.00, 0.00, 0.00, 1.91, 1.15, 0.00, 49190.00, 51093.00, 0.00, 1.26, 1.15, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 0.00, 49190.00, 51093.00, 0.00, 2.05, 1.31, 0.00, 0.00, 0.00, 0.00, 0.00, 0.02, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 49190.00, 51093.00, 0.00, 0),
(2, 4, 0.00, '', '', '', 1500.00, 3200.00, 6000.00, 92248.00, 34271.00, 2800.00, 5600.00, 7600.00, 1986.00, 12012.00, 1233.00, 4223.00, 5000.00, 2654.00, 5545.00, 2345.00, 1234.00, 4567.00, 4200.00, -4200.00, 1000.00, 5200.00, 1000.00, 3797.00, 9549.00, 2345.00, 1234.00, 8765.00, 104885.00, 57177.00, 33455.00, 55434.00, 33455.00, -2990.00, -777.00, 7890.00, 8900.00, 9000.00, 1111.00, -3333.00, 1654.00, 5451.00, 15000.00, -21878.00, 14348.00, 48914.00, 69174.00, 58387.00, 1978.00, 2322.00, 0.00, -1000.00, -1000.00, 150000.00, 145000.00, 250000.00, 1100.00, 1300.00, 1123.00, 2344.00, 4500.00, -21679.00, 12860.00, 6750.00, 8750.00, 9000.00, -2040.00, -15600.00, 445.00, 1233.00, 155.00, 700.00, -600.00, 3334.00, 1254.00, 12312.00, -33249.00, -9589.00, 13.00, 122.00, 2121.00, -853670.00, 829697.00, 16.00, 17.00, 1231.00, 6913.00, -6655.00, 1458.00, 3444.00, 15456.00, 5000.00, 2100.00, 19.00, 20.00, 21.00, -5000.00, 500.00, 160242.00, 155296.00, 263884.00, -715.00, -1287.00, 0.00, 7711.00, -4099.00, 1900.00, 1200.00, 1800.00, -872310.00, 810067.00, 256.00, 450.00, 660.00, -33055.00, -9379.00, 1515.00, 855185.00, 25488.00, -90440.00, -13152.00, 15458.00, 8545.00, 15200.00, -123495.00, -22531.00, 2566.00, 35621.00, 45000.00, -914639.00, 841973.00, 21695.00, 901001.00, 88148.00, 90.00, 130.00, 4960.00, -4978.00, 230851.00, 1125471.00, 410419.00, -59998.00, 3518.00, 13479.00, 1700.00, 0.00, 1000.00, 1000.00, 560.00, 650.00, 780.00, 3420.00, -198.00, 1560.00, 6520.00, 1542.00, 700.00, 2069.00, 1233.00, 3211.00, 5533.00, -36349.00, 3241.00, 2300.00, 1300.00, 300.00, -950988.00, 845214.00, 6500.00, 1500.00, 2000.00, 4300.00, 8800.00, 5600.00, 6700.00, 8000.00, 8800.00, 13600.00, 1500.00, 6500.00, 8600.00, 3256.00, 2541.00, 1254.00, 1245.00, 8956.00, 4857.00, 100.00, 85.00, 23754.00, 37878.00, 32866.00, 23.00, 15.00, 15.00, 65454.00, 5456.00, 8974.00, 77.00, 85.00, 85.00, 6423.00, 9843.00, 9645.00, 43.00, 3.00, 4.00, 71877.00, 15299.00, 18619.00, 33.00, 15.00, 15.00, 95631.00, 53177.00, 51485.00, 553.00, 340.00, 237.00, 0.00, 108.00, 108.00, 28.00, 1521.00, 15000.00, 16700.00, 4958.00, 573.00, 170.00, 2533.00, 1532.00, 3500.00, 511.00, 307.00, 62.00, 6000.00, 7000.00, 8000.00, 2500.00, 2700.00, 2950.00, 25160.00, 31296.00, 25521.00, 2900.00, 3600.00, 5669.00, 2.06, 1.83, 1.78, 54198.00, 49495.00, 64515.00, 0.51, 1.30, 1.13, 69652.00, 79327.00, 101334.00, 0.37, 0.51, 0.74, 165283.00, 132504.00, 152819.00, 41.67, 83.33, 154.44, 109.86, 127.89, 68.42, 0.00, 109.86, 127.89, 68.42, 15000.00, 30000.00, 55600.00, 3500.00, 4500.00, 8600.00, 3.28, 2.82, 5.26, 11500.00, 25500.00, 47000.00, 0.08, 0.06, 0.13, 6500.00, 1000.00, 2000.00, 4665.02, 5681.52, 2771.87, 5000.00, 24500.00, 45000.00, 9.72, 12.50, 23.89, 89000.00, 90000.00, 105200.00, 0.00, 6.69, 6.69, 6000.00, 7890.00, 9865.00, 0.00, 53.82, 552.37, 5000.00, 4520.00, 8520.00, 4774.88, 5863.23, 3392.66, 83000.00, 102090.00, 131815.00, 0.00, 30175.00, 3801.00, 3000.00, 2654.00, 5545.00, 0.00, 83.82, 10.56, 1200.00, 1562.00, 2514.00, 1.37, 0.67, 0.51, 2156.00, 5626.00, 89485.00, 0.34, 0.48, 0.32, 76644.00, 92248.00, 34271.00, 0.95, 0.67, 0.06, 1236.00, 6311.00, 5849.00, 1.00, 1.00, 1.00, 75408.00, 85937.00, 28422.00, 0.09, 0.19, 0.21, 5615.00, 1451.00, 2155.00, 0.00, 0.47, 0.18, 5611.00, 5215.00, 2315.00, 215.00, 561.00, 515.00, 63967.00, 78710.00, 23437.00, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `representantes_legales_pj`
--

CREATE TABLE IF NOT EXISTS `representantes_legales_pj` (
  `id_repl_pj` int(11) NOT NULL AUTO_INCREMENT,
  `id_pj` int(11) NOT NULL,
  `nom_apell_repl` varchar(255) NOT NULL,
  `nacionalidad_repl` varchar(255) NOT NULL,
  `cedula_repl` varchar(32) NOT NULL,
  `sexo_repl` varchar(32) NOT NULL,
  `cargo_repl` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_repl_pj`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Volcado de datos para la tabla `representantes_legales_pj`
--

INSERT INTO `representantes_legales_pj` (`id_repl_pj`, `id_pj`, `nom_apell_repl`, `nacionalidad_repl`, `cedula_repl`, `sexo_repl`, `cargo_repl`, `status`) VALUES
(31, 3, 'Yamir jose Urbina', 'VENEZOLANO', '0445451556', 'Varon', 'Director', 1),
(39, 4, 'luis salvador guerra hernandez', 'espanol', '501922', 'Varon', 'presidente', 1),
(40, 1, 'CESAR IGNACIO GARCIA DAVILA', 'VENEZOLANO', '043153990', 'Varon', 'presidente', 1),
(43, 5, 'alexander morales', 'venezolano', '10437025', 'Varon', 'presidente', 1),
(44, 2, 'willian dionicio  ramirez montes', 'PA', '05466987', 'Varon', 'director', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resumen_financiero_acc`
--

CREATE TABLE IF NOT EXISTS `resumen_financiero_acc` (
  `id_resumen` int(11) NOT NULL AUTO_INCREMENT,
  `id_pj` int(11) NOT NULL,
  `nom_acc_resumen` text NOT NULL,
  `ing_netos_accio` text NOT NULL,
  `utl_neta_accio` text NOT NULL,
  `act_cir_accio` text NOT NULL,
  `act_fij_accio` text NOT NULL,
  `otr_act_accio` text NOT NULL,
  `tot_act_accio` text NOT NULL,
  `pas_cp_accio` text NOT NULL,
  `pas_lp_accio` text NOT NULL,
  `otr_pas_accio` text NOT NULL,
  `tot_pas_accio` text NOT NULL,
  `cap_soc_accio` text NOT NULL,
  `cap_con_nt_accio` text NOT NULL,
  `tot_pas_cap_accio` text NOT NULL,
  `cap_trab_accio` text NOT NULL,
  `solve_accio` text NOT NULL,
  `liq_accio` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_resumen`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Volcado de datos para la tabla `resumen_financiero_acc`
--

INSERT INTO `resumen_financiero_acc` (`id_resumen`, `id_pj`, `nom_acc_resumen`, `ing_netos_accio`, `utl_neta_accio`, `act_cir_accio`, `act_fij_accio`, `otr_act_accio`, `tot_act_accio`, `pas_cp_accio`, `pas_lp_accio`, `otr_pas_accio`, `tot_pas_accio`, `cap_soc_accio`, `cap_con_nt_accio`, `tot_pas_cap_accio`, `cap_trab_accio`, `solve_accio`, `liq_accio`, `status`) VALUES
(50, 3, 'a:2:{i:0;s:10:"Yamir jose";i:1;s:0:"";}', 'a:2:{i:0;s:1:"0";i:1;s:1:"0";}', 'a:2:{i:0;s:1:"0";i:1;s:1:"0";}', 'a:2:{i:0;s:5:"18604";i:1;s:1:"0";}', 'a:2:{i:0;s:7:"2302410";i:1;s:1:"0";}', 'a:2:{i:0;s:6:"817750";i:1;s:1:"0";}', 'a:2:{i:0;s:7:"3138764";i:1;s:1:"0";}', 'a:2:{i:0;s:5:"10855";i:1;s:1:"0";}', 'a:2:{i:0;s:1:"0";i:1;s:1:"0";}', 'a:2:{i:0;s:1:"0";i:1;s:1:"0";}', 'a:2:{i:0;s:5:"10855";i:1;s:1:"0";}', 'a:2:{i:0;s:1:"0";i:1;s:1:"0";}', 'a:2:{i:0;s:7:"3127909";i:1;s:1:"0";}', 'a:2:{i:0;s:7:"3138764";i:1;s:1:"0";}', 'a:2:{i:0;s:4:"7749";i:1;s:1:"0";}', 'a:2:{i:0;s:4:"1.71";i:1;s:4:"0.00";}', 'a:2:{i:0;s:4:"1.71";i:1;s:4:"0.00";}', 0),
(55, 2, 'a:2:{i:0;s:7:"ernesto";i:1;s:6:"ALEXIS";}', 'a:2:{i:0;s:6:"450000";i:1;s:6:"450000";}', 'a:2:{i:0;s:1:"0";i:1;s:1:"0";}', 'a:2:{i:0;s:6:"250000";i:1;s:6:"325000";}', 'a:2:{i:0;s:6:"450000";i:1;s:6:"860000";}', 'a:2:{i:0;s:6:"125000";i:1;s:1:"0";}', 'a:2:{i:0;s:6:"825000";i:1;s:7:"1185000";}', 'a:2:{i:0;s:5:"45500";i:1;s:5:"58500";}', 'a:2:{i:0;s:6:"125000";i:1;s:6:"250000";}', 'a:2:{i:0;s:5:"23650";i:1;s:5:"45000";}', 'a:2:{i:0;s:6:"194150";i:1;s:6:"353500";}', 'a:2:{i:0;s:1:"0";i:1;s:1:"0";}', 'a:2:{i:0;s:6:"630850";i:1;s:6:"831500";}', 'a:2:{i:0;s:6:"825000";i:1;s:7:"1185000";}', 'a:2:{i:0;s:6:"204500";i:1;s:6:"266500";}', 'a:2:{i:0;s:4:"5.49";i:1;s:4:"5.56";}', 'a:2:{i:0;s:4:"5.49";i:1;s:4:"5.56";}', 0),
(59, 1, 'a:2:{i:0;s:13:"cesar ignacio";i:1;s:12:"EDUARDO JOSE";}', 'a:2:{i:0;s:1:"0";i:1;s:1:"0";}', 'a:2:{i:0;s:1:"0";i:1;s:1:"0";}', 'a:2:{i:0;s:9:"293495.93";i:1;s:9:"113447.77";}', 'a:2:{i:0;s:10:"3646341.46";i:1;s:9:"805644.19";}', 'a:2:{i:0;s:9:"451381.87";i:1;s:6:"735556";}', 'a:2:{i:0;s:10:"4391219.26";i:1;s:10:"1654647.96";}', 'a:2:{i:0;s:8:"24390.24";i:1;s:7:"7743.15";}', 'a:2:{i:0;s:1:"0";i:1;s:1:"0";}', 'a:2:{i:0;s:1:"0";i:1;s:1:"0";}', 'a:2:{i:0;s:8:"24390.24";i:1;s:7:"7743.15";}', 'a:2:{i:0;s:1:"0";i:1;s:1:"0";}', 'a:2:{i:0;s:10:"4366829.02";i:1;s:10:"1646904.81";}', 'a:2:{i:0;s:10:"4391219.26";i:1;s:10:"1654647.96";}', 'a:2:{i:0;s:9:"269105.69";i:1;s:18:"105704.62000000001";}', 'a:2:{i:0;s:5:"12.03";i:1;s:5:"14.65";}', 'a:2:{i:0;s:5:"12.03";i:1;s:5:"14.65";}', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resumen_financiero_pn`
--

CREATE TABLE IF NOT EXISTS `resumen_financiero_pn` (
  `id_resumen_pn` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `ing_netos_pn` text NOT NULL,
  `utl_neta_pn` text NOT NULL,
  `act_cir_pn` text NOT NULL,
  `act_fij_pn` text NOT NULL,
  `otr_act_pn` text NOT NULL,
  `tot_act_pn` text NOT NULL,
  `pas_cp_pn` text NOT NULL,
  `pas_lp_pn` text NOT NULL,
  `otr_pas_pn` text NOT NULL,
  `tot_pas_pn` text NOT NULL,
  `cap_soc_pn` text NOT NULL,
  `cap_con_nt_pn` text NOT NULL,
  `tot_pas_cap_pn` text NOT NULL,
  `cap_trab_pn` text NOT NULL,
  `solve_pn` text NOT NULL,
  `liq_pn` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_resumen_pn`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Volcado de datos para la tabla `resumen_financiero_pn`
--

INSERT INTO `resumen_financiero_pn` (`id_resumen_pn`, `id_cliente`, `ing_netos_pn`, `utl_neta_pn`, `act_cir_pn`, `act_fij_pn`, `otr_act_pn`, `tot_act_pn`, `pas_cp_pn`, `pas_lp_pn`, `otr_pas_pn`, `tot_pas_pn`, `cap_soc_pn`, `cap_con_nt_pn`, `tot_pas_cap_pn`, `cap_trab_pn`, `solve_pn`, `liq_pn`, `status`) VALUES
(8, 12, 'a:1:{i:0;s:4:"1212";}', 'a:1:{i:0;s:3:"121";}', 'a:1:{i:0;s:2:"12";}', 'a:1:{i:0;s:2:"12";}', 'a:1:{i:0;s:2:"12";}', 'a:1:{i:0;s:7:"1369.00";}', 'a:1:{i:0;s:2:"12";}', 'a:1:{i:0;s:2:"12";}', 'a:1:{i:0;s:2:"12";}', 'a:1:{i:0;s:6:"145.00";}', 'N;', 'a:1:{i:0;s:7:"1224.00";}', 'a:1:{i:0;s:7:"1369.00";}', 'N;', 'N;', 'N;', 0),
(24, 8, 'a:1:{i:0;s:6:"600000";}', 'a:1:{i:0;s:6:"451381";}', 'a:1:{i:0;s:6:"293495";}', 'a:1:{i:0;s:7:"3646340";}', 'a:1:{i:0;s:1:"0";}', 'a:1:{i:0;s:10:"4391216.00";}', 'a:1:{i:0;s:5:"24390";}', 'a:1:{i:0;s:1:"0";}', 'a:1:{i:0;s:1:"0";}', 'a:1:{i:0;s:9:"475771.00";}', 'N;', 'a:1:{i:0;s:10:"3915445.00";}', 'a:1:{i:0;s:10:"4391216.00";}', 'N;', 'N;', 'N;', 0),
(28, 17, 'a:1:{i:0;s:6:"846000";}', 'a:1:{i:0;s:1:"0";}', 'a:1:{i:0;s:6:"113448";}', 'a:1:{i:0;s:6:"805644";}', 'a:1:{i:0;s:6:"735556";}', 'a:1:{i:0;s:10:"1654648.00";}', 'a:1:{i:0;s:4:"7743";}', 'a:1:{i:0;s:1:"0";}', 'a:1:{i:0;s:1:"0";}', 'a:1:{i:0;s:7:"7743.00";}', 'N;', 'a:1:{i:0;s:10:"1646905.00";}', 'a:1:{i:0;s:10:"1654648.00";}', 'N;', 'N;', 'N;', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE IF NOT EXISTS `solicitudes` (
  `id_solicitud` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_pj` int(11) NOT NULL DEFAULT '0',
  `id_pn` int(11) NOT NULL DEFAULT '0',
  `tipo_solicitud` int(11) NOT NULL,
  `n_operacion` varchar(60) NOT NULL,
  `codigo_solicitud` tinyint(4) NOT NULL,
  `rollover` int(11) NOT NULL,
  `fecha_solicitud` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monto_solicitud` float(11,2) NOT NULL,
  `modalidad` text NOT NULL,
  `plazo_solicitud` float(11,2) NOT NULL,
  `num_comite` varchar(60) NOT NULL,
  `monto_solicitud_aprobado` double(11,2) NOT NULL,
  `plazo_solicitud_aprobado` float(11,2) NOT NULL,
  `fecha_solicitud_aprobado` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fecha_vcto_solicitud_aprobado` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fecha_elab_prop` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datos_notaria` text NOT NULL,
  `porcentaje_compra` text NOT NULL,
  `plazo` text NOT NULL,
  `mora_dias` text NOT NULL,
  `mora_monto` float(11,2) NOT NULL DEFAULT '0.00',
  `ana_comentarios` text NOT NULL,
  `rep_riesgo` text NOT NULL,
  `destino_solicitud` varchar(255) NOT NULL,
  `notificacion` varchar(11) NOT NULL DEFAULT '0-0',
  `t_pago` tinyint(4) NOT NULL DEFAULT '0',
  `ref_bancaria` text NOT NULL,
  `fecha_pago` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `monto_depositado` float(11,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_solicitud`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=72 ;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id_solicitud`, `id_cliente`, `id_pj`, `id_pn`, `tipo_solicitud`, `n_operacion`, `codigo_solicitud`, `rollover`, `fecha_solicitud`, `monto_solicitud`, `modalidad`, `plazo_solicitud`, `num_comite`, `monto_solicitud_aprobado`, `plazo_solicitud_aprobado`, `fecha_solicitud_aprobado`, `fecha_vcto_solicitud_aprobado`, `fecha_elab_prop`, `datos_notaria`, `porcentaje_compra`, `plazo`, `mora_dias`, `mora_monto`, `ana_comentarios`, `rep_riesgo`, `destino_solicitud`, `notificacion`, `t_pago`, `ref_bancaria`, `fecha_pago`, `monto_depositado`, `status`) VALUES
(1, 2, 1, 0, 3, 'ASSPG2014-001', 1, 0, '2014-09-22 20:58:50', 150000.00, 'Pagare', 2.00, '001', 163043.48, 60.00, '2014-10-17 14:35:08', '2014-12-16 14:35:08', '2014-10-17 04:30:00', '', '92', '', '57', 7718.75, '                                  \n   FACTIBLE POR USD 163,043.48  A UNPLAZO DE 6O DIAS                       ', 'no reporta', 'capital de trabajo', '32-11', 0, '', '0000-00-00 00:00:00', 0.00, 5),
(30, 6, 4, 0, 3, '', 0, 0, '2014-10-17 18:40:04', 200000.00, '', 60.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0.00, '', '', 'COMPRA DE MERCANCIA', '0-0', 0, '', '0000-00-00 00:00:00', 0.00, -1),
(31, 3, 2, 0, 1, 'ASSC2014-031', 1, 0, '2014-10-21 14:57:16', 1250000.00, 'cupo', 0.00, '002', 1250000.00, 7300.00, '2014-10-21 15:00:40', '2034-10-16 15:00:40', '2014-10-21 04:30:00', '', '', '', '', 0.00, 'factible', 'no reporta', 'CAPITAL DE TRABAJO', '0-0', 0, '', '0000-00-00 00:00:00', 0.00, 2),
(41, 3, 2, 0, 2, 'ASSC2014-041', 1, 0, '2014-10-31 13:27:00', 1004071.88, '', 0.00, '41958', 508350.68, 60.00, '2014-11-07 16:25:09', '2015-01-06 16:25:09', '2014-10-31 04:30:00', '', '92', '', '', 0.00, '', '', 'CAPITAL DE TRABAJO', '0-0', 0, '', '0000-00-00 00:00:00', 0.00, -1),
(43, 10, 0, 10, 3, '', 0, 0, '2014-11-12 01:12:36', 20000.00, '', 90.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0.00, '', '', 'compra de vehiculo', '0-0', 0, '', '0000-00-00 00:00:00', 0.00, 0),
(50, 8, 0, 9, 3, 'ASSPG2014-050', 1, 0, '2014-12-03 14:03:18', 132625.98, 'Pagare', 60.00, '002', 132625.98, 60.00, '2014-12-03 14:46:18', '2015-02-01 14:46:18', '2014-12-03 04:30:00', '', '90.48', '', '29', 3472.22, 'El cliente presenta una solida posicion economica financiera, con ingresos anuales de 600 mil, activos totales de 4.39 millones, pàsivos por 24 mil resultando un patrimonio neto de USD 4.37 millones de los cuales el 81% esta conformado por bienes inmuebles.\noperracion factible en los terminos planteados\n                                                            ', 'No reportra riesgo directo, actualmente reporta riesgo indirecto como codeudor de TRADE SERVICE PANAMA en modalidad de pagare poor un monto de 163.043,48 USD', 'CAPITAL DE TRABAJO', '22-02', 0, '', '0000-00-00 00:00:00', 0.00, 5),
(51, 14, 0, 19, 3, '', 0, 0, '2015-01-06 15:05:30', 3000.00, '', 150.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0.00, '', '', 'AREA LABORAL', '0-0', 0, '', '0000-00-00 00:00:00', 0.00, 0),
(52, 3, 2, 0, 2, 'ASSC2015-052', 1, 0, '2015-01-21 13:21:09', 231473.64, 'VENTA DE FACTURAS', 0.00, '002', 231473.64, 45.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-01-21 04:30:00', '', '96', '', '', 0.00, 'FACTIBLE', 'NO REPORTA', 'CAPITAL DE TRABAJO', '0-0', 0, '', '0000-00-00 00:00:00', 0.00, 7),
(54, 17, 0, 2, 3, 'ASSPG2015-054', 1, 0, '2015-01-28 14:04:34', 15000.00, 'Pagare', 45.00, '003', 15789.47, 30.00, '2015-01-28 14:12:02', '2015-02-27 14:12:02', '2015-01-28 04:30:00', '', '95', '', '11', 156.80, ' Cliente que presenta una solida posicion Economica -Financiera con Ingresos de 846 mil Dolares y un Patrimonio Neto de USD 1.646.648. operacion factible a un Plazo de 30 dias y precio de 95%                                                          ', 'Reporta riesgo indirecto como Codeudor de Trade Service', 'capital de trabajo', '11-10', 0, '', '0000-00-00 00:00:00', 0.00, 5),
(55, 2, 1, 0, 3, 'ASSPG2015-055', 1, 0, '2015-02-11 20:37:41', 163043.48, 'Pagare', 30.00, '003', 163043.48, 30.00, '2015-02-11 20:47:05', '2015-03-13 20:47:05', '2015-02-11 04:30:00', '', '95.83', '', '126', 18546.20, '    operacion de refinanciamiento sin abono a capital de la operacion ASSPGF2014-001.\nFACTIBLE EL CLIENTE DEPOSITO EL DIFERENCIAL                              \n                            ', 'no presenta', 'capital de trabajo', '58-17', 0, '', '0000-00-00 00:00:00', 0.00, 5),
(59, 8, 0, 9, 3, 'ASSPG2015-059', 1, 0, '2015-03-02 14:52:01', 132625.98, 'Pagare', 60.00, '004', 132625.98, 60.00, '2015-03-02 14:56:47', '2015-05-01 14:56:47', '2015-03-02 04:30:00', '', '90.48', '', '3', 359.20, '  El cliente presenta una solida posicion economica financiera, con ingresos anuales de 600 mil, activos totales de 4.39 millones, pàsivos por 24\nmil resultando un patrimonio neto de USD 4.37 millones de los cuales el 81% esta conformado por bienes inmuebles. operracion factible en los\nterminos planteados                                                          ', 'No reportra riesgo directo, actualmente reporta riesgo indirecto como codeudor de TRADE SERVICE PANAMA en modalidad de pagare poor un\nmonto de 163.043,48 USD', 'CAPITAL DE TRABAJO', '6-04', 0, '', '0000-00-00 00:00:00', 0.00, 5),
(60, 17, 0, 2, 3, 'ASSPG2015-060', 1, 0, '2015-03-10 20:44:16', 15789.47, 'Pagare', 30.00, '005', 15789.47, 30.00, '2015-03-10 20:51:35', '2015-04-09 20:51:35', '2015-03-10 04:30:00', '', '95', '', '57', 812.50, '    refinanciamiento de la operacionASSPG2015-054.                                                         ', 'Reporta riesgo indirecto como Codeudor de Trade Service', 'CAPITAL DE TRABAJO', '24-05', 0, '', '0000-00-00 00:00:00', 0.00, 5),
(61, 8, 0, 9, 3, 'ASSPG2015-061', 1, 0, '2015-05-04 12:31:58', 132625.98, 'Pagare', 60.00, '005', 132625.98, 60.00, '2015-05-04 12:42:53', '2015-07-03 12:42:53', '2015-05-04 04:30:00', '', '90.48', '', '4', 478.93, '  El cliente presenta una solida posicion economica financiera, con ingresos anuales de 600 mil, activos totales de 4.39 millones, pàsivos por 24\nmil resultando un patrimonio neto de USD 4.37 millones de los cuales el 81% esta conformado por bienes inmuebles. operracion factible en los\nterminos planteados\n                                                          ', 'No reporta riesgo directo, actualmente reporta riesgo indirecto como codeudor de Trade Service Panama en la modalidad de Pagare pore un monto de USD 163.043,48', 'CAPITAL DE TRABAJO', '8-07', 0, '', '0000-00-00 00:00:00', 0.00, 5),
(62, 17, 0, 2, 3, 'ASSPG2015-062', 1, 0, '2015-06-05 13:08:00', 15789.47, 'Pagare', 30.00, '006', 15789.47, 30.00, '2015-06-05 13:18:08', '2015-07-05 13:18:08', '2015-06-05 04:30:00', '', '95', '', '43', 612.94, '    Refinanciamiento operacion ASSPAG2015-060                                                        ', 'Reporta riesgo indirecto como Codeudor de Trade Service\n', 'capital de trabajo', '36-17', 0, '', '0000-00-00 00:00:00', 0.00, 5),
(63, 8, 0, 9, 3, 'ASSPG2015-063', 1, 0, '2015-07-07 12:28:22', 132625.98, 'Pagare', 30.00, '007', 132625.98, 30.00, '2015-07-07 12:32:47', '2015-08-06 12:32:47', '2015-07-07 04:30:00', '', '95', '', '286', 34243.29, '   Factible a 30 dias, precio 95%                                                         ', 'No reporta riesgo directo, actualmente reporta riesgo indirecto como codeudor de Trade Service Panama en la modalidad de Pagare pore un\nmonto de USD 163.043,48', 'CAPITAL DE TRABAJO', '144-24', 0, '', '0000-00-00 00:00:00', 0.00, 6),
(64, 2, 1, 0, 3, 'ASSPG2015-064', 1, 0, '2015-07-17 17:29:39', 163043.48, 'Pagare', 30.00, '008', 163043.48, 30.00, '2015-07-17 17:38:18', '2015-08-16 17:38:18', '2015-07-17 04:30:00', '', '95.83', '', '32', 4710.14, '  Refinanciamiento de pagare ASSPG2015-55 por un monto de USD 163,043.48 plazo 30 dias                              \n                            ', 'No reporta', 'refinanciamiento', '41-17', 0, '', '0000-00-00 00:00:00', 0.00, 5),
(65, 3, 2, 0, 3, '', 0, 0, '2015-07-20 13:44:32', 100000.00, '', 60.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0.00, '', '', 'CAPITAL DE TRABAJO', '0-0', 0, '', '0000-00-00 00:00:00', 0.00, -1),
(66, 17, 0, 2, 3, 'ASSPG2015-066', 1, 0, '2015-08-17 14:33:36', 15789.47, 'Pagare', 30.00, '010', 15789.47, 30.00, '2015-08-17 14:37:53', '2015-09-16 14:37:53', '2015-08-17 04:30:00', '', '95', '', '1', 14.25, '   refinanciamiento operacion ASSPG2015-062 por 15.789,47                                                         ', 'reporta riesgo indirecto con la empresa trade service por 163.043.48', 'refinanciamiento operacion asspg2015-062', '10-17', 0, '', '0000-00-00 00:00:00', 0.00, 5),
(67, 2, 1, 0, 3, 'ASSPG2015-067', 1, 0, '2015-09-17 12:07:55', 163043.48, 'Pagare', 30.00, '010', 163043.48, 30.00, '2015-09-17 12:12:06', '2015-10-17 12:12:06', '2015-09-17 04:30:00', '', '95.83', '', '9', 1324.73, '    Refinanciamiento de la operación de pagare ASSPG2015-064                              \n                            ', 'no reporta', 'capital de trabajo', '18-26', 0, '', '0000-00-00 00:00:00', 0.00, 5),
(68, 17, 0, 2, 3, 'ASSPG2015-068', 1, 0, '2015-09-17 12:14:24', 15789.47, 'Pagare', 30.00, '010', 15789.47, 30.00, '2015-09-17 12:23:01', '2015-10-17 12:23:01', '2015-09-17 04:30:00', '', '95', '', '9', 128.29, 'Refinanciamiento operación ASSPG2015-066', 'Reporta riesgo indirecto como Codeudor de Trade Service en Pagare por 163,043.48 ', 'REFINANCIAMIENTO', '18-26', 0, '', '0000-00-00 00:00:00', 0.00, 5),
(69, 2, 1, 0, 3, 'ASSPG2015-069', 1, 0, '2015-10-23 19:16:52', 163043.48, 'Pagare', 30.00, '012', 163043.48, 30.00, '2015-10-23 19:34:09', '2015-11-22 19:34:09', '2015-10-23 04:30:00', '', '95.83', '', '178', 26200.18, '                                  \n      Refinanciamiento de la operación ASSPG-067                      ', 'No reporta', 'capital de trabajo', '38-24', 0, '', '0000-00-00 00:00:00', 0.00, 6),
(70, 17, 0, 2, 3, 'ASSPG2015-070', 1, 0, '2015-10-23 19:17:47', 15789.47, 'Pagare', 30.00, '012', 15789.47, 30.00, '2015-10-23 19:30:45', '2015-11-22 19:30:45', '2015-10-23 04:30:00', '', '95', '', '68', 969.30, '                                                            Refinanciamiento de la operación de pagare ASSPG2015-068', 'Reporta riesgo indirecto como Codeudor de Trade Service en Pagare por 163,043.48', 'capital de trabajo', '38-24', 0, '', '0000-00-00 00:00:00', 0.00, 5),
(71, 17, 0, 2, 3, 'ASSPG2016-071', 1, 0, '2016-01-29 20:36:27', 15789.47, 'Pagare', 30.00, '0012015', 15789.47, 30.00, '2016-01-29 20:44:47', '2016-02-28 20:44:47', '2016-01-29 04:30:00', '', '95', '', '80', 1140.35, '     factible como refinanciamiento del pagare qasspg2015-069                                                       ', 'indirecto como codeudor de trade service panama por usd 163,043.48', 'refinanciamiento', '0-0', 0, '', '0000-00-00 00:00:00', 0.00, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `id_number` int(11) NOT NULL,
  `nacionality` enum('v','e') NOT NULL DEFAULT 'v',
  `sex` enum('f','m') NOT NULL DEFAULT 'm',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `attemps` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `access` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `id_number` (`id_number`),
  UNIQUE KEY `email` (`email`),
  KEY `pass` (`pass`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `id_number`, `nacionality`, `sex`, `first_name`, `last_name`, `email`, `pass`, `attemps`, `status`, `access`) VALUES
(1, 0, 'v', 'm', 'admin', 'admin', 'prueba', 'afca3afb9c4b1f29a54fade59ad8b521', 0, 1, '2016-05-18 14:01:23'),
(2, 123456, 'v', 'm', 'Alexis', 'La Torre', 'alatorre', 'd0a3d176b32f978287afe7fa008d25d8', 0, 1, '2015-12-21 19:57:48'),
(7, 12345600, 'v', 'm', 'Michel', 'Edery', 'medery', '3d53aa3cfaff773581b24b709967f2ae', 0, 1, '2015-10-14 20:42:25'),
(8, 1234560, 'v', 'm', 'Willian', 'Ramirez', 'wramirez', '99166c1a9278ce73d14b275a93c91388', 0, 1, '2016-05-18 14:04:50');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
