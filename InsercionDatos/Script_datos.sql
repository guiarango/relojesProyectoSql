/*INSERTAR DATOS DE COLORS*/
INSERT INTO colors (color_id,color_name,creation_date,updated_at,deleted_at)
VALUES (NULL,"Amarillo",curdate(),NULL,NULL),
		(NULL,"Azul",curdate(),NULL,NULL),
		(NULL,"Rojo",curdate(),NULL,NULL),
		(NULL,"Café",curdate(),NULL,NULL),
		(NULL,"Morado",curdate(),NULL,NULL),
		(NULL,"Verde",curdate(),NULL,NULL),
		(NULL,"Rosado",curdate(),NULL,NULL),
		(NULL,"Gris",curdate(),NULL,NULL),
		(NULL,"Blanco",curdate(),NULL,NULL),
		(NULL,"Negro",curdate(),NULL,NULL);

/*INSERTAR DATOS DE CATEGORIES*/
INSERT INTO categories (category_id,category_name,creation_date,updated_at,deleted_at)
VALUES (NULL,"Masculino",curdate(),NULL,NULL),
		(NULL,"Femenino",curdate(),NULL,NULL),
		(NULL,"Niño",curdate(),NULL,NULL),
		(NULL,"Niña",curdate(),NULL,NULL);

/*INSERTAR DATOS DE SIZES*/
INSERT INTO sizes (size_id,size_name,creation_date,updated_at,deleted_at)
VALUES (NULL,"XS",curdate(),NULL,NULL),
		(NULL,"S",curdate(),NULL,NULL),
		(NULL,"M",curdate(),NULL,NULL),
		(NULL,"L",curdate(),NULL,NULL),
		(NULL,"XL",curdate(),NULL,NULL);

/*INSERTAR DATOS DE USERS*/
INSERT INTO users (user_id,user_name,user_last_name,user_gender,user_dni,user_email,user_password,creation_date,updated_at,deleted_at)
VALUES (NULL,"Guillermo","Arango","Masculino","123456789","memo@hotmail.com","123456789",curdate(),NULL,NULL),
		(NULL,"Camila","Barrientos","Femenino","234567891","cami@hotmail.com","234567891",curdate(),NULL,NULL),
		(NULL,"Lucero","Hernandez","Femenino","345678912","luce@hotmail.com","345678912",curdate(),NULL,NULL),
		(NULL,"Amanda","Corrales","Femenino","456789123","amanda@hotmail.com","456789123",curdate(),NULL,NULL),
		(NULL,"Simón","Cardona","Masculino","567891234","moncho@hotmail.com","567891234",curdate(),NULL,NULL),
        (NULL,"Martha","Mesa","Femenino","678912345","martha@hotmail.com","678912345",curdate(),NULL,NULL),
        (NULL,"Cecilia","Pelaez","Femenino","789123456","ceci@hotmail.com","789123456",curdate(),NULL,NULL),
        (NULL,"Camilo","Aldana","Masculino","891234567","camialdana@hotmail.com","891234567",curdate(),NULL,NULL),
        (NULL,"Maria Fernanda","Guisao","Femenino","912345678","mafe@hotmail.com","912345678",curdate(),NULL,NULL),
        (NULL,"Adriana","Rengifo","Femenino","012345678","adri@hotmail.com","012345678",curdate(),NULL,NULL);

/*INSERTAR DATOS DE PRODUCTS*/
INSERT INTO products (product_id,product_name,product_price,product_image,product_description,id_category,creation_date,updated_at,deleted_at)
VALUES (NULL,"Reloj para Hombre CASIO",50.95,"./reloj1.jpg","Reloj CASIO para Hombre para todas las ocasiones",1,curdate(),NULL,NULL),
		(NULL,"Reloj para Mujer CASIO",30.55,"./reloj2.jpg","Reloj CASIO para Mujer para todas las ocasiones",2,curdate(),NULL,NULL),
		(NULL,"Reloj para Niño CASIO",30.00,"./reloj3.jpg","Reloj CASIO para Niño para todas las ocasiones",3,curdate(),NULL,NULL),
		(NULL,"Reloj para Niña CASIO",35.00,"./reloj4.jpg","Reloj CASIO para Niña para todas las ocasiones",4,curdate(),NULL,NULL),
		(NULL,"Reloj para Hombre GARMIN",59.99,"./reloj5.jpg","Reloj GARMIN para Hombre para todas las ocasiones",1,curdate(),NULL,NULL),
        (NULL,"Reloj para Mujer GARMIN",90.00,"./reloj6.jpg","Reloj GARMIN para Mujer para todas las ocasiones",2,curdate(),NULL,NULL),
        (NULL,"Reloj para Niño GARMIN",35.99,"./reloj7.jpg","Reloj GARMIN para Niño para todas las ocasiones",3,curdate(),NULL,NULL),
        (NULL,"Reloj para Niña GARMIN",20.55,"./reloj8.jpg","Reloj GARMIN para Niña para todas las ocasiones",4,curdate(),NULL,NULL),
        (NULL,"Reloj para Hombre SAMSUNG",45.99,"./reloj9.jpg","Reloj SAMSUNG para Hombre para todas las ocasiones",1,curdate(),NULL,NULL),
        (NULL,"Reloj para Mujer SAMSUNG",69.99,"./reloj10.jpg","Reloj SAMSUNG para Mujer para todas las ocasiones",2,curdate(),NULL,NULL);

