/*
Seleccionar los oficios que tengan dos o más empleados
*/

SELECT OFICIO, COUNT(*) AS 'NÚMERO DE EMPLEADOS'
FROM VENTAS.EMPLEADOS
GROUP BY
    OFICIO
HAVING
    COUNT(*) > 2;