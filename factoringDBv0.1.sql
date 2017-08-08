-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 24, 2016 at 05:36 PM
-- Server version: 5.6.30-0ubuntu0.14.04.1
-- PHP Version: 5.6.13-1+deb.sury.org~trusty+3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `accionista_codeudores_per_pagare`
--

CREATE TABLE IF NOT EXISTS `accionista_codeudores_per_pagare` (
  `pagare_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persona_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pagare_id`,`persona_id`),
  KEY `accionista_codeudores_per_pagare_persona_id_foreign` (`persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codeudores_per_cupo`
--

CREATE TABLE IF NOT EXISTS `codeudores_per_cupo` (
  `cupo_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codeudor_id` int(10) unsigned NOT NULL,
  `persona_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cupo_id`,`codeudor_id`,`persona_id`),
  KEY `codeudores_per_cupo_codeudor_id_foreign` (`codeudor_id`),
  KEY `codeudores_per_cupo_persona_id_foreign` (`persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codeudores_per_cupo`
--

INSERT INTO `codeudores_per_cupo` (`cupo_id`, `codeudor_id`, `persona_id`) VALUES
('AACP2016-001', 1, 10),
('AACP2016-001', 2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `codeudores_per_pagare`
--

CREATE TABLE IF NOT EXISTS `codeudores_per_pagare` (
  `pagare_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codeudor_id` int(10) unsigned NOT NULL,
  `persona_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pagare_id`,`codeudor_id`,`persona_id`),
  KEY `codeudores_per_pagare_codeudor_id_foreign` (`codeudor_id`),
  KEY `codeudores_per_pagare_persona_id_foreign` (`persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codeudores_per_venta`
--

CREATE TABLE IF NOT EXISTS `codeudores_per_venta` (
  `venta_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codeudor_id` int(10) unsigned NOT NULL,
  `persona_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`venta_id`,`codeudor_id`,`persona_id`),
  KEY `codeudores_per_venta_codeudor_id_foreign` (`codeudor_id`),
  KEY `codeudores_per_venta_persona_id_foreign` (`persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codeudores_solicitudes`
--

CREATE TABLE IF NOT EXISTS `codeudores_solicitudes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ingreso_neto` double(11,2) NOT NULL,
  `activo_circulante` double(11,2) NOT NULL,
  `activo_fijo_neto` double(11,2) NOT NULL,
  `otros_activos` double(11,2) NOT NULL,
  `pasivo_corto_plazo` double(11,2) NOT NULL,
  `pasivo_largo_plazo` double(11,2) NOT NULL,
  `otro_pasivo` double(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `codeudores_solicitudes`
--

INSERT INTO `codeudores_solicitudes` (`id`, `ingreso_neto`, `activo_circulante`, `activo_fijo_neto`, `otros_activos`, `pasivo_corto_plazo`, `pasivo_largo_plazo`, `otro_pasivo`) VALUES
(1, 180000.00, 50000.00, 500000.00, 200000.00, 20000.00, 25000.00, 12000.00),
(2, 80000.00, 25000.00, 300000.00, 25000.00, 15000.00, 10000.00, 5000.00);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nro_document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nro_ficha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_registro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `company_id`, `phone`, `nro_document`, `nro_ficha`, `fecha_registro`, `city`, `nombre_registro`) VALUES
(1, 'Factoring', '2593450-1-832669', '+5072944419', '2593450', '832669', '2014-05-05', 'PANAMA', 'REGISTRO PUBLICO DE PANAMA');

-- --------------------------------------------------------

--
-- Table structure for table `company_directivo`
--

CREATE TABLE IF NOT EXISTS `company_directivo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `second_last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `directivo_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firma` enum('U','C') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_directivo_company_id_foreign` (`company_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `company_directivo`
--

INSERT INTO `company_directivo` (`id`, `company_id`, `first_name`, `middle_name`, `last_name`, `second_last_name`, `genre`, `country`, `directivo_id`, `cargo`, `firma`) VALUES
(1, 1, 'Corbin', 'Kenna', 'Medhurst', 'Simonis', 'M', 'Estonia', 'C-20070381', 'presidente', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `company_representante_per_cupo`
--

CREATE TABLE IF NOT EXISTS `company_representante_per_cupo` (
  `cupo_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `co_repre_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cupo_id`,`co_repre_id`),
  KEY `company_representante_per_cupo_co_repre_id_foreign` (`co_repre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_representante_per_venta`
--

CREATE TABLE IF NOT EXISTS `company_representante_per_venta` (
  `venta_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `co_repre_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`venta_id`),
  KEY `company_representante_per_venta_co_repre_id_foreign` (`co_repre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cupos`
--

CREATE TABLE IF NOT EXISTS `cupos` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `report_id` int(10) unsigned DEFAULT NULL,
  `monto_initial` double(11,2) NOT NULL,
  `monto_final` double(11,2) DEFAULT NULL,
  `destino` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('S','R','IP','AWOC','AWC','A','D','I','N') COLLATE utf8_unicode_ci NOT NULL,
  `fecha_solicitud` datetime NOT NULL,
  `fecha_elaboracion` datetime DEFAULT NULL,
  `fecha_aprovado` datetime DEFAULT NULL,
  `fecha_liquidacion` datetime DEFAULT NULL,
  `fecha_desactivacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cupos_report_id_foreign` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cupos`
--

INSERT INTO `cupos` (`id`, `report_id`, `monto_initial`, `monto_final`, `destino`, `status`, `fecha_solicitud`, `fecha_elaboracion`, `fecha_aprovado`, `fecha_liquidacion`, `fecha_desactivacion`) VALUES
('AACP2016-001', 1, 150000.00, NULL, 'capital de trabajo', 'IP', '2016-06-21 12:42:25', '2016-06-21 13:33:14', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cupo_per_users`
--

CREATE TABLE IF NOT EXISTS `cupo_per_users` (
  `user_id` int(10) unsigned NOT NULL,
  `cupo_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`cupo_id`),
  KEY `cupo_per_users_cupo_id_foreign` (`cupo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cupo_per_users`
--

INSERT INTO `cupo_per_users` (`user_id`, `cupo_id`) VALUES
(3, 'AACP2016-001');

-- --------------------------------------------------------

--
-- Table structure for table `datos_bancario_pj`
--

CREATE TABLE IF NOT EXISTS `datos_bancario_pj` (
  `pj_id` int(10) unsigned NOT NULL,
  `nombre_banco` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_cuenta` enum('A','C') COLLATE utf8_unicode_ci NOT NULL,
  `nro_cuenta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pj_id`,`nombre_banco`,`nro_cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `datos_bancario_pj`
--

INSERT INTO `datos_bancario_pj` (`pj_id`, `nombre_banco`, `tipo_cuenta`, `nro_cuenta`) VALUES
(1, 'Fritsch-Dach Bank', 'A', '4929943494233'),
(2, 'BANESCO', 'C', '123654789'),
(2, 'CITI', 'A', '987654321'),
(2, 'CREDI CORP', 'C', '741258963');

-- --------------------------------------------------------

--
-- Table structure for table `datos_bancario_pn`
--

CREATE TABLE IF NOT EXISTS `datos_bancario_pn` (
  `pn_id` int(10) unsigned NOT NULL,
  `nombre_banco` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_cuenta` enum('A','C') COLLATE utf8_unicode_ci NOT NULL,
  `nro_cuenta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pn_id`,`nombre_banco`,`nro_cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `datos_bancario_pn`
--

INSERT INTO `datos_bancario_pn` (`pn_id`, `nombre_banco`, `tipo_cuenta`, `nro_cuenta`) VALUES
(1, 'Emmerich-Ryan Bank', 'A', '5292267770027317'),
(2, 'Hayes-Goodwin Bank', 'A', '4485014315914'),
(2, 'Murazik, Schroeder and Stokes Bank', 'A', '5256207100392829'),
(3, 'Carter PLC Bank', 'A', '5217356992294821'),
(3, 'Hodkiewicz, Kemmer and Metz Bank', 'C', '375283171833865'),
(4, 'McKenzie, Wisoky and Osinski Bank', 'C', '4024007133784'),
(5, 'Greenfelder, Leannon and Langworth Bank', 'A', '5419186238545389'),
(6, 'Conroy, Dicki and Block Bank', 'A', '4485323143034561'),
(6, 'Mitchell, Abbott and Stehr Bank', 'A', '5595056282906108'),
(7, 'Russel, Welch and Beahan Bank', 'A', '4539312310850285'),
(8, 'BANESCO', 'C', '123456789'),
(8, 'CREDI CORP', 'A', '987654321'),
(9, 'BANESCO', 'C', '369852147'),
(9, 'CREDICORP', 'A', '963852741'),
(10, 'BANESCO', 'C', '123456789'),
(10, 'CREDI CORP', 'A', '369852147'),
(11, 'BANESCO', 'C', '369852147'),
(11, 'CITI', 'A', '3698741258'),
(12, 'BANESCO', 'C', '147852369'),
(12, 'CREDI CORP', 'A', '963852741');

-- --------------------------------------------------------

--
-- Table structure for table `datos_laborales`
--

CREATE TABLE IF NOT EXISTS `datos_laborales` (
  `pn_id` int(10) unsigned NOT NULL,
  `nombre_empresa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pj_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actividad_economica` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cargo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `antiguedad` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `datos_laborales`
--

INSERT INTO `datos_laborales` (`pn_id`, `nombre_empresa`, `pj_id`, `telefono`, `email`, `address`, `actividad_economica`, `cargo`, `antiguedad`) VALUES
(1, 'Christiansen, Hagenes and Price', '106-522', '+84725231744', 'Layla.Harber@yahoo.com', '9078 Collier Estate\nMoenborough, OK 96252-0940', 'Operator in System', 'vice-President', 6),
(2, 'Wunsch PLC', '437-573', '+12449584131', 'Monahan.Louisa@yahoo.com', '739 Kuvalis Hills\nElinorburgh, IN 85581-9944', 'Casher', 'reporter', 15),
(3, 'Krajcik, Prosacco and Adams', '897-560', '+13981105534', 'Olen.Fritsch@gmail.com', '89059 Emerson Common\nVirginialand, HI 02352-1075', 'Operator in System', 'President', 12),
(4, 'Will, Bauch and Wisoky', '804-338', '+88252471120', 'Delia.Daugherty@hotmail.com', '35620 Bernhard Rapids\nEast Louie, IA 08257', 'Casher', 'vice-President', 13),
(5, 'Armstrong, Langworth and Fisher', '966-333', '+30717929197', 'Vivienne.Bode@gmail.com', '3591 Erling Groves Apt. 042\nEast Lambertville, MS 21889-3578', 'Operator in System', 'vice-President', 14),
(6, 'Braun and Sons', '678-591', '+98667994330', 'Adaline.Botsford@gmail.com', '539 Stanton Drive Apt. 569\nNew Gabemouth, TN 01539', 'Looking for stuff', 'President', 12),
(7, 'Nitzsche, Ondricka and Adams', '270-271', '+21152154572', 'Stephany.Turcotte@yahoo.com', '84225 Enoch Pines\nZacharymouth, IL 01194', 'Operator in System', 'vice-President', 1),
(8, 'ABC SUPLIES, INC', '123-456-789', '+50766351579', 'WILLYRA2003@YAHOO.COM', 'SAN FRANCISCO MARINA PLAZA', 'COMERCIAL', 'PRESIDENTE', 7),
(9, 'ABC SUPLIES', '123-456-789', '+50766351579', 'WILLYRA2003@YAHOO.COM', 'SAN FRANCISCO MARINA PLAZA', 'COMERCIAL', 'TESORERO', 7),
(10, 'ABC SUPLIES', '123-456-789', '+50766351579', 'WILLYRA2003@YAHOO.COM', 'SAN FRANCISCO, MARINA PLAZA', 'COMERCIAL', 'PRESIDENTE', 7),
(11, 'ABC SUPLIEWS', '123-456-789', '+50766351579', 'WILLYRA2003@YAHOO.COM', 'SAN FRANCISCO MARINA PLAZA', 'COMERCIAL', 'TESORERO', 7),
(12, 'ABC SUPLIES', '369-852-147', '+50766351589', 'WILLYRA2003@YAHOO.COM', 'SAN FRANCISCO MARINA PLAZA', 'COMERCIAL', 'SECRETARIA JUNTA DIRECTIVA', 7);

-- --------------------------------------------------------

--
-- Table structure for table `directivos`
--

CREATE TABLE IF NOT EXISTS `directivos` (
  `pj_id` int(10) unsigned NOT NULL,
  `pn_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `second_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firma` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pj_id`,`pn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `directivos`
--

INSERT INTO `directivos` (`pj_id`, `pn_id`, `first_name`, `middle_name`, `last_name`, `second_last_name`, `genre`, `nationality`, `cargo`, `firma`) VALUES
(1, 'C-21501409', 'Levi', 'Maurine', 'Steuber', 'Schroeder', 'M', 'Morocco', 'presidente', 'C'),
(1, 'C-27892811', 'Emily', 'Rahsaan', 'Skiles', 'Hessel', 'M', 'British Virgin Islands', 'tesorero', 'U'),
(2, 'C-1236-4587-4', 'guillermo', 'arturo', 'ramirez', 'castillo', 'M', 'panameno', 'tesorero', 'C'),
(2, 'p-054896299', 'willian', 'dionicio', 'ramirez', 'montes', 'M', 'venezolano', 'presidente', 'U'),
(2, 'P-064896299', 'nereida', '', 'castillo', '', 'F', 'venezolana', 'secretaria', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `facturas`
--

CREATE TABLE IF NOT EXISTS `facturas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `factura_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `monto` double(11,2) NOT NULL,
  `deudor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deudor_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_emision` date NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `fecha_cancelado` datetime DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `factura_per_venta`
--

CREATE TABLE IF NOT EXISTS `factura_per_venta` (
  `venta_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factura_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`venta_id`,`factura_id`),
  KEY `factura_per_venta_factura_id_foreign` (`factura_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_10_26_101053_create_roles_table', 1),
('2015_10_26_101228_create_users_table', 1),
('2015_10_26_101344_create_persona_natural_table', 1),
('2015_10_26_101448_create_pn_users_table', 1),
('2015_10_26_101753_create_nacionalidades_table', 1),
('2015_10_26_101954_create_perfil_de_cliente_table', 1),
('2015_10_26_102109_create_datos_laborales_table', 1),
('2015_10_26_102302_create_datos_bancarios_pn_table', 1),
('2015_11_04_082529_create_persona_juridica_table', 1),
('2015_11_04_082913_create_pj_users_table', 1),
('2015_11_05_105444_create_principale_cliente_table', 1),
('2015_11_08_013716_create_representant_leageles_table', 1),
('2015_11_08_015048_create_directivos_tables', 1),
('2015_11_08_015707_create_pn_accionista_table', 1),
('2015_11_09_095845_create_pj_accionista_table', 1),
('2015_11_09_095954_create_datos_bancario_pj', 1),
('2015_11_09_123135_create_pj_panama_table', 1),
('2015_11_09_123211_create_pj_venezuela_table', 1),
('2015_11_27_222447_create_reclacificacion_table', 1),
('2015_12_08_163558_create_recla_per_user_table', 1),
('2015_12_08_163908_create_factura_table', 1),
('2015_12_09_164253_create_reports_table', 1),
('2015_12_10_141420_create_cupo_table', 1),
('2015_12_10_141508_create_pagares_table', 1),
('2015_12_10_143356_create_cupo_per_user_table', 1),
('2015_12_10_143427_create_pagare_per_user_table', 1),
('2015_12_10_143855_create_venta_de_facturas_table', 1),
('2015_12_14_205312_create_vente_per_users_table', 1),
('2015_12_14_214804_create_factura_per_venta_table', 1),
('2016_03_24_231628_create_deudores_table', 1),
('2016_03_25_223132_create_sessions_table', 1),
('2016_03_26_012855_create_codeudores_per_cupo_table', 1),
('2016_03_30_010440_codeudor_per_pagare', 1),
('2016_03_31_003426_create_pago_table', 1),
('2016_03_31_003553_create_pago_per_factura_table', 1),
('2016_04_01_154432_create_codedudor_per_venta', 1),
('2016_04_03_054521_create_company_table', 1),
('2016_04_03_061028_create_company_directivo_table', 1),
('2016_05_07_203536_create_representante_legales_per_cupo', 1),
('2016_05_07_204516_create_representante_legales_per_pagare', 1),
('2016_05_07_204836_create_representante_legales_per_venta', 1),
('2016_05_09_180631_create_representante_codeudores_per_pagare_table', 1),
('2016_05_09_224947_create_accionista_codeudores_per_pagare_table', 1),
('2016_05_13_170504_create_company_representante_per_cupo_table', 1),
('2016_05_13_170525_create_company_representante_per_venta_table', 1),
('2016_06_03_123552_create_pagos_per_venta_table', 1),
('2016_06_07_160210_create_pagos_per_pagare_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nacionalidades`
--

CREATE TABLE IF NOT EXISTS `nacionalidades` (
  `pn_id` int(10) unsigned NOT NULL,
  `pais` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pn_id`,`pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nacionalidades`
--

INSERT INTO `nacionalidades` (`pn_id`, `pais`) VALUES
(1, 'Panameña'),
(2, 'Panameña'),
(3, 'Panameña'),
(4, 'Panameña'),
(5, 'Panameña'),
(6, 'Panameña'),
(7, 'Panameña'),
(8, 'VENEZOLANO'),
(9, 'PANAMENO'),
(10, 'VENEZOLANO'),
(11, 'PANAMENO'),
(12, 'VENEZOLANA');

-- --------------------------------------------------------

--
-- Table structure for table `pagares`
--

CREATE TABLE IF NOT EXISTS `pagares` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `report_id` int(10) unsigned DEFAULT NULL,
  `monto_initial` double(11,2) NOT NULL,
  `monto_final` double(11,2) DEFAULT NULL,
  `plazo_initial` int(10) unsigned NOT NULL,
  `plazo_final` int(10) unsigned DEFAULT NULL,
  `redimiento` double(5,4) DEFAULT NULL,
  `fecha_cancelada` datetime DEFAULT NULL,
  `fecha_elaboracion` datetime DEFAULT NULL,
  `fecha_aprobado` datetime DEFAULT NULL,
  `fecha_liquidacion` date DEFAULT NULL,
  `destino` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('S','R','IP','D','AWOC','AWC','A','E','POT','PL','N') COLLATE utf8_unicode_ci NOT NULL,
  `fecha_solicitud` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pagares_report_id_foreign` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagare_per_users`
--

CREATE TABLE IF NOT EXISTS `pagare_per_users` (
  `user_id` int(10) unsigned NOT NULL,
  `pagare_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`pagare_id`),
  KEY `pagare_per_users_pagare_id_foreign` (`pagare_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagos`
--

CREATE TABLE IF NOT EXISTS `pagos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path_to_pago` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `acc_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `fecha_depositada` date NOT NULL,
  `monto` double(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pagos_per_pagare`
--

CREATE TABLE IF NOT EXISTS `pagos_per_pagare` (
  `pago_id` int(10) unsigned NOT NULL,
  `pagare_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  KEY `pagos_per_pagare_pago_id_foreign` (`pago_id`),
  KEY `pagos_per_pagare_pagare_id_foreign` (`pagare_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagos_per_venta`
--

CREATE TABLE IF NOT EXISTS `pagos_per_venta` (
  `pago_id` int(10) unsigned NOT NULL,
  `venta_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pago_id`,`venta_id`),
  KEY `pagos_per_venta_venta_id_foreign` (`venta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pago_per_factura`
--

CREATE TABLE IF NOT EXISTS `pago_per_factura` (
  `pago_id` int(10) unsigned NOT NULL,
  `factura_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pago_id`,`factura_id`),
  KEY `pago_per_factura_factura_id_foreign` (`factura_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `perfil_clientes`
--

CREATE TABLE IF NOT EXISTS `perfil_clientes` (
  `pn_id` int(10) unsigned NOT NULL,
  `conocimiento` enum('N','L','B','E') COLLATE utf8_unicode_ci DEFAULT NULL,
  `nivel_academico` enum('EP','ES','EU') COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_activo` double(11,2) DEFAULT NULL,
  `total_pasivo` double(11,2) DEFAULT NULL,
  `ingreso_anual` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`pn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `perfil_clientes`
--

INSERT INTO `perfil_clientes` (`pn_id`, `conocimiento`, `nivel_academico`, `total_activo`, `total_pasivo`, `ingreso_anual`) VALUES
(1, 'L', 'EP', 503901.52, 170731.23, 73078.10),
(2, 'L', 'EP', 185643.84, 23102.56, 27109.37),
(3, 'L', 'ES', 277354.31, 30030.42, 21363.25),
(4, 'L', 'EP', 16674.20, 16501.44, 17223.10),
(5, 'N', 'EP', 745799.25, 514272.19, 35390.34),
(6, 'E', 'ES', 7590.54, 1952.23, 82011.70),
(7, 'B', 'EU', 404632.97, 267402.84, 26154.04),
(8, 'B', 'EU', 750000.00, 50000.00, 180000.00),
(9, 'B', 'EU', 350000.00, 50000.00, 80000.00),
(10, 'B', 'EU', 750000.00, 25000.00, 180000.00),
(11, 'B', 'EU', 325000.00, 25000.00, 80000.00),
(12, 'B', 'EU', 350000.00, 30000.00, 75000.00);

-- --------------------------------------------------------

--
-- Table structure for table `persona_juridica`
--

CREATE TABLE IF NOT EXISTS `persona_juridica` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pj_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pais` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nro_empleados` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `persona_juridica`
--

INSERT INTO `persona_juridica` (`id`, `pj_id`, `address`, `telefono`, `pais`, `email`, `nro_empleados`) VALUES
(1, '163-366', '8316 Terry Falls Suite 516\nMalvinaberg, NC 11456', '+10885612286', 'PA', 'Helga14@yahoo.com', 9123),
(2, '123-1-456 dv51', 'san francisco, marina plaza', '+50766351579', 'PA', 'willyra2003@yahoo.com', 12);

-- --------------------------------------------------------

--
-- Table structure for table `persona_naturals`
--

CREATE TABLE IF NOT EXISTS `persona_naturals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pn_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` enum('P','C','N') COLLATE utf8_unicode_ci DEFAULT NULL,
  `genero` enum('M','F','N') COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `birthplace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_civil` enum('S','C','D','V','N') COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `persona_naturals`
--

INSERT INTO `persona_naturals` (`id`, `pn_id`, `id_type`, `genero`, `birthdate`, `telefono`, `address`, `birthplace`, `estado_civil`, `created_at`, `updated_at`) VALUES
(1, 'p-23828756', 'C', 'F', '1982-01-24', '+64711043678', '0752 Koss Port\nElbertburgh, CT 58487-5867', 'Venezuela', 'S', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'p-6175763', 'C', 'F', '1967-12-30', '+42815975654', '27443 Gladys Street Apt. 185\nNorth Madeline, OK 04693', 'Antigua and Barbuda', 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'p-27136801', 'P', 'F', '1969-09-08', '+7311222578', '531 Tillman Circle\nNorth Emieberg, RI 86796', 'Slovakia (Slovak Republic)', 'S', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'p-12284676', 'C', 'F', '1978-06-13', '+70070051253', '7693 Casper Skyway\nDaishahaven, MO 55773', 'Malawi', 'D', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'p-29578337', 'P', 'F', '1958-09-12', '+63055463153', '1486 Murray Lakes\nLorenzaville, DC 70054-6136', 'French Guiana', 'S', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'p-13314316', 'P', 'F', '1973-08-10', '+1506609861', '841 Adelle Hill Suite 026\nBergstromstad, PA 06931', 'Bulgaria', 'D', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'p-12547830', 'P', 'M', '1968-11-17', '+3054722530', '67166 Mohr Parks\nWunschview, KY 83438-8663', 'Bouvet Island (Bouvetoya)', 'D', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'P-054896299', NULL, 'M', '1956-10-09', '+50766351579', 'MARINA PLAZA', 'CARACAS', 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'C-1236-4587-4', NULL, 'M', '1988-01-21', '+50766351589', 'MARINA PLAZA', 'CARACAS', 'S', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'P-054896299', NULL, 'M', '1956-10-09', '+50766351579', 'MARINA PLAZA', 'CARACAS', 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'C-1236-4587-4', NULL, 'M', '1988-01-21', '+50766351579', 'MARINA PLAZA', 'CARACAS', 'S', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'P-064896299', NULL, 'F', '1960-03-20', '+507454545', 'MARINA PLAZA', 'TACHIRA', 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pj_accionista`
--

CREATE TABLE IF NOT EXISTS `pj_accionista` (
  `pj_id` int(10) unsigned NOT NULL,
  `accionista_id` int(10) unsigned NOT NULL,
  `business_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capital_sucrito` double(10,2) NOT NULL,
  `capital_pagado` double(10,2) NOT NULL,
  `complete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pj_id`,`accionista_id`),
  KEY `pj_accionista_accionista_id_foreign` (`accionista_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pj_panama`
--

CREATE TABLE IF NOT EXISTS `pj_panama` (
  `pj_id` int(10) unsigned NOT NULL,
  `nro_ficha` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nro_documento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  KEY `pj_panama_pj_id_foreign` (`pj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pj_panama`
--

INSERT INTO `pj_panama` (`pj_id`, `nro_ficha`, `nro_documento`, `fecha_registro`) VALUES
(1, '90284', '7182', '1998-04-07'),
(2, '12345', '67891', '2009-12-10');

-- --------------------------------------------------------

--
-- Table structure for table `pj_users`
--

CREATE TABLE IF NOT EXISTS `pj_users` (
  `user_id` int(10) unsigned NOT NULL,
  `pj_id` int(10) unsigned DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `pj_users_pj_id_foreign` (`pj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pj_users`
--

INSERT INTO `pj_users` (`user_id`, `pj_id`, `company_name`, `country`) VALUES
(2, 1, 'Greenfelder, Pfeffer and Prohaska', 'PA'),
(3, 2, 'ABC SUPLIES, INC', 'PA');

-- --------------------------------------------------------

--
-- Table structure for table `pj_venezuela`
--

CREATE TABLE IF NOT EXISTS `pj_venezuela` (
  `pj_id` int(10) unsigned NOT NULL,
  `oficina_registro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nro_registro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tomo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ciudad_registro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_registro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duracion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  KEY `pj_venezuela_pj_id_foreign` (`pj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pn_accionista`
--

CREATE TABLE IF NOT EXISTS `pn_accionista` (
  `pj_id` int(10) unsigned NOT NULL,
  `accionista_id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capital_sucrito` double(11,2) NOT NULL,
  `capital_pagado` double(11,2) NOT NULL,
  `complete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pj_id`,`accionista_id`),
  KEY `pn_accionista_accionista_id_foreign` (`accionista_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pn_accionista`
--

INSERT INTO `pn_accionista` (`pj_id`, `accionista_id`, `first_name`, `middle_name`, `last_name`, `email`, `second_last_name`, `capital_sucrito`, `capital_pagado`, `complete`) VALUES
(1, 3, 'Sylvester', 'Madelynn', 'Swaniawski', 'oSpinka@yahoo.com', 'Abbott', 1397145.42, 5970649.77, 1),
(1, 4, 'Arnulfo', 'Edyth', 'Harris', 'Karen23@yahoo.com', 'Kling', 1896158.23, 18033851.39, 1),
(1, 5, 'Lazaro', 'Gregory', 'Kovacek', 'Lilliana.Breitenberg@yahoo.com', 'Von', 13191967.06, 8866821.78, 1),
(1, 6, 'Kristoffer', 'Reginald', 'Veum', 'Altenwerth.Nikko@gmail.com', 'Abernathy', 18928908.85, 17431327.34, 1),
(1, 7, 'Marlene', 'Toni', 'Kautzer', 'jGlover@gmail.com', 'Bailey', 11799801.05, 10414185.85, 1),
(2, 10, 'WILLIAN', 'DIONICIO', 'RAMIREZ', 'willyra2003@yahoo.com', 'MONTES', 250000.00, 250000.00, 1),
(2, 11, 'GUILLERMO', 'ARTURO', 'RAMIREZ', 'guille@gmail.com', 'CASTILLO', 125000.00, 75000.00, 1),
(2, 12, 'NEREIDA', '', 'CASTILLO', 'nere@hotmail.com', '', 125000.00, 75000.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pn_users`
--

CREATE TABLE IF NOT EXISTS `pn_users` (
  `user_id` int(10) unsigned NOT NULL,
  `pn_id` int(10) unsigned DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `second_last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `pn_users_pn_id_foreign` (`pn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `principale_clientes`
--

CREATE TABLE IF NOT EXISTS `principale_clientes` (
  `pj_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pj_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `principale_clientes`
--

INSERT INTO `principale_clientes` (`pj_id`, `name`, `contact`, `id`, `phone`, `email`) VALUES
(1, 'Parker-Roberts', 'Belle Cummings', '38-559', '+83046294482', 'Brianne.Williamson@OConnell.com'),
(1, 'Reinger, Braun and Langworth', 'Shane Abbott', '477-530', '+6695872633', 'eLegros@Reichert.com'),
(1, 'Rowe and Sons', 'Prof. Shaniya Kuhlman IV', '866-140', '+24212219797', 'fStroman@Senger.com'),
(2, 'el rey', 'alex garcia', 'ruc-123-1-456', '+507362514', 'rey@yahoo.com'),
(2, 'turbo jet, c.a.', 'francisco hernandez', 'ruc-357-1159', '+5079632584', 'jet@hotmail.com'),
(2, 'pegasus', 'henry velasquez', 'ruc-369-4-528', '+507369741', 'pegasus@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `reclacificacions`
--

CREATE TABLE IF NOT EXISTS `reclacificacions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caja_banco` double(11,2) NOT NULL,
  `cuenta_por_cobrar` double(11,2) NOT NULL,
  `provision_cuentas_incobrables` double(11,2) NOT NULL,
  `inventario` double(11,2) NOT NULL,
  `provision_obsolescencia` double(11,2) NOT NULL,
  `terrenos` double(11,2) NOT NULL,
  `inmuebles` double(11,2) NOT NULL,
  `maquinarias_equipos` double(11,2) NOT NULL,
  `instalaciones` double(11,2) NOT NULL,
  `mobiliario_equipo` double(11,2) NOT NULL,
  `vehiculos_equipo_transporte` double(11,2) NOT NULL,
  `depreciacion_acumulada` double(11,2) NOT NULL,
  `depositos_garantia` double(11,2) NOT NULL,
  `cargo_diferidos` double(11,2) NOT NULL,
  `credito_fiscal_gasto_prepagados` double(11,2) NOT NULL,
  `cuentas_cobrar_accionista` double(11,2) NOT NULL,
  `intangibles` double(11,2) NOT NULL,
  `otros_activos` double(11,2) NOT NULL,
  `cuentas_por_pagar` double(11,2) NOT NULL,
  `obligaciones_bancarias` double(11,2) NOT NULL,
  `gastos_acumulados` double(11,2) NOT NULL,
  `ISLR_pagar` double(11,2) NOT NULL,
  `sueldos` double(11,2) NOT NULL,
  `otros_pasivos_corrientes` double(11,2) NOT NULL,
  `cuentas_por_pagar_RA` double(11,2) NOT NULL,
  `cuentas_por_pagar_LP` double(11,2) NOT NULL,
  `otros_pasivos` double(11,2) NOT NULL,
  `capital_social` double(11,2) NOT NULL,
  `cuota_capital_no_pagado` double(11,2) NOT NULL,
  `reserva_legal` double(11,2) NOT NULL,
  `otras_reservas` double(8,2) NOT NULL,
  `superavit_acumulado` double(11,2) NOT NULL,
  `resultado_del_ejercicio` double(11,2) NOT NULL,
  `ventas_netas` double(11,2) NOT NULL,
  `costo_ventas_y_servicios` double(11,2) NOT NULL,
  `gastos_administrativos` double(11,2) NOT NULL,
  `otros_ingresos` double(11,2) NOT NULL,
  `otros_egresos` double(11,2) NOT NULL,
  `gastos_financieros` double(11,2) NOT NULL,
  `impuestos_sobre_renta` double(11,2) NOT NULL,
  `dividendo_pagado_efectivo` double(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `reclacificacions`
--

INSERT INTO `reclacificacions` (`id`, `caja_banco`, `cuenta_por_cobrar`, `provision_cuentas_incobrables`, `inventario`, `provision_obsolescencia`, `terrenos`, `inmuebles`, `maquinarias_equipos`, `instalaciones`, `mobiliario_equipo`, `vehiculos_equipo_transporte`, `depreciacion_acumulada`, `depositos_garantia`, `cargo_diferidos`, `credito_fiscal_gasto_prepagados`, `cuentas_cobrar_accionista`, `intangibles`, `otros_activos`, `cuentas_por_pagar`, `obligaciones_bancarias`, `gastos_acumulados`, `ISLR_pagar`, `sueldos`, `otros_pasivos_corrientes`, `cuentas_por_pagar_RA`, `cuentas_por_pagar_LP`, `otros_pasivos`, `capital_social`, `cuota_capital_no_pagado`, `reserva_legal`, `otras_reservas`, `superavit_acumulado`, `resultado_del_ejercicio`, `ventas_netas`, `costo_ventas_y_servicios`, `gastos_administrativos`, `otros_ingresos`, `otros_egresos`, `gastos_financieros`, `impuestos_sobre_renta`, `dividendo_pagado_efectivo`) VALUES
(1, 12000.00, 125000.00, -10000.00, 2000.00, -1000.00, 1000.00, 51500.00, 5000.00, 2000.00, 1000.00, 2000.00, -2000.00, 5000.00, 500.00, 200.00, 500.00, 5000.00, 6000.00, 50000.00, 15000.00, 300.00, 100.00, 200.00, 300.00, 12000.00, 8000.00, 2500.00, 220000.00, -120000.00, 10000.00, 5000.00, 2000.00, 300.00, 200000.00, 50000.00, 70000.00, 300.00, 1300.00, 78300.00, 400.00, 0.00),
(2, 22000.00, 135000.00, -12000.00, 3000.00, -2000.00, 15000.00, 86000.00, 7000.00, 3000.00, 2000.00, 3000.00, -3000.00, 10000.00, 600.00, 300.00, 600.00, 6000.00, 8000.00, 60000.00, 18000.00, 500.00, 50.00, 300.00, 400.00, 14000.00, 10000.00, 3500.00, 220000.00, -100000.00, 10000.00, 5000.00, 2300.00, 40450.00, 210000.00, 60000.00, 80000.00, 950.00, 30000.00, 0.00, 500.00, 0.00),
(3, 32000.00, 145000.00, -14000.00, 4000.00, -3000.00, 26500.00, 184000.00, 9000.00, 4000.00, 3000.00, 4000.00, -4000.00, 15000.00, 700.00, 400.00, 700.00, 7000.00, 9000.00, 70000.00, 21000.00, 700.00, 100.00, 400.00, 500.00, 16000.00, 12000.00, 4500.00, 220000.00, -20000.00, 10000.00, 5000.00, 42750.00, 40350.00, 220000.00, 70000.00, 90000.00, 1000.00, 19000.00, 0.00, 1650.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `recla_per_user`
--

CREATE TABLE IF NOT EXISTS `recla_per_user` (
  `user_id` int(10) unsigned NOT NULL,
  `recla_id` int(10) unsigned NOT NULL,
  `year` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`recla_id`,`year`),
  KEY `recla_per_user_recla_id_foreign` (`recla_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `recla_per_user`
--

INSERT INTO `recla_per_user` (`user_id`, `recla_id`, `year`) VALUES
(3, 1, 31),
(3, 2, 31),
(3, 3, 31);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `riesgo` text COLLATE utf8_unicode_ci NOT NULL,
  `comentario` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `riesgo`, `comentario`, `created_at`) VALUES
(1, 'No reporta riesgo directo.', 'empresa fundada en 2009, dedicada a la comercializacion de repuestos para refrigeracion.\r\nse considera factible hasta usd 100,000.00 revisable anualmente', '2016-06-21 13:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `representante_codeudores_per_pagare`
--

CREATE TABLE IF NOT EXISTS `representante_codeudores_per_pagare` (
  `pagare_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persona_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pagare_id`,`persona_id`),
  KEY `representante_codeudores_per_pagare_persona_id_foreign` (`persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `representante_per_cupo`
--

CREATE TABLE IF NOT EXISTS `representante_per_cupo` (
  `cupo_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persona_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cupo_id`,`persona_id`),
  KEY `representante_per_cupo_persona_id_foreign` (`persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `representante_per_pagare`
--

CREATE TABLE IF NOT EXISTS `representante_per_pagare` (
  `pagare_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persona_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pagare_id`,`persona_id`),
  KEY `representante_per_pagare_persona_id_foreign` (`persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `representante_per_venta`
--

CREATE TABLE IF NOT EXISTS `representante_per_venta` (
  `venta_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persona_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`venta_id`,`persona_id`),
  KEY `representante_per_venta_persona_id_foreign` (`persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `represente_legales`
--

CREATE TABLE IF NOT EXISTS `represente_legales` (
  `pj_id` int(10) unsigned NOT NULL,
  `pn_id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `second_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cargo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `complete` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`pj_id`,`pn_id`),
  KEY `represente_legales_pn_id_foreign` (`pn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `represente_legales`
--

INSERT INTO `represente_legales` (`pj_id`, `pn_id`, `first_name`, `middle_name`, `last_name`, `second_last_name`, `email`, `cargo`, `complete`) VALUES
(1, 1, 'Yadira', 'Kyla', 'Mueller', 'Thiel', 'rGerlach@yahoo.com', 'Vicepresidente', '1'),
(1, 2, 'Osborne', 'Leon', 'Daniel', 'Purdy', 'vShanahan@gmail.com', 'Presidente', '1'),
(2, 8, 'WILLIAN', 'DIONICIO', 'RAMIREZ', 'MONTES', 'willyra2003@yahoo.com', 'director', '1'),
(2, 9, 'GUILLERMO', 'ARTURO', 'RAMIREZ', 'CASTILLO', 'guille@gmail.com', 'tesorero', '1');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` enum('sadmin','admin','PN','PJ') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_title_unique` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `slug`) VALUES
(1, 'Super Admin', 'sadmin'),
(2, 'Admin', 'admin'),
(3, 'Persona Natural', 'PN'),
(4, 'Persona Juridica', 'PJ');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `recla_done` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `email`, `password`, `completed`, `recla_done`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'darcowboy@gmail.com', '$2y$10$HsJA3bhQ7MW.sWWcmihDV.EXJcLhgLU35.1RvcDZ2VfizdGrkHTLu', 0, 1, NULL, '2016-06-21 16:59:13', '2016-06-21 16:59:13'),
(2, 4, 'elguiche33@gmail.com', '$2y$10$V1wo3L24pgfQf8DgEaSlQugoQPYYfwOBn0KeILQK.KNGp8thnd3eC', 1, 1, NULL, '2016-06-21 16:59:13', '2016-06-21 16:59:13'),
(3, 4, 'willyra2003@yahoo.com', '$2y$10$muS61tjrMzYYol75ZSsfCO9M3PRSM4/xKrneyb0R1yoDudWxMR0gy', 1, 1, NULL, '2016-06-21 17:00:57', '2016-06-21 17:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `venta_de_facturas`
--

CREATE TABLE IF NOT EXISTS `venta_de_facturas` (
  `venta_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cupo_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pagare_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `report_id` int(10) unsigned DEFAULT NULL,
  `status` enum('S','R','IP','D','AWOC','AWC','A','E','POT','PL','N') COLLATE utf8_unicode_ci NOT NULL,
  `fecha_solicitud` datetime NOT NULL,
  `fecha_elaboracion` datetime DEFAULT NULL,
  `fecha_aprobado` datetime DEFAULT NULL,
  `fecha_liquidacion` datetime DEFAULT NULL,
  `rendimiento` double(5,4) DEFAULT NULL,
  `destino` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cupo_id`,`venta_id`),
  UNIQUE KEY `venta_de_facturas_venta_id_unique` (`venta_id`),
  KEY `venta_de_facturas_pagare_id_foreign` (`pagare_id`),
  KEY `venta_de_facturas_report_id_foreign` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `venta_per_users`
--

CREATE TABLE IF NOT EXISTS `venta_per_users` (
  `venta_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`venta_id`,`user_id`),
  KEY `venta_per_users_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accionista_codeudores_per_pagare`
--
ALTER TABLE `accionista_codeudores_per_pagare`
  ADD CONSTRAINT `accionista_codeudores_per_pagare_pagare_id_foreign` FOREIGN KEY (`pagare_id`) REFERENCES `pagares` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accionista_codeudores_per_pagare_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `codeudores_per_cupo`
--
ALTER TABLE `codeudores_per_cupo`
  ADD CONSTRAINT `codeudores_per_cupo_codeudor_id_foreign` FOREIGN KEY (`codeudor_id`) REFERENCES `codeudores_solicitudes` (`id`),
  ADD CONSTRAINT `codeudores_per_cupo_cupo_id_foreign` FOREIGN KEY (`cupo_id`) REFERENCES `cupos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `codeudores_per_cupo_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `codeudores_per_pagare`
--
ALTER TABLE `codeudores_per_pagare`
  ADD CONSTRAINT `codeudores_per_pagare_codeudor_id_foreign` FOREIGN KEY (`codeudor_id`) REFERENCES `codeudores_solicitudes` (`id`),
  ADD CONSTRAINT `codeudores_per_pagare_pagare_id_foreign` FOREIGN KEY (`pagare_id`) REFERENCES `pagares` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `codeudores_per_pagare_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `codeudores_per_venta`
--
ALTER TABLE `codeudores_per_venta`
  ADD CONSTRAINT `codeudores_per_venta_codeudor_id_foreign` FOREIGN KEY (`codeudor_id`) REFERENCES `codeudores_solicitudes` (`id`),
  ADD CONSTRAINT `codeudores_per_venta_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `codeudores_per_venta_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `venta_de_facturas` (`venta_id`) ON DELETE CASCADE;

--
-- Constraints for table `company_directivo`
--
ALTER TABLE `company_directivo`
  ADD CONSTRAINT `company_directivo_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);

--
-- Constraints for table `company_representante_per_cupo`
--
ALTER TABLE `company_representante_per_cupo`
  ADD CONSTRAINT `company_representante_per_cupo_co_repre_id_foreign` FOREIGN KEY (`co_repre_id`) REFERENCES `company_directivo` (`id`),
  ADD CONSTRAINT `company_representante_per_cupo_cupo_id_foreign` FOREIGN KEY (`cupo_id`) REFERENCES `cupos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_representante_per_venta`
--
ALTER TABLE `company_representante_per_venta`
  ADD CONSTRAINT `company_representante_per_venta_co_repre_id_foreign` FOREIGN KEY (`co_repre_id`) REFERENCES `company_directivo` (`id`),
  ADD CONSTRAINT `company_representante_per_venta_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `venta_de_facturas` (`venta_id`) ON DELETE CASCADE;

--
-- Constraints for table `cupos`
--
ALTER TABLE `cupos`
  ADD CONSTRAINT `cupos_report_id_foreign` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`);

--
-- Constraints for table `cupo_per_users`
--
ALTER TABLE `cupo_per_users`
  ADD CONSTRAINT `cupo_per_users_cupo_id_foreign` FOREIGN KEY (`cupo_id`) REFERENCES `cupos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cupo_per_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `datos_bancario_pj`
--
ALTER TABLE `datos_bancario_pj`
  ADD CONSTRAINT `datos_bancario_pj_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `datos_bancario_pn`
--
ALTER TABLE `datos_bancario_pn`
  ADD CONSTRAINT `datos_bancario_pn_pn_id_foreign` FOREIGN KEY (`pn_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `datos_laborales`
--
ALTER TABLE `datos_laborales`
  ADD CONSTRAINT `datos_laborales_pn_id_foreign` FOREIGN KEY (`pn_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `directivos`
--
ALTER TABLE `directivos`
  ADD CONSTRAINT `directivos_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `factura_per_venta`
--
ALTER TABLE `factura_per_venta`
  ADD CONSTRAINT `factura_per_venta_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `factura_per_venta_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `venta_de_facturas` (`venta_id`) ON DELETE CASCADE;

--
-- Constraints for table `nacionalidades`
--
ALTER TABLE `nacionalidades`
  ADD CONSTRAINT `nacionalidades_pn_id_foreign` FOREIGN KEY (`pn_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pagares`
--
ALTER TABLE `pagares`
  ADD CONSTRAINT `pagares_report_id_foreign` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`);

--
-- Constraints for table `pagare_per_users`
--
ALTER TABLE `pagare_per_users`
  ADD CONSTRAINT `pagare_per_users_pagare_id_foreign` FOREIGN KEY (`pagare_id`) REFERENCES `pagares` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pagare_per_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pagos_per_pagare`
--
ALTER TABLE `pagos_per_pagare`
  ADD CONSTRAINT `pagos_per_pagare_pagare_id_foreign` FOREIGN KEY (`pagare_id`) REFERENCES `pagares` (`id`),
  ADD CONSTRAINT `pagos_per_pagare_pago_id_foreign` FOREIGN KEY (`pago_id`) REFERENCES `pagos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pagos_per_venta`
--
ALTER TABLE `pagos_per_venta`
  ADD CONSTRAINT `pagos_per_venta_pago_id_foreign` FOREIGN KEY (`pago_id`) REFERENCES `pagos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pagos_per_venta_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `venta_de_facturas` (`venta_id`);

--
-- Constraints for table `pago_per_factura`
--
ALTER TABLE `pago_per_factura`
  ADD CONSTRAINT `pago_per_factura_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`),
  ADD CONSTRAINT `pago_per_factura_pago_id_foreign` FOREIGN KEY (`pago_id`) REFERENCES `pagos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `perfil_clientes`
--
ALTER TABLE `perfil_clientes`
  ADD CONSTRAINT `perfil_clientes_pn_id_foreign` FOREIGN KEY (`pn_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pj_accionista`
--
ALTER TABLE `pj_accionista`
  ADD CONSTRAINT `pj_accionista_accionista_id_foreign` FOREIGN KEY (`accionista_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pj_accionista_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pj_panama`
--
ALTER TABLE `pj_panama`
  ADD CONSTRAINT `pj_panama_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pj_users`
--
ALTER TABLE `pj_users`
  ADD CONSTRAINT `pj_users_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pj_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pj_venezuela`
--
ALTER TABLE `pj_venezuela`
  ADD CONSTRAINT `pj_venezuela_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pn_accionista`
--
ALTER TABLE `pn_accionista`
  ADD CONSTRAINT `pn_accionista_accionista_id_foreign` FOREIGN KEY (`accionista_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pn_accionista_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `pn_users`
--
ALTER TABLE `pn_users`
  ADD CONSTRAINT `pn_users_pn_id_foreign` FOREIGN KEY (`pn_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pn_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `principale_clientes`
--
ALTER TABLE `principale_clientes`
  ADD CONSTRAINT `principale_clientes_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recla_per_user`
--
ALTER TABLE `recla_per_user`
  ADD CONSTRAINT `recla_per_user_recla_id_foreign` FOREIGN KEY (`recla_id`) REFERENCES `reclacificacions` (`id`),
  ADD CONSTRAINT `recla_per_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `representante_codeudores_per_pagare`
--
ALTER TABLE `representante_codeudores_per_pagare`
  ADD CONSTRAINT `representante_codeudores_per_pagare_pagare_id_foreign` FOREIGN KEY (`pagare_id`) REFERENCES `pagares` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `representante_codeudores_per_pagare_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `representante_per_cupo`
--
ALTER TABLE `representante_per_cupo`
  ADD CONSTRAINT `representante_per_cupo_cupo_id_foreign` FOREIGN KEY (`cupo_id`) REFERENCES `cupos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `representante_per_cupo_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `representante_per_pagare`
--
ALTER TABLE `representante_per_pagare`
  ADD CONSTRAINT `representante_per_pagare_pagare_id_foreign` FOREIGN KEY (`pagare_id`) REFERENCES `pagares` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `representante_per_pagare_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `representante_per_venta`
--
ALTER TABLE `representante_per_venta`
  ADD CONSTRAINT `representante_per_venta_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `representante_per_venta_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `venta_de_facturas` (`venta_id`) ON DELETE CASCADE;

--
-- Constraints for table `represente_legales`
--
ALTER TABLE `represente_legales`
  ADD CONSTRAINT `represente_legales_pj_id_foreign` FOREIGN KEY (`pj_id`) REFERENCES `persona_juridica` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `represente_legales_pn_id_foreign` FOREIGN KEY (`pn_id`) REFERENCES `persona_naturals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `venta_de_facturas`
--
ALTER TABLE `venta_de_facturas`
  ADD CONSTRAINT `venta_de_facturas_cupo_id_foreign` FOREIGN KEY (`cupo_id`) REFERENCES `cupos` (`id`),
  ADD CONSTRAINT `venta_de_facturas_pagare_id_foreign` FOREIGN KEY (`pagare_id`) REFERENCES `pagares` (`id`),
  ADD CONSTRAINT `venta_de_facturas_report_id_foreign` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`);

--
-- Constraints for table `venta_per_users`
--
ALTER TABLE `venta_per_users`
  ADD CONSTRAINT `venta_per_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `venta_per_users_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `venta_de_facturas` (`venta_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
