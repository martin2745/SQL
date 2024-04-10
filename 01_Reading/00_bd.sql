DROP DATABASE IF EXISTS ventas;

CREATE DATABASE ventas;

USE ventas;

-- -----------------------------------------------------
-- Tabla departamentos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS departamentos (
    -- DEP_NO: Número de departamento, es un campo NOT NULL y se define como SMALLINT con una longitud de 4 dígitos.
    DEP_NO SMALLINT(4) NOT NULL,
    -- DNOMBRE: Nombre del departamento, es un campo NOT NULL y se define como VARCHAR con una longitud máxima de 20 caracteres.
    DNOMBRE VARCHAR(20) NOT NULL,
    -- LOCALIDAD: Localidad del departamento, es un campo opcional y se define como VARCHAR con una longitud máxima de 20 caracteres.
    LOCALIDAD VARCHAR(20),
    -- Se define la clave primaria de la tabla como la columna DEP_NO.
    PRIMARY KEY (DEP_NO)
);

INSERT INTO
    departamentos
VALUES (
        10, 'CONTABILIDAD', 'BARCELONA'
    ),
    (
        20, 'INVESTIGACION', 'VALENCIA'
    ),
    (30, 'VENTAS', 'MADRID'),
    (40, 'PRODUCCION', 'SEVILLA');

-- -----------------------------------------------------
-- Tabla empleados
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS empleados (
    -- EMP_NO: Número de empleado. Es un campo NOT NULL y se define como SMALLINT con una longitud de 4 dígitos.
    EMP_NO SMALLINT(4) NOT NULL,
    -- APELLIDO: Apellido del empleado. Es un campo VARCHAR con una longitud máxima de 20 caracteres.
    APELLIDO VARCHAR(20),
    -- OFICIO: Oficio o posición laboral del empleado. Es un campo VARCHAR con una longitud máxima de 20 caracteres.
    OFICIO VARCHAR(20),
    -- DIRECTOR: Número del director del empleado. Es un campo SMALLINT que hace referencia al número de otro empleado en la misma tabla.
    DIRECTOR SMALLINT(4),
    -- FECHA_ALTA: Fecha de contratación del empleado. Es un campo DATE.
    FECHA_ALTA DATE,
    -- SALARIO: Salario del empleado. Es un campo FLOAT con una precisión de 8 dígitos en total y 2 dígitos después del punto decimal.
    SALARIO FLOAT(8, 2),
    -- COMISION: Comisión del empleado. Es un campo FLOAT con una precisión de 8 dígitos en total y 2 dígitos después del punto decimal.
    COMISION FLOAT(8, 2),
    -- DEP_NO: Número del departamento al que pertenece el empleado. Es un campo SMALLINT que hace referencia al número de departamento en la tabla "departamentos".
    DEP_NO SMALLINT(4),
    -- TELEFONO: Número de teléfono del empleado. Es un campo VARCHAR con una longitud máxima de 15 caracteres.
    TELEFONO VARCHAR(15),
    -- Se define la clave primaria de la tabla como la columna EMP_NO.
    PRIMARY KEY (EMP_NO),
    -- Se crea un índice llamado "FK_EMP_DIRECTOR" en la columna DIRECTOR para mejorar el rendimiento de las consultas que hacen referencia al director.
    INDEX FK_EMP_DIRECTOR (DIRECTOR ASC),
    -- Se crea un índice llamado "FK_EMP_DEP_NO" en la columna DEP_NO para mejorar el rendimiento de las consultas que hacen referencia al número del departamento.
    INDEX FK_EMP_DEP_NO (DEP_NO ASC),
    -- Se define una restricción de clave externa (FOREIGN KEY) llamada "FK_EMP_DEP_NO" que hace referencia a la tabla "departamentos" en la columna DEP_NO. 
    -- Cuando se actualiza el valor de DEP_NO en la tabla "departamentos", también se actualizará en la tabla "empleados" (ON UPDATE CASCADE).
    CONSTRAINT FK_EMP_DEP_NO FOREIGN KEY (DEP_NO) REFERENCES departamentos (DEP_NO) ON UPDATE CASCADE,
    -- Se define una restricción de clave externa (FOREIGN KEY) llamada "FK_EMP_DIRECTOR" que hace referencia a la misma tabla "empleados" en la columna DIRECTOR. 
    -- Cuando se elimina el empleado que es director, se establecerá el valor de DIRECTOR en NULL (ON DELETE SET NULL) y cuando se actualiza el valor de DIRECTOR en la tabla "empleados", también se actualizará en la misma tabla (ON UPDATE CASCADE).
    CONSTRAINT FK_EMP_DIRECTOR FOREIGN KEY (DIRECTOR) REFERENCES empleados (EMP_NO) ON DELETE SET NULL ON UPDATE CASCADE
);

