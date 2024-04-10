/*
Obtén los empleados cuyo salario supera al de sus compañeros de departamento
*/

SELECT *
FROM VENTAS.EMPLEADOS E
WHERE
    SALARIO > (
        SELECT MAX(SALARIO)
        FROM VENTAS.EMPLEADOS E2
        WHERE
            E.DEP_NO = E2.DEP_NO
            AND E.EMP_NO != E2.EMP_NO
    );