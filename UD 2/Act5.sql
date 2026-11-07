CREATE TABLE IF NOT EXISTS categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(200) NOT NULL UNIQUE,
    descripcion TEXT,
    id_padre INT,

    CONSTRAINT fk_id_padre
    FOREIGN KEY (id_padre) REFERENCES categorias (id_padre)
    ON DELETE SET NULL
);