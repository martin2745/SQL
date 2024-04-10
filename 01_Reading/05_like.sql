-- Obtiene todos los datos de la tabla "CLIENTES"
SELECT * FROM CLIENTES;
-- Filtra todos los datos de la tabla "CLIENTES" donde LOCALIDAD contenga "ARCELON"
SELECT * FROM CLIENTES WHERE LOCALIDAD LIKE '%ARCELON%';

-- Filtra todos los datos de la tabla "CLIENTES" donde LOCALIDAD comience por "BAR"
SELECT * FROM CLIENTES WHERE LOCALIDAD LIKE 'BAR%';

-- Filtra todos los datos de la tabla "CLIENTES" donde LOCALIDAD termine por "NA"
SELECT * FROM CLIENTES WHERE LOCALIDAD LIKE '%NA';

-- Filtra todos los datos de la tabla "CLIENTES" donde LOCALIDAD no contenga "ARCELON"
SELECT * FROM CLIENTES WHERE LOCALIDAD NOT LIKE '%ARCELON%';