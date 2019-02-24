-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-02-2019 a las 12:21:05
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gamecenter`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(6) NOT NULL,
  `adminDNI` varchar(9) COLLATE utf8_bin NOT NULL,
  `adminNombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `adminApellido` varchar(60) COLLATE utf8_bin NOT NULL,
  `adminTlfn` varchar(9) COLLATE utf8_bin NOT NULL,
  `adminDir` varchar(255) COLLATE utf8_bin NOT NULL,
  `cuentaCodigo` varchar(70) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `adminDNI`, `adminNombre`, `adminApellido`, `adminTlfn`, `adminDir`, `cuentaCodigo`) VALUES
(13, '00000000', 'Administrador', 'Principal', '777777777', 'Administrador Principal 29011', 'Adm08984-11'),
(23, '789456123', 'Juan', 'Gutierrez', '678945121', 'MÃ¡laga', 'Adm08555-3'),
(24, '78459621N', 'Mireya', 'Silva Morales', '698745123', 'Pasaje EscarranxÃ s fonetismes humitegÃ©ssiu, 93 9ÂºC', 'Adm07735-4'),
(25, '77895465M', 'Cintia', 'Morales Silva', '654789258', 'Plaza FincarÃ­em abasseguÃ©sseu rotat sassafrÃ s, 164A 9ÂºD', 'Adm96533-5'),
(26, '77184424N', 'AdriÃ¡n', 'Chamorro Silva', '639784129', 'Alejandro Puskin 29014', 'Adm89493-6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `id` int(6) NOT NULL,
  `cuentaCodigo` varchar(70) COLLATE utf8_bin NOT NULL,
  `cuentaPrivg` int(1) NOT NULL,
  `cuentaAlias` varchar(25) COLLATE utf8_bin NOT NULL,
  `cuentaPass` varchar(500) COLLATE utf8_bin NOT NULL,
  `cuentaEmail` varchar(80) COLLATE utf8_bin NOT NULL,
  `cuentaEstado` varchar(20) COLLATE utf8_bin NOT NULL,
  `cuentaTipo` varchar(25) COLLATE utf8_bin NOT NULL,
  `cuentaGenero` varchar(10) COLLATE utf8_bin NOT NULL,
  `cuentaFoto` varchar(700) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(58, 'Usr4365778-7', 4, 'piloto', 'bHRmYjlqdHJXdjk3WFY4Y2FKMnQ0dz09', 'piloto@gmail.com', 'Activo', 'Cliente', 'Masculino', 'https://images.dog.ceo/breeds/dachshund/kaninchen-dachshund-953699_640.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desarrolladora`
--

CREATE TABLE `desarrolladora` (
  `id` int(6) NOT NULL,
  `desarrCodigo` varchar(70) COLLATE utf8_bin NOT NULL,
  `desarrNombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `desarrTlfn` varchar(20) COLLATE utf8_bin NOT NULL,
  `desarrEmail` varchar(90) COLLATE utf8_bin NOT NULL,
  `desarrDir` varchar(255) COLLATE utf8_bin NOT NULL,
  `desarrCEO` varchar(90) COLLATE utf8_bin NOT NULL,
  `desarrAno` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `desarrolladora`
--

INSERT INTO `desarrolladora` (`id`, `desarrCodigo`, `desarrNombre`, `desarrTlfn`, `desarrEmail`, `desarrDir`, `desarrCEO`, `desarrAno`) VALUES
(4, '98798654654', 'Nintendo', '65465465', 'nintendo@gmail.com', 'japon', 'Miyamoto', 1880),
(5, '987654123', 'Sony', '654897312', 'Sony@gmail.com', 'Japon', 'Yamauchi', 1994),
(6, '98765498645', 'From Software', '65558975485', 'fromsoft@support.com', 'korea', 'Hidetaka', 2014);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(6) NOT NULL,
  `generoCodigo` varchar(70) COLLATE utf8_bin NOT NULL,
  `generoNombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(13, '9', 'JRPG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico`
--

CREATE TABLE `historico` (
  `id` int(6) NOT NULL,
  `histCodigo` varchar(70) COLLATE utf8_bin NOT NULL,
  `histFecha` date NOT NULL,
  `histHoraInicio` varchar(20) COLLATE utf8_bin NOT NULL,
  `histHoraFinal` varchar(20) COLLATE utf8_bin NOT NULL,
  `histTipo` varchar(20) COLLATE utf8_bin NOT NULL,
  `histAnno` int(4) NOT NULL,
  `cuentaCodigo` varchar(70) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(220, 'CodH61971748-8', '2019-02-23', '12:19:03 pm', 'NO DATA', 'Administrador', 2019, 'Adm08984-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publisher`
--

CREATE TABLE `publisher` (
  `id` int(6) NOT NULL,
  `publisherCodigo` varchar(70) COLLATE utf8_bin NOT NULL,
  `publisherNombre` varchar(90) COLLATE utf8_bin NOT NULL,
  `publisherEncargado` varchar(90) COLLATE utf8_bin NOT NULL,
  `publisherTlfn` varchar(20) COLLATE utf8_bin NOT NULL,
  `publisherEmail` varchar(90) COLLATE utf8_bin NOT NULL,
  `publisherDir` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `publisher`
--

INSERT INTO `publisher` (`id`, `publisherCodigo`, `publisherNombre`, `publisherEncargado`, `publisherTlfn`, `publisherEmail`, `publisherDir`) VALUES
(3, 'Pub48437-3', 'nintendo', 'kamiya', '65498654', 'nintendo@gmail.com', 'japon'),
(4, 'Pub52993-2', 'Take Two', 'Cliff', '6955547898', 'take2@gmail.com', 'America'),
(5, 'Pub52931-3', 'Electronic Arts', 'Maria', '6548124', 'EA@gmail.com', 'Londojn'),
(6, 'Pub75977-4', 'Bandai Namco Entertainment', 'Paco', '654781775', 'bandai@namco.com', 'Korea del ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(6) NOT NULL,
  `userDNI` varchar(9) COLLATE utf8_bin NOT NULL,
  `userNombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `userApellido` varchar(60) COLLATE utf8_bin NOT NULL,
  `userTlfn` varchar(9) COLLATE utf8_bin NOT NULL,
  `userOcup` varchar(50) COLLATE utf8_bin NOT NULL,
  `userDir` varchar(255) COLLATE utf8_bin NOT NULL,
  `cuentaCodigo` varchar(70) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `userDNI`, `userNombre`, `userApellido`, `userTlfn`, `userOcup`, `userDir`, `cuentaCodigo`) VALUES
(10, '77184424N', 'Juan Antonio', 'Rodolfo Jimenez', '654987123', 'Xbox', 'Pasadizo Diagnosi, 149A 3ÂºD', 'Usr4365778-7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuego`
--

CREATE TABLE `videojuego` (
  `id` int(15) NOT NULL,
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
  `desarrCodigo` varchar(70) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `videojuego`
--

INSERT INTO `videojuego` (`id`, `vidCodigo`, `vidTitulo`, `vidPais`, `vidAnno`, `vidPrecio`, `vidPlataforma`, `vidAnalisis`, `vidImagen`, `vidGuiaPDF`, `generoCodigo`, `publisherCodigo`, `desarrCodigo`) VALUES
(39, '1', 'Minecraft', 'Suecia', 2014, '40.00', '5000000', 'Minecraft es un videojuego de construcciÃ³n, de tipo Â«mundo abiertoÂ» o sandbox creado originalmente por el sueco Markus Persson (conocido comÃºnmente como \"Notch\"), y posteriormente desarrollado por su empresa, Mojang AB. Fue lanzado pÃºblicamente el 17 de mayo de 2009, despuÃ©s de diversos cambios fue lanzada su versiÃ³n completa el 18 de noviembre de 2011.', '../archivos/minecraft.jpg', '../archivos/', '3', 'Pub48437-3', '987654123'),
(40, '2', 'Dark Souls III', 'JapÃ³n', 2016, '70.00', '5000', 'Dark Souls (ãƒ€ãƒ¼ã‚¯ã‚½ã‚¦ãƒ« DÄku Souru?) es un videojuego de rol de acciÃ³n, desarrollado por la empresa From Software para las plataformas PlayStation 3, Xbox 360 y Microsoft Windows, distribuido por Namco Bandai Games. Anteriormente conocido como Project Souls, es el segundo videojuego de la serie Souls. Su lanzamiento fue el 22 de septiembre de 2011 en JapÃ³n, 4 de octubre en NorteamÃ©rica, 6 de octubre de 2011 en Australasia y 7 de octubre de 2011 en Europa. El 24 de agosto de 2012, se lanzÃ³ la ediciÃ³n Prepare to Die para PC, presentando contenido adicional previamente inaccesible para los usuarios de PlayStation 3 y Xbox 360. El 23 de octubre de 2012, el contenido adicional de la versiÃ³n PC fue publicado como contenido descargable para consolas bajo el tÃ­tulo Artorias del Abismo.', '../archivos/darksouls.jpg', '../archivos/', '9', 'Pub75977-4', '98765498645');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuentaCodigo` (`cuentaCodigo`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cuentaCodigo` (`cuentaCodigo`);

--
-- Indices de la tabla `desarrolladora`
--
ALTER TABLE `desarrolladora`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `desarrCodigo` (`desarrCodigo`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `generoCodigo` (`generoCodigo`);

--
-- Indices de la tabla `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuentaCodigo` (`cuentaCodigo`);

--
-- Indices de la tabla `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `publisherCodigo` (`publisherCodigo`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuentaCodigo` (`cuentaCodigo`);

--
-- Indices de la tabla `videojuego`
--
ALTER TABLE `videojuego`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vidCodigo` (`vidCodigo`),
  ADD KEY `desarrCodigo` (`desarrCodigo`),
  ADD KEY `generoCodigo` (`generoCodigo`),
  ADD KEY `publisherCodigo` (`publisherCodigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `desarrolladora`
--
ALTER TABLE `desarrolladora`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `historico`
--
ALTER TABLE `historico`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT de la tabla `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `videojuego`
--
ALTER TABLE `videojuego`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`cuentaCodigo`) REFERENCES `cuenta` (`cuentaCodigo`);

--
-- Filtros para la tabla `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`cuentaCodigo`) REFERENCES `cuenta` (`cuentaCodigo`);

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`cuentaCodigo`) REFERENCES `cuenta` (`cuentaCodigo`);

--
-- Filtros para la tabla `videojuego`
--
ALTER TABLE `videojuego`
  ADD CONSTRAINT `videojuego_ibfk_1` FOREIGN KEY (`desarrCodigo`) REFERENCES `desarrolladora` (`desarrCodigo`),
  ADD CONSTRAINT `videojuego_ibfk_2` FOREIGN KEY (`generoCodigo`) REFERENCES `genero` (`generoCodigo`),
  ADD CONSTRAINT `videojuego_ibfk_3` FOREIGN KEY (`publisherCodigo`) REFERENCES `publisher` (`publisherCodigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
