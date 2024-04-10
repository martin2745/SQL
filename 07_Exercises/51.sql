/*
Calcular los ingresos medios (salario + comisión) de los empleados del departamento de VENTAS.
*/

SELECT AVG(SALARIO + IFNULL(COMISION, 0)) AS 'MEDIA SALARIAL'
FROM EMPLEADOS E, DEPARTAMENTOS D
WHERE
    E.DEP_NO = D.DEP_NO
    AND D.DNOMBRE = 'VENTAS';