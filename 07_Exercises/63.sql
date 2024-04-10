/*
Asigna a dicho departamento al empleado “Lopez”, que como será el jefe de ese departamento no tendrá
director asignado.
*/

UPDATE VENTAS.EMPLEADOS
SET
    DEP_NO = '50',
    DIRECTOR = NULL
WHERE
    APELLIDO = 'LOPEZ';