/*
Borra el departamento CONTABILIDAD. Antes de eliminarlo, tendrás que reubicar a sus empleados y
asignarlos al departamento DECONOCIDO.
*/

UPDATE VENTAS.EMPLEADOS
SET
    DEP_NO = (
        SELECT DEP_NO
        FROM VENTAS.DEPARTAMENTOS
        WHERE
            DNOMBRE = 'DESCONOCIDO'
    )
WHERE
    DEP_NO IN (
        SELECT DEP_NO
        FROM VENTAS.DEPARTAMENTOS
        WHERE
            DNOMBRE = 'CONTABILIDAD'
    );

DELETE FROM VENTAS.DEPARTAMENTOS WHERE DNOMBRE = 'CONTABILIDAD';