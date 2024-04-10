/*
Listar las localidades donde existan departamentos con empleados 
cuya comisión supere el 10 % del salario
*/

-- Consulta multitabla
SELECT DISTINCT
    D.LOCALIDAD
FROM VENTAS.DEPARTAMENTOS D, VENTAS.EMPLEADOS E
WHERE
    D.DEP_NO = E.DEP_NO
    AND E.COMISION > E.SALARIO * 0.1;

-- INNER JOIN
SELECT DISTINCT
    D.LOCALIDAD
FROM VENTAS.DEPARTAMENTOS D
    INNER JOIN VENTAS.EMPLEADOS E ON D.DEP_NO = E.DEP_NO
WHERE
    E.COMISION > E.SALARIO * 0.1;