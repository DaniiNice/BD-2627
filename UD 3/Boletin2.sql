-- Actividad Realizada por Daniel Marcos Ferreira Castaño y Juan Jose Carmona Castaño
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
SELECT salario + (salario * IFNULL(comision_pct, 0)) AS Salario_Mensual_Total
FROM Empleados;

-- 8.
SELECT nombre, salario,
CASE 
    WHEN salario < 40000 THEN 'Bajo'
    WHEN salario > 40000 AND salario < 60000 THEN 'Medio'
    WHEN salario > 60000 THEN 'Alto'
END AS Nivel_Salarial
FROM Empleados;

-- 9.
SELECT nombre,
IF(comision_pct IS NOT NULL, 500, 1000) AS Bonificacion
FROM Empleados;

-- 10.
SELECT nombre, CONCAT(CAST(salario AS VARCHAR(20)), '€') AS Salario
FROM Empleados;

-- 11.
SELECT CONCAT(UPPER(nombre), ' ' ,UPPER(apellido)) AS Nombre_Completo,
salario + (salario * IFNULL(comision_pct, 0)) AS Salario_Total,
IF(comision_pct >= 25, 'Excelente', 'Bueno') AS Evaluacion
FROM Empleados 
WHERE departamento_id = 80
ORDER BY apellido;