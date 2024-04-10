/*
Obtener el nombre de cada departamento y la media salarial de ese departamento,
para los departamentos cuya media salarial es mayor que el salario del empleado 7654
*/

-- Consulta multitabla
SELECT D.DNOMBRE, AVG(SALARIO) AS 'MEDIA SALARIAL'
FROM VENTAS.DEPARTAMENTOS D, VENTAS.EMPLEADOS E
WHERE
    D.DEP_NO = E.DEP_NO
GROUP BY
    D.DEP_NO
HAVING
    AVG(SALARIO) > (
        SELECT SALARIO
        FROM VENTAS.EMPLEADOS
        WHERE
            EMP_NO = '7654'
    );

-- INNER JOIN
SELECT D.DNOMBRE, AVG(SALARIO) AS 'MEDIA SALARIAL'
FROM VENTAS.DEPARTAMENTOS D
    INNER JOIN VENTAS.EMPLEADOS E ON D.DEP_NO = E.DEP_NO
GROUP BY
    D.DEP_NO
HAVING
    AVG(SALARIO) > (
        SELECT SALARIO
        FROM VENTAS.EMPLEADOS
        WHERE
            EMP_NO = '7654'
    );