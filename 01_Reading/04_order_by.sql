-- Obtiene todos los datos de la tabla "CLIENTES"
SELECT * FROM CLIENTES;
-- Selecciona todos los datos de la tabla CLIENTES y los ordena por el número de vendedor en orden ascendente.
SELECT * FROM CLIENTES ORDER BY VENDEDOR_NO;

-- Selecciona todos los datos de la tabla CLIENTES y los ordena por el número de vendedor en orden ascendente.
SELECT * FROM CLIENTES ORDER BY VENDEDOR_NO ASC;

-- Selecciona todos los datos de la tabla CLIENTES y los ordena por el número de vendedor en orden descendente.
SELECT * FROM CLIENTES ORDER BY VENDEDOR_NO DESC;

-- Selecciona todos los datos de la tabla CLIENTES donde la localidad sea "BARCELONA" y los ordena por el número de vendedor en orden ascendente.
SELECT *
FROM CLIENTES
WHERE
    LOCALIDAD LIKE 'BARCELONA'
ORDER BY VENDEDOR_NO ASC;

-- Selecciona todos los datos de la tabla CLIENTES donde la localidad sea "BARCELONA" y los ordena por el número de vendedor en orden descendente.
SELECT *
FROM CLIENTES
WHERE
    LOCALIDAD LIKE 'BARCELONA'
ORDER BY VENDEDOR_NO DESC;