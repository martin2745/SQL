-- Selecciona todos los datos de la tabla EMPLEADOS
SELECT * FROM EMPLEADOS;

-- Selecciona el número del departamento y el salario máximo para departamentos con número mayor que 10
SELECT DEP_NO, MAX(SALARIO)
FROM EMPLEADOS
GROUP BY
    DEP_NO
HAVING
    DEP_NO > 10;

-- Selecciona el número del departamento y el salario máximo para departamentos con número mayor que 10 y cuyo salario máximo sea menor que 3500
SELECT DEP_NO, MAX(SALARIO)
FROM EMPLEADOS
GROUP BY
    DEP_NO
HAVING
    DEP_NO > 10
    AND MAX(SALARIO) < 3500;

SELECT * FROM VENTAS.EMPLEADOS GROUP BY OFICIO;