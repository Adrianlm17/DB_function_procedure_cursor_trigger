-- PROCEDIMIENTO actualizar nombre autor en base al ID
DELIMITER $$
CREATE PROCEDURE update_autor (IN autor_id INT, IN nuevo_nombre VARCHAR(255))
BEGIN
    UPDATE autores
    SET nombre = nuevo_nombre
    WHERE id = autor_id;
END $$
DELIMITER ;

-- Ejecutar PROCEDIMIENTO
-- CALL update_autor( ID, 'Nuevo nombre');
