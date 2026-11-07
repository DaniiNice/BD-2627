-- Active: 1792140463461@@127.0.0.1@3306@practica_vistas
DROP DATABASE IF EXISTS practica_vistas;

CREATE DATABASE practica_vistas
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE practica_vistas;

CREATE TABLE Libros (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    isbn CHAR(13) NOT NULL UNIQUE,
    titulo VARCHAR(150) NOT NULL,
    anio_publicacion INT,
    precio DECIMAL(6,2) NOT NULL
);

INSERT INTO Libros (isbn, titulo, anio_publicacion, precio)
VALUES
    ('9780000000001', 'El algoritmo perdido', 2018, 18.50),
    ('9780000000002', 'Bases de datos para todos', 2024, 31.90),
    ('9780000000003', 'Programando el futuro', 2021, 24.75),
    ('9780000000004', 'Historias de un servidor', 2015, 16.20),
    ('9780000000005', 'El lenguaje de los datos', 2025, 27.50);