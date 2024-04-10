/*
Obtén los salarios máximo, mínimo y la diferencia existente entre ambos
*/

SELECT MAX(SALARIO) AS 'SALARIO MÁXIMO', MIN(SALARIO) AS 'SALARIO MÍNIMO', (MAX(SALARIO) - MIN(SALARIO)) AS 'DIFERENCIA'
FROM VENTAS.EMPLEADOS;