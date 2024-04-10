/*
Asigna la sede 1 a todos los departamentos excepto al desconocido,
que tendrá sede 0.
*/

UPDATE VENTAS.DEPARTAMENTOS
SET
    SEDE = IF(
        DNOMBRE = 'CONTABILIDAD', 0, 1
    );