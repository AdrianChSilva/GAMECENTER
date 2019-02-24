-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Servidor: sql102.epizy.com
-- Tiempo de generación: 24-02-2019 a las 07:19:29
-- Versión del servidor: 5.6.41-84.1
-- Versión de PHP: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `epiz_23496854_gamecenter`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `adminDNI` varchar(9) COLLATE utf8_bin NOT NULL,
  `adminNombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `adminApellido` varchar(60) COLLATE utf8_bin NOT NULL,
  `adminTlfn` varchar(9) COLLATE utf8_bin NOT NULL,
  `adminDir` varchar(255) COLLATE utf8_bin NOT NULL,
  `cuentaCodigo` varchar(70) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cuentaCodigo` (`cuentaCodigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=32 ;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `adminDNI`, `adminNombre`, `adminApellido`, `adminTlfn`, `adminDir`, `cuentaCodigo`) VALUES
(13, '00000000', 'Administrador', 'Principal', '777777777', 'Administrador Principal 29011', 'Adm08984-11'),
(23, '789456123', 'Juan', 'Gutierrez', '678945121', 'MÃ¡laga', 'Adm08555-3'),
(24, '78459621N', 'Mireya', 'Silva Morales', '698745123', 'Pasaje EscarranxÃ s fonetismes humitegÃ©ssiu, 93 9ÂºC', 'Adm07735-4'),
(25, '77895465M', 'Cintia', 'Morales Silva', '654789258', 'Plaza FincarÃ­em abasseguÃ©sseu rotat sassafrÃ s, 164A 9ÂºD', 'Adm96533-5'),
(26, '77184424N', 'AdriÃ¡n', 'Chamorro Silva', '639784129', 'Alejandro Puskin 29014', 'Adm89493-6'),
(27, '654654', 'Agutino', 'Putino', '', '', 'Adm62736-8'),
(28, '67546547', 'Alesito', 'Corral Luque', '', '', 'Adm34101-9'),
(29, '98765432B', 'Pepe', 'Grillo', '654987321', 'Malaga', 'Adm69848-19'),
(30, '12245678W', 'Estela', 'Guiomar', '65487149', 'Malaga', 'Adm68506-20'),
(31, '98741562D', 'Maximiliano', 'TomÃ¡s', '654178942', 'Argentina', 'Adm73777-21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE IF NOT EXISTS `cuenta` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `cuentaCodigo` varchar(70) COLLATE utf8_bin NOT NULL,
  `cuentaPrivg` int(1) NOT NULL,
  `cuentaAlias` varchar(25) COLLATE utf8_bin NOT NULL,
  `cuentaPass` varchar(500) COLLATE utf8_bin NOT NULL,
  `cuentaEmail` varchar(80) COLLATE utf8_bin NOT NULL,
  `cuentaEstado` varchar(20) COLLATE utf8_bin NOT NULL,
  `cuentaTipo` varchar(25) COLLATE utf8_bin NOT NULL,
  `cuentaGenero` varchar(10) COLLATE utf8_bin NOT NULL,
  `cuentaFoto` varchar(700) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cuentaCodigo` (`cuentaCodigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=73 ;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`id`, `cuentaCodigo`, `cuentaPrivg`, `cuentaAlias`, `cuentaPass`, `cuentaEmail`, `cuentaEstado`, `cuentaTipo`, `cuentaGenero`, `cuentaFoto`) VALUES
(13, 'Adm08984-11', 1, 'adminP', 'VVhSNWxVVzRMZkU4a09wZTJyQlNJQT09', 'AdministradorPrincipal@gmail.com', 'Activo', 'Administrador', 'Masculino', 'https://www.shareicon.net/data/128x128/2016/01/12/702220_users_512x512.png'),
(34, 'Adm00044-3', 3, '1', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', '', 'Activo', 'Administrador', 'Masculino', 'AdminMale.png'),
(54, 'Adm08555-3', 1, 'AdminUno', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', 'juan@gmail.com', 'Activo', 'Administrador', 'Masculino', 'https://images.dog.ceo/breeds/germanshepherd/n02106662_17449.jpg'),
(55, 'Adm07735-4', 2, 'AdminDos', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', 'Mireya@gmail.com', 'Activo', 'Administrador', 'Femenino', 'https://purr.objects-us-east-1.dream.io/i/BBrbc.jpg'),
(56, 'Adm96533-5', 1, 'AdminTres', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', 'Cintia@gmail.com', 'Activo', 'Administrador', 'Indefinido', 'https://cdn4.iconfinder.com/data/icons/twitter-ui-set/128/Egg_Proffile_And_Settings_Twitter-512.png'),
(57, 'Adm89493-6', 1, 'adrichs', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', 'adrian@gmail.com', 'Activo', 'Administrador', 'Masculino', 'https://images.dog.ceo/breeds/malinois/n02105162_5417.jpg'),
(58, 'Usr4365778-7', 4, 'piloto', 'bHRmYjlqdHJXdjk3WFY4Y2FKMnQ0dz09', 'piloto@gmail.com', 'Activo', 'Cliente', 'Femenino', 'https://purr.objects-us-east-1.dream.io/i/20031796_10211919060405417_1889637729153582171_n.jpg'),
(59, 'Adm62736-8', 3, 'Agutino', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', '', 'Activo', 'Administrador', 'Masculino', 'https://images.dog.ceo/breeds/frise-bichon/jh-ezio-2.jpg'),
(60, 'Adm34101-9', 3, 'Alesito', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', '', 'Activo', 'Administrador', 'Femenino', 'https://purr.objects-us-east-1.dream.io/i/img_20170919_162239.jpg'),
(61, 'Usr4574041-10', 4, 'pep', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', 'pep@sanchez.com', 'Activo', 'Cliente', 'Masculino', 'https://images.dog.ceo/breeds/groenendael/n02105056_1067.jpg'),
(62, 'Usr1984467-11', 4, 'pdrschz', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', 'pdr@schz.com', 'Activo', 'Cliente', 'Masculino', 'https://images.dog.ceo/breeds/elkhound-norwegian/n02091467_473.jpg'),
(63, 'Usr8453624-12', 4, 'ines', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', 'ines@ciudagramos.com', 'Activo', 'Cliente', 'Femenino', 'https://purr.objects-us-east-1.dream.io/i/DBYQb.jpg'),
(64, 'Usr9562484-13', 4, 'chavista', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', 'pablo@pudimos.com', 'Activo', 'Cliente', 'Indefinido', 'https://cdn4.iconfinder.com/data/icons/twitter-ui-set/128/Egg_Proffile_And_Settings_Twitter-512.png'),
(65, 'Usr2596286-14', 4, 'LiderSupremo', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', 'cerdo@fascista.com', 'Activo', 'Cliente', 'Masculino', 'https://images.dog.ceo/breeds/coonhound/n02089078_2464.jpg'),
(66, 'Usr4359051-15', 4, 'cuÃ±ado', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', 'megustalafarlopa@noleoKant.com', 'Activo', 'Cliente', 'Masculino', 'https://images.dog.ceo/breeds/whippet/n02091134_2568.jpg'),
(67, 'Usr2939594-16', 4, 'traidor', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', 'orrejon@podemita.com', 'Activo', 'Cliente', 'Indefinido', 'https://cdn4.iconfinder.com/data/icons/twitter-ui-set/128/Egg_Proffile_And_Settings_Twitter-512.png'),
(68, 'Usr6385037-17', 4, 'indepe', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', 'gabrie@rufian.com', 'Activo', 'Cliente', 'Masculino', 'https://images.dog.ceo/breeds/vizsla/n02100583_13656.jpg'),
(69, 'Usr9650508-18', 4, 'fachita1', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', 'notengounmaster@mentiroso.com', 'Activo', 'Cliente', 'Masculino', 'https://images.dog.ceo/breeds/dhole/n02115913_2300.jpg'),
(70, 'Adm69848-19', 2, 'pepe', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', 'pepe@gmail.com', 'Activo', 'Administrador', 'Masculino', 'https://images.dog.ceo/breeds/newfoundland/n02111277_6402.jpg'),
(71, 'Adm68506-20', 1, 'Guio', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', 'guiomar@gmail.com', 'Activo', 'Administrador', 'Femenino', 'https://purr.objects-us-east-1.dream.io/i/tumblr_ll769q2fk51qhwmnpo1_500.jpg'),
(72, 'Adm73777-21', 3, 'Maxi', 'bkcvbWZ1VUdwTnZ4Vnk4K3Bkbm12dz09', 'maxi@gmail.com', 'Activo', 'Administrador', 'Indefinido', 'https://cdn4.iconfinder.com/data/icons/twitter-ui-set/128/Egg_Proffile_And_Settings_Twitter-512.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desarrolladora`
--

CREATE TABLE IF NOT EXISTS `desarrolladora` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `desarrCodigo` varchar(70) COLLATE utf8_bin NOT NULL,
  `desarrNombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `desarrTlfn` varchar(20) COLLATE utf8_bin NOT NULL,
  `desarrEmail` varchar(90) COLLATE utf8_bin NOT NULL,
  `desarrDir` varchar(255) COLLATE utf8_bin NOT NULL,
  `desarrCEO` varchar(90) COLLATE utf8_bin NOT NULL,
  `desarrAno` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `desarrCodigo` (`desarrCodigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `desarrolladora`
--

INSERT INTO `desarrolladora` (`id`, `desarrCodigo`, `desarrNombre`, `desarrTlfn`, `desarrEmail`, `desarrDir`, `desarrCEO`, `desarrAno`) VALUES
(4, '98798654654', 'Nintendo', '65465465', 'nintendo@gmail.com', 'japon', 'Miyamoto', 1880),
(5, '987654123', 'Sony', '654897312', 'Sony@gmail.com', 'Japon', 'Yamauchi', 1994),
(6, '98765498645', 'From Software', '65558975485', 'fromsoft@support.com', 'korea', 'Hidetaka', 2014),
(7, '8976542136854987', 'CD PROJEKT', '65487456789', 'cdprojekt@gmail.com', 'Polonia', 'Andrjeizk', 2015),
(8, '879465123654897', 'Naughty Dog', '6545555875', 'naughty@gmail.com', 'America', 'William', 1990),
(9, '87964512345879', 'Platinum Games', '654897132845', 'platinum@games.com', 'JapÃ³n', 'Kamiya', 2000),
(10, '879645123564897', 'Rockstar', '65455558752', 'rockstar@games.com', 'AmÃ©rica', 'Zampella', 1990),
(11, '978645123465978', 'Ninja Theory', '654897321564', 'ninja@gmail.com', 'Londres', 'Peter', 2000),
(12, '51486257', 'SEGA', '741852654', 'sega@sega.com', 'Japon', 'Sinosuke', 1988),
(13, '879654645987', 'Bungie', '6545557248', 'bungie@hotmail.com', 'AmÃ©rica', 'MasterChief', 2001);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE IF NOT EXISTS `genero` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `generoCodigo` varchar(70) COLLATE utf8_bin NOT NULL,
  `generoNombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `generoCodigo` (`generoCodigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `generoCodigo`, `generoNombre`) VALUES
(5, '4', 'puzzle'),
(6, '5', 'accion'),
(8, '23', 'plataformas'),
(9, '1', 'Survival Horror'),
(10, '2', 'Soulslike'),
(11, '3', 'Sandbox'),
(12, '8', 'rol'),
(13, '9', 'JRPG'),
(14, '10', 'Shooter FPS'),
(15, '11', 'Shooter TPS'),
(16, '12', 'BeatEmUp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico`
--

CREATE TABLE IF NOT EXISTS `historico` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `histCodigo` varchar(70) COLLATE utf8_bin NOT NULL,
  `histFecha` date NOT NULL,
  `histHoraInicio` varchar(20) COLLATE utf8_bin NOT NULL,
  `histHoraFinal` varchar(20) COLLATE utf8_bin NOT NULL,
  `histTipo` varchar(20) COLLATE utf8_bin NOT NULL,
  `histAnno` int(4) NOT NULL,
  `cuentaCodigo` varchar(70) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cuentaCodigo` (`cuentaCodigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=252 ;

--
-- Volcado de datos para la tabla `historico`
--

INSERT INTO `historico` (`id`, `histCodigo`, `histFecha`, `histHoraInicio`, `histHoraFinal`, `histTipo`, `histAnno`, `cuentaCodigo`) VALUES
(213, 'CodH96973223-1', '2019-02-22', '09:23:55 pm', '11:34:09 am', 'Administrador', 2019, 'Adm08984-11'),
(214, 'CodH73234988-2', '2019-02-23', '11:34:17 am', '11:37:11 am', 'Administrador', 2019, 'Adm89493-6'),
(215, 'CodH93038464-3', '2019-02-23', '11:37:17 am', '11:37:56 am', 'Cliente', 2019, 'Usr4365778-7'),
(216, 'CodH48590258-4', '2019-02-23', '11:38:02 am', '11:38:27 am', 'Cliente', 2019, 'Usr4365778-7'),
(217, 'CodH58955258-5', '2019-02-23', '11:38:36 am', '12:03:08 pm', 'Administrador', 2019, 'Adm07735-4'),
(218, 'CodH06992249-6', '2019-02-23', '12:03:19 pm', '12:18:11 pm', 'Administrador', 2019, 'Adm96533-5'),
(219, 'CodH66958012-7', '2019-02-23', '12:18:28 pm', '12:18:57 pm', 'Cliente', 2019, 'Usr4365778-7'),
(220, 'CodH61971748-8', '2019-02-23', '12:19:03 pm', 'NO DATA', 'Administrador', 2019, 'Adm08984-11'),
(221, 'CodH57291854-9', '2019-02-23', '01:18:46 pm', 'NO DATA', 'Administrador', 2019, 'Adm08984-11'),
(222, 'CodH13623173-10', '2019-02-23', '01:21:18 pm', 'NO DATA', 'Administrador', 2019, 'Adm08984-11'),
(223, 'CodH13129449-11', '2019-02-23', '01:23:07 pm', 'NO DATA', 'Administrador', 2019, 'Adm08984-11'),
(224, 'CodH41348433-12', '2019-02-23', '01:33:49 pm', 'NO DATA', 'Administrador', 2019, 'Adm08984-11'),
(225, 'CodH95558235-13', '2019-02-23', '01:36:46 pm', 'NO DATA', 'Administrador', 2019, 'Adm08984-11'),
(226, 'CodH81764074-14', '2019-02-23', '01:46:19 pm', 'NO DATA', 'Administrador', 2019, 'Adm08984-11'),
(227, 'CodH12667491-15', '2019-02-23', '01:54:25 pm', 'NO DATA', 'Administrador', 2019, 'Adm08984-11'),
(228, 'CodH81675135-16', '2019-02-23', '01:54:57 pm', 'NO DATA', 'Administrador', 2019, 'Adm08984-11'),
(229, 'CodH62623976-17', '2019-02-23', '01:56:06 pm', 'NO DATA', 'Administrador', 2019, 'Adm08984-11'),
(230, 'CodH15243055-18', '2019-02-23', '02:05:03 pm', 'NO DATA', 'Administrador', 2019, 'Adm08984-11'),
(231, 'CodH76503030-19', '2019-02-23', '02:06:01 pm', 'NO DATA', 'Administrador', 2019, 'Adm08984-11'),
(232, 'CodH66097642-20', '2019-02-23', '02:12:20 pm', '02:22:14 pm', 'Administrador', 2019, 'Adm08984-11'),
(233, 'CodH97319585-21', '2019-02-23', '02:23:38 pm', '02:24:44 pm', 'Administrador', 2019, 'Adm08984-11'),
(234, 'CodH70952082-22', '2019-02-23', '02:25:16 pm', '02:25:39 pm', 'Administrador', 2019, 'Adm07735-4'),
(235, 'CodH26079210-23', '2019-02-23', '02:41:59 pm', '02:53:17 pm', 'Administrador', 2019, 'Adm07735-4'),
(236, 'CodH71838800-24', '2019-02-23', '02:42:05 pm', '02:53:20 pm', 'Administrador', 2019, 'Adm08984-11'),
(237, 'CodH83431749-25', '2019-02-23', '02:54:26 pm', '02:54:49 pm', 'Administrador', 2019, 'Adm08984-11'),
(238, 'CodH13324258-26', '2019-02-23', '02:54:59 pm', 'NO DATA', 'Cliente', 2019, 'Usr4365778-7'),
(239, 'CodH64678185-27', '2019-02-23', '05:09:15 pm', 'NO DATA', 'Administrador', 2019, 'Adm08984-11'),
(240, 'CodH46401029-28', '2019-02-23', '05:12:52 pm', 'NO DATA', 'Administrador', 2019, 'Adm62736-8'),
(241, 'CodH38773226-29', '2019-02-23', '05:14:22 pm', 'NO DATA', 'Administrador', 2019, 'Adm34101-9'),
(242, 'CodH96271059-30', '2019-02-23', '05:14:28 pm', '05:27:50 pm', 'Administrador', 2019, 'Adm08984-11'),
(243, 'CodH93277861-31', '2019-02-23', '05:17:27 pm', 'NO DATA', 'Administrador', 2019, 'Adm34101-9'),
(244, 'CodH94998242-32', '2019-02-23', '05:18:18 pm', '05:19:10 pm', 'Administrador', 2019, 'Adm34101-9'),
(245, 'CodH85285463-33', '2019-02-23', '05:27:56 pm', '05:28:02 pm', 'Administrador', 2019, 'Adm08984-11'),
(246, 'CodH53766552-34', '2019-02-23', '05:28:07 pm', '05:28:25 pm', 'Administrador', 2019, 'Adm08984-11'),
(247, 'CodH53619140-35', '2019-02-23', '05:34:06 pm', 'NO DATA', 'Administrador', 2019, 'Adm89493-6'),
(248, 'CodH51967752-36', '2019-02-24', '09:44:01 am', '10:13:49 am', 'Administrador', 2019, 'Adm08984-11'),
(249, 'CodH81819023-37', '2019-02-24', '10:13:54 am', '10:14:05 am', 'Cliente', 2019, 'Usr4365778-7'),
(250, 'CodH85863194-38', '2019-02-24', '11:54:40 am', '01:09:56 pm', 'Administrador', 2019, 'Adm08984-11'),
(251, 'CodH80963829-39', '2019-02-24', '01:14:07 pm', 'NO DATA', 'Cliente', 2019, 'Usr4365778-7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publisher`
--

CREATE TABLE IF NOT EXISTS `publisher` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `publisherCodigo` varchar(70) COLLATE utf8_bin NOT NULL,
  `publisherNombre` varchar(90) COLLATE utf8_bin NOT NULL,
  `publisherEncargado` varchar(90) COLLATE utf8_bin NOT NULL,
  `publisherTlfn` varchar(20) COLLATE utf8_bin NOT NULL,
  `publisherEmail` varchar(90) COLLATE utf8_bin NOT NULL,
  `publisherDir` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `publisherCodigo` (`publisherCodigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `publisher`
--

INSERT INTO `publisher` (`id`, `publisherCodigo`, `publisherNombre`, `publisherEncargado`, `publisherTlfn`, `publisherEmail`, `publisherDir`) VALUES
(3, 'Pub48437-3', 'nintendo', 'kamiya', '65498654', 'nintendo@gmail.com', 'japon'),
(4, 'Pub52993-2', 'Take Two', 'Cliff', '6955547898', 'take2@gmail.com', 'America'),
(5, 'Pub52931-3', 'Electronic Arts', 'Maria', '6548124', 'EA@gmail.com', 'Londojn'),
(6, 'Pub75977-4', 'Bandai Namco Entertainment', 'Paco', '654781775', 'bandai@namco.com', 'Korea del '),
(7, 'Pub33392-5', 'Microsoft', 'Bill Gates', '654987214', 'hotmail@hotmail.com', 'America'),
(8, 'Pub78509-6', 'Sony', 'Yamamoto', '654987321', 'sony@gmail.com', 'Japon'),
(9, 'Pub62266-7', 'Ubisoft', 'Croissant', '65498748', 'ubilol@gmail.com', 'Francia'),
(10, 'Pub36787-8', 'Activision', 'Dafoe', '654987178', 'activision@gmail.com', 'America'),
(11, 'Pub76332-9', 'Devolver Digital', 'Jeff', '65498465', 'devolver@digital.com', 'America');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `userDNI` varchar(9) COLLATE utf8_bin NOT NULL,
  `userNombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `userApellido` varchar(60) COLLATE utf8_bin NOT NULL,
  `userTlfn` varchar(9) COLLATE utf8_bin NOT NULL,
  `userOcup` varchar(50) COLLATE utf8_bin NOT NULL,
  `userDir` varchar(255) COLLATE utf8_bin NOT NULL,
  `cuentaCodigo` varchar(70) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cuentaCodigo` (`cuentaCodigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `userDNI`, `userNombre`, `userApellido`, `userTlfn`, `userOcup`, `userDir`, `cuentaCodigo`) VALUES
(10, '77184424N', 'Juan Antonio', 'Rodolfo Jimenez', '654987123', 'Xbox', 'Pasadizo Diagnosi, 149A 3ÂºD', 'Usr4365778-7'),
(11, '986587428', 'Pep', 'SÃ¡nchez', '654789123', 'Nintendo', 'Calle Barcelona', 'Usr4574041-10'),
(12, '87451239H', 'Pedro', 'SÃ¡nchez', '658741598', 'Xbox', 'Madrid', 'Usr1984467-11'),
(13, '87412497N', 'InÃ©s', 'Arrimadas', '652147359', '', 'Barcelona', 'Usr8453624-12'),
(14, '741569873', 'Pablo', 'Iglesias TurriÃ³n', '784236519', 'PC', 'Galapagar', 'Usr9562484-13'),
(15, '987456852', 'Santiago', 'Abascal', '658741598', 'Xbox', 'ESPAÃ‘ISTÃN', 'Usr2596286-14'),
(16, '874598726', 'Albert', 'Rivera', '741582693', 'Sony', 'Madrid', 'Usr4359051-15'),
(17, '74158236H', 'ÃÃ±igo', 'Errejon', '658471232', 'PC', 'Madrid', 'Usr2939594-16'),
(18, '85214796M', 'Gabriel', 'RufiÃ¡n', '654782159', '', 'REPÃšBLICA BANANERA DE CATALONIA', 'Usr6385037-17'),
(19, '74125689G', 'Pablo', 'Casado', '654321987', 'Sony', 'Universidad complutense de madrid', 'Usr9650508-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuego`
--

CREATE TABLE IF NOT EXISTS `videojuego` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `vidCodigo` varchar(70) COLLATE utf8_bin NOT NULL,
  `vidTitulo` varchar(90) COLLATE utf8_bin NOT NULL,
  `vidPais` varchar(50) COLLATE utf8_bin NOT NULL,
  `vidAnno` int(4) NOT NULL,
  `vidPrecio` decimal(30,2) NOT NULL,
  `vidPlataforma` varchar(100) COLLATE utf8_bin NOT NULL,
  `vidAnalisis` text COLLATE utf8_bin NOT NULL,
  `vidImagen` varchar(700) COLLATE utf8_bin NOT NULL,
  `vidGuiaPDF` varchar(700) COLLATE utf8_bin NOT NULL,
  `generoCodigo` varchar(70) COLLATE utf8_bin NOT NULL,
  `publisherCodigo` varchar(70) COLLATE utf8_bin NOT NULL,
  `desarrCodigo` varchar(70) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vidCodigo` (`vidCodigo`),
  KEY `desarrCodigo` (`desarrCodigo`),
  KEY `generoCodigo` (`generoCodigo`),
  KEY `publisherCodigo` (`publisherCodigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=51 ;

--
-- Volcado de datos para la tabla `videojuego`
--

INSERT INTO `videojuego` (`id`, `vidCodigo`, `vidTitulo`, `vidPais`, `vidAnno`, `vidPrecio`, `vidPlataforma`, `vidAnalisis`, `vidImagen`, `vidGuiaPDF`, `generoCodigo`, `publisherCodigo`, `desarrCodigo`) VALUES
(39, '1', 'Minecraft', 'Suecia', 2014, '40.00', '5000000', 'Minecraft es un videojuego de construcciÃ³n, de tipo Â«mundo abiertoÂ» o sandbox creado originalmente por el sueco Markus Persson (conocido comÃºnmente como "Notch"), y posteriormente desarrollado por su empresa, Mojang AB. Fue lanzado pÃºblicamente el 17 de mayo de 2009, despuÃ©s de diversos cambios fue lanzada su versiÃ³n completa el 18 de noviembre de 2011.', '../archivos/minecraft.jpg', '../archivos/', '3', 'Pub48437-3', '987654123'),
(40, '2', 'Dark Souls III', 'JapÃ³n', 2016, '70.00', 'Multi', '', '../archivos/59847b81ae653a3344253903.png', '../archivos/', '9', 'Pub75977-4', '98765498645'),
(43, '3', 'Destiny', 'AmÃ©rica', 2014, '70.00', 'Multi', 'Destiny es un videojuego de disparos en primera persona, en forma de multijugador masivo en lÃ­nea en un mundo abierto de ficciÃ³n especulativa.â€‹ Fue desarrollado por Bungie y publicado por Activision como parte de un contrato de producciÃ³n de diez aÃ±os', '../archivos/Destiny_XBO.jpg', '../archivos/', '10', 'Pub36787-8', '879654645987'),
(44, '4', 'Bayonetta 2', 'Japon', 2014, '70.00', 'WiiU', 'Bayonetta 2 (ãƒ™ãƒ¨ãƒãƒƒã‚¿2) es un videojuego de acciÃ³n publicado por Nintendo y desarrollado por PlatinumGames para la videoconsola Wii U con los propietarios de la franquicia Sega actuando como asesores. A diferencia del juego anterior, que estaba disponible en la PlayStation 3 y Xbox 360, la segunda entrega de la saga estarÃ­a disponible sÃ³lo en consolas de Nintendo.', '../archivos/digitalfoundry-2018-bayonetta-2-switch-is-a-turbocharged-wii-u-port-1517910733461.jpg', '../archivos/', '12', 'Pub48437-3', '87964512345879'),
(45, '5', 'Uncharted 4', 'AmÃ©rica', 2016, '70.00', 'PS4', 'Uncharted 4: El desenlace del ladrÃ³n (en inglÃ©s Uncharted 4: A Thief''s End), es un videojuego de acciÃ³n-aventura en tercera persona, lanzado el 10 de mayo de 2016, distribuido por Sony Computer Entertainment y desarrollado Naughty Dog exclusivamente para PlayStation 4.1â€‹ Es la secuela de Uncharted 3: La traiciÃ³n de Drake, y la cuarta entrega de la serie Uncharted. El videojuego fue confirmado con su primer teaser trÃ¡iler en noviembre del 2013 y luego fue mostrado en el PlayStation E3 de 2014. En diciembre del mismo aÃ±o, se mostrÃ³ el primer gameplay del juego en el evento PlayStation Experience; meses despuÃ©s, en el E3 2015, se presentÃ³ una demostraciÃ³n del juego.', '../archivos/152083491536142468.jpg', '../archivos/', '5', 'Pub78509-6', '879465123654897'),
(46, '6', 'Hell Blade', 'Londres', 2017, '40.00', 'Multi', 'Hellblade: Senua''s Sacrifice es un videojuego de acciÃ³n-aventura y terror psicolÃ³gico, desarrollado y publicado por Ninja Theory, lanzado en todo el mundo de forma independiente para las plataformas PlayStation 4 y Microsoft Windows el 8 de agosto de 2017', '../archivos/Hellblade-Senuas-Sacrifice.jpg', '../archivos/', '12', 'Pub33392-5', '978645123465978'),
(47, '7', 'Grand Theft Auto V', 'AmÃ©rica', 2013, '70.00', 'Multi', 'Grand Theft Auto V (abreviado como GTA V o GTA5) es un videojuego de acciÃ³n-aventura de mundo abierto desarrollado por la compaÃ±Ã­a britÃ¡nica Rockstar North y distribuido por Rockstar Games. Fue lanzado el 17 de septiembre de 2013 para las consolas PlayStation 3 y Xbox 360.4â€‹ Posteriormente, fue lanzado el 18 de noviembre de 2014 para las consolas de nueva generaciÃ³n PlayStation 4 y Xbox One con mejores grÃ¡ficos y novedades interesantes como la vista en primera persona y finalmente para Microsoft Windows el 14 de abril de 2015. Se tratÃ³ del primer gran tÃ­tulo en la serie Grand Theft Auto desde el lanzamiento de Grand Theft Auto IV en 2008, el cual estrenÃ³ la Â«era HDÂ» de la mencionada serie de videojuegos.5â€‹', '../archivos/238684-gta-v-vs-max-payne-3-video.jpg', '../archivos/', '3', 'Pub52993-2', '879645123564897'),
(48, '8', 'Super Mario Odyssey', 'JapÃ³n', 2018, '70.00', 'Switch', 'Super Mario Odyssey es un videojuego de plataformas de mundo abierto para Nintendo Switch que se lanzÃ³ en JapÃ³n y Estados Unidos el 27 de octubre de 2017. Es el decimonoveno tÃ­tulo de la serie Super Mario y el sÃ©ptimo juego de plataformas en 3D de Mario', '../archivos/H2x1_NSwitch_SuperMarioOdyssey.jpg', '../archivos/', '23', 'Pub48437-3', '98798654654'),
(49, '9', 'Zelda Breath Of The Wild', 'JapÃ³n', 2017, '70.00', 'Switch', 'The Legend of Zelda: Breath of the Wild es el tÃ­tulo oficial del videojuego de acciÃ³n-aventura de la serie The Legend of Zelda, desarrollado por Nintendo EPD, en colaboraciÃ³n con Monolith Soft para Wii U y Nintendo Switch.â€‹ Es la dÃ©cimo octava entrega de la serie y la tercera en utilizar grÃ¡ficos en alta definiciÃ³n', '../archivos/SI_WiiU_TheLegendOfZeldaBreathOfTheWild.jpg', '../archivos/', '3', 'Pub48437-3', '98798654654'),
(50, '10', 'The Witcher 3', 'Polonia', 2016, '60.00', 'Multi', 'The Witcher 3: Wild Hunt es un videojuego de rol desarrollado por CD Projekt RED. CD Projekt RED es el desarrollador mientras que la distribuciÃ³n corre a cargo de la Warner Bros. Interactive, en el caso de NorteamÃ©rica y Bandai Namco para Europa.', '../archivos/60c724a052275a049d857d53957dc38e9347742f52372bb956d992b43efa8fb5_product_card_v2_mobile_slider_639.jpg', '../archivos/', '8', 'Pub75977-4', '8976542136854987');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
