-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2026 a las 22:35:56
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
-- Estructura de tabla para la tabla `capy_actividades`
--

CREATE TABLE `capy_actividades` (
  `id` int(11) NOT NULL,
  `leccion_id` int(11) NOT NULL,
  `numero_actividad` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `instruccion` text DEFAULT NULL,
  `contenido` text DEFAULT NULL,
  `explicacion` text DEFAULT NULL,
  `audio_url` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `puntos` int(11) DEFAULT 10,
  `activa` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `capy_actividades`
--

INSERT INTO `capy_actividades` (`id`, `leccion_id`, `numero_actividad`, `tipo`, `titulo`, `instruccion`, `contenido`, `explicacion`, `audio_url`, `imagen`, `puntos`, `activa`) VALUES
(1, 1, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'niño|perro|escuela|lápiz', 'Estas palabras sirven para nombrar personas, animales, lugares y objetos.', NULL, NULL, 0, 1),
(2, 1, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', 'niña|perro|escuela|lápiz', 'Una palabra que sirve para nombrar algo se llama sustantivo. Puede nombrar una persona, un animal, un lugar o un objeto.', NULL, NULL, 10, 1),
(3, 1, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Cada sustantivo puede nombrar una persona, animal, lugar u objeto.', NULL, NULL, 10, 1),
(4, 1, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Gato es un sustantivo porque nombra a un animal.', NULL, NULL, 10, 1),
(5, 1, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Muy bien! Niño, parque y pelota son sustantivos.', NULL, NULL, 10, 1),
(16, 2, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'Las personas, los animales y los lugares también pueden ser sustantivos.', 'Los sustantivos pueden nombrar personas, animales, lugares y objetos.', NULL, NULL, 0, 1),
(17, 2, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Doctor nombra a una persona.', NULL, NULL, 10, 1),
(18, 2, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Mira qué nombra cada palabra antes de colocarla.', NULL, NULL, 10, 1),
(19, 2, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Perro nombra a un animal.', NULL, NULL, 10, 1),
(20, 2, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', 'Parque es un lugar.', NULL, NULL, 10, 1),
(21, 3, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'Los sustantivos aparecen cuando hablamos de personas, animales, lugares y objetos.', 'Podemos encontrar sustantivos en casi todas las oraciones.', NULL, NULL, 0, 1),
(22, 3, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Jardín es un sustantivo porque nombra un lugar.', NULL, NULL, 10, 1),
(23, 3, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Maestra es un sustantivo porque nombra un persona.', NULL, NULL, 10, 1),
(24, 3, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Biblioteca es un sustantivo porque nombra un lugar.', NULL, NULL, 10, 1),
(25, 3, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Excelente! Los sustantivos nombran personas, animales, lugares u objetos.', NULL, NULL, 20, 1),
(26, 4, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'mesa|libro|pelota|lápiz', 'Los objetos también pueden ser sustantivos porque tienen un nombre.', NULL, NULL, 0, 1),
(27, 4, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Lápiz es un objeto.', NULL, NULL, 10, 1),
(28, 4, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Observa qué nombra cada palabra.', NULL, NULL, 10, 1),
(29, 4, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Mesa nombra un objeto.', NULL, NULL, 10, 1),
(30, 4, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Lo encontraste! Una taza es un objeto.', NULL, NULL, 15, 1),
(31, 5, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'El niño juega con la pelota.', 'Una oración puede tener uno o varios sustantivos. Aquí encontramos niño y pelota.', NULL, NULL, 0, 1),
(32, 5, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'La opción con casa contiene un sustantivo.', NULL, NULL, 10, 1),
(33, 5, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', '¡Muy bien! Niño, gato y escuela son sustantivos.', NULL, NULL, 20, 1),
(34, 5, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Una oración puede unir palabras para expresar una idea.', NULL, NULL, 10, 1),
(35, 5, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Excelente! Ya puedes reconocer sustantivos dentro de una idea.', NULL, NULL, 20, 1),
(36, 6, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'Los artículos acompañan a los sustantivos. Algunos son: el, la, los y las.', 'Los artículos nos ayudan a acompañar y presentar a los sustantivos.', NULL, NULL, 0, 1),
(37, 6, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Usamos el con gato porque hablamos de un solo animal masculino.', NULL, NULL, 10, 1),
(38, 6, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Usamos la con niña.', NULL, NULL, 10, 1),
(39, 6, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Perros está en plural, por eso usamos los.', NULL, NULL, 10, 1),
(40, 6, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Muy bien! El artículo acompaña al sustantivo.', NULL, NULL, 20, 1),
(41, 7, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'el se usa con muchos sustantivos masculinos. la se usa con muchos sustantivos femeninos.', 'Por ejemplo: el perro y la casa.', NULL, NULL, 0, 1),
(42, 7, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Mesa es femenina: la mesa.', NULL, NULL, 10, 1),
(43, 7, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Perro es masculino: el perro.', NULL, NULL, 10, 1),
(44, 7, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Pelota es femenina: la pelota.', NULL, NULL, 10, 1),
(45, 7, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', 'Artículo y sustantivo deben concordar en género.', NULL, NULL, 20, 1),
(46, 8, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'Usamos los y las cuando hablamos de más de una persona, animal, lugar u objeto.', 'Por ejemplo: los gatos y las flores.', NULL, NULL, 0, 1),
(47, 8, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Libros está en plural: los libros.', NULL, NULL, 10, 1),
(48, 8, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Flores está en plural: las flores.', NULL, NULL, 10, 1),
(49, 8, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Los y las acompañan sustantivos en plural.', NULL, NULL, 15, 1),
(50, 8, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Excelente! Los artículos deben concordar con el sustantivo.', NULL, NULL, 20, 1),
(51, 9, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'También podemos usar un, una, unos y unas.', 'Estos artículos pueden acompañar a los sustantivos: un perro, una casa, unos libros, unas flores.', NULL, NULL, 0, 1),
(52, 9, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Usamos un con perro.', NULL, NULL, 10, 1),
(53, 9, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Usamos una con niña.', NULL, NULL, 10, 1),
(54, 9, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Usamos unos con gatos.', NULL, NULL, 10, 1),
(55, 9, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', 'Un, una, unos y unas presentan sustantivos de forma indefinida.', NULL, NULL, 20, 1),
(56, 10, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'El perro, la casa, los gatos y las flores.', 'El artículo debe combinar correctamente con el sustantivo.', NULL, NULL, 0, 1),
(57, 10, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'El artículo debe ir con el sustantivo.', NULL, NULL, 10, 1),
(58, 10, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'La mochila tiene concordancia correcta.', NULL, NULL, 10, 1),
(59, 10, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'El artículo acompaña al sustantivo.', NULL, NULL, 10, 1),
(60, 10, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Excelente! Ya puedes combinar artículos y sustantivos.', NULL, NULL, 20, 1),
(61, 11, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'Los adjetivos son palabras que nos ayudan a describir cómo es una persona, animal, lugar u objeto.', 'Un adjetivo nos da más información sobre un sustantivo. Por ejemplo: perro grande.', NULL, NULL, 0, 1),
(62, 11, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Pequeño describe cómo es el sustantivo.', NULL, NULL, 10, 1),
(63, 11, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Azul dice cómo es la mariposa.', NULL, NULL, 10, 1),
(64, 11, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Grande describe al sustantivo.', NULL, NULL, 10, 1),
(65, 11, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Muy bien! Grande, alegre y azul son adjetivos.', NULL, NULL, 20, 1),
(66, 12, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'Podemos usar adjetivos para decir cómo es una persona: amable, alegre, alto, pequeño, etc.', 'Los adjetivos nos ayudan a conocer mejor a las personas.', NULL, NULL, 0, 1),
(67, 12, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Alegre describe a la niña.', NULL, NULL, 10, 1),
(68, 12, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Grande describe al perro.', NULL, NULL, 10, 1),
(69, 12, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Bonita describe a la casa.', NULL, NULL, 10, 1),
(70, 12, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', 'El adjetivo nos dice cómo es el sustantivo.', NULL, NULL, 20, 1),
(71, 13, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'También podemos usar adjetivos para describir animales y objetos.', 'Podemos decir: perro pequeño, gato blanco, pelota roja o casa grande.', NULL, NULL, 0, 1),
(72, 13, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Rápido describe al conejo.', NULL, NULL, 10, 1),
(73, 13, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Grande describe la mochila.', NULL, NULL, 10, 1),
(74, 13, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Roja describe a la pelota.', NULL, NULL, 10, 1),
(75, 13, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Excelente! Ya reconoces adjetivos en diferentes ejemplos.', NULL, NULL, 20, 1),
(76, 14, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'Los adjetivos deben combinar con el sustantivo en número.', 'Decimos \"flor bonita\" y \"flores bonitas\".', NULL, NULL, 0, 1),
(77, 14, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Con una persona usamos un adjetivo en singular: alegre.', NULL, NULL, 10, 1),
(78, 14, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Con varias personas usamos el adjetivo en plural: alegres.', NULL, NULL, 10, 1),
(79, 14, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Perros está en plural, por eso usamos pequeños.', NULL, NULL, 10, 1),
(80, 14, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', 'El sustantivo y el adjetivo deben concordar.', NULL, NULL, 20, 1),
(81, 15, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'Podemos usar sustantivos y adjetivos para crear frases más completas.', 'Por ejemplo: El gato pequeño juega.', NULL, NULL, 0, 1),
(82, 15, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Negro describe al gato.', NULL, NULL, 10, 1),
(83, 15, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'La mariposa azul combina sustantivo y adjetivo.', NULL, NULL, 10, 1),
(84, 15, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Primero presentamos el sustantivo y luego lo describimos.', NULL, NULL, 10, 1),
(85, 15, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Lo lograste! Ya puedes crear descripciones sencillas.', NULL, NULL, 25, 1),
(86, 16, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'Los verbos son palabras que indican acciones.', 'Los verbos nos dicen qué hace una persona, un animal o una cosa. Por ejemplo: correr, saltar y leer.', NULL, NULL, 0, 1),
(87, 16, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Correr indica una acción.', NULL, NULL, 10, 1),
(88, 16, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Saltar es una acción, por eso es un verbo.', NULL, NULL, 10, 1),
(89, 16, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Leer indica una acción.', NULL, NULL, 10, 1),
(90, 16, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Muy bien! Correr, saltar y leer son acciones.', NULL, NULL, 20, 1),
(91, 17, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'Las personas y los animales realizan muchas acciones: correr, saltar, caminar, cantar y jugar.', 'Los verbos nos ayudan a expresar lo que alguien hace.', NULL, NULL, 0, 1),
(92, 17, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Jugar es una acción.', NULL, NULL, 10, 1),
(93, 17, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Cantar indica la acción.', NULL, NULL, 10, 1),
(94, 17, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Correr indica lo que hace el perro.', NULL, NULL, 10, 1),
(95, 17, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Excelente! El verbo nos dice qué hace alguien o algo.', NULL, NULL, 20, 1),
(96, 18, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'En una oración podemos descubrir quién realiza una acción.', 'Por ejemplo: \"El perro corre\". El perro es quien realiza la acción de correr.', NULL, NULL, 0, 1),
(97, 18, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Gato es quien realiza la acción.', NULL, NULL, 10, 1),
(98, 18, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Niño realiza la acción.', NULL, NULL, 10, 1),
(99, 18, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Canta es el verbo.', NULL, NULL, 10, 1),
(100, 18, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', 'Una oración puede decir quién realiza una acción.', NULL, NULL, 20, 1),
(101, 19, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'Podemos usar un sustantivo y un verbo para formar una oración sencilla.', 'Por ejemplo: \"El perro corre\". El perro es el sujeto y corre es el verbo.', NULL, NULL, 0, 1),
(102, 19, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Vuela es la acción del pájaro.', NULL, NULL, 10, 1),
(103, 19, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Lee es el verbo.', NULL, NULL, 10, 1),
(104, 19, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Juegan expresa la acción.', NULL, NULL, 10, 1),
(105, 19, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Muy bien! El sujeto nos dice quién y el verbo qué hace.', NULL, NULL, 20, 1),
(106, 20, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'Los verbos indican acciones. Podemos encontrarlos en muchas oraciones.', 'Recuerda: correr, saltar, leer, cantar y jugar son verbos porque indican acciones.', NULL, NULL, 0, 1),
(107, 20, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Corre indica una acción.', NULL, NULL, 10, 1),
(108, 20, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Vuelan es el verbo.', NULL, NULL, 10, 1),
(109, 20, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'La oración tiene sujeto y verbo.', NULL, NULL, 10, 1),
(110, 20, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Excelente! Ya puedes reconocer y usar verbos.', NULL, NULL, 25, 1),
(111, 21, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'Una oración puede tener un artículo, un sustantivo, un adjetivo y un verbo.', '¡Muy bien! Cada palabra cumple una función. Juntas pueden formar una oración con sentido.', NULL, NULL, 0, 1),
(112, 21, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'El perro es el sujeto porque nos dice quién realiza la acción.', NULL, NULL, 10, 1),
(113, 21, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Canta es el verbo porque indica la acción.', NULL, NULL, 10, 1),
(114, 21, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Pequeño describe al gato.', NULL, NULL, 10, 1),
(115, 21, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Muy bien! Una oración completa expresa una idea con sentido.', NULL, NULL, 20, 1),
(116, 22, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'Las palabras deben tener un orden para formar una oración.', 'Podemos ordenar las palabras para expresar una idea clara.', NULL, NULL, 0, 1),
(117, 22, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', '¡Muy bien! La oración tiene un orden que ayuda a entender la idea.', NULL, NULL, 10, 1),
(118, 22, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', '¡Excelente! Has formado una oración completa.', NULL, NULL, 10, 1),
(119, 22, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Sujeto y verbo trabajan juntos para expresar la acción.', NULL, NULL, 10, 1),
(120, 22, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Lo lograste! Puedes ordenar palabras para formar oraciones.', NULL, NULL, 20, 1),
(121, 23, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'Podemos elegir las palabras que faltan para completar una oración.', 'Busca una palabra que tenga sentido con las demás palabras.', NULL, NULL, 0, 1),
(122, 23, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Corre completa la idea y expresa una acción.', NULL, NULL, 10, 1),
(123, 23, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Grande describe al perro.', NULL, NULL, 10, 1),
(124, 23, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Lee es la acción que completa la oración.', NULL, NULL, 10, 1),
(125, 23, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Excelente! Agregar información hace que la oración sea más completa.', NULL, NULL, 20, 1),
(126, 24, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'Una oración puede combinar diferentes tipos de palabras.', 'Podemos usar un artículo, un sustantivo, un adjetivo y un verbo para crear una oración más completa.', NULL, NULL, 0, 1),
(127, 24, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', '¡Muy bien! Has unido artículo, sustantivo, adjetivo y verbo.', NULL, NULL, 10, 1),
(128, 24, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'La oración combina una descripción con una acción.', NULL, NULL, 10, 1),
(129, 24, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', 'Una oración completa puede combinar varias palabras aprendidas.', NULL, NULL, 10, 1),
(130, 24, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡Excelente! Ya puedes construir oraciones completas.', NULL, NULL, 25, 1),
(131, 25, 1, 'introduccion', 'Conozcamos el tema', 'Observa la explicación y reconoce las palabras con ayuda de Capy.', 'Ahora vamos a usar lo aprendido sobre artículos, sustantivos, adjetivos y verbos.', '¡Llegaste al reto final! Recuerda observar cada palabra y pensar qué función cumple.', NULL, NULL, 0, 1),
(132, 25, 2, 'arrastre', 'Completa la oración', 'Arrastra la palabra correcta para completar la oración.', '', 'Corre indica la acción.', NULL, NULL, 10, 1),
(133, 25, 3, 'conectar', 'Une las parejas', 'Une cada palabra con la imagen que le corresponde.', '', 'Azul describe a la mariposa.', NULL, NULL, 10, 1),
(134, 25, 4, 'ordenar', 'Ordena la oración', 'Ordena las palabras para formar una oración con sentido.', '', '¡Muy bien! Has integrado varias partes de una oración.', NULL, NULL, 10, 1),
(135, 25, 5, 'construir', 'Construye con Capy', 'Construye una oración completa. Después descubrirás la imagen relacionada.', '', '¡LO LOGRASTE! Has usado artículos, sustantivos, adjetivos y verbos para construir una oración.', NULL, NULL, 25, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capy_lecciones`
--

CREATE TABLE `capy_lecciones` (
  `id` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `numero_leccion` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `objetivo` text DEFAULT NULL,
  `icono` varchar(100) DEFAULT NULL,
  `activa` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `capy_lecciones`
--

INSERT INTO `capy_lecciones` (`id`, `nivel`, `numero_leccion`, `titulo`, `descripcion`, `objetivo`, `icono`, `activa`) VALUES
(1, 1, 1, '¿Qué son los sustantivos?', 'Aprende los conceptos básicos', 'Comprender que los sustantivos son palabras que usamos para nombrar personas, animales, lugares y objetos.', 'fa-solid fa-lightbulb', 1),
(2, 1, 2, 'Personas, animales y lugares', 'Identifica diferentes sustantivos', 'Reconocer y clasificar sustantivos que nombran personas, animales y lugares.', 'fa-solid fa-images', 1),
(3, 1, 3, '¡Encuentra el sustantivo!', 'Pon a prueba lo aprendido', 'Identificar correctamente sustantivos de personas, animales y lugares entre diferentes opciones.', 'fa-solid fa-magnifying-glass', 1),
(4, 1, 4, 'Los objetos', 'Reconoce sustantivos de objetos', 'Reconocer objetos de la vida cotidiana como sustantivos.', 'fa-solid fa-cube', 1),
(5, 1, 5, '¡Construye tu primera idea!', 'Usa los sustantivos', 'Utilizar sustantivos para comenzar a formar ideas sencillas.', 'fa-solid fa-puzzle-piece', 1),
(6, 2, 1, 'Artículos definidos', 'El, la, los y las', 'Reconocer y utilizar los artículos definidos junto con los sustantivos.', 'fa-solid fa-book', 1),
(7, 2, 2, 'Artículos indefinidos', 'Un, una, unos y unas', 'Reconocer y utilizar los artículos indefinidos junto con los sustantivos.', 'fa-solid fa-book-open', 1),
(8, 2, 3, 'Masculino y femenino', 'Aprende a identificar el género', 'Distinguir artículos masculinos y femeninos y relacionarlos correctamente con los sustantivos.', 'fa-solid fa-venus-mars', 1),
(9, 2, 4, 'Une las palabras', 'Relaciona artículos y sustantivos', 'Relacionar correctamente los artículos con los sustantivos según su género y cantidad.', 'fa-solid fa-link', 1),
(10, 2, 5, 'Construye frases', 'Combina artículos y sustantivos', 'Formar expresiones sencillas utilizando artículos y sustantivos.', 'fa-solid fa-puzzle-piece', 1),
(11, 3, 1, '¿Qué son los adjetivos?', 'Aprende a describir', 'Comprender que los adjetivos son palabras que describen y dicen cómo son los sustantivos.', 'fa-solid fa-star', 1),
(12, 3, 2, 'Describe con adjetivos', 'Aprende a describir sustantivos', 'Reconocer y utilizar adjetivos para describir personas, animales y objetos.', 'fa-solid fa-palette', 1),
(13, 3, 3, 'Construye descripciones', 'Combina sustantivos y adjetivos', 'Formar expresiones descriptivas utilizando sustantivos y adjetivos.', 'fa-solid fa-puzzle-piece', 1),
(14, 3, 4, '¡Practicamos!', 'Pon a prueba lo aprendido', 'Practicar el reconocimiento y uso de adjetivos en diferentes situaciones.', 'fa-solid fa-check', 1),
(15, 3, 5, '¡Describe la imagen!', 'Usa lo que aprendiste', 'Integrar artículos, sustantivos y adjetivos para crear descripciones sencillas.', 'fa-solid fa-image', 1),
(16, 4, 1, '¿Qué está haciendo?', 'Conoce las acciones', 'Comprender que los verbos son palabras que indican acciones.', 'fa-solid fa-person-running', 1),
(17, 4, 2, 'Une la acción', 'Identifica diferentes acciones', 'Relacionar situaciones o imágenes con el verbo que representa la acción.', 'fa-solid fa-link', 1),
(18, 4, 3, 'Une la oración', 'Relaciona sujeto y verbo', 'Relacionar correctamente un sustantivo con el verbo que corresponde a la acción.', 'fa-solid fa-link', 1),
(19, 4, 4, 'Completa la oración', 'Usa el verbo correcto', 'Completar oraciones sencillas utilizando el verbo adecuado.', 'fa-solid fa-pen', 1),
(20, 4, 5, '¡Construye la oración!', 'Combina palabras y acciones', 'Integrar artículos, sustantivos, adjetivos y verbos para formar oraciones sencillas.', 'fa-solid fa-puzzle-piece', 1),
(21, 5, 1, '¿Quién o qué hace?', 'Identifica quién realiza la acción', 'Reconocer el sujeto y la acción principal dentro de una oración sencilla.', 'fa-solid fa-person', 1),
(22, 5, 2, 'Ordena las palabras', 'Forma una oración', 'Ordenar palabras para construir oraciones sencillas y con sentido.', 'fa-solid fa-arrow-down-a-z', 1),
(23, 5, 3, 'Agrega información', 'Haz tus oraciones más completas', 'Agregar información a una oración utilizando complementos y palabras aprendidas.', 'fa-solid fa-plus', 1),
(24, 5, 4, 'Describe y construye', 'Usa adjetivos en tus oraciones', 'Construir oraciones utilizando artículos, sustantivos, adjetivos y verbos.', 'fa-solid fa-star', 1),
(25, 5, 5, '¡A construir!', 'Construye tus propias oraciones', 'Construir oraciones completas utilizando correctamente las palabras aprendidas.', 'fa-solid fa-puzzle-piece', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capy_niveles`
--

CREATE TABLE `capy_niveles` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `activa` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `capy_niveles`
--

INSERT INTO `capy_niveles` (`id`, `numero`, `titulo`, `descripcion`, `activa`) VALUES
(1, 1, 'Los sustantivos', 'Aprende a reconocer personas, animales, lugares y objetos.', 1),
(2, 2, 'Los artículos', 'Aprende a acompañar los sustantivos correctamente.', 1),
(3, 3, 'Los adjetivos', 'Descubre cómo describir personas, animales y objetos.', 1),
(4, 4, 'Los verbos', 'Aprende a reconocer y usar acciones en oraciones.', 1),
(5, 5, 'Construimos oraciones', 'Usa las palabras para formar oraciones completas.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capy_opciones`
--

CREATE TABLE `capy_opciones` (
  `id` int(11) NOT NULL,
  `actividad_id` int(11) NOT NULL,
  `texto` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `audio_url` varchar(255) DEFAULT NULL,
  `es_correcta` tinyint(1) DEFAULT 0,
  `orden` int(11) DEFAULT 1,
  `orden_correcto` int(11) DEFAULT NULL,
  `grupo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `capy_opciones`
--

INSERT INTO `capy_opciones` (`id`, `actividad_id`, `texto`, `imagen`, `audio_url`, `es_correcta`, `orden`, `orden_correcto`, `grupo`) VALUES
(1, 1, 'niño', NULL, NULL, 0, 1, NULL, 'persona'),
(2, 1, 'perro', NULL, NULL, 0, 2, NULL, 'animal'),
(3, 1, 'escuela', NULL, NULL, 0, 3, NULL, 'lugar'),
(4, 1, 'lápiz', NULL, NULL, 0, 4, NULL, 'objeto'),
(414, 3, 'niña', NULL, NULL, 1, 1, NULL, 'persona'),
(415, 3, 'perro', NULL, NULL, 1, 2, NULL, 'animal'),
(416, 3, 'escuela', NULL, NULL, 1, 3, NULL, 'lugar'),
(417, 3, 'lápiz', NULL, NULL, 1, 4, NULL, 'objeto'),
(418, 3, 'maestro', NULL, NULL, 1, 5, NULL, 'persona'),
(419, 3, 'gato', NULL, NULL, 1, 6, NULL, 'animal'),
(420, 3, 'parque', NULL, NULL, 1, 7, NULL, 'lugar'),
(421, 3, 'pelota', NULL, NULL, 1, 8, NULL, 'objeto'),
(422, 4, 'gato', NULL, NULL, 1, 1, NULL, NULL),
(423, 4, 'correr', NULL, NULL, 0, 2, NULL, NULL),
(424, 4, 'bonito', NULL, NULL, 0, 3, NULL, NULL),
(425, 4, 'rápido', NULL, NULL, 0, 4, NULL, NULL),
(426, 5, 'niño', NULL, NULL, 1, 1, NULL, NULL),
(427, 5, 'saltar', NULL, NULL, 0, 2, NULL, NULL),
(428, 5, 'parque', NULL, NULL, 1, 3, NULL, NULL),
(429, 5, 'feliz', NULL, NULL, 0, 4, NULL, NULL),
(430, 5, 'pelota', NULL, NULL, 1, 5, NULL, NULL),
(431, 17, 'doctor', NULL, NULL, 1, 1, NULL, NULL),
(432, 17, 'perro', NULL, NULL, 0, 2, NULL, NULL),
(433, 17, 'parque', NULL, NULL, 0, 3, NULL, NULL),
(434, 17, 'mesa', NULL, NULL, 0, 4, NULL, NULL),
(435, 18, 'doctora', NULL, NULL, 1, 1, NULL, 'persona'),
(436, 18, 'gato', NULL, NULL, 1, 2, NULL, 'animal'),
(437, 18, 'escuela', NULL, NULL, 1, 3, NULL, 'lugar'),
(438, 18, 'maestro', NULL, NULL, 1, 4, NULL, 'persona'),
(439, 18, 'perro', NULL, NULL, 1, 5, NULL, 'animal'),
(440, 18, 'parque', NULL, NULL, 1, 6, NULL, 'lugar'),
(441, 19, 'perro', NULL, NULL, 1, 1, NULL, NULL),
(442, 19, 'hospital', NULL, NULL, 0, 2, NULL, NULL),
(443, 19, 'niño', NULL, NULL, 0, 3, NULL, NULL),
(444, 19, 'cuaderno', NULL, NULL, 0, 4, NULL, NULL),
(445, 20, 'parque', NULL, NULL, 1, 1, NULL, NULL),
(446, 20, 'conejo', NULL, NULL, 0, 2, NULL, NULL),
(447, 20, 'maestra', NULL, NULL, 0, 3, NULL, NULL),
(448, 20, 'mochila', NULL, NULL, 0, 4, NULL, NULL),
(449, 22, 'jardín', NULL, NULL, 1, 1, NULL, NULL),
(450, 22, 'cantar', NULL, NULL, 0, 2, NULL, NULL),
(451, 22, 'bonito', NULL, NULL, 0, 3, NULL, NULL),
(452, 22, 'rápidamente', NULL, NULL, 0, 4, NULL, NULL),
(453, 23, 'maestra', NULL, NULL, 1, 1, NULL, NULL),
(454, 23, 'correr', NULL, NULL, 0, 2, NULL, NULL),
(455, 23, 'azul', NULL, NULL, 0, 3, NULL, NULL),
(456, 23, 'feliz', NULL, NULL, 0, 4, NULL, NULL),
(457, 24, 'biblioteca', NULL, NULL, 1, 1, NULL, NULL),
(458, 24, 'niño', NULL, NULL, 0, 2, NULL, NULL),
(459, 24, 'saltar', NULL, NULL, 0, 3, NULL, NULL),
(460, 24, 'grande', NULL, NULL, 0, 4, NULL, NULL),
(461, 25, 'maestro', NULL, NULL, 1, 1, NULL, NULL),
(462, 25, 'correr', NULL, NULL, 0, 2, NULL, NULL),
(463, 25, 'casa', NULL, NULL, 1, 3, NULL, NULL),
(464, 25, 'feliz', NULL, NULL, 0, 4, NULL, NULL),
(465, 25, 'tigre', NULL, NULL, 1, 5, NULL, NULL),
(466, 27, 'lápiz', NULL, NULL, 1, 1, NULL, NULL),
(467, 27, 'perro', NULL, NULL, 0, 2, NULL, NULL),
(468, 27, 'escuela', NULL, NULL, 0, 3, NULL, NULL),
(469, 27, 'niña', NULL, NULL, 0, 4, NULL, NULL),
(470, 28, 'niño', NULL, NULL, 1, 1, NULL, 'persona'),
(471, 28, 'gato', NULL, NULL, 1, 2, NULL, 'animal'),
(472, 28, 'mochila', NULL, NULL, 1, 3, NULL, 'objeto'),
(473, 28, 'maestra', NULL, NULL, 1, 4, NULL, 'persona'),
(474, 28, 'conejo', NULL, NULL, 1, 5, NULL, 'animal'),
(475, 28, 'pelota', NULL, NULL, 1, 6, NULL, 'objeto'),
(476, 29, 'mesa', NULL, NULL, 1, 1, NULL, NULL),
(477, 29, 'cantar', NULL, NULL, 0, 2, NULL, NULL),
(478, 29, 'gato', NULL, NULL, 0, 3, NULL, NULL),
(479, 29, 'parque', NULL, NULL, 0, 4, NULL, NULL),
(480, 30, 'taza', NULL, NULL, 1, 1, NULL, NULL),
(481, 30, 'niño', NULL, NULL, 0, 2, NULL, NULL),
(482, 30, 'correr', NULL, NULL, 0, 3, NULL, NULL),
(483, 30, 'jardín', NULL, NULL, 0, 4, NULL, NULL),
(484, 32, 'casa', NULL, NULL, 1, 1, NULL, NULL),
(485, 32, 'correr', NULL, NULL, 0, 2, NULL, NULL),
(486, 32, 'bonito', NULL, NULL, 0, 3, NULL, NULL),
(487, 32, 'rápidamente', NULL, NULL, 0, 4, NULL, NULL),
(488, 33, 'niño', NULL, NULL, 1, 1, NULL, NULL),
(489, 33, 'gato', NULL, NULL, 1, 2, NULL, NULL),
(490, 33, 'saltar', NULL, NULL, 0, 3, NULL, NULL),
(491, 33, 'escuela', NULL, NULL, 1, 4, NULL, NULL),
(492, 33, 'feliz', NULL, NULL, 0, 5, NULL, NULL),
(493, 34, 'El gato corre.', NULL, NULL, 1, 1, NULL, NULL),
(494, 34, 'Gato el corre.', NULL, NULL, 0, 2, NULL, NULL),
(495, 34, 'Corre gato el.', NULL, NULL, 0, 3, NULL, NULL),
(496, 34, 'El corre gato.', NULL, NULL, 0, 4, NULL, NULL),
(497, 35, 'La niña juega.', NULL, NULL, 1, 1, NULL, NULL),
(498, 35, 'Juega la.', NULL, NULL, 0, 2, NULL, NULL),
(499, 35, 'Bonito corre.', NULL, NULL, 0, 3, NULL, NULL),
(500, 35, 'Rápido la.', NULL, NULL, 0, 4, NULL, NULL),
(501, 37, 'El', NULL, NULL, 1, 1, NULL, NULL),
(502, 37, 'La', NULL, NULL, 0, 2, NULL, NULL),
(503, 37, 'Los', NULL, NULL, 0, 3, NULL, NULL),
(504, 37, 'Una', NULL, NULL, 0, 4, NULL, NULL),
(505, 38, 'La', NULL, NULL, 1, 1, NULL, NULL),
(506, 38, 'El', NULL, NULL, 0, 2, NULL, NULL),
(507, 38, 'Los', NULL, NULL, 0, 3, NULL, NULL),
(508, 38, 'Un', NULL, NULL, 0, 4, NULL, NULL),
(509, 39, 'Los', NULL, NULL, 1, 1, NULL, NULL),
(510, 39, 'La', NULL, NULL, 0, 2, NULL, NULL),
(511, 39, 'El', NULL, NULL, 0, 3, NULL, NULL),
(512, 39, 'Un', NULL, NULL, 0, 4, NULL, NULL),
(513, 40, 'la casa', NULL, NULL, 1, 1, NULL, NULL),
(514, 40, 'el casas', NULL, NULL, 0, 2, NULL, NULL),
(515, 40, 'los niña', NULL, NULL, 0, 3, NULL, NULL),
(516, 40, 'una perros', NULL, NULL, 0, 4, NULL, NULL),
(517, 42, 'La', NULL, NULL, 1, 1, NULL, NULL),
(518, 42, 'El', NULL, NULL, 0, 2, NULL, NULL),
(519, 42, 'Los', NULL, NULL, 0, 3, NULL, NULL),
(520, 42, 'Un', NULL, NULL, 0, 4, NULL, NULL),
(521, 43, 'El', NULL, NULL, 1, 1, NULL, NULL),
(522, 43, 'La', NULL, NULL, 0, 2, NULL, NULL),
(523, 43, 'Las', NULL, NULL, 0, 3, NULL, NULL),
(524, 43, 'Una', NULL, NULL, 0, 4, NULL, NULL),
(525, 44, 'La', NULL, NULL, 1, 1, NULL, NULL),
(526, 44, 'El', NULL, NULL, 0, 2, NULL, NULL),
(527, 44, 'Los', NULL, NULL, 0, 3, NULL, NULL),
(528, 44, 'Un', NULL, NULL, 0, 4, NULL, NULL),
(529, 45, 'el gato', NULL, NULL, 1, 1, NULL, NULL),
(530, 45, 'la gato', NULL, NULL, 0, 2, NULL, NULL),
(531, 45, 'el niña', NULL, NULL, 0, 3, NULL, NULL),
(532, 45, 'la perro', NULL, NULL, 0, 4, NULL, NULL),
(533, 47, 'Los', NULL, NULL, 1, 1, NULL, NULL),
(534, 47, 'La', NULL, NULL, 0, 2, NULL, NULL),
(535, 47, 'El', NULL, NULL, 0, 3, NULL, NULL),
(536, 47, 'Un', NULL, NULL, 0, 4, NULL, NULL),
(537, 48, 'Las', NULL, NULL, 1, 1, NULL, NULL),
(538, 48, 'El', NULL, NULL, 0, 2, NULL, NULL),
(539, 48, 'La', NULL, NULL, 0, 3, NULL, NULL),
(540, 48, 'Un', NULL, NULL, 0, 4, NULL, NULL),
(541, 49, 'los', NULL, NULL, 1, 1, NULL, NULL),
(542, 49, 'la', NULL, NULL, 0, 2, NULL, NULL),
(543, 49, 'el', NULL, NULL, 0, 3, NULL, NULL),
(544, 49, 'una', NULL, NULL, 0, 4, NULL, NULL),
(545, 50, 'las flores', NULL, NULL, 1, 1, NULL, NULL),
(546, 50, 'los niña', NULL, NULL, 0, 2, NULL, NULL),
(547, 50, 'la perros', NULL, NULL, 0, 3, NULL, NULL),
(548, 50, 'el casas', NULL, NULL, 0, 4, NULL, NULL),
(549, 52, 'Un', NULL, NULL, 1, 1, NULL, NULL),
(550, 52, 'Una', NULL, NULL, 0, 2, NULL, NULL),
(551, 52, 'Los', NULL, NULL, 0, 3, NULL, NULL),
(552, 52, 'La', NULL, NULL, 0, 4, NULL, NULL),
(553, 53, 'Una', NULL, NULL, 1, 1, NULL, NULL),
(554, 53, 'Un', NULL, NULL, 0, 2, NULL, NULL),
(555, 53, 'El', NULL, NULL, 0, 3, NULL, NULL),
(556, 53, 'Los', NULL, NULL, 0, 4, NULL, NULL),
(557, 54, 'Unos', NULL, NULL, 1, 1, NULL, NULL),
(558, 54, 'Una', NULL, NULL, 0, 2, NULL, NULL),
(559, 54, 'El', NULL, NULL, 0, 3, NULL, NULL),
(560, 54, 'La', NULL, NULL, 0, 4, NULL, NULL),
(561, 55, 'unas flores', NULL, NULL, 1, 1, NULL, NULL),
(562, 55, 'un niñas', NULL, NULL, 0, 2, NULL, NULL),
(563, 55, 'una perros', NULL, NULL, 0, 3, NULL, NULL),
(564, 55, 'unos casa', NULL, NULL, 0, 4, NULL, NULL),
(565, 57, 'la', NULL, NULL, 1, 1, 1, 'articulo'),
(566, 57, 'casa', NULL, NULL, 1, 2, 2, 'sustantivo'),
(567, 58, 'la mochila', NULL, NULL, 1, 1, NULL, NULL),
(568, 58, 'el mochila', NULL, NULL, 0, 2, NULL, NULL),
(569, 58, 'los mochila', NULL, NULL, 0, 3, NULL, NULL),
(570, 58, 'una mochilas', NULL, NULL, 0, 4, NULL, NULL),
(571, 59, 'El', NULL, NULL, 1, 1, 1, 'articulo'),
(572, 59, 'niño', NULL, NULL, 1, 2, 2, 'sustantivo'),
(573, 59, 'juega', NULL, NULL, 1, 3, 3, 'verbo'),
(574, 60, 'La casa', NULL, NULL, 1, 1, NULL, NULL),
(575, 60, 'Los casa', NULL, NULL, 0, 2, NULL, NULL),
(576, 60, 'El flores', NULL, NULL, 0, 3, NULL, NULL),
(577, 60, 'Una niños', NULL, NULL, 0, 4, NULL, NULL),
(578, 62, 'pequeño', NULL, NULL, 1, 1, NULL, NULL),
(579, 62, 'gato', NULL, NULL, 0, 2, NULL, NULL),
(580, 62, 'corre', NULL, NULL, 0, 3, NULL, NULL),
(581, 62, 'parque', NULL, NULL, 0, 4, NULL, NULL),
(582, 63, 'azul', NULL, NULL, 1, 1, NULL, NULL),
(583, 63, 'mariposa', NULL, NULL, 0, 2, NULL, NULL),
(584, 63, 'vuela', NULL, NULL, 0, 3, NULL, NULL),
(585, 63, 'casa', NULL, NULL, 0, 4, NULL, NULL),
(586, 64, 'grande', NULL, NULL, 1, 1, NULL, NULL),
(587, 64, 'niño', NULL, NULL, 0, 2, NULL, NULL),
(588, 64, 'saltar', NULL, NULL, 0, 3, NULL, NULL),
(589, 64, 'escuela', NULL, NULL, 0, 4, NULL, NULL),
(590, 65, 'grande', NULL, NULL, 1, 1, NULL, NULL),
(591, 65, 'alegre', NULL, NULL, 1, 2, NULL, NULL),
(592, 65, 'correr', NULL, NULL, 0, 3, NULL, NULL),
(593, 65, 'azul', NULL, NULL, 1, 4, NULL, NULL),
(594, 65, 'gato', NULL, NULL, 0, 5, NULL, NULL),
(595, 67, 'alegre', NULL, NULL, 1, 1, NULL, NULL),
(596, 67, 'corre', NULL, NULL, 0, 2, NULL, NULL),
(597, 67, 'escuela', NULL, NULL, 0, 3, NULL, NULL),
(598, 67, 'niña', NULL, NULL, 0, 4, NULL, NULL),
(599, 68, 'grande', NULL, NULL, 1, 1, NULL, NULL),
(600, 68, 'perro', NULL, NULL, 0, 2, NULL, NULL),
(601, 68, 'corre', NULL, NULL, 0, 3, NULL, NULL),
(602, 68, 'parque', NULL, NULL, 0, 4, NULL, NULL),
(603, 69, 'bonita', NULL, NULL, 1, 1, NULL, NULL),
(604, 69, 'casa', NULL, NULL, 0, 2, NULL, NULL),
(605, 69, 'juega', NULL, NULL, 0, 3, NULL, NULL),
(606, 69, 'parque', NULL, NULL, 0, 4, NULL, NULL),
(607, 70, 'gato pequeño', NULL, NULL, 1, 1, NULL, NULL),
(608, 70, 'pequeño corre', NULL, NULL, 0, 2, NULL, NULL),
(609, 70, 'casa juega', NULL, NULL, 0, 3, NULL, NULL),
(610, 70, 'azul salta', NULL, NULL, 0, 4, NULL, NULL),
(611, 72, 'rápido', NULL, NULL, 1, 1, NULL, NULL),
(612, 72, 'conejo', NULL, NULL, 0, 2, NULL, NULL),
(613, 72, 'salta', NULL, NULL, 0, 3, NULL, NULL),
(614, 72, 'escuela', NULL, NULL, 0, 4, NULL, NULL),
(615, 73, 'grande', NULL, NULL, 1, 1, NULL, NULL),
(616, 73, 'mochila', NULL, NULL, 0, 2, NULL, NULL),
(617, 73, 'corre', NULL, NULL, 0, 3, NULL, NULL),
(618, 73, 'niña', NULL, NULL, 0, 4, NULL, NULL),
(619, 74, 'roja', NULL, NULL, 1, 1, NULL, NULL),
(620, 74, 'pelota', NULL, NULL, 0, 2, NULL, NULL),
(621, 74, 'rueda', NULL, NULL, 0, 3, NULL, NULL),
(622, 74, 'la', NULL, NULL, 0, 4, NULL, NULL),
(623, 75, 'rojo', NULL, NULL, 1, 1, NULL, NULL),
(624, 75, 'suave', NULL, NULL, 1, 2, NULL, NULL),
(625, 75, 'mesa', NULL, NULL, 0, 3, NULL, NULL),
(626, 75, 'correr', NULL, NULL, 0, 4, NULL, NULL),
(627, 75, 'feliz', NULL, NULL, 1, 5, NULL, NULL),
(628, 77, 'alegre', NULL, NULL, 1, 1, NULL, NULL),
(629, 77, 'alegres', NULL, NULL, 0, 2, NULL, NULL),
(630, 77, 'corren', NULL, NULL, 0, 3, NULL, NULL),
(631, 77, 'niñas', NULL, NULL, 0, 4, NULL, NULL),
(632, 78, 'alegres', NULL, NULL, 1, 1, NULL, NULL),
(633, 78, 'alegre', NULL, NULL, 0, 2, NULL, NULL),
(634, 78, 'niña', NULL, NULL, 0, 3, NULL, NULL),
(635, 78, 'corre', NULL, NULL, 0, 4, NULL, NULL),
(636, 79, 'pequeños', NULL, NULL, 1, 1, NULL, NULL),
(637, 79, 'pequeño', NULL, NULL, 0, 2, NULL, NULL),
(638, 79, 'perro', NULL, NULL, 0, 3, NULL, NULL),
(639, 79, 'corre', NULL, NULL, 0, 4, NULL, NULL),
(640, 80, 'Las flores bonitas.', NULL, NULL, 1, 1, NULL, NULL),
(641, 80, 'Las flores bonito.', NULL, NULL, 0, 2, NULL, NULL),
(642, 80, 'La flores bonitas.', NULL, NULL, 0, 3, NULL, NULL),
(643, 80, 'Los flor bonita.', NULL, NULL, 0, 4, NULL, NULL),
(644, 82, 'negro', NULL, NULL, 1, 1, NULL, NULL),
(645, 82, 'gato', NULL, NULL, 0, 2, NULL, NULL),
(646, 82, 'corre', NULL, NULL, 0, 3, NULL, NULL),
(647, 82, 'parque', NULL, NULL, 0, 4, NULL, NULL),
(648, 83, 'La mariposa azul.', NULL, NULL, 1, 1, NULL, NULL),
(649, 83, 'Azul corre.', NULL, NULL, 0, 2, NULL, NULL),
(650, 83, 'Mariposa la.', NULL, NULL, 0, 3, NULL, NULL),
(651, 83, 'La azul.', NULL, NULL, 0, 4, NULL, NULL),
(652, 84, 'El', NULL, NULL, 1, 1, 1, 'articulo'),
(653, 84, 'gato', NULL, NULL, 1, 2, 2, 'sustantivo'),
(654, 84, 'negro', NULL, NULL, 1, 3, 3, 'adjetivo'),
(655, 84, 'duerme', NULL, NULL, 1, 4, 4, 'verbo'),
(656, 85, 'La niña alegre canta.', NULL, NULL, 1, 1, NULL, NULL),
(657, 85, 'Alegre niña la.', NULL, NULL, 0, 2, NULL, NULL),
(658, 85, 'La niña alegre.', NULL, NULL, 0, 3, NULL, NULL),
(659, 85, 'Canta la.', NULL, NULL, 0, 4, NULL, NULL),
(660, 87, 'correr', NULL, NULL, 1, 1, NULL, NULL),
(661, 87, 'gato', NULL, NULL, 0, 2, NULL, NULL),
(662, 87, 'bonito', NULL, NULL, 0, 3, NULL, NULL),
(663, 87, 'parque', NULL, NULL, 0, 4, NULL, NULL),
(664, 88, 'saltar', NULL, NULL, 1, 1, NULL, NULL),
(665, 88, 'mesa', NULL, NULL, 0, 2, NULL, NULL),
(666, 88, 'azul', NULL, NULL, 0, 3, NULL, NULL),
(667, 88, 'escuela', NULL, NULL, 0, 4, NULL, NULL),
(668, 89, 'leer', NULL, NULL, 1, 1, NULL, NULL),
(669, 89, 'niña', NULL, NULL, 0, 2, NULL, NULL),
(670, 89, 'bonita', NULL, NULL, 0, 3, NULL, NULL),
(671, 89, 'libro', NULL, NULL, 0, 4, NULL, NULL),
(672, 90, 'correr', NULL, NULL, 1, 1, NULL, NULL),
(673, 90, 'saltar', NULL, NULL, 1, 2, NULL, NULL),
(674, 90, 'azul', NULL, NULL, 0, 3, NULL, NULL),
(675, 90, 'leer', NULL, NULL, 1, 4, NULL, NULL),
(676, 90, 'mesa', NULL, NULL, 0, 5, NULL, NULL),
(677, 92, 'jugar', NULL, NULL, 1, 1, NULL, NULL),
(678, 92, 'casa', NULL, NULL, 0, 2, NULL, NULL),
(679, 92, 'azul', NULL, NULL, 0, 3, NULL, NULL),
(680, 92, 'niño', NULL, NULL, 0, 4, NULL, NULL),
(681, 93, 'cantar', NULL, NULL, 1, 1, NULL, NULL),
(682, 93, 'niña', NULL, NULL, 0, 2, NULL, NULL),
(683, 93, 'bonita', NULL, NULL, 0, 3, NULL, NULL),
(684, 93, 'parque', NULL, NULL, 0, 4, NULL, NULL),
(685, 94, 'correr', NULL, NULL, 1, 1, NULL, NULL),
(686, 94, 'perro', NULL, NULL, 0, 2, NULL, NULL),
(687, 94, 'grande', NULL, NULL, 0, 3, NULL, NULL),
(688, 94, 'casa', NULL, NULL, 0, 4, NULL, NULL),
(689, 95, 'La niña canta.', NULL, NULL, 1, 1, NULL, NULL),
(690, 95, 'La niña bonita.', NULL, NULL, 0, 2, NULL, NULL),
(691, 95, 'El perro pequeño.', NULL, NULL, 0, 3, NULL, NULL),
(692, 95, 'La casa azul.', NULL, NULL, 0, 4, NULL, NULL),
(693, 97, 'gato', NULL, NULL, 1, 1, NULL, NULL),
(694, 97, 'niña', NULL, NULL, 0, 2, NULL, NULL),
(695, 97, 'parque', NULL, NULL, 0, 3, NULL, NULL),
(696, 97, 'mesa', NULL, NULL, 0, 4, NULL, NULL),
(697, 98, 'niño', NULL, NULL, 1, 1, NULL, NULL),
(698, 98, 'perro', NULL, NULL, 0, 2, NULL, NULL),
(699, 98, 'escuela', NULL, NULL, 0, 3, NULL, NULL),
(700, 98, 'pelota', NULL, NULL, 0, 4, NULL, NULL),
(701, 99, 'canta', NULL, NULL, 1, 1, NULL, NULL),
(702, 99, 'niña', NULL, NULL, 0, 2, NULL, NULL),
(703, 99, 'azul', NULL, NULL, 0, 3, NULL, NULL),
(704, 99, 'parque', NULL, NULL, 0, 4, NULL, NULL),
(705, 100, 'El perro corre.', NULL, NULL, 1, 1, NULL, NULL),
(706, 100, 'Corre perro el.', NULL, NULL, 0, 2, NULL, NULL),
(707, 100, 'El perro pequeño.', NULL, NULL, 0, 3, NULL, NULL),
(708, 100, 'Perro el.', NULL, NULL, 0, 4, NULL, NULL),
(709, 102, 'vuela', NULL, NULL, 1, 1, NULL, NULL),
(710, 102, 'pájaro', NULL, NULL, 0, 2, NULL, NULL),
(711, 102, 'azul', NULL, NULL, 0, 3, NULL, NULL),
(712, 102, 'árbol', NULL, NULL, 0, 4, NULL, NULL),
(713, 103, 'lee', NULL, NULL, 1, 1, NULL, NULL),
(714, 103, 'niña', NULL, NULL, 0, 2, NULL, NULL),
(715, 103, 'cuento', NULL, NULL, 0, 3, NULL, NULL),
(716, 103, 'bonita', NULL, NULL, 0, 4, NULL, NULL),
(717, 104, 'juegan', NULL, NULL, 1, 1, NULL, NULL),
(718, 104, 'niños', NULL, NULL, 0, 2, NULL, NULL),
(719, 104, 'felices', NULL, NULL, 0, 3, NULL, NULL),
(720, 104, 'parque', NULL, NULL, 0, 4, NULL, NULL),
(721, 105, 'El gato duerme.', NULL, NULL, 1, 1, NULL, NULL),
(722, 105, 'El gato pequeño.', NULL, NULL, 0, 2, NULL, NULL),
(723, 105, 'Duerme gato.', NULL, NULL, 0, 3, NULL, NULL),
(724, 105, 'La casa grande.', NULL, NULL, 0, 4, NULL, NULL),
(725, 107, 'corre', NULL, NULL, 1, 1, NULL, NULL),
(726, 107, 'niño', NULL, NULL, 0, 2, NULL, NULL),
(727, 107, 'pelota', NULL, NULL, 0, 3, NULL, NULL),
(728, 107, 'su', NULL, NULL, 0, 4, NULL, NULL),
(729, 108, 'vuelan', NULL, NULL, 1, 1, NULL, NULL),
(730, 108, 'pájaros', NULL, NULL, 0, 2, NULL, NULL),
(731, 108, 'azules', NULL, NULL, 0, 3, NULL, NULL),
(732, 108, 'árbol', NULL, NULL, 0, 4, NULL, NULL),
(733, 109, 'La niña lee.', NULL, NULL, 1, 1, NULL, NULL),
(734, 109, 'La niña pequeña.', NULL, NULL, 0, 2, NULL, NULL),
(735, 109, 'La niña azul.', NULL, NULL, 0, 3, NULL, NULL),
(736, 109, 'Niña lee la.', NULL, NULL, 0, 4, NULL, NULL),
(737, 110, 'El perro pequeño corre.', NULL, NULL, 1, 1, NULL, NULL),
(738, 110, 'El perro pequeño.', NULL, NULL, 0, 2, NULL, NULL),
(739, 110, 'Pequeño perro el.', NULL, NULL, 0, 3, NULL, NULL),
(740, 110, 'Corre el.', NULL, NULL, 0, 4, NULL, NULL),
(741, 112, 'El perro', NULL, NULL, 1, 1, NULL, NULL),
(742, 112, 'corre', NULL, NULL, 0, 2, NULL, NULL),
(743, 112, 'el', NULL, NULL, 0, 3, NULL, NULL),
(744, 112, 'rápido', NULL, NULL, 0, 4, NULL, NULL),
(745, 113, 'canta', NULL, NULL, 1, 1, NULL, NULL),
(746, 113, 'niña', NULL, NULL, 0, 2, NULL, NULL),
(747, 113, 'la', NULL, NULL, 0, 3, NULL, NULL),
(748, 113, 'feliz', NULL, NULL, 0, 4, NULL, NULL),
(749, 114, 'pequeño', NULL, NULL, 1, 1, NULL, NULL),
(750, 114, 'gato', NULL, NULL, 0, 2, NULL, NULL),
(751, 114, 'duerme', NULL, NULL, 0, 3, NULL, NULL),
(752, 114, 'el', NULL, NULL, 0, 4, NULL, NULL),
(753, 115, 'El perro pequeño corre.', NULL, NULL, 1, 1, NULL, NULL),
(754, 115, 'Pequeño el corre perro.', NULL, NULL, 0, 2, NULL, NULL),
(755, 115, 'Corre perro pequeño.', NULL, NULL, 0, 3, NULL, NULL),
(756, 115, 'El perro pequeño.', NULL, NULL, 0, 4, NULL, NULL),
(757, 117, 'El', NULL, NULL, 1, 1, 1, 'articulo'),
(758, 117, 'gato', NULL, NULL, 1, 2, 2, 'sujeto'),
(759, 117, 'corre', NULL, NULL, 1, 3, 3, 'verbo'),
(760, 118, 'La', NULL, NULL, 1, 1, 1, 'articulo'),
(761, 118, 'niña', NULL, NULL, 1, 2, 2, 'sujeto'),
(762, 118, 'lee', NULL, NULL, 1, 3, 3, 'verbo'),
(763, 119, 'El', NULL, NULL, 1, 1, 1, 'articulo'),
(764, 119, 'perro', NULL, NULL, 1, 2, 2, 'sujeto'),
(765, 119, 'juega', NULL, NULL, 1, 3, 3, 'verbo'),
(766, 120, 'La mariposa vuela.', NULL, NULL, 1, 1, NULL, NULL),
(767, 120, 'Vuela mariposa la.', NULL, NULL, 0, 2, NULL, NULL),
(768, 120, 'Mariposa la vuela.', NULL, NULL, 0, 3, NULL, NULL),
(769, 120, 'La vuela.', NULL, NULL, 0, 4, NULL, NULL),
(770, 122, 'corre', NULL, NULL, 1, 1, NULL, NULL),
(771, 122, 'gato', NULL, NULL, 0, 2, NULL, NULL),
(772, 122, 'bonito', NULL, NULL, 0, 3, NULL, NULL),
(773, 122, 'el', NULL, NULL, 0, 4, NULL, NULL),
(774, 123, 'grande', NULL, NULL, 1, 1, NULL, NULL),
(775, 123, 'corre', NULL, NULL, 0, 2, NULL, NULL),
(776, 123, 'perro', NULL, NULL, 0, 3, NULL, NULL),
(777, 123, 'el', NULL, NULL, 0, 4, NULL, NULL),
(778, 124, 'lee', NULL, NULL, 1, 1, NULL, NULL),
(779, 124, 'niña', NULL, NULL, 0, 2, NULL, NULL),
(780, 124, 'cuento', NULL, NULL, 0, 3, NULL, NULL),
(781, 124, 'bonita', NULL, NULL, 0, 4, NULL, NULL),
(782, 125, 'La niña bonita lee un cuento.', NULL, NULL, 1, 1, NULL, NULL),
(783, 125, 'La niña bonita.', NULL, NULL, 0, 2, NULL, NULL),
(784, 125, 'Lee un cuento.', NULL, NULL, 0, 3, NULL, NULL),
(785, 125, 'Bonita niña.', NULL, NULL, 0, 4, NULL, NULL),
(786, 127, 'El', NULL, NULL, 1, 1, 1, 'articulo'),
(787, 127, 'perro', NULL, NULL, 1, 2, 2, 'sujeto'),
(788, 127, 'pequeño', NULL, NULL, 1, 3, 3, 'adjetivo'),
(789, 127, 'corre', NULL, NULL, 1, 4, 4, 'verbo'),
(790, 128, 'La', NULL, NULL, 1, 1, 1, 'articulo'),
(791, 128, 'mariposa', NULL, NULL, 1, 2, 2, 'sujeto'),
(792, 128, 'azul', NULL, NULL, 1, 3, 3, 'adjetivo'),
(793, 128, 'vuela', NULL, NULL, 1, 4, 4, 'verbo'),
(794, 129, 'La niña alegre canta.', NULL, NULL, 1, 1, NULL, NULL),
(795, 129, 'Alegre niña la.', NULL, NULL, 0, 2, NULL, NULL),
(796, 129, 'La niña alegre.', NULL, NULL, 0, 3, NULL, NULL),
(797, 129, 'Canta alegre.', NULL, NULL, 0, 4, NULL, NULL),
(798, 130, 'El gato negro duerme.', NULL, NULL, 1, 1, NULL, NULL),
(799, 130, 'El gato negro.', NULL, NULL, 0, 2, NULL, NULL),
(800, 130, 'Negro gato el.', NULL, NULL, 0, 3, NULL, NULL),
(801, 130, 'Duerme negro.', NULL, NULL, 0, 4, NULL, NULL),
(802, 132, 'corre', NULL, NULL, 1, 1, NULL, NULL),
(803, 132, 'perro', NULL, NULL, 0, 2, NULL, NULL),
(804, 132, 'pequeño', NULL, NULL, 0, 3, NULL, NULL),
(805, 132, 'el', NULL, NULL, 0, 4, NULL, NULL),
(806, 133, 'azul', NULL, NULL, 1, 1, NULL, NULL),
(807, 133, 'mariposa', NULL, NULL, 0, 2, NULL, NULL),
(808, 133, 'vuela', NULL, NULL, 0, 3, NULL, NULL),
(809, 133, 'la', NULL, NULL, 0, 4, NULL, NULL),
(810, 134, 'El', NULL, NULL, 1, 1, 1, 'articulo'),
(811, 134, 'caballo', NULL, NULL, 1, 2, 2, 'sujeto'),
(812, 134, 'rápido', NULL, NULL, 1, 3, 3, 'adjetivo'),
(813, 134, 'corre', NULL, NULL, 1, 4, 4, 'verbo'),
(814, 135, 'La', NULL, NULL, 1, 1, 1, 'articulo'),
(815, 135, 'pequeña', NULL, NULL, 1, 2, 2, 'adjetivo'),
(816, 135, 'niña', NULL, NULL, 1, 3, 3, 'sujeto'),
(817, 135, 'alegre', NULL, NULL, 1, 4, 4, 'adjetivo'),
(818, 135, 'canta', NULL, NULL, 1, 5, 5, 'verbo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capy_progreso`
--

CREATE TABLE `capy_progreso` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `leccion_id` int(11) NOT NULL,
  `actividad_actual` int(11) DEFAULT 1,
  `porcentaje` int(11) DEFAULT 0,
  `puntos` int(11) DEFAULT 0,
  `completada` tinyint(1) DEFAULT 0,
  `fecha_inicio` datetime DEFAULT current_timestamp(),
  `ultima_actualizacion` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `capy_progreso`
--

INSERT INTO `capy_progreso` (`id`, `userID`, `leccion_id`, `actividad_actual`, `porcentaje`, `puntos`, `completada`, `fecha_inicio`, `ultima_actualizacion`) VALUES
(1, 15, 1, 5, 100, 40, 0, '2026-09-07 08:52:10', '2026-09-12 14:19:09'),
(21, 15, 25, 5, 100, 70, 1, '2026-09-09 10:23:10', '2026-09-09 10:24:02'),
(42, 15, 5, 5, 100, 65, 1, '2026-09-10 13:56:20', '2026-09-10 13:57:04'),
(53, 15, 3, 5, 80, 50, 0, '2026-09-12 07:34:02', '2026-09-12 14:16:27'),
(58, 15, 2, 5, 80, 40, 0, '2026-09-12 07:35:51', '2026-09-12 07:38:45'),
(64, 15, 7, 5, 40, 20, 0, '2026-09-12 07:41:06', '2026-09-12 14:09:55'),
(68, 15, 20, 2, 20, 10, 0, '2026-09-12 11:04:27', '2026-09-12 11:04:27'),
(69, 15, 10, 5, 60, 40, 0, '2026-09-12 11:05:07', '2026-09-12 11:05:34'),
(73, 15, 15, 5, 0, 0, 0, '2026-09-12 14:09:09', '2026-09-12 14:09:13'),
(78, 15, 9, 5, 0, 0, 0, '2026-09-12 14:09:22', '2026-09-12 14:09:44');

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
(43, 31, 5, 0.00, 0, NULL),
(44, 32, 1, 0.00, 1, NULL),
(45, 32, 2, 0.00, 0, NULL),
(46, 32, 3, 0.00, 0, NULL),
(47, 32, 4, 0.00, 0, NULL),
(48, 32, 5, 0.00, 0, NULL);

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

--
-- Volcado de datos para la tabla `leo_progreso`
--

INSERT INTO `leo_progreso` (`progresoID`, `userID`, `nivelID`, `leccionID`, `palabraID`, `fase`, `porcentaje`, `ultima_actualizacion`) VALUES
(1, 32, 1, 1, 1, 3, 100.00, '2026-08-23 16:53:22'),
(2, 32, 1, 1, 2, 3, 100.00, '2026-08-23 16:53:59'),
(3, 32, 1, 1, 3, 3, 100.00, '2026-08-23 16:54:29'),
(4, 32, 1, 1, 4, 3, 100.00, '2026-08-23 16:54:54'),
(5, 32, 1, 1, 5, 3, 100.00, '2026-08-23 16:55:14');

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

--
-- Volcado de datos para la tabla `misiones_diarias`
--

INSERT INTO `misiones_diarias` (`misionID`, `titulo`, `descripcion`, `tipo`, `puntos`) VALUES
(2, 'Completa 1 lección de Leo', 'Completa cualquier lección de Leo y practica con papá o mamá.', 'leo', 10);

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
(8, 11, 1, 'En la noche el ratoncito Tomás mira al cielo con mucha hambre.\r\nÉl sueña con que la luna es un queso delicioso y gigante.\r\nCon una vieja caja de cartón construyó un cohete veloz.\r\nSe puso un casco de juguete y despegó con mucha emoción.\r\nAl llegar arriba descubrió, que la luna solo era una roca gris.\r\nTriste a su casa volvió, pero sobre la mesa encontró, un rico quesito.'),
(9, 13, 1, 'Hoy es un gran día en el bosque.\r\nCapy cumple años y espera un lindo regalo.\r\nUn pastel de chocolate prepararon con mucha emoción.\r\nY Finx colgó globos de colores en cada rincón.\r\nCapy sopló fuerte las velas mientras todos cantaban juntos.\r\n¡Fue el cumpleaños más feliz y divertido del mundo!'),
(10, 6, 1, 'Tito era un pequeño triceratops que soñaba con viajar al espacio. Mientras los demás dinosaurios exploraban el valle, él pasaba las tardes observando el cielo e imaginando cómo sería volar entre las estrellas.\r\n\r\nReunió materiales y construyó un pequeño cohete. Cuando estuvo listo, sonrió y comenzó la aventura que siempre había soñado.'),
(11, 6, 2, 'Cruzó las nubes hasta llegar al espacio, donde descubrió planetas y estrellas llenas de colores. ¡Todo era mucho más lindo de lo que había imaginado!\r\n\r\nTambién pudo ver su casa desde lejos, tan pequeña, mientras viajaba entre las estrellas. Tito sonrió al recordar que su sueño se había hecho realidad.\r\n\r\nComprendió que los sueños pueden hacerse realidad cuando se persiguen con esfuerzo, valentía e imaginación. Desde entonces, nunca dejó de mirar el cielo, soñando con su próxima aventura.'),
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
(10, 16, 0, 0, 1, 1, 0, '2026-07-23 05:16:11', 'leo'),
(11, 32, 25, 0, 1, 1, 0, '2026-08-23 16:55:14', 'leo');

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
(18, 16, 18, 7, '2026-07-23 10:04:39'),
(19, 15, 3, 6, '2026-08-23 05:12:09'),
(20, 15, 8, 20, '2026-08-23 06:51:36');

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
(15, 'Admin', 0, 'Administrador', 'leo&friends@admin.com', '$2y$10$vCgkSLr2/qT0Vf3C6rvc4.NGisiZF/DUH7wPT15XY.gbHvV6VKQlO', NULL, NULL, 'admin', '2026-06-11 02:02:21', '27aba0b38c6697c43fc09eea54d99cc3d0bf74c04ce91809e05af3738e47ad8d', '2026-08-15 19:58:11'),
(16, 'Leo & Friends', 0, 'Administrador', 'admin1@admin.com', '$2y$10$vCgkSLr2/qT0Vf3C6rvc4.NGisiZF/DUH7wPT15XY.gbHvV6VKQlO', 'av_6a61a5c6bb8037.01268402.jpg', 'av_6a657127b98667.66358510.png', 'admin', '2026-06-11 02:05:59', NULL, NULL),
(17, 'Lucy', 0, 'Kenia Beltrán', 'kenia26@gmail.com', '$2y$10$aVPCeX.SIs0DTtlSCYWfF.Vy1pwqOZjJvZX/UqL6hFRI//kXVKSCm', NULL, 'mama2.jpg', 'usuario', '2026-06-14 04:10:33', NULL, NULL),
(18, 'Pedrito', 0, 'Susana Gonzales', 'susanagonzales@gmail.com', '$2y$10$1LoqGMLe5JkGqTyBmX0xsOBewhho4sFEoiLM0iECJn13rYJ69BvWy', 'nino1.jpg', 'mama1.jpg', 'usuario', '2026-06-17 18:21:42', NULL, NULL),
(19, 'Valeria', 0, 'Carlos Ponce', 'carsloponcesoriano@gmail.com', '$2y$10$QO037MeeXdsL.KgnsSEvGOjt7kBBp.WAY7kmjllHWV7HrNsho0QJG', NULL, 'papa1.jpg', 'usuario', '2026-06-19 20:10:32', NULL, NULL),
(20, 'Vale', 0, 'Lolo', 'lolorivas2341@gmail.com', '$2y$10$8v/11mhyPZkoCbBoJ8k72.EA1K/5ZAaDNvXoehcfhmJkytDUhUeWi', 'av_6a481b00d9ed02.62389939.jpg', 'av_6a481b00da7d79.36941822.jpg', 'usuario', '2026-07-03 20:24:14', NULL, NULL),
(21, 'Armando', 0, 'Ana', 'anitalopez@gmail.com', '$2y$10$ZNhJFEFQpFUTup3nxR8g3eVd0nIkATO34In73amupoHkPR15m6D1m', NULL, NULL, 'usuario', '2026-07-04 05:59:27', NULL, NULL),
(26, 'María', 0, 'Roberto', 'rober123@gmail.coom', '$2y$10$zrcuiOjPX5CoVxFHLuuqHeaplDGLvsUxLlSSxkrbK2DE69pATUg.W', NULL, NULL, 'usuario', '2026-07-04 06:15:08', NULL, NULL),
(28, 'Brenda', 0, 'Gertrudis', 'gomez333@gmail.coom', '$2y$10$P22vjvigxDolQvy2PoAvMOlxLbOK1urNAo48bw0ll/KdSSDPt8/xe', NULL, NULL, 'usuario', '2026-07-04 06:18:14', NULL, NULL),
(29, 'Byronsito', 0, 'Carlos', 'byronPNG@gmail.com', '$2y$10$FOstG8YtXEkzlD8FEDvyUuz15qYPgei.VbKaF.KI6S6VQQp9eJtu.', NULL, NULL, 'usuario', '2026-07-09 22:39:29', NULL, NULL),
(30, 'Danielito', 0, 'Cristian', 'danielito@gmail.com', '$2y$10$YiZPEQSIvSoT.o7iB8MzVuGbVbZzXC6u69DiqBKwKAHj5EUo0A3I2', NULL, NULL, 'usuario', '2026-07-09 22:40:22', NULL, NULL),
(31, 'Andrés', 7, 'Pablito', 'hola@hotmail', '$2y$10$GYS4juhDiZIFUWzFSvHOzuU8u8.V0S1HZvFNeAOxyHsNElbSzjfga', 'av_6a5b99d74514d9.07486590.png', 'av_6a5b9a5e1506e0.92122427.jpg', 'usuario', '2026-07-18 15:09:50', NULL, NULL),
(32, 'Alexito', 9, 'Daniel Alonso', 'daniel3030@gmail.com', '$2y$10$x03N.3k.Q2ERqgV9BboDBeTuxUHDyEzCYu7laMsk.Bb8tBtcOQYwq', NULL, NULL, 'usuario', '2026-08-23 16:51:04', NULL, NULL);

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
(31, 52),
(32, 13),
(32, 21),
(32, 33),
(32, 44),
(32, 51);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `capy_actividades`
--
ALTER TABLE `capy_actividades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leccion_id` (`leccion_id`);

--
-- Indices de la tabla `capy_lecciones`
--
ALTER TABLE `capy_lecciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unica_leccion` (`nivel`,`numero_leccion`);

--
-- Indices de la tabla `capy_niveles`
--
ALTER TABLE `capy_niveles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero` (`numero`);

--
-- Indices de la tabla `capy_opciones`
--
ALTER TABLE `capy_opciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actividad_id` (`actividad_id`);

--
-- Indices de la tabla `capy_progreso`
--
ALTER TABLE `capy_progreso`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `progreso_usuario_leccion` (`userID`,`leccion_id`),
  ADD UNIQUE KEY `unique_usuario_leccion` (`userID`,`leccion_id`),
  ADD KEY `leccion_id` (`leccion_id`);

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
-- AUTO_INCREMENT de la tabla `capy_actividades`
--
ALTER TABLE `capy_actividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT de la tabla `capy_lecciones`
--
ALTER TABLE `capy_lecciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `capy_niveles`
--
ALTER TABLE `capy_niveles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `capy_opciones`
--
ALTER TABLE `capy_opciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=819;

--
-- AUTO_INCREMENT de la tabla `capy_progreso`
--
ALTER TABLE `capy_progreso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

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
  MODIFY `desbloqueoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `leo_palabras`
--
ALTER TABLE `leo_palabras`
  MODIFY `palabraID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `leo_progreso`
--
ALTER TABLE `leo_progreso`
  MODIFY `progresoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `misionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `progresoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `progreso_libros`
--
ALTER TABLE `progreso_libros`
  MODIFY `progreso_libro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
-- Filtros para la tabla `capy_actividades`
--
ALTER TABLE `capy_actividades`
  ADD CONSTRAINT `capy_actividades_ibfk_1` FOREIGN KEY (`leccion_id`) REFERENCES `capy_lecciones` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `capy_opciones`
--
ALTER TABLE `capy_opciones`
  ADD CONSTRAINT `capy_opciones_ibfk_1` FOREIGN KEY (`actividad_id`) REFERENCES `capy_actividades` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `capy_progreso`
--
ALTER TABLE `capy_progreso`
  ADD CONSTRAINT `capy_progreso_ibfk_1` FOREIGN KEY (`leccion_id`) REFERENCES `capy_lecciones` (`id`) ON DELETE CASCADE;

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
