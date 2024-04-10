/*
Obtén de por medio de subconsultas y con una consulta multitabla los distintos departamentos (código y
nombre) en los que trabaja alguien.
*/

-- Subconsulta
SELECT DEP_NO, DNOMBRE
FROM VENTAS.DEPARTAMENTOS
WHERE
    DEP_NO IN (
        SELECT DEP_NO
        FROM VENTAS.EMPLEADOS
        WHERE
            DEP_NO IS NOT NULL
    );

-- Consulta multitabla
SELECT DISTINCT
    D.DEP_NO,
    D.DNOMBRE
FROM VENTAS.DEPARTAMENTOS D, EMPLEADOS E
WHERE
    D.DEP_NO = E.DEP_NO;

-- INNER JOIN
SELECT D.DEP_NO, D.DNOMBRE
FROM VENTAS.DEPARTAMENTOS D
    INNER JOIN VENTAS.EMPLEADOS E ON D.DEP_NO = E.DEP_NO
GROUP BY
    D.DEP_NO;