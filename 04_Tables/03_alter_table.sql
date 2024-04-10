-- Crea la base de datos llamada "test" si aún no existe. Si ya existe, no se realiza ninguna acción.
CREATE DATABASE IF NOT EXISTS test;

-- Cambia al contexto de la base de datos "test".
USE test;

-- Crea una tabla llamada "personas" con las siguientes columnas:
CREATE TABLE IF NOT EXISTS personas (
    -- PERSONA_ID: Identificador único de la persona que se incrementa automáticamente.
    PERSONA_ID INT NOT NULL AUTO_INCREMENT,
    -- NOMBRE: Nombre de la persona, con una longitud máxima de 30 caracteres.
    NOMBRE VARCHAR(30),
    -- EDAD: Edad de la persona.
    EDAD INT,
    -- LOCALIDAD: Localidad donde reside la persona, con una longitud máxima de 50 caracteres.
    LOCALIDAD VARCHAR(50),
    -- DNI: Número de documento nacional de identidad de la persona, con una longitud máxima de 9 caracteres.
    DNI VARCHAR(9),
    -- EMAIL: Dirección de correo electrónico de la persona, que no puede ser nula.
    EMAIL VARCHAR(20) NOT NULL,
    -- Restricción UNIQUE para garantizar que cada combinación de DNI y correo electrónico sea única.
    UNIQUE (DNI, EMAIL),
    -- Definición de la clave primaria.
    PRIMARY KEY (PERSONA_ID),
    -- Restricción CHECK para garantizar que la edad sea mayor o igual a 18 años.
    CHECK (EDAD >= 18)
);
-- Agrega una nueva columna llamada "APELLIDOS" a la tabla "personas" con una longitud máxima de 50 caracteres.
ALTER TABLE personas ADD APELLIDOS VARCHAR(50);

-- Cambia el nombre de la columna "APELLIDOS" a "APELLIDOS_PERSONA" en la tabla "personas".
ALTER TABLE personas RENAME COLUMN APELLIDOS TO APELLIDOS_PERSONA;

-- Modifica la columna "APELLIDOS_PERSONA" en la tabla "personas" para tener una longitud máxima de 30 caracteres.
ALTER TABLE personas MODIFY COLUMN APELLIDOS_PERSONA VARCHAR(30);

-- Elimina la columna "APELLIDOS_PERSONA" de la tabla "personas".
ALTER TABLE personas DROP COLUMN APELLIDOS_PERSONA;

-- Elimina la tabla "personas" si existe.
DROP TABLE IF EXISTS personas;