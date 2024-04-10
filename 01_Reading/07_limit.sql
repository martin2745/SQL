-- Selecciona todos los datos de la tabla CLIENTES
SELECT * FROM CLIENTES;

-- Selecciona todos los datos de la tabla CLIENTES limitado a las 3 primeras filas
SELECT * FROM CLIENTES LIMIT 3;

-- Selecciona los datos de la tabla CLIENTES donde el LIMITE_CREDITO sea igual a '5000.00' y la LOCALIDAD sea igual a 'SEVILLA', o donde la LOCALIDAD sea igual a 'LAS ROZAS', limitado a 2 filas
SELECT *
FROM CLIENTES
WHERE (
        LIMITE_CREDITO = '5000.00'
        AND LOCALIDAD = 'SEVILLA'
    )
    OR LOCALIDAD = 'LAS ROZAS'
LIMIT 2;