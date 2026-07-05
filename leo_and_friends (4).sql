-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2026 at 05:13 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
(28, 28, 5, 0.00, 0, NULL);

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
(3, 'El Sol y la Nube', 'sun.png', 5, 1),
(5, 'La Casita Feliz', 'casita.png', 5, 2),
(6, 'El Triceratops que quería volar al espacio', 'ChatGPT Image 2 jul 2026, 02_16_06 a.m..png', 8, 3),
(7, 'El detective del bosque y las huellas secretas', 'ChatGPT Image 2 jul 2026, 02_20_03 a.m..png', 8, 3),
(8, 'Leo el camaleón', 'ChatGPT Image 2 jul 2026, 02_32_43 a.m..png', 5, 1);

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
(1, 3, 1, 'El Sol estaba muy triste porque estaba muy solito; quería encontrar un amigo que jugara siempre con él.\r\n\r\nPero nadie quería estar cerca de él porque era muy caliente.');

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
(5, 28, 0, 0, 1, 1, 0, '2026-07-04 06:33:08', 'leo');

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
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `userID` int(11) NOT NULL,
  `nombre_nino` varchar(100) NOT NULL,
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

INSERT INTO `usuarios` (`userID`, `nombre_nino`, `nombre_papa`, `correo`, `password`, `foto_nino`, `foto_padre`, `rol`, `fecha_registro`, `token_recuperacion`, `token_expiracion`) VALUES
(15, '', 'Administrador', 'leo&friends@admin.com', '$2y$10$vCgkSLr2/qT0Vf3C6rvc4.NGisiZF/DUH7wPT15XY.gbHvV6VKQlO', NULL, NULL, 'admin', '2026-06-11 02:02:21', NULL, NULL),
(16, '', 'Administrador', 'admin1@admin.com', '$2y$10$vCgkSLr2/qT0Vf3C6rvc4.NGisiZF/DUH7wPT15XY.gbHvV6VKQlO', NULL, NULL, 'admin', '2026-06-11 02:05:59', NULL, NULL),
(17, 'Lucy', 'Kenia Beltrán', 'kenia26@gmail.com', '$2y$10$aVPCeX.SIs0DTtlSCYWfF.Vy1pwqOZjJvZX/UqL6hFRI//kXVKSCm', NULL, 'mama2.jpg', 'usuario', '2026-06-14 04:10:33', NULL, NULL),
(18, 'Pedrito', 'Susana Gonzales', 'susanagonzales@gmail.com', '$2y$10$1LoqGMLe5JkGqTyBmX0xsOBewhho4sFEoiLM0iECJn13rYJ69BvWy', 'nino1.jpg', 'mama1.jpg', 'usuario', '2026-06-17 18:21:42', NULL, NULL),
(19, 'Valeria', 'Carlos Ponce', 'carsloponcesoriano@gmail.com', '$2y$10$QO037MeeXdsL.KgnsSEvGOjt7kBBp.WAY7kmjllHWV7HrNsho0QJG', NULL, 'papa1.jpg', 'usuario', '2026-06-19 20:10:32', NULL, NULL),
(20, 'Vale', 'Lolo', 'lolorivas2341@gmail.com', '$2y$10$8v/11mhyPZkoCbBoJ8k72.EA1K/5ZAaDNvXoehcfhmJkytDUhUeWi', 'av_6a481b00d9ed02.62389939.jpg', 'av_6a481b00da7d79.36941822.jpg', 'usuario', '2026-07-03 20:24:14', NULL, NULL),
(21, 'Armando', 'Ana', 'anitalopez@gmail.com', '$2y$10$ZNhJFEFQpFUTup3nxR8g3eVd0nIkATO34In73amupoHkPR15m6D1m', NULL, NULL, 'usuario', '2026-07-04 05:59:27', NULL, NULL),
(26, 'María', 'Roberto', 'rober123@gmail.coom', '$2y$10$zrcuiOjPX5CoVxFHLuuqHeaplDGLvsUxLlSSxkrbK2DE69pATUg.W', NULL, NULL, 'usuario', '2026-07-04 06:15:08', NULL, NULL),
(28, 'Brenda', 'Gertrudis', 'gomez333@gmail.coom', '$2y$10$P22vjvigxDolQvy2PoAvMOlxLbOK1urNAo48bw0ll/KdSSDPt8/xe', NULL, NULL, 'usuario', '2026-07-04 06:18:14', NULL, NULL);

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
(28, 50);

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
  MODIFY `desbloqueoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
  MODIFY `libro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `pagina_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `progreso`
--
ALTER TABLE `progreso`
  MODIFY `progresoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
-- Constraints for table `usuario_respuestas`
--
ALTER TABLE `usuario_respuestas`
  ADD CONSTRAINT `usuario_respuestas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`userID`) ON DELETE CASCADE,
  ADD CONSTRAINT `usuario_respuestas_ibfk_2` FOREIGN KEY (`opcion_id`) REFERENCES `cuestionario_opciones` (`opcion_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
