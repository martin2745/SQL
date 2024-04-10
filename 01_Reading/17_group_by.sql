-- Selecciona todos los datos de la tabla EMPLEADOS
SELECT * FROM EMPLEADOS;

-- Selecciona el salario máximo para cada departamento
SELECT MAX(SALARIO) FROM EMPLEADOS GROUP BY DEP_NO;

-- Selecciona el número del departamento y el salario máximo para cada departamento
SELECT DEP_NO, MAX(SALARIO) FROM EMPLEADOS GROUP BY DEP_NO;