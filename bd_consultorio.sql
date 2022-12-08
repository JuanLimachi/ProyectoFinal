-- TABLA ROLES


CREATE TABLE ROLES (
  id INT NOT NULL AUTO_INCREMENT,
  rol VARCHAR(50),
  descripcion VARCHAR(200),
  PRIMARY KEY (id)
);


-- TABLA USUARIOS
CREATE TABLE USUARIOS (
  id INT,
  usuario VARCHAR(50),
  contraseña VARCHAR(100),
  id_rol INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_rol) REFERENCES ROLES(id)
);


-- TABLA TURNOS
CREATE TABLE TURNOS (
  id INT NOT NULL AUTO_INCREMENT,
  turno VARCHAR(50),
  hora_inicio TIME,
  hora_final TIME,
  PRIMARY KEY (id)
);


-- TABLA ESTADOS
CREATE TABLE ESTADOS (
  id INT NOT NULL AUTO_INCREMENT,
  estado VARCHAR(50),
  descripcion VARCHAR(150),
  PRIMARY KEY (id)
);


-- TABLA DOCTORES
CREATE TABLE DOCTORES (
  id INT NOT NULL AUTO_INCREMENT,
  ci INT,
  nombre VARCHAR(50),
  ap_paterno VARCHAR(50),
  ap_materno VARCHAR(50),
  fecha_nacimiento DATE,
  sexo VARCHAR(20),
  telefono INT,
  direccion VARCHAR(100),
  ciudad VARCHAR(50),
  correo VARCHAR(150),
  id_turno INT,
  id_estado INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_estado) REFERENCES ESTADOS(id),
  FOREIGN KEY (id_turno) REFERENCES TURNOS(id)
);
ALTER TABLE DOCTORES AUTO_INCREMENT = 1000;


-- TABLA recepcionistas
CREATE TABLE RECEPCIONISTAS (
  id INT NOT NULL AUTO_INCREMENT,
  ci INT,
  nombre VARCHAR(50),
  ap_paterno VARCHAR(50),
  ap_materno VARCHAR(50),
  fecha_nacimiento DATE,
  sexo VARCHAR(20),
  telefono INT,
  direccion VARCHAR(100),
  ciudad VARCHAR(50),
  correo VARCHAR(150),
  id_turno INT,
  id_estado INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_estado) REFERENCES ESTADOS(id),
  FOREIGN KEY (id_turno) REFERENCES TURNOS(id)
);
ALTER TABLE RECEPCIONISTAS AUTO_INCREMENT = 2000;


-- TABLA PACIENTES
CREATE TABLE PACIENTES (
  id INT NOT NULL AUTO_INCREMENT,
  ci INT,
  nombre VARCHAR(50),
  ap_paterno VARCHAR(50),
  ap_materno VARCHAR(50),
  fecha_nacimiento DATE,
  sexo VARCHAR(20),
  telefono INT,
  direccion VARCHAR(100),
  ciudad VARCHAR(50),
  correo VARCHAR(150),
  id_recepcionista INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_recepcionista) REFERENCES RECEPCIONISTAS(id)
);
ALTER TABLE PACIENTES AUTO_INCREMENT = 3000;


-- TABLA CONSULTAS
CREATE TABLE CONSULTAS (
  id INT NOT NULL AUTO_INCREMENT,
  id_doctor INT,
  id_paciente INT,
  fecha DATE,
  hora TIME,
  sintomas VARCHAR(500),
  diagnostico VARCHAR(200),
  PRIMARY KEY (id),
  FOREIGN KEY (id_paciente) REFERENCES PACIENTES(id),
  FOREIGN KEY (id_doctor) REFERENCES DOCTORES(id)
);


-- TABLA RECETAS
CREATE TABLE RECETAS (
  id INT NOT NULL AUTO_INCREMENT,
  id_consulta INT,
  medicamento VARCHAR(100),
  dosis VARCHAR(100),
  indicaciones VARCHAR(200),
  PRIMARY KEY (id),
  FOREIGN KEY (id_consulta) REFERENCES CONSULTAS(id)
);


-- TABLA RESERVAS
CREATE TABLE RESERVAS (
  id INT NOT NULL AUTO_INCREMENT,
  id_paciente INT,
  id_doctor INT,
  fecha DATE,
  hora TIME,
  observacion VARCHAR(100),
  PRIMARY KEY (id),
  FOREIGN KEY (id_paciente) REFERENCES PACIENTES(id),
  FOREIGN KEY (id_doctor) REFERENCES DOCTORES(id)
);













