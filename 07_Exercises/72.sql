/*
Crea una nueva tabla PUESTOS(codpuesto,puesto). Inserta en dicha tabla los distintos puestos que
ocupan los empleados (sin repetir).
*/

CREATE TABLE VENTAS.PUESTOS (
    CODPUESTO SMALLINT AUTO_INCREMENT PRIMARY KEY, PUESTO VARCHAR(20)
);

INSERT INTO
    VENTAS.PUESTOS (PUESTO)
SELECT DISTINCT
    OFICIO
FROM VENTAS.EMPLEADOS;