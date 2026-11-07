CREATE TABLE Cursos (
	id_curso INT,
	titulo VARCHAR(250),
	descripción TEXT,
	fecha DATE,
	fecha_exacta DATETIME,
	precio DECIMAL(10, 2),
	max_alumnos SMALLINT,
	disponible TINYINT(1),
	dificultad ENUM('Principiante', 'Intermedio', 'Avanzado')
);