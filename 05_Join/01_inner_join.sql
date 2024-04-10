-- Selecciona todos los registros de la tabla EMPLEADOS
SELECT * FROM EMPLEADOS;

-- Selecciona todos los registros de la tabla DEPARTAMENTOS
SELECT * FROM DEPARTAMENTOS;

-- Selecciona todos los registros de EMPLEADOS que tienen una coincidencia en DEPARTAMENTOS
SELECT * FROM EMPLEADOS INNER JOIN DEPARTAMENTOS;

-- Selecciona todos los registros de EMPLEADOS y DEPARTAMENTOS donde el número de departamento coincide
SELECT *
FROM EMPLEADOS
    INNER JOIN DEPARTAMENTOS ON EMPLEADOS.DEP_NO = DEPARTAMENTOS.DEP_NO;

-- (JOIN es lo mismo que INNER JOIN) Selecciona todos los registros de EMPLEADOS y DEPARTAMENTOS donde el número de departamento coincide
SELECT *
FROM EMPLEADOS
    JOIN DEPARTAMENTOS ON EMPLEADOS.DEP_NO = DEPARTAMENTOS.DEP_NO;

-- Selecciona todos los registros de EMPLEADOS y DEPARTAMENTOS donde el número de departamento coincide, ordenados por apellido ascendente
SELECT *
FROM EMPLEADOS
    JOIN DEPARTAMENTOS ON EMPLEADOS.DEP_NO = DEPARTAMENTOS.DEP_NO
ORDER BY APELLIDO ASC;

-- Selecciona el número de empleado, apellido, número de departamento, nombre del departamento y localidad de departamento de EMPLEADOS y DEPARTAMENTOS, ordenados por apellido ascendente
SELECT EMPLEADOS.EMP_NO, EMPLEADOS.APELLIDO, DEPARTAMENTOS.DEP_NO, DEPARTAMENTOS.DNOMBRE, DEPARTAMENTOS.LOCALIDAD
FROM EMPLEADOS
    JOIN DEPARTAMENTOS ON EMPLEADOS.DEP_NO = DEPARTAMENTOS.DEP_NO
ORDER BY APELLIDO ASC;

-- Selecciona el número de empleado, apellido, número de departamento, nombre del departamento y localidad de departamento de EMPLEADOS y DEPARTAMENTOS, ordenados por apellido ascendente
SELECT E.EMP_NO, E.APELLIDO, D.DEP_NO, D.DNOMBRE, D.LOCALIDAD
FROM
    EMPLEADOS AS E
    JOIN DEPARTAMENTOS AS D ON E.DEP_NO = D.DEP_NO
ORDER BY E.APELLIDO ASC;