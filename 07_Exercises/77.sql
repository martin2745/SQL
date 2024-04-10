/*
Asigna una comisión de 500 a todos los empleados que no teniendo comisión tengan un salario superior a
2500€.
*/

UPDATE VENTAS.EMPLEADOS
SET
    COMISION = 500
WHERE
    COMISION IS NULL
    AND SALARIO > 2500;