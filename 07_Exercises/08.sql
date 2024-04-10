/*
Empleados cuyo OFICIO sea VENDEDOR o que su SALARIO sea superior o igual a 1500
*/
SELECT *
FROM VENTAS.EMPLEADOS
WHERE
    OFICIO = 'VENDEDOR'
    OR SALARIO >= 1500;