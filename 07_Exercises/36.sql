/*
Seleccionar el número, apellido y oficio de los empleados que pertenezcan al departamento de VENTAS
por medio de subconsultas y por medio de una consulta multitabla.
*/

-- Subconsulta
SELECT EMP_NO, APELLIDO, OFICIO
FROM VENTAS.EMPLEADOS E
WHERE
    E.DEP_NO IN (
        SELECT DEP_NO
        FROM VENTAS.DEPARTAMENTOS
        WHERE
            DNOMBRE = 'VENTAS'
    );

-- Consulta multitabla
SELECT EMP_NO, APELLIDO, OFICIO
FROM VENTAS.EMPLEADOS E, VENTAS.DEPARTAMENTOS D
where
    E.DEP_NO = D.DEP_NO
    and DNOMBRE = 'VENTAS';

-- INNER JOIN
SELECT EMP_NO, APELLIDO, OFICIO
FROM VENTAS.EMPLEADOS E
    INNER JOIN VENTAS.DEPARTAMENTOS D ON E.DEP_NO = D.DEP_NO
WHERE
    DNOMBRE = 'VENTAS';