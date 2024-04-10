/*
Indicar el nombre y la fecha en que se ha vendido por última vez cada producto
*/

SELECT P.DESCRIPCION, MAX(PE.FECHA_PEDIDO) AS 'ÚLTIMA VENTA'
FROM VENTAS.PRODUCTOS P, VENTAS.PEDIDOS PE
WHERE
    P.PRODUCTO_NO = PE.PRODUCTO_NO
GROUP BY
    P.DESCRIPCION;