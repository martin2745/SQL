/*
Duplica todos los departamentos de la sede 1 para crearlos también en la sede 2. Los códigos de los
nuevos departamentos se obtendrán sumándole 50 al código de departamento que estén copiando.
*/

INSERT INTO
    VENTAS.DEPARTAMENTOS (
        DEP_NO, DNOMBRE, LOCALIDAD, SEDE
    )
SELECT DEP_NO + 50, DNOMBRE, LOCALIDAD, 2
FROM VENTAS.DEPARTAMENTOS
WHERE
    SEDE = 1;