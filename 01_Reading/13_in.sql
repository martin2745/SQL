-- Selecciona todos los datos de la tabla EMPLEADOS
SELECT * FROM EMPLEADOS;
-- Obtiene todos los datos de la tabla "EMPLEADOS" donde el oficio sea 'EMPLEADO' o 'VENDEDOR'
SELECT * FROM EMPLEADOS WHERE OFICIO IN ('EMPLEADO', 'VENDEDOR');