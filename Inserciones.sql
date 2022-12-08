INSERT INTO `roles` (`rol`, `descripcion`) VALUES ('Administrador', 'Administrara todo el sitio web sin restricciones.');
INSERT INTO `roles` (`rol`, `descripcion`) VALUES ('Doctor', 'Registrara solo consultas y recetas.');
INSERT INTO `roles` (`rol`, `descripcion`) VALUES ('Recepcionista', 'Registrara pacientes nuevos actualiza estado de consulta.');
INSERT INTO `roles` (`rol`, `descripcion`) VALUES ('Paciente', 'Solo puede realizar reservas para una consulta.');


INSERT INTO `usuarios` (`id`, `usuario`, `contraseña`, `id_rol`) VALUES (1000, 'admin', 'admin', 1);
INSERT INTO `usuarios` (`id`, `usuario`, `contraseña`, `id_rol`) VALUES (1001, 'juan', 'juan', 2);
INSERT INTO `usuarios` (`id`, `usuario`, `contraseña`, `id_rol`) VALUES (2000, 'jessi', 'jessi', 3);
INSERT INTO `usuarios` (`id`, `usuario`, `contraseña`, `id_rol`) VALUES (2001, 'lesli', 'lesli', 3);


INSERT INTO `estados` (`estado`, `descripcion`) VALUES ('Activo', 'Trabaja en el consultorio.');
INSERT INTO `estados` (`estado`, `descripcion`) VALUES ('Inactivo', 'Ya no trabaja en el consultorio.');


INSERT INTO `turnos` (`turno`, `hora_inicio`, `hora_final`) VALUES ('Mañana', '08:00:00', '12:30:00');
INSERT INTO `turnos` (`turno`, `hora_inicio`, `hora_final`) VALUES ('Tarde', '13:00:00', '17:00:00');
INSERT INTO `turnos` (`turno`, `hora_inicio`, `hora_final`) VALUES ('Noche', '17:00:00', '20:00:00');



INSERT INTO `doctores` (`ci`, `nombre`, `ap_paterno`, `ap_materno`, `fecha_nacimiento`, `sexo`, `telefono`, `direccion`, `ciudad`, `correo`, `id_turno`, `id_estado`) VALUES (10236854, 'Elaine Naomi', 'Caceres', 'Ramos', '1995-5-23', 'mujer', 65894588, 'Av. Juan Pablo II', 'El Alto', 'elaine@mail.com', 1, 1);
INSERT INTO `doctores` (`ci`, `nombre`, `ap_paterno`, `ap_materno`, `fecha_nacimiento`, `sexo`, `telefono`, `direccion`, `ciudad`, `correo`, `id_turno`, `id_estado`) VALUES (10082285, 'Juan Pablo', 'Limachi', 'Coronel', '1999-5-20', 'hombre', 69842588, 'Av. Pando', 'Viacha', 'juan@mail.com', 2, 1);


INSERT INTO `recepcionistas` (`ci`, `nombre`, `ap_paterno`, `ap_materno`, `fecha_nacimiento`, `sexo`, `telefono`, `direccion`, `ciudad`, `correo`, `id_turno`, `id_estado`) VALUES (12345698, 'Jessica', 'Cotapiri', 'Cardenas', '2000-3-9', 'mujer', 75896544, 'Av. Litoral', 'Satelite', 'jessi@mail.com', 1, 1);
INSERT INTO `recepcionistas` (`ci`, `nombre`, `ap_paterno`, `ap_materno`, `fecha_nacimiento`, `sexo`, `telefono`, `direccion`, `ciudad`, `correo`, `id_turno`, `id_estado`) VALUES (14785236, 'Lesli Monica', 'Duran', 'Chavez', '2001-10-20', 'mujer', 65897458, 'Av. Murillo', 'Viacha', 'lesli@mail.com', 2, 1);


INSERT INTO `pacientes` (`ci`, `nombre`, `ap_paterno`, `ap_materno`, `fecha_nacimiento`, `sexo`, `telefono`, `direccion`, `ciudad`, `correo`, `id_recepcionista`) VALUES (14256897, 'Miguel', 'Condori', 'Mamani', '1990-1-9', 'hombre', 65897854, 'Av. Montes', 'Viacha', 'miguel@mail.com', 2001);
INSERT INTO `pacientes` (`ci`, `nombre`, `ap_paterno`, `ap_materno`, `fecha_nacimiento`, `sexo`, `telefono`, `direccion`, `ciudad`, `correo`, `id_recepcionista`) VALUES (12563895, 'Maria', 'Quispe', 'Zapata', '1985-11-29', 'mujer', 63254877, 'Av. del Ejercito', 'Viacha', 'maria@mail.com', 2000);


INSERT INTO `consultas` (`id_doctor`, `id_paciente`, `fecha`, `hora`, `sintomas`, `diagnostico`) VALUES (1000, 3001, '2022-11-29', '10:55:29', 'Dolor de garganta y tos.', 'Gripe');
INSERT INTO `consultas` (`id_doctor`, `id_paciente`, `fecha`, `hora`, `sintomas`, `diagnostico`) VALUES (1001, 3000, '2022-12-1', '15:45:34', 'Fiebre, gripe y tos seca.', 'Resfriado');


INSERT INTO `recetas` (`id_consulta`, `medicamento`, `dosis`, `indicaciones`) VALUES (1, 'Paracetamol 1g', '8 pastillas', 'Una cada 8 horas');
INSERT INTO `recetas` (`id_consulta`, `medicamento`, `dosis`, `indicaciones`) VALUES (2, 'Typerec', '10 pastillas', 'Una despues de cada almuerzo');
