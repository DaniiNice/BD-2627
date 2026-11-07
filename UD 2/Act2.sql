CREATE TABLE IF NOT EXISTS autores (
    id_autor INT PRIMARY KEY AUTO_INCREMENT COMMENT 'Clave primaria autogenerada por el autor',
    nombre VARCHAR(200) NOT NULL,
    seudonimo VARCHAR(200) UNIQUE COMMENT 'Alias del autor, debe ser único si no es nulo',
    nacionalidad VARCHAR(100) NOT NULL DEFAULT 'Desconocida',
    anio SMALLINT,
    vivo TINYINT(1) NOT NULL,
    biografia TEXT
);