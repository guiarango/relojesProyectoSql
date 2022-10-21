-- Si no permite correr el código utilizar la sentencia:
-- SET GLOBAL log_bin_trust_function_creators = 1;

-- FUNCION 1: Monto comprado por usuario 

DELIMITER $$
CREATE FUNCTION amount_buyed_by_dni (p_dni VARCHAR(25)) RETURNS DECIMAL(7,2)

BEGIN
	DECLARE v_amount_buyed DECIMAL(7,2);
    
	SELECT sum(pro.product_price*sal.quantity)
		INTO v_amount_buyed
		FROM sales AS sal
		LEFT JOIN users AS us
			ON sal.id_user=us.user_id
        LEFT JOIN products AS pro
			ON sal.id_product=pro.product_id
        WHERE us.user_dni=p_dni;
        
	RETURN v_amount_buyed;
END$$
DELIMITER ;

-- EJEMPLO DE USO:
-- SELECT user_dni,amount_buyed_by_dni(user_dni) from users;


-- FUNCION 2: Monto comprado por producto 
DELIMITER $$
CREATE FUNCTION amount_buyed_by_product (p_product_id INT) RETURNS DECIMAL(7,2)

BEGIN
	DECLARE v_amount_buyed DECIMAL(7,2);
    
	SELECT sum(pro.product_price*sal.quantity)
		INTO v_amount_buyed
		FROM sales AS sal
        LEFT JOIN products AS pro
			ON sal.id_product=pro.product_id
        WHERE pro.product_id=p_product_id;
        
	RETURN v_amount_buyed;
END$$
DELIMITER ;

-- EJEMPLO DE USO:
-- SELECT product_id,product_name,amount_buyed_by_product(product_id) from products;

