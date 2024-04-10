-- Obtiene todos los datos de la tabla "EMPLEADOS"
SELECT * FROM EMPLEADOS;
-- Obtiene el salario mínimo de todos los empleados
SELECT MIN(SALARIO) FROM EMPLEADOS;

-- Obtiene el salario máximo de todos los empleados
SELECT MAX(SALARIO) FROM EMPLEADOS;

-- Consulta para obtener el empleado con el salario máximo
SELECT *
FROM EMPLEADOS
WHERE
    SALARIO = (
        -- Subconsulta que obtiene el salario máximo de todos los empleados
        SELECT MAX(SALARIO)
        FROM EMPLEADOS
    );

-- Consulta para obtener el empleado con el salario mínimo
SELECT *
FROM EMPLEADOS
WHERE
    SALARIO = (
        -- Subconsulta que obtiene el salario mínimo de todos los empleados
        SELECT MIN(SALARIO)
        FROM EMPLEADOS
    );