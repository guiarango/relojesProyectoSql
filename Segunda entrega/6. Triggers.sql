-- Se crea la tabla logs_sales_created para tener control de los productos creados
CREATE TABLE logs_created_products 
(
	created_product_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	user_name VARCHAR(45) NOT NULL,
    created_at_date DATE NULL,
    created_at_time TIME NULL,
    PRIMARY KEY(created_product_id)
);

-- Se crea la tabla logs_sales_created para tener control de las ventas generadas
CREATE TABLE logs_sales
(
	created_sales_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	user_name VARCHAR(45) NOT NULL,
    created_at_date DATE NULL,
    created_at_time TIME NULL,
    PRIMARY KEY(created_sales_id)
);

-- Se crea un tigger para poder tener trazabilidad de los usuarios que crearon productos dentro de la tabla "products"
DELIMITER $$
CREATE TRIGGER log_created_products
AFTER INSERT ON products
FOR EACH ROW
BEGIN
	INSERT INTO logs_created_products
    VALUES (NULL,USER(),CURDATE(),CURTIME());
END $$
DELIMITER ;

-- EJEMPLO TRIGGER 1
-- INSERT INTO products VALUES (NULL,"Producto de prueba",30.55,"./prueba.jpg","Producto de prueba",2,curdate(),NULL,NULL);
-- SELECT * FROM logs_created_products;

-- Se crea un tigger para poder tener trazabilidad de los intentos de transacciones que generaron los usuarios dentro de la tabla "sales", sea que haya sido exitoso o no el intento
DELIMITER $$
CREATE TRIGGER log_sales
BEFORE INSERT ON sales
FOR EACH ROW
BEGIN
	INSERT INTO logs_sales
    VALUES (NULL,USER(),CURDATE(),CURTIME());
END $$
DELIMITER ;


-- EJEMPLO TRIGGER 2
-- INSERT INTO sales VALUES (NULL,3,"Dirección prueba",5,5,4,8,curdate(),NULL,NULL);
-- SELECT * FROM logs_sales;