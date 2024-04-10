/*
Seleccionar los oficios que tengan dos o más empleados cuyo salario supere los 1400 €
*/

SELECT OFICIO, COUNT(*) AS 'NÚMERO DE EMPLEADOS'
FROM VENTAS.EMPLEADOS
WHERE
    SALARIO > 1400
GROUP BY
    1
HAVING
    COUNT(*) >= 2;