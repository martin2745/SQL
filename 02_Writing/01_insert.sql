-- Obtiene todos los datos de la tabla "CLIENTES"
SELECT * FROM CLIENTES;

-- Inserta un nuevo cliente en la tabla de clientes con los siguientes datos
INSERT INTO
    CLIENTES (
        CLIENTE_NO, NOMBRE, LOCALIDAD, VENDEDOR_NO, DEBE, HABER, LIMITE_CREDITO
    )
VALUES (
        109, 'COMERCIOS MARTÍNEZ', 'CORUÑA', 7654, 0.00, 0.00, 2000.00
    );