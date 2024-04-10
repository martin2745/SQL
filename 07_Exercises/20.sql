/*
Obtén la fecha de alta más reciente. 
*/

SELECT FECHA_ALTA
FROM VENTAS.EMPLEADOS
ORDER BY FECHA_ALTA DESC
LIMIT 1;

SELECT MAX(FECHA_ALTA) AS 'FECHA MÁS RECIENTE DE ALTA'
FROM VENTAS.EMPLEADOS;