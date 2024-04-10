/*
Mostrar la siguiente información de todos los empleados: apellido, la fecha de alta, el salario y el salario 
incrementado por una gratificación de 1000€
*/

SELECT
    APELLIDO,
    FECHA_ALTA,
    SALARIO,
    (SALARIO + 1000) AS SALARIO_GRATIFICACION
FROM VENTAS.EMPLEADOS;