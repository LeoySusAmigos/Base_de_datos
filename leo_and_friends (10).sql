-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2026 at 12:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leo_and_friends`
--

-- --------------------------------------------------------

--
-- Table structure for table `cuestionario_opciones`
--

CREATE TABLE `cuestionario_opciones` (
  `opcion_id` int(11) NOT NULL,
  `pregunta_id` int(11) NOT NULL,
  `texto_opcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cuestionario_opciones`
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
(40, 4, 'Tormentas o truenos ⚡'),
(41, 4, 'La oscuridad 🌙'),
(42, 4, 'Bichos o insectos 🐜'),
(44, 4, 'Ninguno, ¡todo marcha bien!✨'),
(50, 5, 'Mantener la concentración con historias dinámicas'),
(51, 5, 'Comprender mejor lo que lee mediante juegos'),
(52, 5, 'Ganar confianza leyendo textos amigables');

-- --------------------------------------------------------

--
-- Table structure for table `cuestionario_preguntas`
--

CREATE TABLE `cuestionario_preguntas` (
  `pregunta_id` int(11) NOT NULL,
  `texto_pregunta` varchar(255) NOT NULL,
  `tipo_accion` enum('FILTRO','PREFERENCIA') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cuestionario_preguntas`
--

INSERT INTO `cuestionario_preguntas` (`pregunta_id`, `texto_pregunta`, `tipo_accion`) VALUES
(1, '¿Cuántos años tiene tu hijo/a?', 'PREFERENCIA'),
(2, '¿Qué tipo de historias despiertan más su curiosidad?', 'PREFERENCIA'),
(3, '¿En qué etapa del camino de la lectura se encuentra hoy?', 'PREFERENCIA'),
(4, '¿Hay algún elemento que prefieras que evitemos por ahora?', 'FILTRO'),
(5, '¿Cuál es el superpoder que queremos reforzar en su lectura?', 'PREFERENCIA');

-- --------------------------------------------------------

--
-- Table structure for table `leo_estadisticas`
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
-- Table structure for table `leo_lecciones`
--

