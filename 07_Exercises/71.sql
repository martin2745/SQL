/*
Sube el salario un 2 % a los empleados con oficio vendedor y súbelo un 3 % a los que no son vendedor ni director (con una sola instrucción)
*/

UPDATE VENTAS.EMPLEADOS
SET
    SALARIO = SALARIO * (
        CASE
            WHEN OFICIO = 'VENDEDOR' THEN 1.02
            WHEN OFICIO NOT IN('VENDEDOR', 'DIRECTOR') THEN 1.03
            ELSE 1
        END
    );