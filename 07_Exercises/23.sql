/*
Obtén el salario del empleado que mayor salario tiene dentro de cada oficio, excluyendo al presidente.
*/

SELECT OFICIO, MAX(SALARIO) AS 'SALARIO MÁXIMO'
FROM VENTAS.EMPLEADOS
WHERE
    OFICIO != 'PRESIDENTE'
GROUP BY
    1;