/*
Actualizar con una sola operación el pedido 1000 de modo que aumente en 1 unidad el producto comprado y se reduzca en una unidad el stock disponible del producto vendido
*/

-- Consulta multitabla
UPDATE VENTAS.PEDIDOS P, VENTAS.PRODUCTOS PR
SET
    P.UNIDADES = (P.UNIDADES + 1),
    PR.STOCK_DISPONIBLE = (PR.STOCK_DISPONIBLE - 1)
WHERE
    P.PRODUCTO_NO = PR.PRODUCTO_NO
    AND PEDIDO_NO = '1000';

-- INNER JOIN
UPDATE VENTAS.PEDIDOS AS P
INNER JOIN VENTAS.PRODUCTOS AS PR ON P.PRODUCTO_NO = PR.PRODUCTO_NO
SET
    P.UNIDADES = (P.UNIDADES + 1),
    PR.STOCK_DISPONIBLE = (PR.STOCK_DISPONIBLE - 1)
WHERE
    P.PEDIDO_NO = '1000';