/*INSERTAR DATOS DE PRODUCTS_COLORS*/
INSERT INTO products_colors (product_color_id,id_product,id_color,creation_date,updated_at,deleted_at)
VALUES (NULL,1,9,curdate(),NULL,NULL),
		(NULL,1,10,curdate(),NULL,NULL),
        (NULL,2,2,curdate(),NULL,NULL),
        (NULL,2,1,curdate(),NULL,NULL),
        (NULL,2,3,curdate(),NULL,NULL),
        (NULL,3,4,curdate(),NULL,NULL),
        (NULL,3,5,curdate(),NULL,NULL),
        (NULL,4,2,curdate(),NULL,NULL),
        (NULL,4,7,curdate(),NULL,NULL),
        (NULL,4,8,curdate(),NULL,NULL),
        (NULL,5,6,curdate(),NULL,NULL),
        (NULL,6,10,curdate(),NULL,NULL),
		(NULL,6,9,curdate(),NULL,NULL),
		(NULL,6,8,curdate(),NULL,NULL),
        (NULL,7,2,curdate(),NULL,NULL),
        (NULL,7,1,curdate(),NULL,NULL),
        (NULL,8,9,curdate(),NULL,NULL),
        (NULL,9,6,curdate(),NULL,NULL),
        (NULL,10,2,curdate(),NULL,NULL),
        (NULL,10,8,curdate(),NULL,NULL);
        
/*INSERTAR DATOS DE PRODUCTS_SIZES*/
INSERT INTO products_sizes (product_size_id,id_product,id_size,creation_date,updated_at,deleted_at)
VALUES (NULL,1,1,curdate(),NULL,NULL),
		(NULL,1,2,curdate(),NULL,NULL),
        (NULL,1,3,curdate(),NULL,NULL),
        (NULL,1,4,curdate(),NULL,NULL),
        (NULL,1,5,curdate(),NULL,NULL),
        (NULL,2,1,curdate(),NULL,NULL),
		(NULL,2,2,curdate(),NULL,NULL),
        (NULL,2,3,curdate(),NULL,NULL),
        (NULL,2,4,curdate(),NULL,NULL),
        (NULL,3,1,curdate(),NULL,NULL),
		(NULL,3,2,curdate(),NULL,NULL),
        (NULL,3,3,curdate(),NULL,NULL),
        (NULL,3,4,curdate(),NULL,NULL),
        (NULL,3,5,curdate(),NULL,NULL),
		(NULL,4,2,curdate(),NULL,NULL),
        (NULL,4,3,curdate(),NULL,NULL),
        (NULL,4,4,curdate(),NULL,NULL),
        (NULL,4,5,curdate(),NULL,NULL),
        (NULL,5,1,curdate(),NULL,NULL),
		(NULL,5,2,curdate(),NULL,NULL),
        (NULL,5,3,curdate(),NULL,NULL),
        (NULL,5,4,curdate(),NULL,NULL),
        (NULL,5,5,curdate(),NULL,NULL), 
		(NULL,6,2,curdate(),NULL,NULL),
        (NULL,6,3,curdate(),NULL,NULL),
        (NULL,6,4,curdate(),NULL,NULL),
        (NULL,7,1,curdate(),NULL,NULL),
		(NULL,7,2,curdate(),NULL,NULL),
        (NULL,7,3,curdate(),NULL,NULL),
        (NULL,7,4,curdate(),NULL,NULL),
        (NULL,7,5,curdate(),NULL,NULL),
		(NULL,8,2,curdate(),NULL,NULL),
        (NULL,8,3,curdate(),NULL,NULL),
        (NULL,8,4,curdate(),NULL,NULL),
        (NULL,8,5,curdate(),NULL,NULL),
        (NULL,9,1,curdate(),NULL,NULL),
		(NULL,9,2,curdate(),NULL,NULL),
        (NULL,9,3,curdate(),NULL,NULL),
        (NULL,9,4,curdate(),NULL,NULL),
        (NULL,10,1,curdate(),NULL,NULL),
		(NULL,10,2,curdate(),NULL,NULL),
        (NULL,10,3,curdate(),NULL,NULL),
        (NULL,10,4,curdate(),NULL,NULL),
        (NULL,10,5,curdate(),NULL,NULL);