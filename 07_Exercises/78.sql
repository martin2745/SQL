/*
Asigna una comisión del 10% de su salario a todos los empleados que no teniendo comisión tengan un
salario inferior a 2500€.
*/

UPDATE VENTAS.EMPLEADOS
SET
    COMISION = SALARIO * 0.1
WHERE
    COMISION IS NULL
    AND SALARIO < 2500;