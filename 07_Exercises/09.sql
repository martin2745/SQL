/*
Empleados cuyo OFICIO NO sea VENDEDOR y SALARIO sea estrictamente superior a 1500 o que sean del departamento 20.
*/

SELECT *
FROM VENTAS.EMPLEADOS
WHERE (
        OFICIO != 'VENDEDOR'
        AND SALARIO > 1500
    )
    OR DEP_NO = 20;