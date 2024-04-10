/*
Baja todos los salarios un 10 % e incrementa la comisión un 20 %
*/

UPDATE VENTAS.EMPLEADOS
SET
    SALARIO = SALARIO * 0.9,
    COMISION = COMISION * 1.2;