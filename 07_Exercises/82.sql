/*
Jubila (elimina) a aquellos empleados contratados antes del 1 de marzo de 1981.
*/

DELETE FROM VENTAS.EMPLEADOS WHERE FECHA_ALTA < '1981-03-01';