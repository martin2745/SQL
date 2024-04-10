-- Creación del procedimiento almacenado p_ALL_USERS
CREATE PROCEDURE p_ALL_USERS() 
BEGIN 
	-- Selecciona todos los usuarios de la tabla USERS
	SELECT * FROM USERS;
END; 
-- Llamada al procedimiento almacenado p_ALL_USERS
CALL p_ALL_USERS;

-- Eliminación del procedimiento almacenado p_ALL_USERS
DROP PROCEDURE p_ALL_USERS;