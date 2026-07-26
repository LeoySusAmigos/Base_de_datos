-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2026 a las 07:43:37
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `leo_and_friends`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuestionario_opciones`
--

CREATE TABLE `cuestionario_opciones` (
  `opcion_id` int(11) NOT NULL,
  `pregunta_id` int(11) NOT NULL,
  `texto_opcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuestionario_opciones`
--

INSERT INTO `cuestionario_opciones` (`opcion_id`, `pregunta_id`, `texto_opcion`) VALUES
(10, 1, '6 años'),
(11, 1, '7 años'),
(12, 1, '8 años'),
(13, 1, '9 años o más'),
(20, 2, 'Animales y Naturaleza'),
(21, 2, 'Inventos, Ciencia y Dinosaurios'),
(22, 2, 'Aventuras y Misterios divertidos'),
(23, 2, 'Historias de Amistad y Monstruos buenos'),
(30, 3, 'Nivel 1: Reconoce letras y une sus primeras palabras'),
(31, 3, 'Nivel 2: Lee frases cortas con ayuda'),
(32, 3, 'Nivel 3: Lee cuentos breves e historias sencillas'),
(33, 3, 'Nivel 4: Lee con más fluidez y comprende más texto'),
(40, 4, 'Tormentas o truenos'),
(41, 4, 'La oscuridad'),
(42, 4, 'Bichos o insectos'),
(44, 4, 'Ninguno, ¡todo marcha bien!'),
(50, 5, 'Mantener la concentración con historias dinámicas'),
(51, 5, 'Comprender mejor lo que lee mediante juegos'),
(52, 5, 'Ganar confianza leyendo textos amigables');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuestionario_preguntas`
--

