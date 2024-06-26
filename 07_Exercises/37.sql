/*
Visualizar los apellidos y su longitud, de los empleados cuyo departamento contenga las letras ‘ON’ en la 
2ª y 3ª posición.
*/

-- Consulta multitabla
SELECT APELLIDO, LENGTH(APELLIDO) AS 'LONGITUD'
FROM VENTAS.EMPLEADOS E, VENTAS.DEPARTAMENTOS D
WHERE
    E.DEP_NO = D.DEP_NO
    AND DNOMBRE LIKE '_ON%';

-- INNER JOIN
SELECT APELLIDO, LENGTH(APELLIDO) AS 'LONGITUD'
FROM VENTAS.EMPLEADOS E
    INNER JOIN VENTAS.DEPARTAMENTOS D ON E.DEP_NO = D.DEP_NO
WHERE
    DNOMBRE LIKE '_ON%'