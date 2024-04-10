/*
Para cada departamento indicar Cuánto dinero gasta en salarios, cuánto gasta en comisiones y cuánto
gasta en total (salario + comisión).
*/

SELECT D.DNOMBRE, SUM(E.SALARIO) AS 'SALARIOS', SUM(E.COMISION) AS 'COMISIONES', SUM(
        E.SALARIO + IFNULL(E.COMISION, 0)
    ) AS 'TOTAL'
FROM VENTAS.EMPLEADOS E
    LEFT OUTER JOIN VENTAS.DEPARTAMENTOS D ON (E.DEP_NO = D.DEP_NO)
GROUP BY
    D.DNOMBRE;