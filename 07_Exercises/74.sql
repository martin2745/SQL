/*
A todos los empleados que no tengan asignado un departamento,
asígnales el departamento desconocido.
*/

INSERT INTO
    VENTAS.DEPARTAMENTOS
VALUES (
        '50', 'DESCONOCIDO', 'DESCONOCIDO'
    );

UPDATE VENTAS.EMPLEADOS E
SET
    E.DEP_NO = (
        SELECT D.DEP_NO
        FROM VENTAS.DEPARTAMENTOS D
        WHERE
            DNOMBRE = 'DESCONOCIDO'
    )
WHERE
    E.DEP_NO IS NULL;