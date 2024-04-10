-- Selecciona todos los datos de la tabla EMPLEADOS
SELECT * FROM EMPLEADOS;

-- Selecciona todos los datos de la tabla EMPLEADOS y añade una columna que indica cuánto cobra cada empleado, según su salario
SELECT
    *,
    CASE
        WHEN SALARIO > 1800 THEN 'Cobra más de 1800 euros'
        WHEN SALARIO = 1800 THEN 'Cobra 1800 euros'
        ELSE 'Cobra menos de 1800'
    END AS '¿Cuánto cobra el empleado?'
FROM EMPLEADOS;

-- Selecciona todos los datos de la tabla EMPLEADOS y añade una columna que indica si el empleado tiene el oficio de Presidente
SELECT
    *,
    CASE
        WHEN OFICIO LIKE 'PRESI%' THEN True
        ELSE False
    END AS '¿El empleado es el Presi de la compañía?'
FROM EMPLEADOS;