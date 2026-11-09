-- Consultas --
-- 1.
σedad>20(Estudiantes)

-- 2.
πnombre_carrera,facultad(Carreras)

-- 3.
ρNombres_Edades(πnombre_est,edad(Estudiantes))

-- 4.
Estudiantes ∪ Estudiantes_Intercambio

-- 5.
Estudiantes ∩ Estudiantes_Intercambio

-- 6.
Estudiantes_Intercambio - Estudiantes

-- 7.
σid_carrera='C3'(Estudiantes) x σfacultad!='C3'(Asignaturas)

-- 8.
πnombre_est,nombre_carrera(Estudiantes⋈Inscripciones)
Estudiantes.id_carrera=Carreras.id_carrera

-- 9.
γnombre_est,COUNT(id_carrera)→numero_de_estudiantes(Estudiantes)