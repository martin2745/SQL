/*
El empleado 7499 cambiará de lugar de trabajo, pasando al departamento CONTABILIDAD con el puesto
de EMPLEADO. Modifica ambos campos con una sola sentencia.
*/

-- Si no tienes en cuenta los ejercicios anteriores
UPDATE VENTAS.EMPLEADOS E
SET
    OFICIO = 'EMPLEADO',
    E.DEP_NO = (
        SELECT D.DEP_NO
        FROM VENTAS.DEPARTAMENTOS D
        WHERE
            D.DNOMBRE = 'CONTABILIDAD'
    )
WHERE
    EMP_NO = 7499;

-- Si tienes en cuenta las modificaciones de los 72.sql y 73.sql.
UPDATE VENTAS.EMPLEADOS
SET
    DEP_NO = (
        SELECT DEP_NO
        FROM VENTAS.DEPARTAMENTOS
        WHERE
            DNOMBRE = 'CONTABILIDAD'
    ),
    CODPUESTO = (
        SELECT CODPUESTO
        FROM VENTAS.PUESTOS
        WHERE
            PUESTO = 'EMPLEADO'
    )
WHERE
    EMP_NO = 7499;