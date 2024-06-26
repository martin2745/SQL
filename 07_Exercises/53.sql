/*
Cuántos clientes tiene a su cargo el empleado ALONSO
*/

SELECT COUNT(C.CLIENTE_NO) AS 'NÚMERO DE CLIENTES'
FROM VENTAS.CLIENTES C, VENTAS.EMPLEADOS E
WHERE
    C.VENDEDOR_NO = E.EMP_NO
    AND E.APELLIDO = 'ALONSO'
GROUP BY
    E.EMP_NO;