CREATE TABLE `leo_lecciones` (
  `leccionID` int(11) NOT NULL,
  `nivelID` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leo_niveles`
--

CREATE TABLE `leo_niveles` (
  `nivelID` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `vocal` char(1) NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leo_niveles`
--

INSERT INTO `leo_niveles` (`nivelID`, `nombre`, `vocal`, `orden`) VALUES
(1, 'Nivel A', 'A', 1),
(2, 'Nivel E', 'E', 2),
(3, 'Nivel I', 'I', 3),
(4, 'Nivel O', 'O', 4),
(5, 'Nivel U', 'U', 5);

-- --------------------------------------------------------

--
-- Table structure for table `leo_niveles_desbloqueo`
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
-- Dumping data for table `leo_niveles_desbloqueo`
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
-- Table structure for table `leo_palabras`
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

-- --------------------------------------------------------

--
-- Table structure for table `leo_progreso`
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
-- Table structure for table `libros`
--

CREATE TABLE `libros` (
  `libro_id` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `portada` varchar(255) NOT NULL,
  `tiempo_estimado` int(11) NOT NULL,
  `nivel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `libros`
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
-- Table structure for table `libro_atributos`
--

CREATE TABLE `libro_atributos` (
  `libro_id` int(11) NOT NULL,
  `opcion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logros`
--

CREATE TABLE `logros` (
  `logroID` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `icono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `misiones_diarias`
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
-- Table structure for table `niveles`
--

CREATE TABLE `niveles` (
  `nivel_id` int(11) NOT NULL,
  `niveles` enum('Nivel 1','Nivel 2','Nivel 3','Nivel 4','Nivel 5') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `niveles`
--

INSERT INTO `niveles` (`nivel_id`, `niveles`) VALUES
(1, 'Nivel 1'),
(2, 'Nivel 2'),
(3, 'Nivel 3'),
(4, 'Nivel 4'),
(5, 'Nivel 5');

-- --------------------------------------------------------

--
-- Table structure for table `oraciones`
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
-- Table structure for table `paginas_libro`
--

CREATE TABLE `paginas_libro` (
  `pagina_id` int(11) NOT NULL,
  `libro_id` int(11) NOT NULL,
  `numero_pagina` int(11) NOT NULL,
  `texto_pagina` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paginas_libro`
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
(29, 14, 1, 'Mateo nunca salía de casa sin Nova, su inseparable perrito de pelaje blanco y un pequeño sombrero de mago.\r\nTodos pensaban que era un simple accesorio divertido, pero Nova jamás permitía que nadie lo tocara.\r\nDebajo de ese sombrero escondía un diminuto pero poderoso secreto.'),
(30, 14, 2, 'Una mañana, la escuela organizó una excursión al bosque.\r\nMientras exploraban un sendero, un fuerte viento hizo que el mapa del grupo saliera volando hasta quedar atrapado en la copa de un árbol muy alto.\r\n\r\nSin el mapa, nadie sabía cuál era el camino de regreso.'),
(31, 14, 3, 'Los niños intentaron alcanzarlo con ramas y piedras, pero fue imposible.\r\nMateo miró hacia arriba y suspiró. Con una pequeña sonrisa dijo que deseaba que algo o alguien los ayudara a salir.\r\n\r\nNova levantó las orejas, se alejó unos pasos y su sombrero comenzó a flotar.'),
(32, 14, 4, 'En ese instante, una pequeña estrella salió volando del sombrero de Nova. \r\nBrilló más fuerte y desapareció, luego, una suave brisa comenzó a mover las ramas. Poco a poco, el mapa se desprendió y descendió flotando hasta caer justo en las manos de Mateo.\r\n\r\nNadie notó lo que había ocurrido... excepto él.'),
(33, 14, 5, 'Esa noche, mientras Nova dormía profundamente, Mateo levantó con cuidado el borde del sombrero, aunque no encontró nada extraño, él notó que había algo diferente en el sombrero de Nova.\r\n\r\nAhí comprendió que fue Nova quien lo ayudó con su magia...'),
(34, 14, 6, 'Desde entonces, Mateo siguió llevando a Nova a todas partes. Nunca volvió a pedir un deseo por cosas grandes ni imposibles.\r\n\r\nSabía que, cuando un deseo nacía para ayudar a alguien de verdad, una pequeña estrella escondida bajo un sombrero de mago siempre encontraba la forma de iluminar el camino.'),
(35, 17, 1, 'Azul era un pequeño pájaro que vivía en el árbol más alto del bosque. Cada mañana observaba el horizonte y se preguntaba qué habría más allá de las montañas.\r\nAunque soñaba con descubrir nuevos lugares, también sentía un pequeño miedo de alejarse por primera vez de su hogar.'),
(36, 17, 2, 'Una mañana reunió todo su valor y levantó el vuelo.\r\nAtravesó un valle cubierto de flores de todos los colores, donde miles de mariposas pintaban el aire con sus alas.\r\nEl viento olía a miel y las abejas parecían cantar mientras viajaban de flor en flor.'),
(37, 17, 3, 'Más adelante encontró una enorme cascada que caía entre montañas cubiertas de niebla.\r\nEl agua formaba un arcoíris tan brillante que parecía un puente hacia las nubes. Azul cruzó por encima de él y, por un momento, sintió que podía tocar el cielo con las puntas de sus alas.'),
(38, 17, 4, 'Al caer la tarde llegó a un bosque donde los árboles tenían hojas doradas que brillaban con la luz del sol. Entre las ramas vivían aves de muchos colores que compartían historias de lugares lejanos.\r\nAzul comprendió que cada viajero llevaba recuerdos diferentes, y que todos tenían algo valioso para contar.'),
(39, 17, 5, 'Cuando llegó la noche, descansó sobre una colina desde donde podía ver un cielo lleno de estrellas. Miró hacia el bosque donde había nacido y descubrió que, aunque estaba muy lejos, siempre lo llevaría en su corazón. \r\nEntonces entendió que viajar no significa olvidar el hogar, sino regresar con nuevas historias que contar.'),
(40, 17, 6, 'Al volver, los pequeños pájaros se reunieron para escuchar sus aventuras. Azul les habló de los campos de flores, de la cascada entre las montañas y del bosque dorado donde hizo nuevos amigos. Mientras todos imaginaban aquellos lugares, una suave brisa despeinó sus plumas.\r\nAzul sonrió al cielo, porque sabía que aún quedaban muchos rincones maravillosos esperando ser descubiertos.'),
(41, 18, 1, 'Una mañana, Leo despertó con una gran sonrisa.\r\nCapy y Finx ya estaban preparando una sorpresa muy especial.\r\nColgaron banderines entre los árboles, inflaron globos de colores y acomodaron una mesa llena de frutas, galletas y jugo. Parecía que iban a celebrar el cumpleaños de alguien.'),
(42, 18, 2, 'Pero no era un cumpleaños.\r\nEra una fiesta para recordar todas las aventuras que habían vivido juntos. Hablaron del valiente Tito, del pequeño Dino, de Trixi, del mapache, de Nova y del pájaro Azul.\r\nCada historia les sacó una sonrisa y les recordó cuánto se habían divertido.'),
(43, 18, 3, 'Entonces Leo tuvo una idea.\r\nBuscaron una gran caja de madera y comenzaron a guardar pequeños recuerdos de cada aventura: una pluma azul, una estrella brillante, una hoja del bosque, un mapa, una concha y una pequeña piedra.\r\nAsí, cada recuerdo tendría un lugar especial.'),
(44, 18, 4, 'Cuando terminaron, escribieron una nota...\r\n\r\n\"Gracias por acompañarnos en cada aventura. Esperamos que hayas disfrutado este viaje tanto como nosotros.\"\r\n\r\nLos tres sonrieron con alegría y se abrazaron.'),
(45, 18, 5, 'Era tiempo de celebrar.\r\nLos tres comenzaron a correr por el bosque, jugaron a las escondidas, hicieron una carrera hasta el río y terminaron riendo tan fuerte que hasta el Sol, la Luna y las nubes parecían querer unirse a la diversión.\r\nTodos estaban tan contentos...\r\n'),
(46, 18, 6, 'Cuando el sol comenzó a esconderse, Los tres amigos se reunieron una vez más y, con una gran sonrisa, levantaron la mano para despedirse.\r\n\r\n—¡Hasta la próxima aventura, querido explorador!\r\n\r\nDespués siguieron riendo y jugando juntos, porque sabían que las mejores historias nunca terminan... solo esperan a que alguien vuelva a abrir un libro.');

-- --------------------------------------------------------

--
-- Table structure for table `paquetes`
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
-- Dumping data for table `paquetes`
--

INSERT INTO `paquetes` (`paqueteID`, `nombre`, `precio`, `descripcion`, `popular`, `activo`) VALUES
(1, 'Plan Gratis', 0.00, 'Empieza tu aventura con Leo sin costo. Perfecto para conocer la plataforma.', 0, 1),
(2, 'Plan Aventura', 5.99, 'Aprende paso a paso con Leo, Capy y Finx desbloqueándose progresivamente.', 0, 1),
(3, 'Plan Safari', 12.99, 'Leo, Capy y Finx completamente desbloqueados desde el primer día.', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `paquete_beneficios`
--

CREATE TABLE `paquete_beneficios` (
  `beneficioID` int(11) NOT NULL,
  `paqueteID` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `orden` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paquete_beneficios`
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
-- Table structure for table `progreso`
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
-- Dumping data for table `progreso`
--

INSERT INTO `progreso` (`progresoID`, `userID`, `puntos`, `racha`, `nivel_actual`, `leccion_actual`, `porcentaje`, `fecha_actualizacion`, `modulo_actual`) VALUES
(2, 18, 0, 0, 1, 1, 0, '2026-06-25 03:50:50', 'leo'),
(3, 20, 0, 0, 1, 1, 0, '2026-07-04 05:23:11', 'leo'),
(4, 21, 0, 0, 1, 1, 0, '2026-07-04 06:13:36', 'leo'),
(5, 28, 0, 0, 1, 1, 0, '2026-07-04 06:33:08', 'leo'),
(6, 17, 0, 0, 1, 1, 0, '2026-07-05 22:32:17', 'leo'),
(7, 15, 0, 0, 1, 1, 0, '2026-07-06 15:06:47', 'leo'),
(8, 30, 0, 0, 1, 1, 0, '2026-07-15 22:19:52', 'leo'),
(9, 31, 0, 0, 1, 1, 0, '2026-07-18 15:20:04', 'leo');

-- --------------------------------------------------------

--
-- Table structure for table `progreso_libros`
--

CREATE TABLE `progreso_libros` (
  `progreso_libro_id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `libro_id` int(11) NOT NULL,
  `fecha_leido` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resenas`
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
-- Dumping data for table `resenas`
--

INSERT INTO `resenas` (`resenaID`, `userID`, `comentario`, `calificacion`, `fecha`, `fecha_edicion`) VALUES
(1, 18, 'Mi hijo ha progresado muchísimo en tan solo  2 semanas 🤩. Desde que empezó a usar Leo & Friends ha mejorado en su lectura, la repetición de palabras le ha  servido muchísimo en la pronunciación. Amo este sitio.', 5, '2026-06-22 04:46:41', '2026-06-25 01:21:44'),
(8, 19, '¡Wow! Qué gran sitio 🥳 desde que mi hija usa Leo & Friends ha mejorado en su pronunciación y ahora se le hace más fácil identificar palabras y animales. Le encantan las mascotitas, su favorita es Capy. 100% recomenda.', 5, '2026-06-25 01:14:13', NULL),
(9, 17, 'Solo quiero decir que me encanta este sitio. No sabía cómo ayudar a mí hija con su lectura, pero este sitio realmente le ha ayudado muchísimo, se ha vuelto más segura de sí misma y ha logrado identificar palabras ella solita.', 5, '2026-06-25 01:19:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `silabas`
--

CREATE TABLE `silabas` (
  `id` int(11) NOT NULL,
  `silaba` varchar(10) NOT NULL,
  `audio_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `silabas`
--

INSERT INTO `silabas` (`id`, `silaba`, `audio_path`) VALUES
(1, 'Ma', 'audios/Ma.mp3'),
(2, 'Pa', 'audios/Pa.mp3'),
(3, 'La', 'audios/La.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `suscripciones`
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
-- Dumping data for table `suscripciones`
--

INSERT INTO `suscripciones` (`suscripcionID`, `userID`, `paqueteID`, `estado`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 20, 2, 'activa', '2026-07-05 21:45:14', NULL),
(2, 15, 1, 'activa', '2026-07-07 05:22:29', NULL),
(3, 30, 3, 'activa', '2026-07-20 18:38:53', NULL),
(4, 31, 3, 'activa', '2026-07-18 15:20:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
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
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`userID`, `nombre_nino`, `edad_nino`, `nombre_papa`, `correo`, `password`, `foto_nino`, `foto_padre`, `rol`, `fecha_registro`, `token_recuperacion`, `token_expiracion`) VALUES
(15, 'Admin', 0, 'Administrador', 'leo&friends@admin.com', '$2y$10$vCgkSLr2/qT0Vf3C6rvc4.NGisiZF/DUH7wPT15XY.gbHvV6VKQlO', NULL, NULL, 'admin', '2026-06-11 02:02:21', NULL, NULL),
(16, '', 0, 'Administrador', 'admin1@admin.com', '$2y$10$vCgkSLr2/qT0Vf3C6rvc4.NGisiZF/DUH7wPT15XY.gbHvV6VKQlO', NULL, NULL, 'admin', '2026-06-11 02:05:59', NULL, NULL),
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
-- Table structure for table `usuario_logros`
--

CREATE TABLE `usuario_logros` (
  `usuarioLogroID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `logroID` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usuario_misiones`
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
-- Table structure for table `usuario_respuestas`
--

CREATE TABLE `usuario_respuestas` (
  `usuario_id` int(11) NOT NULL,
  `opcion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuario_respuestas`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `cuestionario_opciones`
--
ALTER TABLE `cuestionario_opciones`
  ADD PRIMARY KEY (`opcion_id`),
  ADD KEY `pregunta_id` (`pregunta_id`);

--
-- Indexes for table `cuestionario_preguntas`
--
ALTER TABLE `cuestionario_preguntas`
  ADD PRIMARY KEY (`pregunta_id`);

--
-- Indexes for table `leo_estadisticas`
--
ALTER TABLE `leo_estadisticas`
  ADD PRIMARY KEY (`estadisticaID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `leo_lecciones`
--
ALTER TABLE `leo_lecciones`
  ADD PRIMARY KEY (`leccionID`),
  ADD KEY `nivelID` (`nivelID`);

--
-- Indexes for table `leo_niveles`
--
ALTER TABLE `leo_niveles`
  ADD PRIMARY KEY (`nivelID`);

--
-- Indexes for table `leo_niveles_desbloqueo`
--
ALTER TABLE `leo_niveles_desbloqueo`
  ADD PRIMARY KEY (`desbloqueoID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `nivelID` (`nivelID`);

--
-- Indexes for table `leo_palabras`
--
ALTER TABLE `leo_palabras`
  ADD PRIMARY KEY (`palabraID`),
  ADD KEY `leccionID` (`leccionID`);

--
-- Indexes for table `leo_progreso`
--
ALTER TABLE `leo_progreso`
  ADD PRIMARY KEY (`progresoID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `nivelID` (`nivelID`),
  ADD KEY `leccionID` (`leccionID`),
  ADD KEY `palabraID` (`palabraID`);

--
-- Indexes for table `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`libro_id`),
  ADD KEY `nivel_id` (`nivel_id`);

--
-- Indexes for table `libro_atributos`
--
ALTER TABLE `libro_atributos`
  ADD PRIMARY KEY (`libro_id`,`opcion_id`),
  ADD KEY `opcion_id` (`opcion_id`);

--
-- Indexes for table `logros`
--
ALTER TABLE `logros`
  ADD PRIMARY KEY (`logroID`);

--
-- Indexes for table `misiones_diarias`
--
ALTER TABLE `misiones_diarias`
  ADD PRIMARY KEY (`misionID`);

--
-- Indexes for table `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`nivel_id`);

--
-- Indexes for table `oraciones`
--
ALTER TABLE `oraciones`
  ADD PRIMARY KEY (`oracionesID`),
  ADD KEY `pagina_id` (`pagina_id`);

--
-- Indexes for table `paginas_libro`
--
ALTER TABLE `paginas_libro`
  ADD PRIMARY KEY (`pagina_id`),
  ADD KEY `libro_id` (`libro_id`);

--
-- Indexes for table `paquetes`
--
ALTER TABLE `paquetes`
  ADD PRIMARY KEY (`paqueteID`);

--
-- Indexes for table `paquete_beneficios`
--
ALTER TABLE `paquete_beneficios`
  ADD PRIMARY KEY (`beneficioID`),
  ADD KEY `paqueteID` (`paqueteID`);

--
-- Indexes for table `progreso`
--
ALTER TABLE `progreso`
  ADD PRIMARY KEY (`progresoID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `progreso_libros`
--
ALTER TABLE `progreso_libros`
  ADD PRIMARY KEY (`progreso_libro_id`),
  ADD UNIQUE KEY `unico_usuario_libro` (`userID`,`libro_id`);

--
-- Indexes for table `resenas`
--
ALTER TABLE `resenas`
  ADD PRIMARY KEY (`resenaID`),
  ADD UNIQUE KEY `userID` (`userID`);

--
-- Indexes for table `silabas`
--
ALTER TABLE `silabas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD PRIMARY KEY (`suscripcionID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `paqueteID` (`paqueteID`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indexes for table `usuario_logros`
--
ALTER TABLE `usuario_logros`
  ADD PRIMARY KEY (`usuarioLogroID`);

--
-- Indexes for table `usuario_misiones`
--
ALTER TABLE `usuario_misiones`
  ADD PRIMARY KEY (`usuario_misionID`);

--
-- Indexes for table `usuario_respuestas`
--
ALTER TABLE `usuario_respuestas`
  ADD PRIMARY KEY (`usuario_id`,`opcion_id`),
  ADD KEY `opcion_id` (`opcion_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cuestionario_opciones`
--
ALTER TABLE `cuestionario_opciones`
  MODIFY `opcion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `cuestionario_preguntas`
--
ALTER TABLE `cuestionario_preguntas`
  MODIFY `pregunta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leo_estadisticas`
--
ALTER TABLE `leo_estadisticas`
  MODIFY `estadisticaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leo_lecciones`
--
ALTER TABLE `leo_lecciones`
  MODIFY `leccionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leo_niveles`
--
ALTER TABLE `leo_niveles`
  MODIFY `nivelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leo_niveles_desbloqueo`
--
ALTER TABLE `leo_niveles_desbloqueo`
  MODIFY `desbloqueoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `leo_palabras`
--
ALTER TABLE `leo_palabras`
  MODIFY `palabraID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leo_progreso`
--
ALTER TABLE `leo_progreso`
  MODIFY `progresoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `libros`
--
ALTER TABLE `libros`
  MODIFY `libro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `logros`
--
ALTER TABLE `logros`
  MODIFY `logroID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `misiones_diarias`
--
ALTER TABLE `misiones_diarias`
  MODIFY `misionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `niveles`
--
ALTER TABLE `niveles`
  MODIFY `nivel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oraciones`
--
ALTER TABLE `oraciones`
  MODIFY `oracionesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paginas_libro`
--
ALTER TABLE `paginas_libro`
  MODIFY `pagina_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `paquetes`
--
ALTER TABLE `paquetes`
  MODIFY `paqueteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paquete_beneficios`
--
ALTER TABLE `paquete_beneficios`
  MODIFY `beneficioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `progreso`
--
ALTER TABLE `progreso`
  MODIFY `progresoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `progreso_libros`
--
ALTER TABLE `progreso_libros`
  MODIFY `progreso_libro_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resenas`
--
ALTER TABLE `resenas`
  MODIFY `resenaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `silabas`
--
ALTER TABLE `silabas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suscripciones`
--
ALTER TABLE `suscripciones`
  MODIFY `suscripcionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `usuario_logros`
--
ALTER TABLE `usuario_logros`
  MODIFY `usuarioLogroID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuario_misiones`
--
ALTER TABLE `usuario_misiones`
  MODIFY `usuario_misionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cuestionario_opciones`
--
ALTER TABLE `cuestionario_opciones`
  ADD CONSTRAINT `cuestionario_opciones_ibfk_1` FOREIGN KEY (`pregunta_id`) REFERENCES `cuestionario_preguntas` (`pregunta_id`) ON DELETE CASCADE;

--
-- Constraints for table `leo_estadisticas`
--
ALTER TABLE `leo_estadisticas`
  ADD CONSTRAINT `leo_estadisticas_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usuarios` (`userID`);

--
-- Constraints for table `leo_lecciones`
--
ALTER TABLE `leo_lecciones`
  ADD CONSTRAINT `leo_lecciones_ibfk_1` FOREIGN KEY (`nivelID`) REFERENCES `leo_niveles` (`nivelID`);

--
-- Constraints for table `leo_niveles_desbloqueo`
--
ALTER TABLE `leo_niveles_desbloqueo`
  ADD CONSTRAINT `leo_niveles_desbloqueo_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usuarios` (`userID`),
  ADD CONSTRAINT `leo_niveles_desbloqueo_ibfk_2` FOREIGN KEY (`nivelID`) REFERENCES `leo_niveles` (`nivelID`);

--
-- Constraints for table `leo_palabras`
--
ALTER TABLE `leo_palabras`
  ADD CONSTRAINT `leo_palabras_ibfk_1` FOREIGN KEY (`leccionID`) REFERENCES `leo_lecciones` (`leccionID`);

--
-- Constraints for table `leo_progreso`
--
ALTER TABLE `leo_progreso`
  ADD CONSTRAINT `leo_progreso_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usuarios` (`userID`),
  ADD CONSTRAINT `leo_progreso_ibfk_2` FOREIGN KEY (`nivelID`) REFERENCES `leo_niveles` (`nivelID`),
  ADD CONSTRAINT `leo_progreso_ibfk_3` FOREIGN KEY (`leccionID`) REFERENCES `leo_lecciones` (`leccionID`),
  ADD CONSTRAINT `leo_progreso_ibfk_4` FOREIGN KEY (`palabraID`) REFERENCES `leo_palabras` (`palabraID`);

--
-- Constraints for table `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`nivel_id`) REFERENCES `niveles` (`nivel_id`);

--
-- Constraints for table `libro_atributos`
--
ALTER TABLE `libro_atributos`
  ADD CONSTRAINT `libro_atributos_ibfk_1` FOREIGN KEY (`libro_id`) REFERENCES `libros` (`libro_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `libro_atributos_ibfk_2` FOREIGN KEY (`opcion_id`) REFERENCES `cuestionario_opciones` (`opcion_id`) ON DELETE CASCADE;

--
-- Constraints for table `oraciones`
--
ALTER TABLE `oraciones`
  ADD CONSTRAINT `oraciones_ibfk_1` FOREIGN KEY (`pagina_id`) REFERENCES `paginas_libro` (`pagina_id`);

--
-- Constraints for table `paginas_libro`
--
ALTER TABLE `paginas_libro`
  ADD CONSTRAINT `paginas_libro_ibfk_1` FOREIGN KEY (`libro_id`) REFERENCES `libros` (`libro_id`) ON DELETE CASCADE;

--
-- Constraints for table `paquete_beneficios`
--
ALTER TABLE `paquete_beneficios`
  ADD CONSTRAINT `paquete_beneficios_ibfk_1` FOREIGN KEY (`paqueteID`) REFERENCES `paquetes` (`paqueteID`);

--
-- Constraints for table `progreso`
--
ALTER TABLE `progreso`
  ADD CONSTRAINT `progreso_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usuarios` (`userID`);

--
-- Constraints for table `progreso_libros`
--
ALTER TABLE `progreso_libros`
  ADD CONSTRAINT `progreso_libros_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usuarios` (`userID`) ON DELETE CASCADE;

--
-- Constraints for table `resenas`
--
ALTER TABLE `resenas`
  ADD CONSTRAINT `resenas_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usuarios` (`userID`);

--
-- Constraints for table `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD CONSTRAINT `suscripciones_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usuarios` (`userID`),
  ADD CONSTRAINT `suscripciones_ibfk_2` FOREIGN KEY (`paqueteID`) REFERENCES `paquetes` (`paqueteID`);

--
-- Constraints for table `usuario_respuestas`
--
ALTER TABLE `usuario_respuestas`
  ADD CONSTRAINT `usuario_respuestas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`userID`) ON DELETE CASCADE,
  ADD CONSTRAINT `usuario_respuestas_ibfk_2` FOREIGN KEY (`opcion_id`) REFERENCES `cuestionario_opciones` (`opcion_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
