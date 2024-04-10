/*
Muestra los Empleados de tipo vendedor y también a los de tipo director que ganen menos de 3000€.
*/

SELECT *
FROM VENTAS.EMPLEADOS
WHERE
    OFICIO = 'VENDEDOR'
    OR (
        OFICIO = 'DIRECTOR'
        AND SALARIO < 3000
    );