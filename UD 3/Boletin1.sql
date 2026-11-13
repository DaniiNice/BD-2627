-- Actividad Realizada por Daniel Marcos Ferreira Castaño y Vincent Leonardo Honorio Benito
-- 1.
SELECT * FROM Libros;

-- 2.
SELECT titulo, autor, anio_publicacion FROM Libros;

-- 3.
SELECT titulo, anio_publicacion FROM Libros WHERE autor='J.R.R. Tolkien';

-- 4.
SELECT titulo, autor FROM Libros WHERE anio_publicacion > 1980;

-- 5.
SELECT * FROM Libros WHERE genero = 'Fantasía' AND numero_paginas > 500;

-- 6.
SELECT * FROM Libros WHERE editorial='Minotauro' OR editorial='Debolsillo';

-- 7.
SELECT * FROM Libros ORDER BY titulo ASC;

-- 8.
SELECT titulo, autor, anio_publicacion FROM Libros ORDER BY anio_publicacion DESC LIMIT 3;

-- 9.
SELECT * FROM Libros WHERE genero = 'Ciencia Ficción' ORDER BY numero_paginas ASC;

-- 10.
SELECT DISTINCT autor FROM Libros;

-- 11.
SELECT DISTINCT genero FROM Libros ORDER BY ASC;

-- 12.
SELECT titulo, autor, numero_paginas FROM Libros 
WHERE genero='Realismo Mágico' AND numero_paginas < 400 
ORDER BY titulo ASC;