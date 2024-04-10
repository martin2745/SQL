DROP DATABASE IF EXISTS test;

CREATE DATABASE test;

USE test;

-- Crear tabla para almacenar información sobre compañías
CREATE TABLE companies (
    company_id int AUTO_INCREMENT PRIMARY KEY, -- Identificador único de la compañía
    name varchar(100) NOT NULL -- Nombre de la compañía
);

CREATE TABLE users (
    user_id int AUTO_INCREMENT PRIMARY KEY, -- Identificador único del usuario
    name varchar(100) NOT NULL, -- Nombre del usuario
    email varchar(100) NOT NULL UNIQUE, -- Correo electrónico del usuario (asegura unicidad)
    company_id int, -- Referencia a la compañía a la que pertenece el usuario
    FOREIGN KEY (company_id) REFERENCES companies (company_id) -- Establece clave foránea a la tabla companies
);

-- Agregar restricción de clave externa a la tabla users
/*
ADD CONSTRAINT indica que estás agregando una nueva restricción a la tabla.
fk_companies es el nombre que estás asignando a la restricción de clave externa que estás agregando. 
Este nombre es opcional, pero proporciona una forma de identificar la restricción más fácilmente en el futuro.
*/
ALTER TABLE users
ADD CONSTRAINT fk_companies FOREIGN KEY (company_id) REFERENCES companies (company_id);

-- Crear una tabla para almacenar el historial de correos electrónicos de los usuarios
CREATE TABLE history_email (
    user_id INT, -- ID del usuario asociado al correo electrónico
    email_old VARCHAR(100) NOT NULL, -- Correo electrónico antiguo del usuario
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de creación del registro en el historial
    PRIMARY KEY (
        user_id, email_old, fecha_creacion
    ), -- Definir la clave primaria compuesta por el ID del usuario, el correo electrónico antiguo y la fecha de creación
    FOREIGN KEY (user_id) REFERENCES users (user_id) -- Establecer una clave foránea que referencia el ID del usuario en la tabla de usuarios
);

-- Crear tabla para almacenar números de DNI
CREATE TABLE dni (
    dni_id int AUTO_INCREMENT PRIMARY KEY, -- Identificador único del DNI
    dni_number int NOT NULL, -- Número del DNI
    user_id int, -- Referencia al usuario asociado
    UNIQUE (dni_id), -- Asegura unicidad del dni_id
    FOREIGN KEY (user_id) REFERENCES users (user_id) -- Establece clave foránea a la tabla users
);

-- Crear tabla para almacenar información sobre lenguajes de programación
CREATE TABLE languages (
    language_id int AUTO_INCREMENT PRIMARY KEY, -- Identificador único del lenguaje
    name varchar(100) NOT NULL -- Nombre del lenguaje
);

-- Crear tabla de unión para relacionar usuarios con los lenguajes que conocen
CREATE TABLE users_languages (
    users_language_id int AUTO_INCREMENT PRIMARY KEY, -- Identificador único de la relación
    user_id int, -- Referencia al usuario
    language_id int, -- Referencia al lenguaje
    FOREIGN KEY (user_id) REFERENCES users (user_id), -- Establece clave foránea a la tabla users
    FOREIGN KEY (language_id) REFERENCES languages (language_id), -- Establece clave foránea a la tabla languages
    UNIQUE (user_id, language_id) -- Asegura unicidad de combinación usuario-lenguaje
);

-- Insertar valores en la tabla companies
INSERT INTO
    companies (name)
VALUES ('Company A'),
    ('Company B'),
    ('Company C');

-- Insertar valores en la tabla users
INSERT INTO
    users (name, email, company_id)
VALUES (
        'User 1', 'user1@example.com', 1
    ),
    (
        'User 2', 'user2@example.com', 1
    ),
    (
        'User 3', 'user3@example.com', 2
    ),
    (
        'User 4', 'user4@example.com', 3
    );

-- Insertar valores en la tabla dni
INSERT INTO
    dni (dni_number, user_id)
VALUES (123456789, 1),
    (987654321, 2),
    (456789123, 3),
    (321654987, 4);

-- Insertar valores en la tabla languages
INSERT INTO
    languages (name)
VALUES ('Python'),
    ('JavaScript'),
    ('Java'),
    ('C++');

-- Insertar valores en la tabla users_languages
INSERT INTO
    users_languages (user_id, language_id)
VALUES (1, 1), -- User 1 sabe Python
    (1, 2), -- User 1 sabe JavaScript
    (2, 2), -- User 2 sabe JavaScript
    (3, 3), -- User 3 sabe Java
    (4, 4);
-- User 4 sabe C++