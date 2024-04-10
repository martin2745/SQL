-- Obtiene todos los datos de la tabla "CLIENTES"
SELECT * FROM CLIENTES;
-- Selecciona todos los datos de la tabla CLIENTES donde el LIMITE_CREDITO sea igual a '5000.00'
SELECT * FROM CLIENTES WHERE LIMITE_CREDITO = '5000.00';

-- Selecciona todos los datos de la tabla CLIENTES donde el LIMITE_CREDITO sea igual a '5000.00' y la LOCALIDAD sea igual a 'BARCELONA'
SELECT *
FROM CLIENTES
WHERE
    LIMITE_CREDITO = '5000.00'
    AND LOCALIDAD = 'BARCELONA';

-- Selecciona todos los datos de la tabla CLIENTES donde el LIMITE_CREDITO no sea igual a '5000.00'
SELECT * FROM CLIENTES WHERE NOT LIMITE_CREDITO = '5000.00';

-- Selecciona todos los datos de la tabla CLIENTES donde el LIMITE_CREDITO sea igual a '5000.00' pero la LOCALIDAD no sea igual a 'BARCELONA'
SELECT *
FROM CLIENTES
WHERE
    LIMITE_CREDITO = '5000.00'
    AND NOT LOCALIDAD = 'BARCELONA';

-- Selecciona todos los datos de la tabla CLIENTES donde el LIMITE_CREDITO sea igual a '5000.00' y la LOCALIDAD sea igual a 'SEVILLA', o donde la LOCALIDAD sea igual a 'LAS ROZAS'
SELECT *
FROM CLIENTES
WHERE (
        LIMITE_CREDITO = '5000.00'
        AND LOCALIDAD = 'SEVILLA'
    )
    OR LOCALIDAD = 'LAS ROZAS';