
-- --------------------------------------------------------
CREATE DATABASE sysclinica;

use sysclinica;
--

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `id_cita` int(200) NOT NULL,
  `id_paciente` int(200) NOT NULL,
  `id_medico` int(200) NOT NULL,
  `fecha` date NOT NULL,
  `estado_cita` varchar(200) NOT NULL,
  `observaciones` varchar(200) NOT NULL,
  `horario` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`id_cita`, `id_paciente`, `id_medico`, `fecha`, `estado_cita`, `observaciones`, `horario`) VALUES
(1, 20, 17, '2020-08-09', 'reservado', 'venir a la hora', '20'),
(2, 9, 12, '2020-08-18', 'reservado', 'hora exacrta', '9'),
(3, 20, 17, '2020-08-18', 'reservado', 'rapdio', '15');


-- Estructura de tabla para la tabla `detalle_preescripcion`
--

CREATE TABLE `detalle_preescripcion` (
  `id_detalle_preescripcion` int(200) NOT NULL,
  `medicina` varchar(200) NOT NULL,
  `dosis` varchar(200) NOT NULL,
  `frecuencia` varchar(200) NOT NULL,
  `dias` int(200) NOT NULL,
  `instruccion` varchar(1000) NOT NULL,
  `id_preescripcion` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_preescripcion`
--

INSERT INTO `detalle_preescripcion` (`id_detalle_preescripcion`, `medicina`, `dosis`, `frecuencia`, `dias`, `instruccion`, `id_preescripcion`) VALUES
(1, 'panadol', '50', '2 veces al dia', 3, 'despues de cada comida', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int(100) NOT NULL,
  `empresa` varchar(200) NOT NULL,
  `ruc` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `imagen` varchar(2000) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `simbolo_moneda` varchar(200) NOT NULL,
  `tipo_moneda` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `empresa`, `ruc`, `direccion`, `telefono`, `descripcion`, `imagen`, `correo`, `simbolo_moneda`, `tipo_moneda`) VALUES
(1, 'clinica sistemasenoferta', '4324', 'av san marino', '242432334', 'empresa clinica sistemasenoferta', '79325289_107343034108000_8331319381153808384_n.jpg', 'sistemasenoferta@gmail.com', '$./', 'nuevo sol');





-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `history_log`
--

INSERT INTO `history_log` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 1, 'has logged in the system at ', '2018-11-27 07:58:26'),
(2, 1, 'has logged out the system at ', '2018-11-27 07:59:03'),
(3, 1, 'has logged in the system at ', '2018-11-30 22:32:20'),
(4, 6, 'has logged in the system at ', '2018-12-01 20:28:15'),
(13, 1, 'has logged out the system at ', '2018-11-30 22:42:36'),
(14, 1, 'has logged in the system at ', '2018-12-04 11:12:37'),
(15, 1, 'has logged in the system at ', '2018-12-19 10:16:00'),
(16, 1, 'has logged in the system at ', '2018-12-19 10:21:46'),
(17, 1, 'has logged in the system at ', '2018-12-19 10:27:32'),
(18, 1, 'has logged in the system at ', '2018-12-19 10:33:11'),
(19, 1, 'se ha desconectado el sistema en ', '2018-12-19 10:39:49'),
(20, 1, 'has logged in the system at ', '2018-12-19 10:40:01'),
(21, 1, 'se ha desconectado el sistema en ', '2018-12-19 10:40:04'),

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id_horario` int(200) NOT NULL,
  `nombre_horario` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`id_horario`, `nombre_horario`) VALUES
(1, '8:30 AM a 08:45 AM'),
(2, '8:45 AM a 09:0 AM'),
(3, '9:00 AM a 09:15 AM'),
(4, '9:15 AM a 09:30 AM'),
(5, '9:30 AM a 09:45 AM'),
(6, '9:45 AM a 10:00 AM'),
(7, '10:00 AM a 10:15 AM'),
(8, '10:15 AM a 10:30 AM'),
(9, '10:30 AM a 10:45 AM'),
(10, '10:45 AM a 11:00 AM'),
(11, '11:00 AM a 11:15 AM'),
(12, '11:15 AM a 11:30 AM'),
(13, '11:30 AM a 11:45 AM'),
(14, '11:45 AM a 12:00 AM'),
(15, '12:00 AM a 12:15 AM'),
(16, '12:15 AM a 12:30 AM'),
(17, '12:30 PM a 12:45 PM'),
(18, '12:45 PM a 01:00 PM'),
(19, '01:00 PM a 01:15 PM'),
(20, '01:15 PM a 01:30 PM'),
(21, '01:30 PM a 01:45 PM'),
(22, '01:45 PM a 02:00 PM'),
(23, '02:00 PM a 02:15 PM'),
(24, '02:15 PM a 02:30 PM'),
(25, '02:30 PM a 02:45 PM'),
(26, '02:45 PM a 03:00 PM'),
(27, '03:00 PM a 03:15 PM'),
(28, '03:15 PM a 03:30 PM'),
(29, '03:30 PM a 03:45 PM'),
(30, '03:45 PM a 04:00 PM'),
(31, '04:00 PM a 04:15 PM'),
(32, '04:15 PM a 04:30 PM'),
(33, '04:30 PM a 04:45 PM'),
(34, '04:45 PM a 05:00 PM'),
(35, '05:00 PM a 05:15 PM'),
(36, '05:15 PM a 05:30 PM'),
(37, '05:30 PM a 05:45 PM'),
(38, '05:45 PM a 06:00 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_medico`
--

CREATE TABLE `horario_medico` (
  `id_horario_medico` int(200) NOT NULL,
  `dia_laborable` varchar(200) NOT NULL,
  `hora_inicio` varchar(200) NOT NULL,
  `hora_fin` varchar(200) NOT NULL,
  `cita_duracion` varchar(200) NOT NULL,
  `id_medico` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario_medico`
--

INSERT INTO `horario_medico` (`id_horario_medico`, `dia_laborable`, `hora_inicio`, `hora_fin`, `cita_duracion`, `id_medico`) VALUES
(2, 'lunes', '8 am', '11 am', '20 minutos', 17),
(3, 'martes', '9am', '11am', '15 minutos', 17);


--
-- Estructura de tabla para la tabla `preescripcion`
--

CREATE TABLE `preescripcion` (
  `id_preescripcion` int(200) NOT NULL,
  `id_cliente` int(200) NOT NULL,
  `id_medico` int(200) NOT NULL,
  `historia` varchar(1000) NOT NULL,
  `id_sesion` int(200) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `preescripcion`
--

INSERT INTO `preescripcion` (`id_preescripcion`, `id_cliente`, `id_medico`, `historia`, `id_sesion`, `fecha`) VALUES
(1, 20, 17, 'gripe', 17, '2020-08-09'),
(2, 20, 8, 'gripe', 17, '2020-08-09');

-- --------------------------------------------------------


--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `correo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `password`, `imagen`, `tipo`, `nombre`, `apellido`, `telefono`, `correo`) VALUES
(5, 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', '', 'administrador', 'sistemas', 'en oferta', '54345', 'tusolutionweb@gmail.com'),
(6, 'siba', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', '', 'recepcionista', 'siba', 'siba', '2342423', 'siba@gmail.com'),
(7, 'federico', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', '', 'farmaceutico', 'federico', 'federico', 'federico', 'federico@gmail.com')

