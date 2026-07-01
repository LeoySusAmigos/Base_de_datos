-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2026 a las 00:02:13
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
(20, 2, 'Animales y Naturaleza 🐾'),
(21, 2, 'Inventos, Ciencia y Dinosaurios 🚀'),
(22, 2, 'Aventuras y Misterios divertidos 🕵️‍♂️'),
(23, 2, 'Historias de Amistad y Monstruos buenos 💖'),
(30, 3, 'Nivel 1: Reconoce letras y une sus primeras palabras'),
(31, 3, 'Nivel 2: Lee frases cortitas con ayuda de muchas imágenes'),
(32, 3, 'Nivel 3: Lee cuentos breves e historias sencillas'),
(33, 3, 'Nivel 4: Lee con más fluidez y comprende más texto'),
(34, 3, 'Nivel 5: Disfruta de desafíos con cuentos más largos'),
(40, 4, 'Tormentas o truenos ⚡'),
(41, 4, 'La oscuridad 🌙'),
(42, 4, 'Bichos o insectos 🐜'),
(43, 4, 'Separarse de mamá o papá 💔'),
(44, 4, 'Ninguno, ¡todo marcha bien! ✨'),
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
(3, 'El Sol y la Nube', 'sun.png', 5, 1),
(5, 'La Casita Feliz', 'casita.png', 5, 2);

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
(1, 3, 1, 'El Sol estaba muy triste porque estaba muy solito; quería encontrar un amigo que jugara siempre con él.\r\n\r\nPero nadie quería estar cerca de él porque era muy caliente.');

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
(2, 18, 0, 0, 1, 1, 0, '2026-06-25 03:50:50', 'leo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `progreso_libros`
--

CREATE TABLE `progreso_libros` (
  `progreso_libro_id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `libro_id` int(11) NOT NULL,
  `fecha_leido` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Estructura de tabla para la tabla `usuarios`
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
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`userID`, `nombre_nino`, `nombre_papa`, `correo`, `password`, `foto_nino`, `foto_padre`, `rol`, `fecha_registro`, `token_recuperacion`, `token_expiracion`) VALUES
(15, '', 'Administrador', 'leo&friends@admin.com', '$2y$10$vCgkSLr2/qT0Vf3C6rvc4.NGisiZF/DUH7wPT15XY.gbHvV6VKQlO', NULL, NULL, 'admin', '2026-06-11 02:02:21', NULL, NULL),
(16, '', 'Administrador', 'admin1@admin.com', '$2y$10$vCgkSLr2/qT0Vf3C6rvc4.NGisiZF/DUH7wPT15XY.gbHvV6VKQlO', NULL, NULL, 'admin', '2026-06-11 02:05:59', NULL, NULL),
(17, 'Lucy', 'Kenia Beltrán', 'kenia26@gmail.com', '$2y$10$aVPCeX.SIs0DTtlSCYWfF.Vy1pwqOZjJvZX/UqL6hFRI//kXVKSCm', NULL, 'mama2.jpg', 'usuario', '2026-06-14 04:10:33', NULL, NULL),
(18, 'Pedrito', 'Susana Gonzales', 'susanagonzales@gmail.com', '$2y$10$1LoqGMLe5JkGqTyBmX0xsOBewhho4sFEoiLM0iECJn13rYJ69BvWy', 'nino1.jpg', 'mama1.jpg', 'usuario', '2026-06-17 18:21:42', NULL, NULL),
(19, 'Valeria', 'Carlos Ponce', 'carsloponcesoriano@gmail.com', '$2y$10$QO037MeeXdsL.KgnsSEvGOjt7kBBp.WAY7kmjllHWV7HrNsho0QJG', NULL, 'papa1.jpg', 'usuario', '2026-06-19 20:10:32', NULL, NULL),
(20, 'Joshua', 'Daniel Valle', 'danielvalle@gmail.com', '$2y$10$LqCCtbm01bOULPymY.rM/OAF8cy9faaoVxkuL0dN5vypfm8Q84M9K', NULL, NULL, 'usuario', '2026-07-01 05:35:07', NULL, NULL),
(21, 'messi goku', 'Byron Díaz', 'messi@gmail.com', '$2y$10$mrKJcEIFZoOi9spN56vzqed./NJRfOt.53skodoaLsKEMPtRRb/2e', NULL, NULL, 'usuario', '2026-07-01 15:01:45', NULL, NULL);

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
(20, 13),
(20, 21),
(20, 33),
(20, 44),
(20, 50),
(21, 10),
(21, 22),
(21, 30),
(21, 40),
(21, 50);

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
  MODIFY `leccionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `leo_niveles`
--
ALTER TABLE `leo_niveles`
  MODIFY `nivelID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `leo_niveles_desbloqueo`
--
ALTER TABLE `leo_niveles_desbloqueo`
  MODIFY `desbloqueoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `leo_palabras`
--
ALTER TABLE `leo_palabras`
  MODIFY `palabraID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `leo_progreso`
--
ALTER TABLE `leo_progreso`
  MODIFY `progresoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `libro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `pagina_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `progreso`
--
ALTER TABLE `progreso`
  MODIFY `progresoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `progreso_libros`
--
ALTER TABLE `progreso_libros`
  MODIFY `progreso_libro_id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
-- Filtros para la tabla `usuario_respuestas`
--
ALTER TABLE `usuario_respuestas`
  ADD CONSTRAINT `usuario_respuestas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`userID`) ON DELETE CASCADE,
  ADD CONSTRAINT `usuario_respuestas_ibfk_2` FOREIGN KEY (`opcion_id`) REFERENCES `cuestionario_opciones` (`opcion_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
