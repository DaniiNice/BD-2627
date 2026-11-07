CREATE TABLE IF NOT EXISTS peliculas (
    id_pelicula INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(200) NOT NULL,
    anio_estreno SMALLINT,

    CHECK (anio_estreno >= 1000 AND anio_estreno <= 9999)
);

CREATE TABLE IF NOT EXISTS actores (
    id_actor INT PRIMARY KEY AUTO_INCREMENT,
    nombre_completo VARCHAR(200) NOT NULL,
    anio_nacimiento YEAR
);

CREATE TABLE IF NOT EXISTS intermedia (
    papel_personaje VARCHAR(200),
    id_pelicula INT NOT NULL,
    id_actor INT NOT NULL,

    CONSTRAINT fk_id_pelicula
    FOREIGN KEY (id_pelicula) REFERENCES peliculas (id_pelicula)
    ON DELETE CASCADE,

    CONSTRAINT fk_id_actor
    FOREIGN KEY (id_actor) REFERENCES actores (id_actor)
    ON DELETE CASCADE,

    PRIMARY KEY (id_pelicula, id_actor)
);