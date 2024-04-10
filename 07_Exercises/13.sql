/*
Selecciona aquellos empleados cuyo apellido empiece por “M” y su salario esté comprendido entre 1.000 y
2.000 €. Visualiza su número de empleado, apellido y departamento.
*/

SELECT *
FROM VENTAS.EMPLEADOS
WHERE
    APELLIDO LIKE 'M%'
    AND (
        SALARIO >= 1000
        AND SALARIO <= 2000
    );

SELECT *
FROM VENTAS.EMPLEADOS
WHERE
    LEFT(APELLIDO, 1) = 'M'
    AND SALARIO BETWEEN 1000 AND 2000;