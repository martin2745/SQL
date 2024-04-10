/*
Obtén todas las combinaciones posibles de apellido de empleado con nombre de departamento. No se 
trata de relacionar a cada empleado con el departamento en el que efectivamente trabaja, sino de 
relacionar a cada empleado con cada departamento en el que podría trabajar.
*/

-- Consulta multitabla
SELECT E.EMP_NO, E.APELLIDO, D.DNOMBRE
FROM VENTAS.EMPLEADOS E, VENTAS.DEPARTAMENTOS D;

-- INNER JOIN
SELECT E.EMP_NO, E.APELLIDO, D.DNOMBRE
FROM VENTAS.EMPLEADOS E
    INNER JOIN VENTAS.DEPARTAMENTOS D;