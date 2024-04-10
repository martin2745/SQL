/*
Copia todos los empleados entre el 7839 y el 7876, poniéndoles como código el código actual menos
7838. Su fecha de contratación debe ser la fecha actual.
*/

INSERT INTO
    VENTAS.EMPLEADOS (
        EMP_NO, APELLIDO, OFICIO, DIRECTOR, FECHA_ALTA, SALARIO, COMISION, DEP_NO, TELEFONO
    )
SELECT
    EMP_NO - 7838,
    APELLIDO,
    OFICIO,
    DIRECTOR,
    FECHA_ALTA,
    SALARIO,
    COMISION,
    DEP_NO,
    TELEFONO
FROM VENTAS.EMPLEADOS
WHERE
    EMP_NO BETWEEN 7839 AND 7876;