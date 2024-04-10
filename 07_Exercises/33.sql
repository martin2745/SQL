/*
Mostrar el código de aquellos empleados que son director. Se permite mostrar duplicados
*/

SELECT EMP_NO
FROM VENTAS.EMPLEADOS
WHERE
    EMP_NO IN (
        SELECT DIRECTOR
        FROM VENTAS.EMPLEADOS
    );

SELECT DISTINCT
    DIRECTOR
FROM VENTAS.EMPLEADOS
WHERE
    DIRECTOR IS NOT NULL;