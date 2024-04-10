-- Selecciona todos los datos de la tabla EMPLEADOS
SELECT * FROM EMPLEADOS;

-- Calcula la suma de todas las comisiones en la tabla EMPLEADOS y la renombra como 'SUMA COMISIONES'
SELECT SUM(COMISION) AS `SUMA COMISIONES` FROM EMPLEADOS;