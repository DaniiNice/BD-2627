-- Actividad Realizada por Daniel Marcos Ferreira Castaño y Juan Jose Carmona Castaño
-- 12.
SELECT nombre, puesto_id, fecha_contratacion
FROM Empleados
WHERE departamento_id IN (60, 70) 
AND DAY(fecha_contratacion) > 1
AND YEAR(fecha_contratacion) >= 2020
AND apellido != 'García';