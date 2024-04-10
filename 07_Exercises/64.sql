/*
Inserta con los códigos 8000, 8001 y 8002 a los empleados “MARTINEZ”, “PEREZ” y “RODRIGUEZ”,
analistas que acaban de ser contratados por el departamento de operaciones. Sus salarios serán
respectivamente de 1000, 1100 y 1200€, sin comisiones. Su director será el 7521.
*/

-- Especificando el orden de valores
INSERT INTO
    VENTAS.EMPLEADOS (
        EMP_NO, APELLIDO, OFICIO, DIRECTOR, FECHA_ALTA, SALARIO, COMISION, DEP_NO, TELEFONO
    )
VALUES (
        8000, 'MARTINEZ', 'ANALISTAS', '7521', '2024-04-09', 1000, NULL, '50', 666777888
    ),
    (
        8001, 'PEREZ', 'ANALISTAS', '7521', '2024-04-09', 1100, NULL, '50', 666777888
    ),
    (
        8002, 'RODRIGUEZ', 'ANALISTAS', '7521', '2024-04-09', 1200, NULL, '50', 666777888
    );

-- Sin especificar el orden de los valores
INSERT INTO
    VENTAS.EMPLEADOS
VALUES (
        8000, 'MARTINEZ', 'ANALISTAS', '7521', '2024-04-09', 1000, NULL, '50', 666777888
    ),
    (
        8001, 'PEREZ', 'ANALISTAS', '7521', '2024-04-09', 1100, NULL, '50', 666777888
    ),
    (
        8002, 'RODRIGUEZ', 'ANALISTAS', '7521', '2024-04-09', 1200, NULL, '50', 666777888
    );