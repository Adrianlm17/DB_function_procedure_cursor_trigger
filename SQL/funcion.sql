-- FUNCION cuenta cuantos libros hay en cada biblioteca
DELIMITER $$
CREATE FUNCTION actualizar_total_libros() RETURNS INT
BEGIN
    DECLARE total INT;
    UPDATE bibliotecas b
    SET total_libros = (
        SELECT COUNT(*) FROM libros l
        WHERE l.biblioteca_id = b.id
    );
    SELECT SUM(total_libros) INTO total FROM bibliotecas;
    RETURN total;
END$$
DELIMITER ;

-- Ejecutar FUNCION
-- SELECT actualizar_total_libros();
