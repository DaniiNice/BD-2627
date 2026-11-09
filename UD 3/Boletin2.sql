-- 1.
SELECT CONCAT (apellido, ' ', nombre) AS nombre_completo
FROM Empleados;

-- 2.
SELECT email,
CONCAT(LOWER(SUBSTR(nombre, 1, 1)), LOWER(apellido), '@empresa.es') AS 'Nuevo Email Sugerido'
FROM Empleados;

-- 3.
SELECT apellido, LENGTH(apellido) AS Longitud
FROM Empleados WHERE LENGTH(apellido) > 8;

-- 4.
SELECT CONCAT(apellido, ' ', nombre) AS nombre_completo,
(YEAR(NOW()) - YEAR(fecha_contratacion)) AS Antiguedad_Anios
FROM Empleados;

-- 5.
SELECT nombre, fecha_contratacion 
FROM Empleados 
WHERE MONTH(fecha_contratacion) IN (6, 7, 8);

-- 6.
SELECT nombre,
DATE_FORMAT(fecha_contratacion, 'Contratado el %W, %e de %M de %Y') AS Fecha_Formateada
FROM Empleados;

-- 7.
