/*
Todos los atributos de los empleados cuya comisión no está vacía ni tampoco es 0 ordenados por
comisión ascendente.
*/

SELECT *
FROM VENTAS.EMPLEADOS
WHERE
    IFNULL(COMISION, 0) != 0
ORDER BY COMISION ASC;

SELECT *
FROM VENTAS.EMPLEADOS
WHERE
    COMISION IS NOT NULL
    AND COMISION > 0
ORDER BY COMISION ASC;