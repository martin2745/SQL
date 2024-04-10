/*
Visualizar el departamento con más presupuesto asignado para pagar el salario 
y la comisión de sus empleados
*/

SELECT D.DEP_NO, D.DNOMBRE, (
        SUM(E.SALARIO) + IFNULL(E.COMISION, 0)
    ) AS 'SALARIOS'
FROM VENTAS.DEPARTAMENTOS D
    INNER JOIN VENTAS.EMPLEADOS E ON D.DEP_NO = E.DEP_NO
GROUP BY
    D.DEP_NO
ORDER BY 3 DESC
LIMIT 1;