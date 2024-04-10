/*
Para los productos que se han vendido alguna vez: Indicar el nombre de cada producto y Cuántas
unidades se han vendido de ese producto, Mostrar sólo aquellos de los que se han vendido más de 15
unidades.
*/

-- Consulta multitabla
SELECT PR.DESCRIPCION, SUM(P.UNIDADES) AS 'UNIDADES VENDIDAS'
FROM VENTAS.PEDIDOS P, VENTAS.PRODUCTOS PR
WHERE
    P.PRODUCTO_NO = PR.PRODUCTO_NO
GROUP BY
    P.PRODUCTO_NO
HAVING
    SUM(P.UNIDADES) > 15;

-- INNER JOIN
SELECT PR.DESCRIPCION, SUM(P.UNIDADES) AS 'UNIDADES VENDIDAS'
FROM VENTAS.PEDIDOS P
    INNER JOIN VENTAS.PRODUCTOS PR ON P.PRODUCTO_NO = PR.PRODUCTO_NO
GROUP BY
    P.PRODUCTO_NO
HAVING
    SUM(P.UNIDADES) > 15;