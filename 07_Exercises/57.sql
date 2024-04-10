/*
Nombre de cada empleado que atiende a algún cliente y Cuántos 
clientes tiene a su cargo ese empleado. Mostrar sólo aquellos 
empleados que atiendan a más de 2 clientes
*/

-- Consulta multitabla
SELECT E.APELLIDO, COUNT(*) AS 'NÚMERO DE CLIENTES'
FROM VENTAS.EMPLEADOS E, VENTAS.CLIENTES C
WHERE
    E.EMP_NO = C.VENDEDOR_NO
GROUP BY
    C.VENDEDOR_NO
HAVING
    COUNT(*) > 2;

-- INNER JOIN
SELECT E.APELLIDO, COUNT(*) AS 'NÚMERO DE CLIENTES'
FROM VENTAS.EMPLEADOS E
    INNER JOIN VENTAS.CLIENTES C ON E.EMP_NO = C.VENDEDOR_NO
GROUP BY
    C.VENDEDOR_NO
HAVING
    COUNT(*) > 2;