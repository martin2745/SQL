/*
Obtén cuántos empleados hay en cada departamento, ordenando el resultado en orden decreciente por el
número de empleados de cada departamento.
*/

SELECT DEP_NO, COUNT(*) AS 'EMPLEADOS DEL DEPARTAMENTO'
FROM VENTAS.EMPLEADOS
WHERE
    DEP_NO IS NOT NULL
GROUP BY
    DEP_NO
ORDER BY COUNT(*) DESC;

SELECT DEP_NO, COUNT(*) AS 'EMPLEADOS DEL DEPARTAMENTO'
FROM VENTAS.EMPLEADOS
WHERE
    DEP_NO IS NOT NULL
GROUP BY
    1
ORDER BY 2 DESC;