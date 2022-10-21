-- STOCK PROCEDURE 1
-- Se encarga de orderas la tabla products por la columna que se introduzca en el primer parametro, y luego en el segundo parametro, se ingresa el orden  que se desea (ASC o DESC)

DELIMITER $$
CREATE PROCEDURE sp_ordenar_listado_productos (IN p_orden_column VARCHAR(100), IN p_order_type VARCHAR(4))
BEGIN
	SET @ordenar=  CONCAT(' ORDER BY ', p_orden_column, ' ', p_order_type);
	SET @clausula= CONCAT( 'SELECT * FROM products', @ordenar);

	PREPARE mi_clausula FROM @clausula;
	EXECUTE mi_clausula;
	DEALLOCATE PREPARE mi_clausula;
END$$
DELIMITER ;

-- EJEMPLO 1
-- CALL sp_ordenar_listado_productos("product_name","ASC")

-- STOCK PROCEDURE 2
-- Se encarga de insertar un nuevo color dentro de la tabla color
DELIMITER $$
CREATE PROCEDURE sp_crear_nuevo_color (IN p_nombre_color VARCHAR(25))
	BEGIN
		DECLARE v_color_existente VARCHAR(25);
        
        -- Revisar que el color no se encuentre creado
        SELECT color_name
        INTO v_color_existente
        FROM colors
        WHERE color_name=p_nombre_color;
        
		-- Controlar que el nombre del color no exista aún
        IF v_color_existente IS NULL THEN
			INSERT INTO colors (color_id,color_name,creation_date,updated_at,deleted_at)
            VALUES (NULL,p_nombre_color,CURDATE(),NULL,NULL);
        ELSE
			SELECT CONCAT("El color ", p_nombre_color , " ya se encuentra creado") AS error_msg;
        END IF;
	END$$
DELIMITER ;

-- EJEMPLO 2
-- CALL sp_crear_nuevo_color("Rojo");

