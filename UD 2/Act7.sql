CREATE TABLE IF NOT EXISTS alumnos (
    id_alumno INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS cursoss (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS profesores (
    id_profesor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS union_inscripciones (
    id_inscripcion INT PRIMARY KEY AUTO_INCREMENT,
    id_alumno INT NOT NULL,
    id_curso INT NOT NULL,
    id_profesor INT NOT NULL,
    fecha_inscripcion DATE NOT NULL DEFAULT CURRENT_DATE,
    calificacion_final DECIMAL(4, 2),

    codigo_inscripcion VARCHAR(50) GENERATED ALWAYS AS (
        CONCAT('CUR', id_curso, '-ALU', id_alumno, '-', YEAR(fecha_inscripcion))
    ) STORED,

    CONSTRAINT fk_alumnos
    FOREIGN KEY (id_alumno) REFERENCES alumnos (id_alumno),

    CONSTRAINT fk_cursos
    FOREIGN KEY (id_curso) REFERENCES cursoss (id_curso),

    CONSTRAINT fk_profesor
    FOREIGN KEY (id_profesor) REFERENCES profesores (id_profesor),

    CONSTRAINT chk_calificacion_final
    CHECK (calificacion_final IS NULL OR calificacion_final BETWEEN 0.00 AND 10.00)
);