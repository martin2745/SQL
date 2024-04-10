/*
Mostrar una fila para cada empleado que muestre de qué trabaja cada uno de ellos con el siguiente
formato: “[apellido] es [oficio]”.
*/

SELECT CONCAT(APELLIDO, ' es ', OFICIO) AS 'EMPLEADO Y OFICIO'
FROM VENTAS.EMPLEADOS;