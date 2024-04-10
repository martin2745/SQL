-- Creación del trigger tg_email
CREATE TRIGGER tg_email AFTER UPDATE ON USERS FOR EACH 
ROW 
BEGIN 
	-- Verifica si el correo electrónico antiguo es diferente al nuevo
	IF OLD.email <> NEW.email THEN
	-- Inserta el registro en la tabla history_email
	INSERT INTO
	    history_email (user_id, email)
	VALUES (OLD.user_id, OLD.email);
	-- Agrega punto y coma al final del statement SQL
END
	IF;
	-- Agrega END IF para finalizar la condición IF
END; 
-- Agrega END para finalizar el bloque BEGIN...END

-- Actualización del correo electrónico para el usuario con user_id = 1
UPDATE users
SET
    email = 'martin@gmail.com'
WHERE
    user_id = 1;

-- Elimina el trigger tg_email
DROP TRIGGER tg_email;