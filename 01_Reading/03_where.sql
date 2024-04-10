-- Obtiene todos los datos de la tabla "CLIENTES"
SELECT * FROM CLIENTES;
-- Filtra todos los datos de la tabla "CLIENTES" con LOCALIDAD igual a BARCELONA
SELECT * FROM CLIENTES WHERE LOCALIDAD = 'BARCELONA';

-- Filtra todos los datos de la tabla "CLIENTES" donde LOCALIDAD no sea igual a "BARCELONA"
SELECT * FROM CLIENTES WHERE LOCALIDAD != 'BARCELONA';