INSERT INTO
    empleados
VALUES (
        7839, 'REY', 'PRESIDENTE', NULL, '1981-11-17', 6000, NULL, 10, '981587147'
    ),
    (
        7698, 'GARRIDO', 'DIRECTOR', 7839, '1981-05-01', 3850, NULL, 30, '981246798'
    ),
    (
        7782, 'MARTINEZ', 'DIRECTOR', 7839, '1981-06-09', 2450, NULL, 10, '981246798'
    ),
    (
        7499, 'ALONSO', 'VENDEDOR', 7698, '1981-02-20', 1400, 400, 30, '654987412'
    ),
    (
        7521, 'LOPEZ', 'EMPLEADO', 7782, '1981-05-08', 1350, NULL, 10, '696547982'
    ),
    (
        7654, 'MARTIN', 'VENDEDOR', 7698, '1981-09-28', 1500, 160, 30, '983214589'
    ),
    (
        7844, 'CALVO', 'VENDEDOR', 7698, '1981-09-08', 1800, 0, 30, '766514578'
    ),
    (
        7876, 'GIL', 'ANALISTA', 7782, '1982-05-06', 3350, NULL, 20, '981125147'
    ),
    (
        7900, 'JIMENEZ', 'EMPLEADO', 7782, '1983-03-24', 1400, NULL, 20, NULL
    ),
    (
        8998, 'CORTES', 'VENDEDOR', 7698, '1999-02-20', 1800, NULL, 30, '654879255'
    ),
    (
        7902, 'GARRIDO', 'VENDEDOR', 7782, '2007-02-06', 1000, 0, NULL, NULL
    );

-- -----------------------------------------------------
-- Tabla clientes
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS clientes (
    -- CLIENTE_NO: Número de cliente. Es un campo NOT NULL y se define como SMALLINT con una longitud de 5 dígitos.
    CLIENTE_NO SMALLINT(5) NOT NULL,
    -- NOMBRE: Nombre del cliente. Es un campo NOT NULL y se define como VARCHAR con una longitud máxima de 25 caracteres.
    NOMBRE VARCHAR(25) NOT NULL,
    -- LOCALIDAD: Localidad del cliente. Es un campo NOT NULL y se define como VARCHAR con una longitud máxima de 14 caracteres.
    LOCALIDAD VARCHAR(14) NOT NULL,
    -- VENDEDOR_NO: Número del vendedor asignado al cliente. Es un campo SMALLINT que hace referencia al número de empleado en la tabla "empleados".
    VENDEDOR_NO SMALLINT(4),
    -- DEBE: Deuda del cliente. Es un campo FLOAT con una precisión de 10 dígitos en total y 2 dígitos después del punto decimal.
    DEBE FLOAT(10, 2),
    -- HABER: Crédito del cliente. Es un campo FLOAT con una precisión de 10 dígitos en total y 2 dígitos después del punto decimal.
    HABER FLOAT(10, 2),
    -- LIMITE_CREDITO: Límite de crédito del cliente. Es un campo FLOAT con una precisión de 10 dígitos en total y 2 dígitos después del punto decimal.
    LIMITE_CREDITO FLOAT(10, 2),
    -- Se crea un índice llamado "FK_CLI_EMP_NO" en la columna VENDEDOR_NO para mejorar el rendimiento de las consultas que hacen referencia al número del vendedor.
    INDEX FK_CLI_EMP_NO (VENDEDOR_NO ASC),
    -- Se define la clave primaria de la tabla como la columna CLIENTE_NO.
    PRIMARY KEY (CLIENTE_NO),
    -- Se define una restricción de clave externa (FOREIGN KEY) llamada "FK_CLI_EMP_NO" que hace referencia a la tabla "empleados" en la columna EMP_NO. 
    -- Cuando se elimina el empleado que es vendedor, se establecerá el valor de VENDEDOR_NO en NULL (ON DELETE SET NULL) y cuando se actualiza el valor de VENDEDOR_NO en la tabla "clientes", también se actualizará en la misma tabla (ON UPDATE CASCADE).
    CONSTRAINT FK_CLI_EMP_NO FOREIGN KEY (VENDEDOR_NO) REFERENCES empleados (EMP_NO) ON DELETE SET NULL ON UPDATE CASCADE
);

