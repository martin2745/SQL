/*
Mostrar el apellido y salario de los tres empleados con mayor salario
*/

SELECT APELLIDO, SALARIO
FROM VENTAS.EMPLEADOS
ORDER BY SALARIO DESC
LIMIT 3;