-- Obtiene todos los datos de la tabla "CLIENTES"
SELECT * FROM CLIENTES;

-- Concatena el nombre y la localidad de cada cliente y lo muestra como una columna llamada 'INFORMACION DEL CLIENTE'
SELECT CONCAT(
        'Nombre: ', NOMBRE, ' y es de: ', LOCALIDAD
    ) AS `INFORMACION DEL CLIENTE`
FROM CLIENTES;