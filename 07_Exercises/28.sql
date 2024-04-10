/*
Obtén una lista de empleados cuyo salario supere el salario medio
*/

SELECT *
FROM VENTAS.EMPLEADOS
WHERE
    SALARIO > (
        SELECT AVG(SALARIO)
        FROM VENTAS.EMPLEADOS
    );