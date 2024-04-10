/*
Obtener información de los empleados que ganan más que cualquier empleado del departamento 30
*/

SELECT *
FROM VENTAS.EMPLEADOS
WHERE (SALARIO + IFNULL(COMISION, 0)) > (
        SELECT MAX(SALARIO + IFNULL(COMISION, 0))
        FROM VENTAS.EMPLEADOS
        GROUP BY
            DEP_NO
        HAVING
            DEP_NO = 30
    );

SELECT *
FROM VENTAS.EMPLEADOS
WHERE (SALARIO + IFNULL(COMISION, 0)) > ALL (
        SELECT SALARIO + IFNULL(COMISION, 0)
        FROM VENTAS.EMPLEADOS
        WHERE
            DEP_NO = 30
    );

SELECT *
FROM VENTAS.EMPLEADOS
WHERE
    SALARIO + IFNULL(COMISION, 0) > (
        SELECT MAX(SALARIO + IFNULL(COMISION, 0))
        FROM VENTAS.EMPLEADOS
        WHERE
            DEP_NO = 30
    );