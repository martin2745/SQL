/*
Transfiere a todos los empleados del departamento 30 que no tengan comisión al departamento 40, y
asígnales una comisión de 200€.
*/

UPDATE VENTAS.EMPLEADOS
SET
    DEP_NO = 40,
    COMISION = 200
WHERE
    DEP_NO = 30
    AND COMISION IS NULL;