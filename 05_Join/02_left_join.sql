-- Selecciona todos los registros de la tabla EMPLEADOS
SELECT * FROM EMPLEADOS;

-- Selecciona todos los registros de la tabla DEPARTAMENTOS
SELECT * FROM DEPARTAMENTOS;

-- Selecciona todos los empleados y sus respectivos departamentos, mostrando todos los empleados incluso si no tienen departamento asignado.
SELECT *
FROM EMPLEADOS
    LEFT JOIN DEPARTAMENTOS ON EMPLEADOS.DEP_NO = DEPARTAMENTOS.DEP_NO;