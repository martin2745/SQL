/*
Crea un campo codpuesto en la tabla de empleado y asigna a cada empleado
el código de puesto que le corresponda en función de su oficio. Elimina
posteriormente el campo OFICIO de la tabla de empleados
*/

ALTER TABLE VENTAS.EMPLEADOS ADD CODPUESTO SMALLINT;

UPDATE VENTAS.EMPLEADOS E
SET
    E.CODPUESTO = (
        SELECT P.CODPUESTO
        FROM VENTAS.PUESTOS P
        WHERE
            E.OFICIO = P.PUESTO
    );

ALTER TABLE VENTAS.EMPLEADOS DROP COLUMN OFICIO;