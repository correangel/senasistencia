-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2017 a las 05:38:19
-- Versión del servidor: 10.1.22-MariaDB
-- Versión de PHP: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `senasistencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ambiente_formacion`
--

CREATE TABLE `ambiente_formacion` (
  `ID_Ambiente` bigint(16) NOT NULL COMMENT 'Este ID se genera AUTOMATICAMENTE cada vez que se ingresa un registro nuevo referente a los datos del AMBIENTE.',
  `Num_Ambiente` bigint(16) NOT NULL COMMENT 'Numero con el cual se identifica el ambiente de formacion.',
  `Sede_ID_Sede` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del SEDE.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ambiente_formacion`
--

INSERT INTO `ambiente_formacion` (`ID_Ambiente`, `Num_Ambiente`, `Sede_ID_Sede`) VALUES
(1, 105, 1),
(2, 106, 1),
(3, 107, 5),
(4, 108, 6),
(5, 201, 1),
(6, 202, 2),
(7, 203, 3),
(8, 204, 2),
(9, 306, 4),
(10, 307, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprendices`
--

CREATE TABLE `aprendices` (
  `ID_Aprendiz` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del APRENDIZ.',
  `Documento_Aprendiz` bigint(16) NOT NULL COMMENT 'Numero de documento del APRENDIZ.',
  `Nombre` varchar(60) NOT NULL COMMENT 'Nombre del APRENDIZ.',
  `Apellido` varchar(60) NOT NULL COMMENT 'Apellido del APRENDIZ.',
  `Correo` varchar(60) NOT NULL COMMENT 'Correo del APRENDIZ.',
  `Telefono` bigint(16) DEFAULT NULL COMMENT 'Numero telefonico del aprendiz.',
  `Genero_ID_Genero` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del GENERO.',
  `Estado_aprendiz_ID_Estado` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del ESTADO DEL APRENDIZ.',
  `Tipo_Documento_ID_Tipo_Documento` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del TIPO DE DOCUMENTO.',
  `ficha_ID_Ficha` bigint(16) NOT NULL COMMENT 'Este ID se genera AUTOMATICAMENTE cada vez que se ingresa un registro nuevo referente a los datos de la FICHA.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aprendices`
--

INSERT INTO `aprendices` (`ID_Aprendiz`, `Documento_Aprendiz`, `Nombre`, `Apellido`, `Correo`, `Telefono`, `Genero_ID_Genero`, `Estado_aprendiz_ID_Estado`, `Tipo_Documento_ID_Tipo_Documento`, `ficha_ID_Ficha`) VALUES
(1, 104001261, 'Alma Marcela', 'silva', 'almarsilva@misena.edu.co', 3112843650, 2, 3, 1, 1),
(2, 79966296, 'ROBERT SMITH', 'DUQUE MORALES', 'rsmithd7@misena.edu.co', 3014002169, 2, 1, 2, 1),
(3, 52809251, 'JOHANNA MILENA', 'JAMAICA ROJAS', 'jmjamaica@misena.edu.co', 3214049197, 2, 2, 1, 1),
(4, 1019120468, 'NATALY STEFANIA', 'MEDINA POVEDA', 'stefa142396@gmail.com', 3134595081, 2, 1, 2, 2),
(5, 1016052045, 'JAIRO ANDRES', 'LINARES MENDEZ', 'jairoandreslinaresmendez@gmail.com', 3005519168, 1, 2, 1, 1),
(6, 1018502967, 'DEIVIS ANDRES', 'NARANJO PEREZ', 'danaranjo06@misena.edu.co', 3103009547, 1, 1, 1, 1),
(7, 1073160640, 'ORLANDO', 'ECHEVERRY VELEZ', 'oecheverry0@misena.edu.co', 3143326357, 1, 2, 1, 3),
(8, 97081608150, 'KIMBERLY ALEJANDRA', 'ARIZA VARGAS', 'kimberlyariza1994@hotmail.com', 3007051528, 2, 3, 1, 4),
(9, 80740814, 'HAROLD ANDRES', 'PRIETO FERNANDEZ', 'haprieto41@misena.edu.co', 3212141572, 1, 1, 1, 4),
(10, 1020800497, 'TATIANA', 'PAEZ', 'ltpaez7@misena.edu.co', 3224385002, 2, 1, 2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `ID_Asistencia` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del ASISTENCIA.',
  `Descripcion_Asistencia` tinyint(1) NOT NULL COMMENT 'Registro de la asistencia del aprendiz (Asistio o No asistio)',
  `Fecha` date NOT NULL COMMENT 'Fecha del registro de la asistencia',
  `Aprendices_ID_Aprendiz` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del APRENDIZ.',
  `Aprendices_Documento_Aprendiz` bigint(16) NOT NULL COMMENT 'Numero de documento del APRENDIZ.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`ID_Asistencia`, `Descripcion_Asistencia`, `Fecha`, `Aprendices_ID_Aprendiz`, `Aprendices_Documento_Aprendiz`) VALUES
(1, 0, '2017-04-01', 1, 104001261),
(2, 1, '2017-04-02', 2, 79966296),
(3, 0, '2017-04-03', 3, 52809251),
(4, 1, '2017-04-04', 2, 79966296),
(5, 1, '2017-04-05', 1, 104001261),
(6, 1, '2017-04-06', 2, 79966296);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_has_excusa`
--

CREATE TABLE `asistencia_has_excusa` (
  `Asistencia_ID_Asistencia` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del ASISTENCIA.',
  `Excusa_ID_Excusa` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del EXCUSA.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `ID_Cargo` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del CARGO.',
  `Tipo_Cargo` varchar(60) NOT NULL COMMENT 'Cargo que ejerce.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`ID_Cargo`, `Tipo_Cargo`) VALUES
(1, 'Coordinador'),
(2, 'Instructor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centro_formacion`
--

CREATE TABLE `centro_formacion` (
  `ID_Centro` bigint(16) NOT NULL COMMENT 'Este ID se genera AUTOMATICAMENTE cada vez que se ingresa un registro nuevo referente a los datos del CENTRO DE FORMACION.',
  `Nombre` varchar(60) NOT NULL COMMENT 'Nombre del CENTRO DE FORMACION.\n',
  `Direccion` varchar(60) NOT NULL COMMENT 'Direccion donde se encuentra ubicado el CENTRO DE FORMACION.',
  `Telefono` bigint(16) DEFAULT NULL COMMENT 'Numero telefonico del CENTRO DE FORMACION.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `centro_formacion`
--

INSERT INTO `centro_formacion` (`ID_Centro`, `Nombre`, `Direccion`, `Telefono`) VALUES
(1, '​Centro de Electricidad Electrónica y Telecomunicaciones​​​​', 'Carrera 9 No. 15 – 54', 8686069),
(2, 'Centro de Formación de Talento Humano en Salud​​​​', 'Calle 63 No. 41 - 27', 8710492),
(3, '​Centro de Gestión Administrativa​​​​', 'Carrera 7 No. 6 – 31 ', 8583024),
(4, 'Centro de Gestión Industrial​​​​', 'Carrera 16 No. 9-53', 7880205),
(5, '​Centro de Manufacturas en textiles y Cuero​​​​', 'Carrera 2 Este No. 67 B - 90', 7355523),
(6, '​Centro de Servicios Financieros​​​​', 'Calle 11 No. 5-114', 7451700),
(7, 'Centro de Tecnologías de Transporte​​​​', 'Calle 1 No. 7 – 56', 8444118),
(8, '​Centro Metalmecánico​​​​', 'Calle 5 No. 4 – 70', 7565795),
(9, 'Centro para la Industria de la Comunicación Gráfica​​', 'Carrera 2 No. 22 – 30', 7355523),
(10, '​Centro Nacional de Hotelería, Turismo y Alimentos​​​​', 'Carrera 49 C No. 84-141', 8654210);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_Cliente` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del CLIENTE.',
  `Documento_Cliente` bigint(16) NOT NULL COMMENT 'Numero de documento del CLIENTE.',
  `Nombre` varchar(60) NOT NULL COMMENT 'Nombre del CLIENTE.',
  `Apellido` varchar(60) NOT NULL COMMENT 'Apellido del CLIENTE.',
  `Correo` varchar(60) NOT NULL COMMENT 'Correo del CLIENTE.',
  `Telefono` bigint(16) DEFAULT NULL COMMENT 'Numero de telefono del CLIENTE.',
  `Tipo_Documento_ID_Tipo_Documento` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del TIPO DEL DOCUMENTO.',
  `Cargo_ID_Cargo` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del CARGO.',
  `Usuarios_ID_Usuario` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del USUARIO.',
  `Usuarios_Usuario` varchar(60) NOT NULL COMMENT 'Usuario que se asigna a la persona al momento del registro.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID_Cliente`, `Documento_Cliente`, `Nombre`, `Apellido`, `Correo`, `Telefono`, `Tipo_Documento_ID_Tipo_Documento`, `Cargo_ID_Cargo`, `Usuarios_ID_Usuario`, `Usuarios_Usuario`) VALUES
(1, 19100720, 'Jeronimo', 'Burgos', 'servilifes@hotmail.com', 3005097585, 1, 1, 1, 'karangel0'),
(2, 35502080, 'Estefania', 'Villegas', 'servicioalcliente@umiemergencias.com', 3114665903, 1, 1, 2, 'jasanchez'),
(3, 35502080, 'Guillermo', 'Fernandez', 'ambulanciassap@hotmail.com', 3118024824, 1, 2, 3, 'laforero1'),
(4, 52622484, 'Eliana', 'Ramirez', 'lastres.emes@hotmail.com', 3219087530, 3, 2, 1, 'karangel0'),
(5, 37809205, 'Jose', 'Carmona', 'o.rocha@medisis.com.co', 3142671534, 1, 2, 6, 'sfdlopez4'),
(6, 79102140, 'Marcela', 'De santis', 'apiambulancia@gmail.com', 3104809424, 1, 2, 4, 'lxtovar6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_aprendiz`
--

CREATE TABLE `estado_aprendiz` (
  `ID_Estado` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del ESTADO DEL APRENDIZ.',
  `Descripcion_Estado` varchar(60) NOT NULL COMMENT 'Estado en el cual se encutra el aprendiz ACTUALMENTE.(Activo, Inactivo,suspendido y retirado).'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado_aprendiz`
--

INSERT INTO `estado_aprendiz` (`ID_Estado`, `Descripcion_Estado`) VALUES
(1, 'Activo'),
(2, 'Inactivo'),
(3, 'Retirado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_usuario`
--

CREATE TABLE `estado_usuario` (
  `ID_Estado_Usuario` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del ESTADO DEL USUARIO.',
  `Estado` varchar(60) NOT NULL COMMENT 'Estado en el cual se encutra el aprendiz ACTUALMENTE.(Activo y Inactivo).'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado_usuario`
--

INSERT INTO `estado_usuario` (`ID_Estado_Usuario`, `Estado`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `excusa`
--

CREATE TABLE `excusa` (
  `ID_Excusa` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del EXCUSA.',
  `Fecha` date NOT NULL COMMENT 'Fecha en la cual se presento la EXCUSA.',
  `Periodo_Excusa` date NOT NULL COMMENT 'Periodo o Tiempo  de la excusa.',
  `Aprendices_ID_Aprendiz` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del APRENDIZ.',
  `Aprendices_Documento_Aprendiz` bigint(16) NOT NULL COMMENT 'Numero de documento del APRENDIZ.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `excusa`
--

INSERT INTO `excusa` (`ID_Excusa`, `Fecha`, `Periodo_Excusa`, `Aprendices_ID_Aprendiz`, `Aprendices_Documento_Aprendiz`) VALUES
(1, '2017-03-03', '2017-04-01', 1, 104001261),
(2, '2017-03-04', '2017-04-02', 2, 79966296),
(3, '2017-03-05', '2017-04-03', 3, 52809251),
(4, '2017-03-06', '2017-04-04', 2, 79966296),
(5, '2017-03-07', '2017-04-05', 1, 104001261),
(6, '2017-03-08', '2017-04-06', 2, 79966296);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `ID_Ficha` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos de la FICHA.',
  `Num_Ficha` bigint(16) NOT NULL COMMENT 'Numero con el cual se identifica la FICHA.',
  `Ambiente_ID_Ambiente` bigint(16) NOT NULL COMMENT 'ste ID se genera AUTOMATICAMENTE cada vez que se ingresa un registro nuevo referente a los datos del AMBIENTE.',
  `programa_formacion_ID_Programa` bigint(16) NOT NULL COMMENT 'Este ID se genera AUTOMATICAMENTE cada vez que se ingresa un registro nuevo referente a los datos del PROGRAMA DE FORMACION.',
  `jornada_ID_Jornada` bigint(16) NOT NULL COMMENT 'Este ID se genera AUTOMATICAMENTE cada vez que se ingresa un registro nuevo referente a los datos de la JORNADA.',
  `trimestre_ID_Trimestre` bigint(16) NOT NULL COMMENT 'Este ID se genera AUTOMATICAMENTE cada vez que se ingresa un registro nuevo referente a los datos del TRIMESTRE.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`ID_Ficha`, `Num_Ficha`, `Ambiente_ID_Ambiente`, `programa_formacion_ID_Programa`, `jornada_ID_Jornada`, `trimestre_ID_Trimestre`) VALUES
(1, 1193334, 1, 7, 1, 3),
(2, 1193335, 5, 5, 1, 1),
(3, 1193336, 1, 4, 1, 2),
(4, 1193337, 1, 1, 2, 3),
(5, 1193338, 2, 1, 1, 2),
(6, 1184442, 2, 3, 1, 3),
(7, 1184443, 3, 5, 3, 1),
(8, 1184444, 3, 2, 4, 4),
(9, 1184445, 4, 2, 4, 5),
(10, 1184446, 1, 2, 4, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato_ftp`
--

CREATE TABLE `formato_ftp` (
  `ID_Formato` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del FORMATO.',
  `Nombre_Notificiacion` varchar(60) NOT NULL COMMENT 'Que tipo de proceso inicia el aprendiz dependiendo la cantidad de fallas que tenga(Carta de compromiso,Plan de mejoramiento,Comite)',
  `Url_Ftp` varchar(500) DEFAULT NULL COMMENT 'Donde esta almacenado el FORMATO FTP.',
  `Asistencia_ID_Asistencia` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del ASISTENCIA.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `formato_ftp`
--

INSERT INTO `formato_ftp` (`ID_Formato`, `Nombre_Notificiacion`, `Url_Ftp`, `Asistencia_ID_Asistencia`) VALUES
(1, 'Notificación de aviso', '', 2),
(2, 'Notificación de advertencia ', '', 2),
(3, 'Notificación de compromiso', 'https://www.senasistencia.edu.co/formatos/compromiso.doc', 1),
(4, 'Notificación de inhabilidad', '', 2),
(5, 'Notificación de deserción', 'https://www.senasistencia.edu.co/formatos/desercion.doc', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `ID_Genero` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del GENERO.',
  `Descripcion_Genero` varchar(60) NOT NULL COMMENT 'Genero (Femenino,Masculino o Otro).'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`ID_Genero`, `Descripcion_Genero`) VALUES
(1, 'Hombre'),
(2, 'Mujer'),
(3, 'Otro…');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `ID_Grupo` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos de un GRUPO.',
  `Descripcion_Grupo` varchar(60) NOT NULL COMMENT 'Grupo al cual pertene la ficha.',
  `Ficha_ID_Ficha` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos de la FICHA.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`ID_Grupo`, `Descripcion_Grupo`, `Ficha_ID_Ficha`) VALUES
(1, 'G1', 1),
(2, 'G2', 1),
(3, 'G3', 1),
(4, 'G1', 3),
(5, 'G2', 3),
(6, 'G1', 2),
(7, 'G2', 2),
(8, 'G3', 3),
(9, 'G1', 5),
(10, 'G2', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornada`
--

CREATE TABLE `jornada` (
  `ID_Jornada` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos de la JORNADA.',
  `Descripcion_Jornada` varchar(60) NOT NULL COMMENT 'Jornada a la cual pertenece la ficha.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jornada`
--

INSERT INTO `jornada` (`ID_Jornada`, `Descripcion_Jornada`) VALUES
(1, 'Diurna '),
(2, 'Nocturna'),
(3, 'Madrugada'),
(4, 'Fin de semana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion`
--

CREATE TABLE `notificacion` (
  `ID_Notificacion` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos de la NOTIFICACION.',
  `Mensaje` varchar(500) NOT NULL COMMENT 'El cuerpo del mensaje.',
  `Fecha` date NOT NULL COMMENT 'Fecha cuando se genera la NOTIFICACION.',
  `Formato_FTP_ID_Formato` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del FORMATO.',
  `Cliente_ID_Cliente` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del CLIENTE.',
  `Cliente_Documento_Cliente` bigint(16) NOT NULL COMMENT 'Numero de documento del CLIENTE.',
  `Aprendices_ID_Aprendiz` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del APRENDIZ.',
  `Aprendices_Documento_Aprendiz` bigint(16) NOT NULL COMMENT 'Numero de documento del APRENDIZ.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `notificacion`
--

INSERT INTO `notificacion` (`ID_Notificacion`, `Mensaje`, `Fecha`, `Formato_FTP_ID_Formato`, `Cliente_ID_Cliente`, `Cliente_Documento_Cliente`, `Aprendices_ID_Aprendiz`, `Aprendices_Documento_Aprendiz`) VALUES
(1, 'Notificación por inasistencia sin previo aviso; por tanto se espera que el aprendiz facilite formato de excusa lo mas pronto posible. NOTA: la tercer inasistencia sera causal de inhabilidad en el sistema; de no presentarse ninguna excusa el aprendiz sera remitido a comité con formato de deserción del programa de formación.', '2017-04-03', 5, 1, 19100720, 3, 52809251);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_token`
--

CREATE TABLE `password_token` (
  `ID_Token` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del TOKEN.',
  `Token_Hash` varchar(60) NOT NULL COMMENT 'Token es  un numero aleatorio para la recuperacion de contraseñas.',
  `Usuarios_ID_Usuario` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del USUARIO.',
  `Usuarios_Usuario` varchar(60) NOT NULL COMMENT 'Usuario que se asigna a la persona al momento del registro.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `password_token`
--

INSERT INTO `password_token` (`ID_Token`, `Token_Hash`, `Usuarios_ID_Usuario`, `Usuarios_Usuario`) VALUES
(1, 'ad5f4', 1, 'karangel0'),
(2, 'lsdf5', 2, 'jasanchez'),
(3, 'cvb54', 3, 'laforero1'),
(4, '6448h', 1, 'karangel0'),
(5, '6484h', 6, 'sfdlopez4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `ID_Perfil` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del PERFIL.',
  `Perfil` varchar(60) NOT NULL COMMENT 'Perfil para asignacion de permisos en el SOFTWARE.(Super usuario,administrador y usuario).'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`ID_Perfil`, `Perfil`) VALUES
(1, 'Super Administrador'),
(2, 'Administrador'),
(3, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa_formacion`
--

CREATE TABLE `programa_formacion` (
  `ID_Programa` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del PROGRAMA DE FORMACION.',
  `Nombre` varchar(60) NOT NULL COMMENT 'Nombre del PROGRAMA DE FORMACION.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `programa_formacion`
--

INSERT INTO `programa_formacion` (`ID_Programa`, `Nombre`) VALUES
(1, 'Mantenimiento de motocicletas'),
(2, 'Apoyo administrativo en salud'),
(3, 'Asistencia administrativa'),
(4, 'Asistencia en organización de archivos'),
(5, 'Inspección y ensayos con procesos no destructivos'),
(6, 'Instalación de infraestructura para redes móviles'),
(7, 'Instalación de redes de computadores'),
(8, 'nstalaciones de redes híbridas de fibra óptica y coaxial'),
(9, 'Diseño e integración de multimedia'),
(10, 'Mantenimiento de equipos electrónicos de consumo masivo en a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `ID_Sede` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos de la SEDE.',
  `Nombre` varchar(60) NOT NULL COMMENT 'Nombre de la SEDE.',
  `Direccion` varchar(60) NOT NULL COMMENT 'Direccion donde se encuentra ubicada la SEDE.',
  `Telefono` bigint(16) NOT NULL COMMENT 'Numero telefonico de la SEDE.',
  `Centro_Formacion_ID_Centro` bigint(16) NOT NULL COMMENT 'Este ID se genera AUTOMATICAMENTE cada vez que se ingresa un registro nuevo referente a los datos del CENTRO DE FORMACION.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`ID_Sede`, `Nombre`, `Direccion`, `Telefono`, `Centro_Formacion_ID_Centro`) VALUES
(1, 'COMPLEJO SUR BOGOTÁ', 'Avenida 30 No 17 B Sur', 7446060, 2),
(2, 'COMPLEJO PALOQUEMAO', 'Carrera 31 No. 14 - 20', 8341602, 1),
(3, 'SUBSEDE - SUBA', 'Carrera 116 A No. 133 B - 33', 8654210, 3),
(4, 'SUBSEDE USAQUÉN', 'Carrera 7 No. 153 A 05/07', 6252255, 4),
(5, 'SUBSEDE - USME', 'Calle 91 Sur No. 01 B - 10 Este', 3799882, 7),
(6, 'SENA INDUSTRIAL', 'CALLE 30 # 3E-164', 8349027, 2),
(7, 'SUBSEDE ALAMOS', 'Carrera 89 No. 62 - 35', 3780405, 9),
(8, 'SUBSEDE - SUBA', 'Carrera 116 A No. 133 B - 33', 3481010, 1),
(9, 'SUBSEDE - FONTIBON', 'Calle 19 A No. 96 C 32 ', 3576620, 1),
(10, 'SUBSEDE - UBATÉ', 'CALLE 3 No 4-59 CASA DE LA CULTURA', 3565109, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `ID_Tipo_Documento` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del TIPO DEL DOCUMENTO.',
  `Descripcion_Doc` varchar(60) NOT NULL COMMENT 'Tipo de documento (Cedula de ciudadania,Targeta de identidad o cedula extranjera)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`ID_Tipo_Documento`, `Descripcion_Doc`) VALUES
(1, 'cédula de ciudadania'),
(2, 'tarjeta de identidad'),
(3, 'cédula de extranjería');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trimestre`
--

CREATE TABLE `trimestre` (
  `ID_Trimestre` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del TRIMESTRE.',
  `Num_Trimestre` bigint(16) NOT NULL COMMENT 'Trimestre el cual esta cursado la FICHA actualmente.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trimestre`
--

INSERT INTO `trimestre` (`ID_Trimestre`, `Num_Trimestre`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_Usuario` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del USUARIO.\n',
  `Usuario` varchar(60) NOT NULL COMMENT 'Usuario que se asigna a la persona al momento del registro.',
  `Password_Hash` varchar(60) NOT NULL COMMENT 'Password que se asigna a la persona al momento del registro.',
  `Caducidad_Password` date NOT NULL COMMENT 'Tiempo en el que se debe actualizar/cambiar el PASSWORD.',
  `Estado_Usuario_ID_Estado_Usuario` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del ESTADO DEL APRENDIZ.',
  `Perfiles_ID_Perfil` bigint(16) NOT NULL COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos de los PERFILES.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_Usuario`, `Usuario`, `Password_Hash`, `Caducidad_Password`, `Estado_Usuario_ID_Estado_Usuario`, `Perfiles_ID_Perfil`) VALUES
(1, 'karangel0', '4456', '2017-04-01', 1, 3),
(2, 'jasanchez', '5454548', '2017-04-02', 1, 3),
(3, 'laforero1', 'fgsdf4', '2017-04-03', 1, 1),
(4, 'lxtovar6', '5464', '2017-04-04', 2, 1),
(5, 'ltpaez7', 'sd156', '2017-04-05', 2, 2),
(6, 'sfdlopez4', 'sd548', '2017-04-06', 1, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ambiente_formacion`
--
ALTER TABLE `ambiente_formacion`
  ADD PRIMARY KEY (`ID_Ambiente`),
  ADD KEY `fk_Ambiente_Sede1_idx` (`Sede_ID_Sede`);

--
-- Indices de la tabla `aprendices`
--
ALTER TABLE `aprendices`
  ADD PRIMARY KEY (`ID_Aprendiz`,`Documento_Aprendiz`),
  ADD KEY `fk_Aprendices_Genero1_idx` (`Genero_ID_Genero`),
  ADD KEY `fk_Aprendices_Estado_aprendiz1_idx` (`Estado_aprendiz_ID_Estado`),
  ADD KEY `fk_Aprendices_Tipo_Documento1_idx` (`Tipo_Documento_ID_Tipo_Documento`),
  ADD KEY `fk_aprendices_ficha1_idx` (`ficha_ID_Ficha`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`ID_Asistencia`),
  ADD KEY `fk_Asistencia_Aprendices1_idx` (`Aprendices_ID_Aprendiz`,`Aprendices_Documento_Aprendiz`);

--
-- Indices de la tabla `asistencia_has_excusa`
--
ALTER TABLE `asistencia_has_excusa`
  ADD PRIMARY KEY (`Asistencia_ID_Asistencia`,`Excusa_ID_Excusa`),
  ADD KEY `fk_Asistencia_has_Excusa_Excusa1_idx` (`Excusa_ID_Excusa`),
  ADD KEY `fk_Asistencia_has_Excusa_Asistencia1_idx` (`Asistencia_ID_Asistencia`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`ID_Cargo`);

--
-- Indices de la tabla `centro_formacion`
--
ALTER TABLE `centro_formacion`
  ADD PRIMARY KEY (`ID_Centro`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_Cliente`,`Documento_Cliente`),
  ADD KEY `fk_Cliente_Tipo_Documento1_idx` (`Tipo_Documento_ID_Tipo_Documento`),
  ADD KEY `fk_Cliente_Cargo1_idx` (`Cargo_ID_Cargo`),
  ADD KEY `fk_Cliente_Usuarios1_idx` (`Usuarios_ID_Usuario`,`Usuarios_Usuario`);

--
-- Indices de la tabla `estado_aprendiz`
--
ALTER TABLE `estado_aprendiz`
  ADD PRIMARY KEY (`ID_Estado`);

--
-- Indices de la tabla `estado_usuario`
--
ALTER TABLE `estado_usuario`
  ADD PRIMARY KEY (`ID_Estado_Usuario`);

--
-- Indices de la tabla `excusa`
--
ALTER TABLE `excusa`
  ADD PRIMARY KEY (`ID_Excusa`),
  ADD KEY `fk_Excusa_Aprendices1_idx` (`Aprendices_ID_Aprendiz`,`Aprendices_Documento_Aprendiz`);

--
-- Indices de la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD PRIMARY KEY (`ID_Ficha`,`Num_Ficha`),
  ADD KEY `fk_Ficha_Ambiente1_idx` (`Ambiente_ID_Ambiente`),
  ADD KEY `fk_ficha_programa_formacion1_idx` (`programa_formacion_ID_Programa`),
  ADD KEY `fk_ficha_jornada1_idx` (`jornada_ID_Jornada`),
  ADD KEY `fk_ficha_trimestre1_idx` (`trimestre_ID_Trimestre`);

--
-- Indices de la tabla `formato_ftp`
--
ALTER TABLE `formato_ftp`
  ADD PRIMARY KEY (`ID_Formato`),
  ADD KEY `fk_Formato_FTP_Asistencia1_idx` (`Asistencia_ID_Asistencia`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`ID_Genero`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`ID_Grupo`),
  ADD KEY `fk_Grupo_Ficha1_idx` (`Ficha_ID_Ficha`);

--
-- Indices de la tabla `jornada`
--
ALTER TABLE `jornada`
  ADD PRIMARY KEY (`ID_Jornada`);

--
-- Indices de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`ID_Notificacion`),
  ADD KEY `fk_Notificacion_Formato_FTP1_idx` (`Formato_FTP_ID_Formato`),
  ADD KEY `fk_Notificacion_Cliente1_idx` (`Cliente_ID_Cliente`,`Cliente_Documento_Cliente`),
  ADD KEY `fk_Notificacion_Aprendices1_idx` (`Aprendices_ID_Aprendiz`,`Aprendices_Documento_Aprendiz`);

--
-- Indices de la tabla `password_token`
--
ALTER TABLE `password_token`
  ADD PRIMARY KEY (`ID_Token`),
  ADD KEY `fk_Password_Token_Usuarios1_idx` (`Usuarios_ID_Usuario`,`Usuarios_Usuario`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`ID_Perfil`);

--
-- Indices de la tabla `programa_formacion`
--
ALTER TABLE `programa_formacion`
  ADD PRIMARY KEY (`ID_Programa`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`ID_Sede`),
  ADD KEY `fk_Sede_Centro_Formación_idx` (`Centro_Formacion_ID_Centro`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`ID_Tipo_Documento`);

--
-- Indices de la tabla `trimestre`
--
ALTER TABLE `trimestre`
  ADD PRIMARY KEY (`ID_Trimestre`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuario`,`Usuario`),
  ADD KEY `fk_Usuarios_Estado_Usuario1_idx` (`Estado_Usuario_ID_Estado_Usuario`),
  ADD KEY `fk_Usuarios_Perfiles1_idx` (`Perfiles_ID_Perfil`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ambiente_formacion`
--
ALTER TABLE `ambiente_formacion`
  MODIFY `ID_Ambiente` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera AUTOMATICAMENTE cada vez que se ingresa un registro nuevo referente a los datos del AMBIENTE.', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `aprendices`
--
ALTER TABLE `aprendices`
  MODIFY `ID_Aprendiz` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del APRENDIZ.', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `ID_Asistencia` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del ASISTENCIA.', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `ID_Cargo` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del CARGO.', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_Cliente` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del CLIENTE.', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `estado_aprendiz`
--
ALTER TABLE `estado_aprendiz`
  MODIFY `ID_Estado` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del ESTADO DEL APRENDIZ.', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `estado_usuario`
--
ALTER TABLE `estado_usuario`
  MODIFY `ID_Estado_Usuario` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del ESTADO DEL USUARIO.', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `excusa`
--
ALTER TABLE `excusa`
  MODIFY `ID_Excusa` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del EXCUSA.', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `ficha`
--
ALTER TABLE `ficha`
  MODIFY `ID_Ficha` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos de la FICHA.', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `formato_ftp`
--
ALTER TABLE `formato_ftp`
  MODIFY `ID_Formato` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del FORMATO.', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `ID_Genero` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del GENERO.', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `ID_Grupo` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos de un GRUPO.', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `jornada`
--
ALTER TABLE `jornada`
  MODIFY `ID_Jornada` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos de la JORNADA.', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  MODIFY `ID_Notificacion` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos de la NOTIFICACION.', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `password_token`
--
ALTER TABLE `password_token`
  MODIFY `ID_Token` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del TOKEN.', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `ID_Perfil` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del PERFIL.', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `programa_formacion`
--
ALTER TABLE `programa_formacion`
  MODIFY `ID_Programa` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del PROGRAMA DE FORMACION.', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `sede`
--
ALTER TABLE `sede`
  MODIFY `ID_Sede` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos de la SEDE.', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `ID_Tipo_Documento` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del TIPO DEL DOCUMENTO.', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `trimestre`
--
ALTER TABLE `trimestre`
  MODIFY `ID_Trimestre` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del TRIMESTRE.', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuario` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'Este ID se genera cada vez que se ingresa un registro nuevo referente a los datos del USUARIO.\n', AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ambiente_formacion`
--
ALTER TABLE `ambiente_formacion`
  ADD CONSTRAINT `fk_Ambiente_Sede1` FOREIGN KEY (`Sede_ID_Sede`) REFERENCES `sede` (`ID_Sede`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `aprendices`
--
ALTER TABLE `aprendices`
  ADD CONSTRAINT `fk_Aprendices_Estado_aprendiz1` FOREIGN KEY (`Estado_aprendiz_ID_Estado`) REFERENCES `estado_aprendiz` (`ID_Estado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Aprendices_Genero1` FOREIGN KEY (`Genero_ID_Genero`) REFERENCES `genero` (`ID_Genero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Aprendices_Tipo_Documento1` FOREIGN KEY (`Tipo_Documento_ID_Tipo_Documento`) REFERENCES `tipo_documento` (`ID_Tipo_Documento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aprendices_ficha1` FOREIGN KEY (`ficha_ID_Ficha`) REFERENCES `ficha` (`ID_Ficha`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `fk_Asistencia_Aprendices1` FOREIGN KEY (`Aprendices_ID_Aprendiz`,`Aprendices_Documento_Aprendiz`) REFERENCES `aprendices` (`ID_Aprendiz`, `Documento_Aprendiz`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asistencia_has_excusa`
--
ALTER TABLE `asistencia_has_excusa`
  ADD CONSTRAINT `fk_Asistencia_has_Excusa_Asistencia1` FOREIGN KEY (`Asistencia_ID_Asistencia`) REFERENCES `asistencia` (`ID_Asistencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Asistencia_has_Excusa_Excusa1` FOREIGN KEY (`Excusa_ID_Excusa`) REFERENCES `excusa` (`ID_Excusa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_Cliente_Cargo1` FOREIGN KEY (`Cargo_ID_Cargo`) REFERENCES `cargo` (`ID_Cargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Cliente_Tipo_Documento1` FOREIGN KEY (`Tipo_Documento_ID_Tipo_Documento`) REFERENCES `tipo_documento` (`ID_Tipo_Documento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Cliente_Usuarios1` FOREIGN KEY (`Usuarios_ID_Usuario`,`Usuarios_Usuario`) REFERENCES `usuarios` (`ID_Usuario`, `Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `excusa`
--
ALTER TABLE `excusa`
  ADD CONSTRAINT `fk_Excusa_Aprendices1` FOREIGN KEY (`Aprendices_ID_Aprendiz`,`Aprendices_Documento_Aprendiz`) REFERENCES `aprendices` (`ID_Aprendiz`, `Documento_Aprendiz`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD CONSTRAINT `fk_Ficha_Ambiente1` FOREIGN KEY (`Ambiente_ID_Ambiente`) REFERENCES `ambiente_formacion` (`ID_Ambiente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ficha_jornada1` FOREIGN KEY (`jornada_ID_Jornada`) REFERENCES `jornada` (`ID_Jornada`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ficha_programa_formacion1` FOREIGN KEY (`programa_formacion_ID_Programa`) REFERENCES `programa_formacion` (`ID_Programa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ficha_trimestre1` FOREIGN KEY (`trimestre_ID_Trimestre`) REFERENCES `trimestre` (`ID_Trimestre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `formato_ftp`
--
ALTER TABLE `formato_ftp`
  ADD CONSTRAINT `fk_Formato_FTP_Asistencia1` FOREIGN KEY (`Asistencia_ID_Asistencia`) REFERENCES `asistencia` (`ID_Asistencia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `fk_Grupo_Ficha1` FOREIGN KEY (`Ficha_ID_Ficha`) REFERENCES `ficha` (`ID_Ficha`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD CONSTRAINT `fk_Notificacion_Aprendices1` FOREIGN KEY (`Aprendices_ID_Aprendiz`,`Aprendices_Documento_Aprendiz`) REFERENCES `aprendices` (`ID_Aprendiz`, `Documento_Aprendiz`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Notificacion_Cliente1` FOREIGN KEY (`Cliente_ID_Cliente`,`Cliente_Documento_Cliente`) REFERENCES `cliente` (`ID_Cliente`, `Documento_Cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Notificacion_Formato_FTP1` FOREIGN KEY (`Formato_FTP_ID_Formato`) REFERENCES `formato_ftp` (`ID_Formato`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `password_token`
--
ALTER TABLE `password_token`
  ADD CONSTRAINT `fk_Password_Token_Usuarios1` FOREIGN KEY (`Usuarios_ID_Usuario`,`Usuarios_Usuario`) REFERENCES `usuarios` (`ID_Usuario`, `Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sede`
--
ALTER TABLE `sede`
  ADD CONSTRAINT `fk_Sede_Centro_Formación` FOREIGN KEY (`Centro_Formacion_ID_Centro`) REFERENCES `centro_formacion` (`ID_Centro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_Usuarios_Estado_Usuario1` FOREIGN KEY (`Estado_Usuario_ID_Estado_Usuario`) REFERENCES `estado_usuario` (`ID_Estado_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Usuarios_Perfiles1` FOREIGN KEY (`Perfiles_ID_Perfil`) REFERENCES `perfiles` (`ID_Perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
