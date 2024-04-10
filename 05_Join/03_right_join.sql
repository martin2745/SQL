-- Selecciona todos los registros de la tabla EMPLEADOS
SELECT * FROM EMPLEADOS;

-- Selecciona todos los registros de la tabla DEPARTAMENTOS
SELECT * FROM DEPARTAMENTOS;

-- Selecciona todos los depepartamentos y sus respectivos empleados, mostrando todos los departamentos incluso si no tienen empleado.
SELECT *
FROM EMPLEADOS
    RIGHT JOIN DEPARTAMENTOS ON EMPLEADOS.DEP_NO = DEPARTAMENTOS.DEP_NO;