-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2026 a las 06:57:00
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
-- Estructura de tabla para la tabla `cuentos`
--

CREATE TABLE `cuentos` (
  `cuentoID` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `contenido` text NOT NULL,
  `nivel` enum('1','2','3','4','5') DEFAULT NULL,
  `categoria` enum('principal','nuevo') DEFAULT 'principal',
  `precio_monedas` int(11) DEFAULT 0,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuentos`
--

INSERT INTO `cuentos` (`cuentoID`, `titulo`, `imagen`, `contenido`, `nivel`, `categoria`, `precio_monedas`, `orden`) VALUES
(1, 'La araña y la manzana', 'anaManzana.png', 'La araña Ana ve una manzana.\r\nAna ama la manzana y la agarra.\r\nLa araña Ana ahora salta y canta.\r\nAna, es una araña muy feliz con su manzana.', '1', 'principal', 0, 1),
(2, 'Leo el camaleón', 'historiaLeo.png', 'Leo es un camaleón que cambia de color. Si está triste, se pone azul. Si está feliz, se pone verde. Un día, jugando con sus amigos, se emocionó y brilló como el arcoíris. ¡A todos les encantó! Leo supo que sus colores eran un gran superpoder.', '2', 'principal', 0, 2),
(3, 'La aventura en la selva', 'aventura.png', 'Leo, Finx y Capy decidieron seguir un mapa misterioso que encontraron bajo una roca. El mapa los llevó por caminos llenos de flores gigantes que cantaban y árboles que daban saltos. Al final del camino no había oro ni joyas, ¡sino un árbol repleto de las frutas más dulces de la selva! Descubrieron que el mejor tesoro de una aventura es compartir el viaje con tus mejores amigos.', '4', 'principal', 0, 4),
(4, 'Mía la mariposa', 'mari.png', 'Mía era una mariposa muy curiosa, con grandes alas moradas que brillaban como pequeñas estrellas bajo la luz del sol.\r\n\r\nVivía en un jardín lleno de flores de todos los colores, pero lo que más le gustaba no era el néctar ni jugar entre las hojas… ¡era descubrir palabras nuevas!\r\n\r\nCada mañana, Mía volaba feliz de flor en flor. Las margaritas le enseñaban palabras suaves como “ternura”. Las rosas le regalaban palabras dulces como “amor”. Y las flores azules del lago le susurraban palabras mágicas como “sueños” y “esperanza”.\r\n\r\nMía guardaba cada palabra en sus alas brillantes. Cuando volaba por el bosque al atardecer, las letras se desprendían como polvo luminoso y caían lentamente sobre los caminos, los árboles y las casitas de los animales.\r\n\r\nLos niños del bosque corrían a mirar aquel espectáculo maravilloso. Al leer las palabras, aprendían a hablar con más cariño, a pedir perdón, a dar las gracias y a compartir sonrisas.\r\n\r\nUna noche, mientras la luna iluminaba el jardín, Mía entendió algo muy importante: las palabras bonitas tienen un gran poder, porque pueden llenar de luz el corazón de quien las escucha.', '5', 'nuevo', 20, 5),
(5, 'Una gran amistad', 'amiguitosHistoria.png', 'Leo era un camaleón muy alegre.\nCapy era un capibara muy amable.\nFinx era un gato muy divertido.\n\nUn día, Finx perdió su pelota.\n\n—¿Dónde está? —preguntó triste.\n\nLeo buscó entre las plantas.\nCapy miró cerca del río.\n\n—¡Aquí está! —gritó Leo.\n\nFinx sonrió feliz.\n\n—¡Gracias, amigos!\n\nLos tres jugaron juntos toda la tarde.\nPorque una gran amistad siempre ayuda.\n', '3', 'principal', 0, 3),
(7, 'El Sol y la Nube', 'sun.png', 'Sol era un sol brillante y alegre que iluminaba el cielo cada mañana.\r\n\r\nNubi era una pequeña nube blanca y suave que viajaba lentamente por el aire.\r\n\r\nA Sol le gustaba dar calor a las flores y despertar a los pájaros. A Nubi le encantaba hacer sombra para refrescar a los animales del bosque.\r\n\r\nUn día, Sol brilló tanto que el campo empezó a sentirse muy caliente.\r\n\r\n—Creo que necesitan un descanso —dijo Nubi.\r\n\r\nEntonces, la nube cubrió suavemente al sol y una brisa fresca recorrió el lugar.\r\n\r\nLas flores se movieron felices y los animales sonrieron tranquilos.\r\n\r\nSol entendió que trabajar junto a Nubi hacía el día mucho más bonito.\r\n\r\nDesde entonces, el sol y la nube compartieron el cielo y aprendieron que juntos podían cuidar mejor a todos.', '5', 'nuevo', 25, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuentos`
--
ALTER TABLE `cuentos`
  ADD PRIMARY KEY (`cuentoID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuentos`
--
ALTER TABLE `cuentos`
  MODIFY `cuentoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
