/*
Para cada empleado indicar su apellido, número de departamento y localidad del departamento
*/

-- Consulta multitabla
SELECT E.APELLIDO, E.DEP_NO, D.LOCALIDAD
FROM EMPLEADOS E, DEPARTAMENTOS D
WHERE
    E.DEP_NO = D.DEP_NO;

-- INNER JOIN
SELECT E.APELLIDO, E.DEP_NO, D.LOCALIDAD
FROM EMPLEADOS E
    JOIN DEPARTAMENTOS D ON E.DEP_NO = D.DEP_NO;