CREATE TABLE `cuestionario_preguntas` (
  `pregunta_id` int(11) NOT NULL,
  `texto_pregunta` varchar(255) NOT NULL,
  `tipo_accion` enum('FILTRO','PREFERENCIA') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuestionario_preguntas`
--

INSERT INTO `cuestionario_preguntas` (`pregunta_id`, `texto_pregunta`, `tipo_accion`) VALUES
(1, '¿Cuántos años tiene tu hijo/a?', 'PREFERENCIA'),
(2, '¿Qué tipo de historias despiertan más su curiosidad?', 'PREFERENCIA'),
(3, '¿En qué etapa del camino de la lectura se encuentra hoy?', 'PREFERENCIA'),
(4, '¿Hay algún elemento que prefieras que evitemos por ahora?', 'FILTRO'),
(5, '¿Cuál es el superpoder que queremos reforzar en su lectura?', 'PREFERENCIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leo_estadisticas`
--

CREATE TABLE `leo_estadisticas` (
  `estadisticaID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `tiempo_total` int(11) DEFAULT 0,
  `sesiones` int(11) DEFAULT 0,
  `ultima_sesion` datetime DEFAULT NULL,
  `palabras_dominadas` int(11) DEFAULT 0,
  `porcentaje_aciertos` decimal(5,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leo_lecciones`
--

CREATE TABLE `leo_lecciones` (
  `leccionID` int(11) NOT NULL,
  `nivelID` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `leo_lecciones`
--

INSERT INTO `leo_lecciones` (`leccionID`, `nivelID`, `numero`, `nombre`) VALUES
(1, 1, 1, 'Aprendiendo la A'),
(2, 1, 2, 'Más palabras con A'),
(3, 1, 3, 'Practiquemos la A'),
(4, 1, 4, 'Dominando la A'),
(5, 2, 1, 'Aprendiendo la E'),
(6, 2, 2, 'Más palabras con E'),
(7, 2, 3, 'Practiquemos la E'),
(8, 2, 4, 'Dominando la E'),
(9, 3, 1, 'Aprendiendo la I'),
(10, 3, 2, 'Más palabras con I'),
(11, 3, 3, 'Practiquemos la I'),
(12, 3, 4, 'Dominando la I'),
(13, 4, 1, 'Aprendiendo la O'),
(14, 4, 2, 'Más palabras con O'),
(15, 4, 3, 'Practiquemos la O'),
(16, 4, 4, 'Dominando la O'),
(17, 5, 1, 'Aprendiendo la U'),
(18, 5, 2, 'Más palabras con U'),
(19, 5, 3, 'Practiquemos la U'),
(20, 5, 4, 'Dominando la U');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leo_niveles`
--

CREATE TABLE `leo_niveles` (
  `nivelID` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `vocal` char(1) NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `leo_niveles`
--

INSERT INTO `leo_niveles` (`nivelID`, `nombre`, `vocal`, `orden`) VALUES
(1, 'Nivel A', 'A', 1),
(2, 'Nivel E', 'E', 2),
(3, 'Nivel I', 'I', 3),
(4, 'Nivel O', 'O', 4),
(5, 'Nivel U', 'U', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leo_niveles_desbloqueo`
--

CREATE TABLE `leo_niveles_desbloqueo` (
  `desbloqueoID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `nivelID` int(11) NOT NULL,
  `porcentaje` decimal(5,2) DEFAULT 0.00,
  `desbloqueado` tinyint(1) DEFAULT 0,
  `fecha_desbloqueo` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `leo_niveles_desbloqueo`
--

INSERT INTO `leo_niveles_desbloqueo` (`desbloqueoID`, `userID`, `nivelID`, `porcentaje`, `desbloqueado`, `fecha_desbloqueo`) VALUES
(9, 18, 1, 0.00, 1, NULL),
(10, 18, 2, 0.00, 0, NULL),
(11, 18, 3, 0.00, 0, NULL),
(12, 18, 4, 0.00, 0, NULL),
(13, 18, 5, 0.00, 0, NULL),
(14, 21, 1, 0.00, 1, NULL),
(15, 21, 2, 0.00, 0, NULL),
(16, 21, 3, 0.00, 0, NULL),
(17, 21, 4, 0.00, 0, NULL),
(18, 21, 5, 0.00, 0, NULL),
(19, 26, 1, 0.00, 1, NULL),
(20, 26, 2, 0.00, 0, NULL),
(21, 26, 3, 0.00, 0, NULL),
(22, 26, 4, 0.00, 0, NULL),
(23, 26, 5, 0.00, 0, NULL),
(24, 28, 1, 0.00, 1, NULL),
(25, 28, 2, 0.00, 0, NULL),
(26, 28, 3, 0.00, 0, NULL),
(27, 28, 4, 0.00, 0, NULL),
(28, 28, 5, 0.00, 0, NULL),
(29, 29, 1, 0.00, 1, NULL),
(30, 29, 2, 0.00, 0, NULL),
(31, 29, 3, 0.00, 0, NULL),
(32, 29, 4, 0.00, 0, NULL),
(33, 29, 5, 0.00, 0, NULL),
(34, 30, 1, 0.00, 1, NULL),
(35, 30, 2, 0.00, 0, NULL),
(36, 30, 3, 0.00, 0, NULL),
(37, 30, 4, 0.00, 0, NULL),
(38, 30, 5, 0.00, 0, NULL),
(39, 31, 1, 0.00, 1, NULL),
(40, 31, 2, 0.00, 0, NULL),
(41, 31, 3, 0.00, 0, NULL),
(42, 31, 4, 0.00, 0, NULL),
(43, 31, 5, 0.00, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leo_palabras`
--

CREATE TABLE `leo_palabras` (
  `palabraID` int(11) NOT NULL,
  `leccionID` int(11) NOT NULL,
  `silaba` varchar(10) NOT NULL,
  `palabra` varchar(100) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `audio` varchar(255) NOT NULL,
  `orden_palabra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `leo_palabras`
--

INSERT INTO `leo_palabras` (`palabraID`, `leccionID`, `silaba`, `palabra`, `imagen`, `audio`, `orden_palabra`) VALUES
(1, 1, 'Ba', 'Ballena', 'ballena.png', 'ballena.mp3', 1),
(2, 1, 'Ca', 'Camisa', 'camisa.png', 'camisa.mp3', 2),
(3, 1, 'Cha', 'Chaqueta', 'chaqueta.png', 'chaqueta.mp3', 3),
(4, 1, 'Da', 'Dado', 'dado.png', 'dado.mp3', 4),
(5, 1, 'Fa', 'Farol', 'farol.png', 'farol.mp3', 5),
(6, 2, 'Ga', 'Gato', 'gato.png', 'gato.mp3', 1),
(7, 2, 'Ha', 'Harina', 'harina.png', 'harina.mp3', 2),
(8, 2, 'Ja', 'Jabalí', 'jabali.png', 'jabali.mp3', 3),
(9, 2, 'Ka', 'Karate', 'karate.png', 'karate.mp3', 4),
(10, 2, 'La', 'Lana', 'lana.png', 'lana.mp3', 5),
(11, 3, 'Lla', 'Llave', 'llave.png', 'llave.mp3', 1),
(12, 3, 'Ma', 'Mapa', 'mapa.png', 'mapa.mp3', 2),
(13, 3, 'Na', 'Nariz', 'nariz.png', 'nariz.mp3', 3),
(14, 3, 'Pa', 'Papas', 'papas.png', 'papas.mp3', 4),
(15, 3, 'Ra', 'Ratón', 'raton.png', 'raton.mp3', 5),
(16, 4, 'Sa', 'Sandía', 'sandia.png', 'sandia.mp3', 1),
(17, 4, 'Ta', 'Taza', 'taza.png', 'taza.mp3', 2),
(18, 4, 'Va', 'Vaca', 'vaca.png', 'vaca.mp3', 3),
(19, 4, 'Wa', 'Waterpolo', 'waterpolo.png', 'waterpolo.mp3', 4),
(20, 4, 'Za', 'Zapato', 'zapato.png', 'zapato.mp3', 5),
(41, 5, 'Be', 'Bebé', 'bebe.png', 'bebe.mp3', 1),
(42, 5, 'Ce', 'Cereza', 'cereza.png', 'cereza.mp3', 2),
(43, 5, 'Che', 'Cheque', 'cheque.png', 'cheque.mp3', 3),
(44, 5, 'De', 'Dedo', 'dedo.png', 'dedo.mp3', 4),
(45, 5, 'Fe', 'Feria', 'feria.png', 'feria.mp3', 5),
(46, 6, 'Ge', 'Gente', 'gente.png', 'gente.mp3', 1),
(47, 6, 'He', 'Helado', 'helado.png', 'helado.mp3', 2),
(48, 6, 'Je', 'Jeringa', 'jeringa.png', 'jeringa.mp3', 3),
(49, 6, 'Le', 'Leopardo', 'leopardo.png', 'leopardo.mp3', 4),
(50, 6, 'Me', 'Mesa', 'mesa.png', 'mesa.mp3', 5),
(51, 7, 'Ne', 'Nene', 'nene.png', 'nene.mp3', 1),
(52, 7, 'Pe', 'Perro', 'perro.png', 'perro.mp3', 2),
(53, 7, 'Que', 'Queso', 'queso.png', 'queso.mp3', 3),
(54, 7, 'Re', 'Reno', 'reno.png', 'reno.mp3', 4),
(55, 7, 'Se', 'Semilla', 'semilla.png', 'semilla.mp3', 5),
(56, 8, 'Te', 'Tetera', 'tetera.png', 'tetera.mp3', 1),
(57, 8, 'Ve', 'Vela', 'vela.png', 'vela.mp3', 2),
(58, 8, 'Web', 'Web', 'web.png', 'web.mp3', 3),
(59, 8, 'Ze', 'Zebra', 'zebra.png', 'zebra.mp3', 5),
(60, 9, 'Bi', 'Bicicleta', 'bicicleta.png', 'bicicleta.mp3', 1),
(61, 9, 'Cis', 'Cisne', 'cisne.png', 'cisne.mp3', 2),
(62, 9, 'Chi', 'Chile', 'chile.png', 'chile.mp3', 3),
(63, 9, 'Dis', 'Disco', 'disco.png', 'disco.mp3', 4),
(64, 9, 'Fi', 'Fideos', 'fideos.png', 'fideos.mp3', 5),
(65, 10, 'Gi', 'Girasol', 'girasol.png', 'girasol.mp3', 1),
(66, 10, 'Hi', 'Hilo', 'hilo.png', 'hilo.mp3', 2),
(67, 10, 'Ji', 'Jirafa', 'jirafa.png', 'jirafa.mp3', 3),
(68, 10, 'Ki', 'Kiwi', 'kiwi.png', 'kiwi.mp3', 4),
(69, 10, 'Li', 'Limón', 'limon.png', 'limon.mp3', 5),
(70, 11, 'Mi', 'Mimo', 'mimo.png', 'mimo.mp3', 1),
(71, 11, 'Ni', 'Nido', 'nido.png', 'nido.mp3', 2),
(72, 11, 'Pi', 'Pies', 'pies.png', 'pies.mp3', 3),
(73, 11, 'Qui', 'Quiosco', 'quiosco.png', 'quiosco.mp3', 4),
(74, 11, 'Ri', 'Risa', 'risa.png', 'risa.mp3', 5),
(75, 12, 'Si', 'Sierra', 'sierra.png', 'sierra.mp3', 1),
(76, 12, 'Ti', 'Tierra', 'tierra.png', 'tierra.mp3', 2),
(77, 12, 'Vi', 'Violín', 'violin.png', 'violin.mp3', 3),
(78, 12, 'Xi', 'Xilófono', 'xilofono.png', 'xilofono.mp3', 4),
(79, 12, 'Zí', 'Zíper', 'ziper.png', 'ziper.mp3', 5),
(80, 13, 'Bo', 'Boca', 'boca.png', 'boca.mp3', 1),
(81, 13, 'Co', 'Colores ', 'colores.png', 'colores.mp3', 2),
(82, 13, 'Cho', 'Chocolate', 'chocolate.png', 'Chocolate.mp3', 3),
(83, 13, 'Do', 'Dominó ', 'domino.png ', 'dommino.mp3 ', 4),
(84, 13, 'Fo', 'Foca', 'foca.png', 'foca.mp3', 5),
(85, 14, 'Go', 'Gorro', 'gorro.png', 'gorro.mp3', 1),
(86, 14, 'Ho', 'Hoja', 'hoja.png', 'hoja.mp3', 2),
(87, 14, 'Jo', 'Joyas', ' joyas.png', 'joyas.mp3', 3),
(88, 14, 'Ko', 'Koala', 'koala.png', 'koala.mp3', 4),
(89, 14, 'Lo', 'Loro', 'loro.png', 'loro.mp3', 5),
(90, 15, 'Mo', 'Mono', 'mono.png', 'mono.mp3', 1),
(91, 15, 'No', 'Notas', 'notas.png', 'notas.mp3', 2),
(92, 15, 'O', 'Oso', 'oso.png', 'oso.mp3', 3),
(93, 15, 'Po', 'Pozo', 'pozo.png', 'pozo.mp3', 4),
(94, 15, 'Ro', 'Rosado', 'rosado.png', 'rosado.mp3', 5),
(95, 16, 'So', 'Sopa', 'sopa.png', 'sopa.mp3', 1),
(96, 16, 'To', 'Topo', 'topo.png', 'topo.mp3', 2),
(97, 16, 'Vol', 'Volcán', 'volcan.png', 'volcan.mp3', 3),
(98, 16, 'Yo', 'Yoyo', 'yoyo.png', 'yoyo.mp3', 4),
(99, 16, 'Zo', 'Zorro', 'zorro.png', 'zorro.mp3', 5),
(100, 17, 'Bú', 'Búho', 'buho.png', '.mp3', 1),
(101, 17, 'Cuer', 'Cuerda', 'cuerda.png', 'cuerda.mp3', 2),
(102, 17, 'Chu', 'Churro', 'churro.png', 'churro.mp3', 3),
(103, 17, 'Dul', 'Dulces', 'dulces.png', 'dulces.mp3', 4),
(104, 17, 'Fue', 'Fuego', 'fuego.png', 'fuego.mp3', 5),
(105, 17, 'Guan', 'Guantes', 'guantes.png', 'guantes.mp3', 1),
(106, 18, 'Hue', 'Hueso', 'hueso.png', 'hueso.mp3', 2),
(107, 18, 'Ju', 'Jugo', 'jugo.png', 'jugo.mp3', 3),
(108, 18, 'Kung', 'Kung fu', 'kunfu.png', 'kunfu.mp3', 4),
(109, 18, 'Lu', 'Lupa', 'lupa.png', 'lupa.mp3', 5),
(110, 19, 'Llu', 'Lluvia', 'lluvia.png', 'lluvia.mp3', 1),
(111, 19, 'Mu', 'Muñeca', 'muneca.png', 'muneca.mp3', 2),
(112, 19, 'Nu', 'Nudo', 'nudo.png', 'nudo.mp3', 3),
(113, 19, 'Puer', 'Puerta', 'puerta.png', 'puerta.mp3', 4),
(114, 19, 'Ru', 'Rulos', 'rulos.png', 'rulos.mp3', 5),
(115, 20, 'Sue', 'Sueño', 'sueno.png', 'sueno.mp3', 1),
(116, 20, 'Tu', 'Tucán', 'tucan.png', 'tucan.mp3', 2),
(117, 20, 'Vuel', 'Vuelta', 'vuelta.png', 'vuelta.mp3', 3),
(118, 20, 'Yu', 'yuca', 'yuca.png', 'yuca.mp3', 4),
(119, 20, 'Zur', 'Zurdo', 'zurdo.png', 'zurdo.mp3', 5),
(120, 8, 'Ye', 'Yema', 'yema.png', 'yema.mp3', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leo_palabras_completadas`
--

CREATE TABLE `leo_palabras_completadas` (
  `completadoID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `palabraID` int(11) NOT NULL,
  `fecha_completada` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leo_progreso`
--

CREATE TABLE `leo_progreso` (
  `progresoID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `nivelID` int(11) NOT NULL,
  `leccionID` int(11) NOT NULL,
  `palabraID` int(11) NOT NULL,
  `fase` tinyint(4) NOT NULL DEFAULT 1,
  `porcentaje` decimal(5,2) DEFAULT 0.00,
  `ultima_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `libro_id` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `portada` varchar(255) NOT NULL,
  `tiempo_estimado` int(11) NOT NULL,
  `nivel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`libro_id`, `titulo`, `portada`, `tiempo_estimado`, `nivel_id`) VALUES
(3, 'El Sol y la Nube', 'solyluna.png', 5, 1),
(5, 'La Casita Feliz', 'casita.png', 5, 2),
(6, 'El Triceratops que quería volar al espacio', 'triceratops.png', 8, 3),
(7, 'El detective del bosque y las huellas secretas', 'finxDetective.png', 8, 3),
(8, 'Leo el camaleón', 'leohistoria.png', 5, 1),
(9, 'El Pingüino con frío', 'pinguinofrio.png', 5, 1),
(10, 'Un Dinosaurio en mi mochila', 'dinomochila.png', 8, 3),
(11, 'La Luna es de queso', 'lunaDeQueso.png', 5, 2),
(12, '¡Al rescate del Mapache!', 'mapacheAyuda.png', 10, 4),
(13, 'El cumpleaños de Capy', 'capyCumple.png', 5, 2),
(14, 'Mi Perrito es un mago', 'miPerritoMagico.png', 15, 5),
(15, 'La Tortuga veloz', 'laTortugaVeloz.png', 10, 4),
(16, 'El Tesoro perdido', 'aventura.png', 10, 4),
(17, 'El viaje del Pájaro azul', 'pajaroAzul.png', 15, 5),
(18, 'Leo y sus Amigos', 'amiguitos.png', 15, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_atributos`
--

CREATE TABLE `libro_atributos` (
  `libro_id` int(11) NOT NULL,
  `opcion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logros`
--

CREATE TABLE `logros` (
  `logroID` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `icono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `misiones_diarias`
--

CREATE TABLE `misiones_diarias` (
  `misionID` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `tipo` enum('leo','capy','finx') DEFAULT NULL,
  `puntos` int(11) DEFAULT 50
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE `niveles` (
  `nivel_id` int(11) NOT NULL,
  `niveles` enum('Nivel 1','Nivel 2','Nivel 3','Nivel 4','Nivel 5') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `niveles`
--

INSERT INTO `niveles` (`nivel_id`, `niveles`) VALUES
(1, 'Nivel 1'),
(2, 'Nivel 2'),
(3, 'Nivel 3'),
(4, 'Nivel 4'),
(5, 'Nivel 5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oraciones`
--

CREATE TABLE `oraciones` (
  `oracionesID` int(11) NOT NULL,
  `pagina_id` int(11) DEFAULT NULL,
  `oracion` text DEFAULT NULL,
  `pista1` text DEFAULT NULL,
  `pista2` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paginas_libro`
--

CREATE TABLE `paginas_libro` (
  `pagina_id` int(11) NOT NULL,
  `libro_id` int(11) NOT NULL,
  `numero_pagina` int(11) NOT NULL,
  `texto_pagina` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paginas_libro`
--

INSERT INTO `paginas_libro` (`pagina_id`, `libro_id`, `numero_pagina`, `texto_pagina`) VALUES
(1, 3, 1, 'El sol está solo y triste en el cielo vacío.\r\nUna nube blanca llega flotando para jugar con él.\r\nJuntos hacen dibujos divertidos con sus luces y sombras.\r\nAhora el sol sonríe y brilla con mucha alegría.'),
(5, 8, 1, 'Leo el camaleón adora explorar la selva verde.\r\nSe esconde entre las flores y nadie puede verlo.\r\nDa un salto sorpresa y asusta a las mariposas.\r\nEs el mejor artista del camuflaje en el mundo.'),
(6, 9, 1, 'Pipo es un pingüino que vive en el hielo.\r\nA diferencia de sus amigos, a él no le gusta el frío.\r\nSu mamá le tejió una bufanda de lana roja muy suave.\r\nAhora Pipo patina feliz por todo el mar congelado.'),
(7, 5, 1, 'En lo alto de la colina verde hay una feliz casita roja.\r\nElla abre sus grandes ventanas para saludar al sol por la mañana.\r\nEn el jardín crecen lindas flores de hermosos olores y colores.\r\nUn tierno pajarito azul canta feliz arriba en el techo.\r\nPor las noches prende su fuego y el humo sube hasta el cielo.\r\nTodas las personas se alegran al ver una casa tan bonita.'),
(8, 11, 1, 'En la noche el ratoncito Tomás mira al cielo con mucha hambre.\r\nÉl sueña con que la luna es un queso delicioso y gigante.\r\nCon una vieja caja de cartón construyó un cohete veloz.\r\nSe puso un casco de juguete y despegó con mucha emoción.\r\nAl llegar arriba descubrió que la luna solo era roca gris.\r\nTriste a su casa volvió, pero lo que encontró le encantó, un delicioso queso amarillo.'),
(9, 13, 1, 'Hoy es un gran día en el bosque.\r\nCapy cumple años y espera un lindo regalo.\r\nUn pastel de chocolate prepararon con mucha emoción.\r\nY Finx colgó globos de colores en cada rincón.\r\nCapy sopló fuerte las velas mientras todos cantaban juntos.\r\n¡Fue el cumpleaños más feliz y divertido del mundo!'),
(10, 6, 1, 'Tito era un pequeño triceratops que soñaba con viajar al espacio. Mientras los demás dinosaurios exploraban el valle, él pasaba las tardes observando el cielo e imaginando cómo sería volar entre las estrellas.\r\n\r\nReunió materiales y construyó un pequeño cohete. Cuando estuvo listo, sonrió y comenzó la aventura que siempre había soñado.'),
(11, 6, 2, 'Cruzó las nubes hasta llegar al espacio, donde Tito descubrió planetas, estrellas y galaxias llenas de colores. Era tan sorprendente.\r\n\r\nAl regresar a casa, comprendió que los sueños pueden hacerse realidad cuando se persiguen con esfuerzo y valentía. Desde entonces, nunca dejó de mirar el cielo con una gran sonrisa.'),
(13, 7, 1, 'Finx era un gato detective al que le encantaba resolver misterios en el bosque. Siempre llevaba una pequeña lupa y observaba todo con mucha atención. Una mañana encontró un rastro de huellas que nunca había visto. Eran pequeñas, iban en distintas direcciones y desaparecían entre los árboles. \r\nMuy curioso, decidió seguirlas para descubrir quién las había dejado.'),
(14, 7, 2, 'Las huellas cruzaban un pequeño río, pasaban entre los arbustos y seguían por un camino cada vez más silencioso.\r\nFinx avanzó sin perder el rastro, buscando cualquier pista que pudiera ayudarlo. Cuando estaba a punto de descubrir el misterio, las huellas lo llevaron hasta una cueva oscura. Sin saber lo que encontraría allí, entró con mucho cuidado.'),
(15, 12, 1, 'Dentro de la cueva, Finx descubrió que las huellas pertenecían a un pequeño mapache que se había perdido mientras buscaba el camino de regreso a casa. Al intentar salir, unas rocas bloquearon la entrada y quedó atrapado.'),
(16, 12, 2, 'Finx observó la cueva con mucha atención y pensó en la mejor forma de ayudar. Reunió ramas resistentes, una cuerda y varias piedras para construir una sencilla palanca que pudiera mover las rocas sin poner en peligro al mapache.'),
(17, 12, 3, 'Después de varios intentos, las rocas comenzaron a moverse poco a poco. El pequeño mapache encontró un espacio por donde pudo salir y, aunque estaba cansado, volvió a sonreír al sentirse libre.'),
(18, 12, 4, 'Los dos caminaron por el bosque hasta encontrar a la familia del mapache, que lo recibió con una enorme alegría.\r\n\r\nFinx comprendió que un buen detective no solo sigue pistas y resuelve misterios, sino que también usa su inteligencia y su valentía para ayudar a los demás.'),
(19, 10, 1, 'A Lukas le encantaban los dinosaurios. Su favorito era Dino, un pequeño peluche que siempre llevaba dentro de su mochila.\r\nAntes de ir a la escuela, a una excursión o a visitar un lugar nuevo, se aseguraba de que Dino estuviera con él, porque sentía que cualquier aventura era mejor a su lado.'),
(20, 10, 2, 'Lo que Lukas no sabía era que Dino era un peluche mágico.\r\nCuando el niño sentía miedo, nervios o tristeza, Dino cobraba vida en silencio y encontraba la manera de darle valor con pequeños gestos que llenaban su corazón de alegría.\r\nDesde entonces, Lukas descubrió que, con un buen amigo a su lado, cualquier aventura podía convertirse en un recuerdo inolvidable.'),
(21, 15, 1, 'Trixi era una pequeña tortuga que soñaba con correr tan rápido como los demás animales del bosque.\r\nAunque avanzaba despacio, nunca dejaba de practicar y aprovechaba cada paseo para fortalecer sus patas.\r\nSu mayor deseo era participar algún día en la gran carrera del bosque.'),
(22, 15, 2, 'Cuando llegó el día de la competencia, todos pensaban que Trixi sería la última en cruzar la meta.\r\nSin embargo, ella avanzó con calma, sin detenerse ni distraerse.\r\n\r\nMientras algunos corredores perdían tiempo descansando o tomando atajos, Trixi continuó con paso firme.'),
(23, 15, 3, 'El camino estaba lleno de obstáculos, pero Trixi observaba con atención antes de dar cada paso.\r\n\r\nGracias a su paciencia y a su esfuerzo, fue alcanzando poco a poco a los demás competidores hasta quedar muy cerca del primer lugar.'),
(24, 15, 4, 'Al cruzar la meta, todos aplaudieron su gran trabajo.\r\nTrixi comprendió que la verdadera velocidad no siempre significa correr más rápido, sino avanzar poco a poco y nunca rendirse.\r\n\r\nDesde entonces, todos los animales del bosque la llamaban Trixi, la tortuga veloz.'),
(25, 16, 1, 'En un viaje por la selva, Finx, Leo y Capy encontraron una antigua botella con un misterioso mapa en su interior.\r\nLos tres imaginaron un tesoro diferente: Finx soñaba con un cofre lleno de monedas de oro, Leo esperaba encontrar piedras preciosas y Capy solo pensaba en una enorme montaña de dulces.'),
(26, 16, 2, 'El camino atravesaba ríos, puentes y senderos llenos de árboles.\r\nPero por estar tan ocupados discutiendo, varias veces caminaron en la dirección equivocada y hasta estuvieron a punto de perder el mapa. Al darse cuenta de que así no avanzarían, decidieron turnarse para llevarlo y trabajar como un verdadero equipo.'),
(27, 16, 3, 'Después de una larga caminata, el mapa los condujo hasta la cima de una enorme montaña que sobresalía entre las nubes.\r\n\r\nNo había cofres, ni oro, ni dulces. Solo un paisaje increíble, el canto de los pájaros, la brisa fresca que soplaba y un cielo tan brillante que parecía pintado.'),
(28, 16, 4, 'Los tres amigos se sentaron en silencio para contemplar aquel hermoso lugar.\r\nEntonces comprendieron que el viaje había sido el verdadero tesoro: las risas, los desafíos y el tiempo que compartieron juntos como amigos.\r\n\r\nMientras bajaban de la montaña, Capy sonrió y dijo que, la próxima vez, podían buscar un tesoro... pero uno con postre.'),
(29, 14, 1, 'Mateo tenía un perrito llamado Nova, un cachorro alegre que siempre llevaba un pequeño sombrero de mago. \r\nTodos pensaban que solo era un accesorio curioso, pero Nova jamás dejaba que alguien se lo quitara. \r\n\r\nDebajo del sombrero escondía una diminuta estrella que brillaba con una luz muy especial. Nova la cuidaba con mucho cariño, esperando el momento perfecto para usar su magia.'),
(30, 14, 2, 'Un sábado, Mateo y su familia fueron a pasar el día a un gran parque natural. \r\nHabía senderos, árboles gigantes y un puente de madera que cruzaba un pequeño río. \r\nMientras caminaban, escucharon a una niña que había perdido su cometa entre las ramas del árbol más alto del parque. Muchas personas intentaron ayudar, pero el viento la había dejado atrapada en un lugar imposible de alcanzar. \r\n\r\nMateo deseó en silencio que alguien pudiera devolverle su cometa.'),
(31, 14, 3, 'Nova observó a la niña, levantó sus orejas y se alejó sin hacer ruido. \r\nMiró el cielo, y la pequeña estrella comenzó a brillar con más fuerza que nunca. \r\nUna luz dorada salió del sombrero y subió lentamente entre las ramas, como si el viento la guiara. \r\n\r\nDe pronto, la cometa empezó a soltarse muy despacio hasta bajar flotando frente a la niña. Todos pensaron que había sido una ráfaga de viento... excepto Mateo.'),
(32, 14, 4, 'La niña abrazó su cometa con una enorme sonrisa y dio las gracias a todos los que habían intentado ayudarla. \r\nMateo miró a Nova y notó que la estrella brillaba mucho menos que antes, como si hubiera entregado una parte de su luz.\r\n\r\nSin decir una sola palabra, Nova movió la cola y siguió caminando como si nada hubiera ocurrido.\r\nMateo comprendió que su perrito había guardado aquel secreto durante mucho tiempo.'),
(33, 14, 5, 'Desde ese día, Mateo comenzó a fijarse en pequeños detalles que antes pasaban desapercibidos. \r\n\r\nCada vez que alguien necesitaba ayuda de verdad, Nova levantaba la vista hacia el cielo y su sombrero brillaba por un instante. \r\n\r\nNunca hacía magia para impresionar a los demás ni para conseguir cosas materiales. \r\nSu estrella solo respondía cuando un deseo sincero buscaba hacer feliz a otra persona.'),
(34, 14, 6, 'Aquella noche, antes de dormir, Mateo acarició a Nova y acomodó con cuidado su pequeño sombrero. \r\n\r\nMiró por la ventana y descubrió una estrella brillando con más fuerza que todas las demás. \r\n\r\nSonrió, porque ahora conocía el secreto de su mejor amigo. \r\n\r\nMientras Nova dormía profundamente, la diminuta estrella volvió a esconderse bajo el sombrero, lista para iluminar el siguiente deseo que naciera de un corazón bondadoso.'),
(35, 17, 1, 'Azul era un pequeño pájaro que vivía en un viejo roble, rodeado por un bosque lleno de vida. Desde la rama más alta observaba montañas, ríos brillantes y nubes que viajaban lentamente por el cielo. \r\nCada amanecer imaginaba qué secretos esconderían aquellos lugares escondidos. \r\nAunque sentía miedo de irse de su hogar, la curiosidad era aún más grande. Una mañana respiró profundo, extendió sus alas y decidió que había llegado el momento de descubrir el mundo.'),
(36, 17, 2, 'Su primer destino fue un inmenso valle cubierto por flores de todos los colores.\r\n\r\nEl viento llevaba un dulce aroma que hacía bailar los pétalos sobre la hierba, mientras mariposas y abejas revoloteaban entre las plantas como si celebraran su llegada. \r\n\r\nAzul voló despacio para contemplar cada rincón y descubrió que, desde el aire, el valle parecía una enorme pintura llena de colores. \r\nNunca imaginó que un lugar pudiera ser tan hermoso.'),
(37, 17, 3, 'Más adelante encontró una gran cascada que caía desde lo alto de una montaña.\r\n\r\nEl agua golpeaba las rocas formando miles de pequeñas gotas que brillaban como cristales bajo la luz del sol. \r\nFrente a la cascada apareció un enorme arcoíris que parecía unir la tierra con el cielo. \r\n\r\nAzul lo cruzó lentamente y sintió que volaba entre las nubes, mientras una fresca brisa acariciaba sus plumas.'),
(38, 17, 4, 'Al continuar su viaje llegó a un lago tan tranquilo que reflejaba el cielo como si fuera un gigantesco espejo. \r\n\r\nDesde allí observó peces de colores nadando entre las plantas acuáticas y enormes nenúfares donde descansaban pequeñas ranas. \r\n\r\nCuando cayó la noche, las estrellas comenzaron a iluminar el agua y el paisaje se volvió tan brillante que parecía un sueño. \r\nAzul permaneció en silencio, disfrutando uno de los momentos más hermosos que había visto.'),
(39, 17, 5, 'Antes de regresar, sobrevoló un bosque donde los árboles tenían hojas doradas que brillaban con la luz del amanecer. \r\nAllí conoció aves de muchos lugares, cada una con una historia diferente para contar. \r\n\r\nEscuchó relatos sobre océanos inmensos, montañas nevadas y desiertos donde el viento dibujaba formas en la arena. \r\nEntonces comprendió que cada viaje no solo permitía descubrir nuevos paisajes, sino también hacer amigos y aprender algo nuevo en cada encuentro.'),
(40, 17, 6, 'Cuando Azul volvió a su hogar, todos se reunieron para escuchar sus aventuras. \r\nMientras contaba lo que había visto, los pequeños pájaros imaginaban los campos de flores, la gran cascada, el lago de las estrellas y el bosque dorado. \r\n\r\nAzul entendió que siempre existirían nuevos lugares por descubrir. \r\nCerró sus alas por un momento y pensó que la aventura más hermosa no era llegar más lejos, sino tener el valor de dar el primer vuelo.'),
(41, 18, 1, 'El bosque amaneció lleno de alegría.\r\nLeo, Capy y Finx preparaban una celebración muy especial. \r\nColgaron banderines entre los árboles, acomodaron una mesa con frutas y galletas y decoraron el camino con flores de muchos colores. \r\nNo era una fiesta cualquiera; querían recordar todas las aventuras que habían vivido junto a un gran amigo.'),
(42, 18, 2, 'Cuando por fin terminaron los preparativos, los tres se sentaron bajo un enorme árbol para descansar un momento. \r\n\r\nRecordaron las aventuras que los hicieron reír, los misterios que resolvieron, los lugares sorprendentes que descubrieron y los nuevos amigos que conocieron durante el camino. \r\n\r\nCada historia les había enseñado algo diferente y cada página guardaba un recuerdo que siempre llevarían en el corazón. \r\n\r\nSin darse cuenta, la mañana pasó entre risas e historias.'),
(43, 18, 3, 'Leo tuvo una idea para que ninguno de esos momentos se olvidara. \r\n\r\nBuscaron una vieja caja de madera y comenzaron a llenarla con pequeños recuerdos de sus aventuras: una pluma azul, una estrella brillante, un mapa doblado, una hoja del bosque, una concha y una pequeña semilla. \r\n\r\nCada objeto parecía sencillo, pero escondía una historia llena de imaginación, valentía, amistad y trabajo en equipo. \r\n\r\nAquella caja se convirtió en su tesoro más valioso.'),
(44, 18, 4, 'Antes de cerrar la caja, Finx tomó una hoja de papel y escribió un mensaje. Leo y Capy al leerlo sonrieron al mismo tiempo. El mensaje decía:\r\n\r\n\"Gracias por jugar, aprender, imaginar y crecer junto a nosotros. Cada aventura fue más divertida porque tú estuviste aquí. \r\nNunca dejes de hacer preguntas, de soñar en grande y de creer que cualquier aventura puede comenzar al abrir un libro.\"\r\n\r\nCon mucho cariño, guardaron la nota con los otros recuerdos.'),
(45, 18, 5, 'Después comenzó la mejor parte de la celebración. \r\n\r\nCorrieron por el bosque, jugaron a las escondidas, inventaron nuevos juegos y organizaron una divertida carrera hasta el río. \r\n\r\nEntre tantas risas, hasta las mariposas parecían bailar y los pájaros acompañaban la fiesta con sus cantos. \r\n\r\nEl bosque entero se llenó de alegría, como si también quisiera celebrar todas las aventuras que habían compartido durante aquel maravilloso viaje.'),
(46, 18, 6, 'Cuando el sol comenzó a esconderse, Leo, Capy y Finx caminaron juntos hasta el sendero del bosque. Con una enorme sonrisa dijeron:\r\n\r\n—¡Hasta la próxima aventura, querido explorador!\r\n\r\nCapy quiso repartir las últimas galletas, pero al abrir su mochila solo encontró unas pocas migajas... porque ya se las había comido.\r\n\r\nLos tres se rieron y siguieron jugando entre los árboles. Ellos ya sabían que cada vez que se abre un libro, una nueva aventura comienza.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquetes`
--

CREATE TABLE `paquetes` (
  `paqueteID` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `popular` tinyint(1) DEFAULT 0,
  `activo` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paquetes`
--

INSERT INTO `paquetes` (`paqueteID`, `nombre`, `precio`, `descripcion`, `popular`, `activo`) VALUES
(1, 'Plan Gratis', 0.00, 'Empieza tu aventura con Leo sin costo. Perfecto para conocer la plataforma.', 0, 1),
(2, 'Plan Aventura', 5.99, 'Aprende paso a paso con Leo, Capy y Finx desbloqueándose progresivamente.', 0, 1),
(3, 'Plan Safari', 12.99, 'Leo, Capy y Finx completamente desbloqueados desde el primer día.', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete_beneficios`
--

CREATE TABLE `paquete_beneficios` (
  `beneficioID` int(11) NOT NULL,
  `paqueteID` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `orden` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paquete_beneficios`
--

INSERT INTO `paquete_beneficios` (`beneficioID`, `paqueteID`, `descripcion`, `orden`) VALUES
(1, 1, 'Acceso a los primeros 3 niveles de sílabas con Leo.', 1),
(2, 1, 'Un cuento de introducción con Finx.', 2),
(3, 1, 'Juego de práctica básico.', 3),
(4, 1, 'Perfecto para probar la plataforma.', 4),
(5, 2, 'Empieza con Leo: niveles de sílabas que se desbloquean en cadena.', 1),
(6, 2, 'Completa tu misión con Leo para desbloquear a Capy y su gramática progresiva.', 2),
(7, 2, 'Supera a Capy para desbloquear a Finx y su biblioteca de cuentos.', 3),
(8, 2, 'Progresión guiada: cada nivel abre el siguiente.', 4),
(9, 3, 'Leo, Capy y Finx completamente desbloqueados desde el día 1.', 1),
(10, 3, 'El niño elige con quién practicar cuando quiera.', 2),
(11, 3, 'Niveles y libros se desbloquean conforme avanza, sin orden forzado.', 3),
(12, 3, 'Acceso a todos los minijuegos sin necesidad de completar niveles.', 4),
(13, 3, 'Experiencia de aprendizaje libre y personalizada.', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `progreso`
--

CREATE TABLE `progreso` (
  `progresoID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `puntos` int(11) DEFAULT 0,
  `racha` int(11) DEFAULT 0,
  `nivel_actual` int(11) DEFAULT 1,
  `leccion_actual` int(11) DEFAULT 1,
  `porcentaje` int(11) DEFAULT 0,
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modulo_actual` enum('leo','capy','finx') DEFAULT 'leo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `progreso`
--

INSERT INTO `progreso` (`progresoID`, `userID`, `puntos`, `racha`, `nivel_actual`, `leccion_actual`, `porcentaje`, `fecha_actualizacion`, `modulo_actual`) VALUES
(2, 18, 0, 0, 1, 1, 0, '2026-06-25 03:50:50', 'leo'),
(3, 20, 0, 0, 1, 1, 0, '2026-07-04 05:23:11', 'leo'),
(4, 21, 0, 0, 1, 1, 0, '2026-07-04 06:13:36', 'leo'),
(5, 28, 0, 0, 1, 1, 0, '2026-07-04 06:33:08', 'leo'),
(6, 17, 0, 0, 1, 1, 0, '2026-07-05 22:32:17', 'leo'),
(7, 15, 0, 0, 1, 1, 0, '2026-07-06 15:06:47', 'leo'),
(8, 30, 0, 0, 1, 1, 0, '2026-07-15 22:19:52', 'leo'),
(9, 31, 0, 0, 1, 1, 0, '2026-07-18 15:20:04', 'leo'),
(10, 16, 0, 0, 1, 1, 0, '2026-07-23 05:16:11', 'leo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `progreso_libros`
--

CREATE TABLE `progreso_libros` (
  `progreso_libro_id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `libro_id` int(11) NOT NULL,
  `tiempo_segundos` int(11) NOT NULL DEFAULT 0,
  `fecha_leido` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `progreso_libros`
--

INSERT INTO `progreso_libros` (`progreso_libro_id`, `userID`, `libro_id`, `tiempo_segundos`, `fecha_leido`) VALUES
(1, 17, 3, 28, '2026-07-23 08:38:35'),
(2, 17, 8, 25, '2026-07-23 08:45:40'),
(3, 17, 9, 21, '2026-07-23 08:46:38'),
(4, 16, 3, 1, '2026-07-23 09:00:34'),
(5, 16, 9, 2, '2026-07-23 09:00:48'),
(6, 16, 8, 2, '2026-07-23 09:01:06'),
(7, 16, 5, 1, '2026-07-23 10:00:55'),
(8, 16, 11, 3, '2026-07-23 10:01:07'),
(9, 16, 13, 2, '2026-07-23 10:01:21'),
(10, 16, 6, 3, '2026-07-23 10:01:44'),
(11, 16, 7, 3, '2026-07-23 10:01:59'),
(12, 16, 10, 4, '2026-07-23 10:02:15'),
(13, 16, 12, 5, '2026-07-23 10:02:31'),
(14, 16, 15, 6, '2026-07-23 10:02:52'),
(15, 16, 16, 9, '2026-07-23 10:03:34'),
(16, 16, 14, 7, '2026-07-23 10:03:52'),
(17, 16, 17, 12, '2026-07-23 10:04:18'),
(18, 16, 18, 7, '2026-07-23 10:04:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resenas`
--

CREATE TABLE `resenas` (
  `resenaID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `calificacion` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_edicion` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `resenas`
--

INSERT INTO `resenas` (`resenaID`, `userID`, `comentario`, `calificacion`, `fecha`, `fecha_edicion`) VALUES
(1, 18, 'Mi hijo ha progresado muchísimo en tan solo  2 semanas 🤩. Desde que empezó a usar Leo & Friends ha mejorado en su lectura, la repetición de palabras le ha  servido muchísimo en la pronunciación. Amo este sitio.', 5, '2026-06-22 04:46:41', '2026-06-25 01:21:44'),
(8, 19, '¡Wow! Qué gran sitio 🥳 desde que mi hija usa Leo & Friends ha mejorado en su pronunciación y ahora se le hace más fácil identificar palabras y animales. Le encantan las mascotitas, su favorita es Capy. 100% recomenda.', 5, '2026-06-25 01:14:13', NULL),
(9, 17, 'Solo quiero decir que me encanta este sitio. No sabía cómo ayudar a mí hija con su lectura, pero este sitio realmente le ha ayudado muchísimo, se ha vuelto más segura de sí misma y ha logrado identificar palabras ella solita.', 5, '2026-06-25 01:19:42', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `silabas`
--

CREATE TABLE `silabas` (
  `id` int(11) NOT NULL,
  `silaba` varchar(10) NOT NULL,
  `audio_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `silabas`
--

INSERT INTO `silabas` (`id`, `silaba`, `audio_path`) VALUES
(1, 'Ma', 'audios/Ma.mp3'),
(2, 'Pa', 'audios/Pa.mp3'),
(3, 'La', 'audios/La.mp3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

CREATE TABLE `suscripciones` (
  `suscripcionID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `paqueteID` int(11) NOT NULL,
  `estado` enum('trial','activa','vencida') DEFAULT 'trial',
  `fecha_inicio` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_fin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`suscripcionID`, `userID`, `paqueteID`, `estado`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 20, 2, 'activa', '2026-07-05 21:45:14', NULL),
(2, 15, 1, 'activa', '2026-07-07 05:22:29', NULL),
(3, 30, 3, 'activa', '2026-07-20 18:38:53', NULL),
(4, 31, 3, 'activa', '2026-07-18 15:20:24', NULL),
(5, 16, 1, 'activa', '2026-07-23 05:17:21', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `userID` int(11) NOT NULL,
  `nombre_nino` varchar(100) NOT NULL,
  `edad_nino` int(11) NOT NULL DEFAULT 0,
  `nombre_papa` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto_nino` varchar(255) DEFAULT NULL,
  `foto_padre` varchar(255) DEFAULT NULL,
  `rol` enum('usuario','admin') DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  `token_recuperacion` varchar(64) DEFAULT NULL,
  `token_expiracion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`userID`, `nombre_nino`, `edad_nino`, `nombre_papa`, `correo`, `password`, `foto_nino`, `foto_padre`, `rol`, `fecha_registro`, `token_recuperacion`, `token_expiracion`) VALUES
(15, 'Admin', 0, 'Administrador', 'leo&friends@admin.com', '$2y$10$vCgkSLr2/qT0Vf3C6rvc4.NGisiZF/DUH7wPT15XY.gbHvV6VKQlO', NULL, NULL, 'admin', '2026-06-11 02:02:21', NULL, NULL),
(16, 'Leo & Friends', 0, 'Administrador', 'admin1@admin.com', '$2y$10$vCgkSLr2/qT0Vf3C6rvc4.NGisiZF/DUH7wPT15XY.gbHvV6VKQlO', 'av_6a61a5c6bb8037.01268402.jpg', NULL, 'admin', '2026-06-11 02:05:59', NULL, NULL),
(17, 'Lucy', 0, 'Kenia Beltrán', 'kenia26@gmail.com', '$2y$10$aVPCeX.SIs0DTtlSCYWfF.Vy1pwqOZjJvZX/UqL6hFRI//kXVKSCm', NULL, 'mama2.jpg', 'usuario', '2026-06-14 04:10:33', NULL, NULL),
(18, 'Pedrito', 0, 'Susana Gonzales', 'susanagonzales@gmail.com', '$2y$10$1LoqGMLe5JkGqTyBmX0xsOBewhho4sFEoiLM0iECJn13rYJ69BvWy', 'nino1.jpg', 'mama1.jpg', 'usuario', '2026-06-17 18:21:42', NULL, NULL),
(19, 'Valeria', 0, 'Carlos Ponce', 'carsloponcesoriano@gmail.com', '$2y$10$QO037MeeXdsL.KgnsSEvGOjt7kBBp.WAY7kmjllHWV7HrNsho0QJG', NULL, 'papa1.jpg', 'usuario', '2026-06-19 20:10:32', NULL, NULL),
(20, 'Vale', 0, 'Lolo', 'lolorivas2341@gmail.com', '$2y$10$8v/11mhyPZkoCbBoJ8k72.EA1K/5ZAaDNvXoehcfhmJkytDUhUeWi', 'av_6a481b00d9ed02.62389939.jpg', 'av_6a481b00da7d79.36941822.jpg', 'usuario', '2026-07-03 20:24:14', NULL, NULL),
(21, 'Armando', 0, 'Ana', 'anitalopez@gmail.com', '$2y$10$ZNhJFEFQpFUTup3nxR8g3eVd0nIkATO34In73amupoHkPR15m6D1m', NULL, NULL, 'usuario', '2026-07-04 05:59:27', NULL, NULL),
(26, 'María', 0, 'Roberto', 'rober123@gmail.coom', '$2y$10$zrcuiOjPX5CoVxFHLuuqHeaplDGLvsUxLlSSxkrbK2DE69pATUg.W', NULL, NULL, 'usuario', '2026-07-04 06:15:08', NULL, NULL),
(28, 'Brenda', 0, 'Gertrudis', 'gomez333@gmail.coom', '$2y$10$P22vjvigxDolQvy2PoAvMOlxLbOK1urNAo48bw0ll/KdSSDPt8/xe', NULL, NULL, 'usuario', '2026-07-04 06:18:14', NULL, NULL),
(29, 'Byronsito', 0, 'Carlos', 'byronPNG@gmail.com', '$2y$10$FOstG8YtXEkzlD8FEDvyUuz15qYPgei.VbKaF.KI6S6VQQp9eJtu.', NULL, NULL, 'usuario', '2026-07-09 22:39:29', NULL, NULL),
(30, 'Danielito', 0, 'Cristian', 'danielito@gmail.com', '$2y$10$YiZPEQSIvSoT.o7iB8MzVuGbVbZzXC6u69DiqBKwKAHj5EUo0A3I2', NULL, NULL, 'usuario', '2026-07-09 22:40:22', NULL, NULL),
(31, 'Andrés', 7, 'Pablito', 'hola@hotmail', '$2y$10$GYS4juhDiZIFUWzFSvHOzuU8u8.V0S1HZvFNeAOxyHsNElbSzjfga', 'av_6a5b99d74514d9.07486590.png', 'av_6a5b9a5e1506e0.92122427.jpg', 'usuario', '2026-07-18 15:09:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_logros`
--

CREATE TABLE `usuario_logros` (
  `usuarioLogroID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `logroID` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_misiones`
--

CREATE TABLE `usuario_misiones` (
  `usuario_misionID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `misionID` int(11) DEFAULT NULL,
  `completada` tinyint(1) DEFAULT 0,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_respuestas`
--

CREATE TABLE `usuario_respuestas` (
  `usuario_id` int(11) NOT NULL,
  `opcion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_respuestas`
--

INSERT INTO `usuario_respuestas` (`usuario_id`, `opcion_id`) VALUES
(28, 12),
(28, 22),
(28, 31),
(28, 41),
(28, 50),
(29, 10),
(29, 20),
(29, 30),
(29, 40),
(29, 50),
(30, 11),
(30, 21),
(30, 31),
(30, 41),
(30, 51),
(31, 11),
(31, 21),
(31, 31),
(31, 42),
(31, 52);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuestionario_opciones`
--
ALTER TABLE `cuestionario_opciones`
  ADD PRIMARY KEY (`opcion_id`),
  ADD KEY `pregunta_id` (`pregunta_id`);

--
-- Indices de la tabla `cuestionario_preguntas`
--
ALTER TABLE `cuestionario_preguntas`
  ADD PRIMARY KEY (`pregunta_id`);

--
-- Indices de la tabla `leo_estadisticas`
--
ALTER TABLE `leo_estadisticas`
  ADD PRIMARY KEY (`estadisticaID`),
  ADD KEY `userID` (`userID`);

--
-- Indices de la tabla `leo_lecciones`
--
ALTER TABLE `leo_lecciones`
  ADD PRIMARY KEY (`leccionID`),
  ADD KEY `nivelID` (`nivelID`);

--
-- Indices de la tabla `leo_niveles`
--
ALTER TABLE `leo_niveles`
  ADD PRIMARY KEY (`nivelID`);

--
-- Indices de la tabla `leo_niveles_desbloqueo`
--
ALTER TABLE `leo_niveles_desbloqueo`
  ADD PRIMARY KEY (`desbloqueoID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `nivelID` (`nivelID`);

--
-- Indices de la tabla `leo_palabras`
--
ALTER TABLE `leo_palabras`
  ADD PRIMARY KEY (`palabraID`),
  ADD KEY `leccionID` (`leccionID`);

--
-- Indices de la tabla `leo_progreso`
--
ALTER TABLE `leo_progreso`
  ADD PRIMARY KEY (`progresoID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `nivelID` (`nivelID`),
  ADD KEY `leccionID` (`leccionID`),
  ADD KEY `palabraID` (`palabraID`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`libro_id`),
  ADD KEY `nivel_id` (`nivel_id`);

--
-- Indices de la tabla `libro_atributos`
--
ALTER TABLE `libro_atributos`
  ADD PRIMARY KEY (`libro_id`,`opcion_id`),
  ADD KEY `opcion_id` (`opcion_id`);

--
-- Indices de la tabla `logros`
--
ALTER TABLE `logros`
  ADD PRIMARY KEY (`logroID`);

--
-- Indices de la tabla `misiones_diarias`
--
ALTER TABLE `misiones_diarias`
  ADD PRIMARY KEY (`misionID`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`nivel_id`);

--
-- Indices de la tabla `oraciones`
--
ALTER TABLE `oraciones`
  ADD PRIMARY KEY (`oracionesID`),
  ADD KEY `pagina_id` (`pagina_id`);

--
-- Indices de la tabla `paginas_libro`
--
ALTER TABLE `paginas_libro`
  ADD PRIMARY KEY (`pagina_id`),
  ADD KEY `libro_id` (`libro_id`);

--
-- Indices de la tabla `paquetes`
--
ALTER TABLE `paquetes`
  ADD PRIMARY KEY (`paqueteID`);

--
-- Indices de la tabla `paquete_beneficios`
--
ALTER TABLE `paquete_beneficios`
  ADD PRIMARY KEY (`beneficioID`),
  ADD KEY `paqueteID` (`paqueteID`);

--
-- Indices de la tabla `progreso`
--
ALTER TABLE `progreso`
  ADD PRIMARY KEY (`progresoID`),
  ADD KEY `userID` (`userID`);

--
-- Indices de la tabla `progreso_libros`
--
ALTER TABLE `progreso_libros`
  ADD PRIMARY KEY (`progreso_libro_id`),
  ADD UNIQUE KEY `unico_usuario_libro` (`userID`,`libro_id`);

--
-- Indices de la tabla `resenas`
--
ALTER TABLE `resenas`
  ADD PRIMARY KEY (`resenaID`),
  ADD UNIQUE KEY `userID` (`userID`);

--
-- Indices de la tabla `silabas`
--
ALTER TABLE `silabas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD PRIMARY KEY (`suscripcionID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `paqueteID` (`paqueteID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `usuario_logros`
--
ALTER TABLE `usuario_logros`
  ADD PRIMARY KEY (`usuarioLogroID`);

--
-- Indices de la tabla `usuario_misiones`
--
ALTER TABLE `usuario_misiones`
  ADD PRIMARY KEY (`usuario_misionID`);

--
-- Indices de la tabla `usuario_respuestas`
--
ALTER TABLE `usuario_respuestas`
  ADD PRIMARY KEY (`usuario_id`,`opcion_id`),
  ADD KEY `opcion_id` (`opcion_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuestionario_opciones`
--
ALTER TABLE `cuestionario_opciones`
  MODIFY `opcion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `cuestionario_preguntas`
--
ALTER TABLE `cuestionario_preguntas`
  MODIFY `pregunta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `leo_estadisticas`
--
ALTER TABLE `leo_estadisticas`
  MODIFY `estadisticaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `leo_lecciones`
--
ALTER TABLE `leo_lecciones`
  MODIFY `leccionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `leo_niveles`
--
ALTER TABLE `leo_niveles`
  MODIFY `nivelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `leo_niveles_desbloqueo`
--
ALTER TABLE `leo_niveles_desbloqueo`
  MODIFY `desbloqueoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `leo_palabras`
--
ALTER TABLE `leo_palabras`
  MODIFY `palabraID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `leo_progreso`
--
ALTER TABLE `leo_progreso`
  MODIFY `progresoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `libro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `logros`
--
ALTER TABLE `logros`
  MODIFY `logroID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `misiones_diarias`
--
ALTER TABLE `misiones_diarias`
  MODIFY `misionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `nivel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `oraciones`
--
ALTER TABLE `oraciones`
  MODIFY `oracionesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `paginas_libro`
--
ALTER TABLE `paginas_libro`
  MODIFY `pagina_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `paquetes`
--
ALTER TABLE `paquetes`
  MODIFY `paqueteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `paquete_beneficios`
--
ALTER TABLE `paquete_beneficios`
  MODIFY `beneficioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `progreso`
--
ALTER TABLE `progreso`
  MODIFY `progresoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `progreso_libros`
--
ALTER TABLE `progreso_libros`
  MODIFY `progreso_libro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `resenas`
--
ALTER TABLE `resenas`
  MODIFY `resenaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `silabas`
--
ALTER TABLE `silabas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  MODIFY `suscripcionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `usuario_logros`
--
ALTER TABLE `usuario_logros`
  MODIFY `usuarioLogroID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_misiones`
--
ALTER TABLE `usuario_misiones`
  MODIFY `usuario_misionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuestionario_opciones`
--
ALTER TABLE `cuestionario_opciones`
  ADD CONSTRAINT `cuestionario_opciones_ibfk_1` FOREIGN KEY (`pregunta_id`) REFERENCES `cuestionario_preguntas` (`pregunta_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `leo_estadisticas`
--
ALTER TABLE `leo_estadisticas`
  ADD CONSTRAINT `leo_estadisticas_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usuarios` (`userID`);

--
-- Filtros para la tabla `leo_lecciones`
--
ALTER TABLE `leo_lecciones`
  ADD CONSTRAINT `leo_lecciones_ibfk_1` FOREIGN KEY (`nivelID`) REFERENCES `leo_niveles` (`nivelID`);

--
-- Filtros para la tabla `leo_niveles_desbloqueo`
--
ALTER TABLE `leo_niveles_desbloqueo`
  ADD CONSTRAINT `leo_niveles_desbloqueo_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usuarios` (`userID`),
  ADD CONSTRAINT `leo_niveles_desbloqueo_ibfk_2` FOREIGN KEY (`nivelID`) REFERENCES `leo_niveles` (`nivelID`);

--
-- Filtros para la tabla `leo_palabras`
--
ALTER TABLE `leo_palabras`
  ADD CONSTRAINT `leo_palabras_ibfk_1` FOREIGN KEY (`leccionID`) REFERENCES `leo_lecciones` (`leccionID`);

--
-- Filtros para la tabla `leo_progreso`
--
ALTER TABLE `leo_progreso`
  ADD CONSTRAINT `leo_progreso_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usuarios` (`userID`),
  ADD CONSTRAINT `leo_progreso_ibfk_2` FOREIGN KEY (`nivelID`) REFERENCES `leo_niveles` (`nivelID`),
  ADD CONSTRAINT `leo_progreso_ibfk_3` FOREIGN KEY (`leccionID`) REFERENCES `leo_lecciones` (`leccionID`),
  ADD CONSTRAINT `leo_progreso_ibfk_4` FOREIGN KEY (`palabraID`) REFERENCES `leo_palabras` (`palabraID`);

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`nivel_id`) REFERENCES `niveles` (`nivel_id`);

--
-- Filtros para la tabla `libro_atributos`
--
ALTER TABLE `libro_atributos`
  ADD CONSTRAINT `libro_atributos_ibfk_1` FOREIGN KEY (`libro_id`) REFERENCES `libros` (`libro_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `libro_atributos_ibfk_2` FOREIGN KEY (`opcion_id`) REFERENCES `cuestionario_opciones` (`opcion_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `oraciones`
--
ALTER TABLE `oraciones`
  ADD CONSTRAINT `oraciones_ibfk_1` FOREIGN KEY (`pagina_id`) REFERENCES `paginas_libro` (`pagina_id`);

--
-- Filtros para la tabla `paginas_libro`
--
ALTER TABLE `paginas_libro`
  ADD CONSTRAINT `paginas_libro_ibfk_1` FOREIGN KEY (`libro_id`) REFERENCES `libros` (`libro_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `paquete_beneficios`
--
ALTER TABLE `paquete_beneficios`
  ADD CONSTRAINT `paquete_beneficios_ibfk_1` FOREIGN KEY (`paqueteID`) REFERENCES `paquetes` (`paqueteID`);

--
-- Filtros para la tabla `progreso`
--
ALTER TABLE `progreso`
  ADD CONSTRAINT `progreso_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usuarios` (`userID`);

--
-- Filtros para la tabla `progreso_libros`
--
ALTER TABLE `progreso_libros`
  ADD CONSTRAINT `progreso_libros_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usuarios` (`userID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `resenas`
--
ALTER TABLE `resenas`
  ADD CONSTRAINT `resenas_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usuarios` (`userID`);

--
-- Filtros para la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD CONSTRAINT `suscripciones_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usuarios` (`userID`),
  ADD CONSTRAINT `suscripciones_ibfk_2` FOREIGN KEY (`paqueteID`) REFERENCES `paquetes` (`paqueteID`);

--
-- Filtros para la tabla `usuario_respuestas`
--
ALTER TABLE `usuario_respuestas`
  ADD CONSTRAINT `usuario_respuestas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`userID`) ON DELETE CASCADE,
  ADD CONSTRAINT `usuario_respuestas_ibfk_2` FOREIGN KEY (`opcion_id`) REFERENCES `cuestionario_opciones` (`opcion_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
