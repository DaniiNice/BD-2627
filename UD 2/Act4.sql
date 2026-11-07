-- Actividad Realizada por Daniel Marcos Ferreira Castaño y Vincent Leonardo Honorio Benito
CREATE TABLE IF NOT EXISTS editoriales (
    id_editorial INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(200) NOT NULL UNIQUE,
    ciudad VARCHAR(200)
) ENGINE=InnoDB CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS libros (
    id_libro INT PRIMARY KEY AUTO_INCREMENT,
    isbn CHAR(13) UNIQUE NOT NULL,
    titulo VARCHAR(200) NOT NULL,
    anio_publicacion SMALLINT,
    precio DECIMAL(10, 2) NOT NULL,
    id_editorial INT NOT NULL,

    CONSTRAINT fk_id_libro
    FOREIGN KEY (id_editorial) REFERENCES editoriales (id_editorial)
    ON DELETE RESTRICT,

    CHECK (anio_publicacion > 1000),
    CHECK (precio >= 0)
) ENGINE=InnoDB CHARSET=utf8mb4;