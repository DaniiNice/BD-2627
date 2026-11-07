-- Actividad Realizada por Daniel Marcos Ferreira Castaño y Vincent Leonardo Honorio Benito
CREATE TABLE IF NOT EXISTS Autores (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nombre_completo VARCHAR(150) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Articulos (
    id_articulo INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(200) NOT NULL,
    contenido TEXT NULL,
    fecha_pub DATE NOT NULL,
    id_autor INT NOT NULL,
    CONSTRAINT fk_articulo_autor FOREIGN KEY (id_autor) REFERENCES Autores (id_autor)
) ENGINE=InnoDB;

-- EDICIONES --
-- Apartado 1
ALTER TABLE autores RENAME TO escritores;

-- Apartado 2
ALTER TABLE escritores ADD COLUMN pais_origen VARCHAR(200);

-- Apartado 3
ALTER TABLE articulos MODIFY COLUMN titulo VARCHAR(255) NOT NULL;

-- Apartado 4
ALTER TABLE articulos RENAME COLUMN fecha_pub TO fecha_publicacion;

-- Apartado 5
ALTER TABLE escritores DROP COLUMN email;

-- Apartado 6
ALTER TABLE articulos MODIFY COLUMN contenido TEXT NOT NULL;

-- Apartado 7
ALTER TABLE articulos DROP CONSTRAINT fk_articulo_autor;

ALTER TABLE articulos MODIFY COLUMN id_autor INT NULL;

ALTER TABLE articulos ADD CONSTRAINT fk_articulo_autor
    FOREIGN KEY (id_autor) REFERENCES escritores (id_autor)
    ON DELETE SET NULL;

-- Apartado 8
ALTER TABLE articulos COMMENT = 'Almacena el contenido de las entradas del blog';