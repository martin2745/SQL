/*
Obtén la masa salarial mensual de todos los empleados, el salario medio y el salario máximo.
*/

SELECT SUM(SALARIO) AS 'MASA SALARIAL', AVG(SALARIO) AS 'SALARIO MEDIO', MAX(SALARIO) AS 'SALARIO MÁXIMO'
FROM VENTAS.EMPLEADOS;