/*
Seleccionar los empleados existentes en los departamentos 10 y 30.
*/

SELECT * FROM VENTAS.EMPLEADOS WHERE DEP_NO = 10 OR DEP_NO = 30;

SELECT * FROM VENTAS.EMPLEADOS WHERE DEP_NO IN (10, 30)