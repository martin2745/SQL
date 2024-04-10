/*
Obtén todos los clientes junto con todos los productos que han comprado. Mostrar todos los atributos.
*/

-- Tres INNER JOIN
SELECT C.*, PR.*
FROM VENTAS.CLIENTES C
    INNER JOIN VENTAS.PEDIDOS P ON C.CLIENTE_NO = P.CLIENTE_NO
    INNER JOIN VENTAS.PRODUCTOS PR ON P.PRODUCTO_NO = PR.PRODUCTO_NO;

-- Consulta multitabla para tres tablas
SELECT C.*, PR.*
FROM VENTAS.CLIENTES C, VENTAS.PEDIDOS P, VENTAS.PRODUCTOS PR
WHERE
    P.CLIENTE_NO = C.CLIENTE_NO
    AND P.PRODUCTO_NO = PR.PRODUCTO_NO