INSERT INTO
    clientes
VALUES (
        101, 'DISTRIBUCIONES GOMEZ', 'MADRID', 7499, 0, 0, 5000
    ),
    (
        102, 'LOGITRONICA S.L', 'BARCELONA', 7654, 0, 0, 5000
    ),
    (
        104, 'TALLERES ESTESO S.A.', 'SEVILLA', 7654, 0, 0, 5000
    ),
    (
        105, 'EDICIONES SANZ', 'BARCELONA', 7499, 0, 0, 5000
    ),
    (
        106, 'SIGNOLOGIC S.A.', 'MADRID', 7654, 0, 0, 5000
    ),
    (
        107, 'MARTIN Y ASOCIADOS S.L.', 'ARAVACA', 7844, 0, 0, 10000
    ),
    (
        108, 'MANUFACTURAS ALI S.A.', 'SEVILLA', 7654, 0, 0, 5000
    ),
    (
        103, 'INDUSTRIAS LACTEAS S.A.', 'LAS ROZAS', 7844, 0, 0, 10000
    );

-- -----------------------------------------------------
-- Tabla productos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS productos (
    -- PRODUCTO_NO: Número de producto. Es un campo NOT NULL y se define como SMALLINT.
    PRODUCTO_NO SMALLINT NOT NULL,
    -- DESCRIPCION: Descripción del producto. Es un campo NOT NULL y se define como VARCHAR con una longitud máxima de 30 caracteres.
    DESCRIPCION VARCHAR(30) NOT NULL,
    -- PRECIO_ACTUAL: Precio actual del producto. Es un campo FLOAT con una precisión de 8 dígitos en total y 2 dígitos después del punto decimal.
    PRECIO_ACTUAL FLOAT(8, 2),
    -- STOCK_DISPONIBLE: Cantidad de stock disponible del producto. Es un campo FLOAT con una precisión de 8 dígitos en total y 2 dígitos después del punto decimal.
    STOCK_DISPONIBLE FLOAT(8, 2),
    -- Se define la clave primaria de la tabla como la columna PRODUCTO_NO.
    PRIMARY KEY (PRODUCTO_NO)
);

INSERT INTO
    productos
VALUES (
        10, 'MESA DESPACHO MOD. GAVIOTA', 550, 50
    ),
    (
        20, 'SILLA DIRECTOR MOD. BUFALO', 670, 25
    ),
    (
        30, 'ARMARIO NOGAL DOS PUERTAS', 460, 20
    ),
    (
        40, 'MESA MODELO UNIÓN', 340, 15
    ),
    (
        50, 'ARCHIVADOR CEREZO', 1050, 20
    ),
    (
        60, 'CAJA SEGURIDAD MOD B222', 280, 15
    ),
    (
        70, 'DESTRUCTORA DE PAPEL A3', 450, 25
    ),
    (
        80, 'MODULO ORDENADOR MOD. ERGOS', 550, 25
    );

