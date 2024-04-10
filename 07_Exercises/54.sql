/*
Cuántos empleados tiene a su cargo (de cuántos es jefe) el empleado ALONSO
*/

SELECT COUNT(E.EMP_NO) AS 'NÚMERO DE EMPLEADOS'
FROM VENTAS.EMPLEADOS E, VENTAS.EMPLEADOS JEFE
WHERE
    E.DIRECTOR = JEFE.EMP_NO
    AND JEFE.APELLIDO = 'ALONSO'
GROUP BY
    E.DIRECTOR;