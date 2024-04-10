/*
Apellido, localidad y oficio de los empleados de Madrid que ganan menos de 2.000 y los de Barcelona
que ganan menos de 1.500
*/

SELECT E.APELLIDO, D.LOCALIDAD, E.OFICIO, E.SALARIO
FROM VENTAS.EMPLEADOS E, VENTAS.DEPARTAMENTOS D
WHERE
    E.DEP_NO = D.DEP_NO
    AND (
        (
            E.SALARIO < 2000
            AND D.LOCALIDAD IN ('MADRID')
        )
        OR (
            E.SALARIO < 1500
            AND D.LOCALIDAD IN ('BARCELONA')
        )
    );

-- INNER JOIN
SELECT E.APELLIDO, D.LOCALIDAD, E.OFICIO, E.SALARIO
FROM VENTAS.EMPLEADOS E
    INNER JOIN VENTAS.DEPARTAMENTOS D ON E.DEP_NO = D.DEP_NO
WHERE (
        E.SALARIO < 2000
        AND D.LOCALIDAD IN ('MADRID')
    )
    OR (
        E.SALARIO < 1500
        AND D.LOCALIDAD IN ('BARCELONA')
    );