-- Crea un índice llamado "IDX_NAME" en la tabla "USERS" asociado al campo "NAME"
CREATE INDEX IDX_NAME ON USERS (NAME);

-- Elimina el índice llamado "IDX_NAME"
DROP INDEX IDX_NAME ON USERS;

-- Crea un índice único llamado "IDX_NAME" en la tabla "USERS" asociado al campo "NAME"
CREATE UNIQUE INDEX IDX_NAME ON USERS (NAME);

-- Elimina el índice llamado "IDX_NAME"
DROP INDEX IDX_NAME ON USERS;

-- Crea un índice llamado "IDX_NAME_EMAIL" en la tabla "USERS" asociado a los campos "name" y "EMAIL"
CREATE UNIQUE INDEX IDX_NAME_EMAIL ON USERS (NAME, EMAIL);

-- Elimina el índice llamado "IDX_NAME_EMAIL"
DROP INDEX IDX_NAME_EMAIL ON USERS;