/*
Asignar una comisión de 2.000€ a los vendedores que no ganan nada en concepto
de comisión
*/

UPDATE VENTAS.EMPLEADOS
SET
    COMISION = '2000'
WHERE
    OFICIO = 'VENDEDORES'
    AND IFNULL(COMISION, 0) = 0;