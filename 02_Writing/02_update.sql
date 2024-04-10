-- Obtiene todos los datos de la tabla "CLIENTES"
SELECT * FROM CLIENTES;

-- Actualiza el límite de crédito a 3000.00 y el saldo adeudado a 1500.00 para el cliente con número de cliente 109.
UPDATE CLIENTES
SET
    LIMITE_CREDITO = '3000.00',
    DEBE = '1500.00'
WHERE
    CLIENTE_NO = 109;