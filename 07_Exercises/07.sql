/*
Empleados cuyo OFICIO sea VENDEDOR y que además su SALARIO sea estrictamente superior a 1500
*/

SELECT *
FROM VENTAS.EMPLEADOS
WHERE
    OFICIO = 'VENDEDOR'
    AND SALARIO > 1500;