-- -----------------------------------------------------
-- Tabla pedidos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS pedidos (
    -- PEDIDO_NO: Número de pedido. Es un campo NOT NULL y se define como SMALLINT.
    PEDIDO_NO SMALLINT NOT NULL,
    -- PRODUCTO_NO: Número de producto. Es un campo que puede ser NULL y se define como SMALLINT.
    PRODUCTO_NO SMALLINT,
    -- CLIENTE_NO: Número de cliente. Es un campo NOT NULL y se define como SMALLINT con una longitud de 6 dígitos.
    CLIENTE_NO SMALLINT(6),
    -- UNIDADES: Cantidad de unidades pedidas. Es un campo FLOAT con una precisión de 8 dígitos en total y 2 dígitos después del punto decimal.
    UNIDADES FLOAT(8, 2),
    -- FECHA_PEDIDO: Fecha y hora en que se realizó el pedido. Es un campo DATETIME.
    FECHA_PEDIDO DATETIME,
    -- Se crea un índice llamado "FK_PEDIDOS_CLIENTE_NO" en la columna CLIENTE_NO para mejorar el rendimiento de las consultas que hacen referencia al número del cliente.
    INDEX FK_PEDIDOS_CLIENTE_NO (CLIENTE_NO ASC),
    -- Se crea un índice llamado "FK_PEDIDOS_PRODUCTO_NO" en la columna PRODUCTO_NO para mejorar el rendimiento de las consultas que hacen referencia al número del producto.
    INDEX FK_PEDIDOS_PRODUCTO_NO (PRODUCTO_NO ASC),
    -- Se define la clave primaria de la tabla como la columna PEDIDO_NO.
    PRIMARY KEY (PEDIDO_NO),
    -- Se define una restricción de clave externa (FOREIGN KEY) llamada "FK_PEDIDOS_CLIENTE_NO" que hace referencia a la tabla "clientes" en la columna CLIENTE_NO. 
    -- Cuando se intenta eliminar un cliente al que se han asociado pedidos, se producirá un error (ON DELETE RESTRICT) y cuando se actualiza el valor de CLIENTE_NO en la tabla "clientes", también se actualizará en la tabla "pedidos" (ON UPDATE CASCADE).
    CONSTRAINT FK_PEDIDOS_CLIENTE_NO FOREIGN KEY (CLIENTE_NO) REFERENCES clientes (CLIENTE_NO) ON DELETE RESTRICT ON UPDATE CASCADE,
    -- Se define una restricción de clave externa (FOREIGN KEY) llamada "FK_PEDIDOS_PRODUCTO_NO" que hace referencia a la tabla "productos" en la columna PRODUCTO_NO. 
    -- Cuando se elimina un producto asociado a un pedido, se establecerá el valor de PRODUCTO_NO en NULL (ON DELETE SET NULL) y cuando se actualiza el valor de PRODUCTO_NO en la tabla "productos", también se actualizará en la tabla "pedidos" (ON UPDATE CASCADE).
    CONSTRAINT FK_PEDIDOS_PRODUCTO_NO FOREIGN KEY (PRODUCTO_NO) REFERENCES productos (PRODUCTO_NO) ON DELETE SET NULL ON UPDATE CASCADE
);

INSERT INTO
    pedidos
VALUES (
        1000, 20, 103, 3, '1999-10-06 00:00:00'
    ),
    (
        1001, 50, 106, 2, '1999-10-06 00:00:00'
    ),
    (
        1002, 10, 101, 4, '1999-10-07 00:00:00'
    ),
    (
        1003, 20, 105, 4, '1999-10-16 00:00:00'
    ),
    (
        1004, 40, 106, 8, '1999-10-20 00:00:00'
    ),
    (
        1005, 30, 105, 2, '1999-10-20 00:00:00'
    ),
    (
        1006, 70, 103, 3, '1999-11-03 00:00:00'
    ),
    (
        1007, 50, 101, 2, '1999-11-06 00:00:00'
    ),
    (
        1008, 10, 106, 6, '1999-11-16 00:00:00'
    ),
    (
        1009, 20, 105, 2, '1999-11-26 00:00:00'
    ),
    (
        1010, 40, 102, 3, '1999-12-08 00:00:00'
    ),
    (
        1011, 30, 106, 2, '1999-12-15 00:00:00'
    ),
    (
        1012, 10, 105, 3, '1999-12-06 00:00:00'
    ),
    (
        1013, 30, 106, 2, '1999-12-06 00:00:00'
    ),
    (
        1014, 20, 101, 4, '2000-01-07 00:00:00'
    ),
    (
        1015, 70, 105, 4, '2000-01-16 00:00:00'
    ),
    (
        1016, 30, 106, 7, '2000-01-18 00:00:00'
    ),
    (
        1017, 20, 105, 6, '2000-01-20 00:00:00'
    );