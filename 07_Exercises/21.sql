/*
Obtén los salarios medios por departamento
*/

SELECT DEP_NO, AVG(SALARIO) AS 'MEDIA SALARIAL POR DEPARTAMENTE'
FROM VENTAS.EMPLEADOS
WHERE
    DEP_NO IS NOT NULL
GROUP BY
    DEP_NO;