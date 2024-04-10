/*
Visualizar la expresión formada por las columnas APELLIDO, SALARIO, COMISION,
y una columna que muestre lo que gana juntando el salario y la comisión de la tabla empleados
*/

SELECT
    APELLIDO,
    SALARIO,
    COMISION,
    (SALARIO + IFNULL(COMISION, 0)) AS SALARIO_COMISION
FROM VENTAS.EMPLEADOS;