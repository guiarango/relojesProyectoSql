-- DESARROLLO DE LA ACTIVIDAD
-- Se crea el usuario 1
CREATE USER 'usuario1'@'127.0.0.1' IDENTIFIED BY "usuario1234";
-- Se le otorgan permisos de lectura al usuario 1
GRANT SELECT ON relojes_colombia.* TO 'usuario1'@'127.0.0.1';

-- Se crea el usuario 1
CREATE USER 'usuario2'@'127.0.0.1' IDENTIFIED BY "usuario2345";
-- Se le otorgan permisos de lectura, inserción y actualización al usuario 2
GRANT SELECT, INSERT ,UPDATE ON relojes_colombia.* TO 'usuario2'@'127.0.0.1';

-- Ejemplos para probar dentro de las conexiones de usuario1 y usuario2
USE relojes_colombia;
INSERT INTO categories VALUES (NULL, "Mascotas", CURDATE(),NULL,NULL);
DELETE FROM categories WHERE category_id=1;


-- Revisar permisos en tabla usuario
USE mysql;
SELECT * FROM USER;

-- Revisar permisos
SHOW GRANTS FOR 'usuario1'@'127.0.0.1';
SHOW GRANTS FOR 'usuario2'@'127.0.0.1';