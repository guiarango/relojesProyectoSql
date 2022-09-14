CREATE SCHEMA relojes_colombia;

USE relojes_colombia;

CREATE TABLE Users 
(
	user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	user_name VARCHAR(45) NOT NULL,
    user_last_name VARCHAR(45) NOT NULL,
    user_gender VARCHAR(25) NOT NULL,
    user_dni VARCHAR(25) NOT NULL,
    user_email VARCHAR(45) NOT NULL,
    user_password VARCHAR(100) NOT NULL,
    creation_date DATE NOT NULL,
    updated_at DATE NULL,
    deleted_at DATE NULL,
    PRIMARY KEY(user_id)
);

CREATE TABLE Categories 
(
	category_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	category_name VARCHAR(25) NOT NULL,
	creation_date DATE NOT NULL,
    updated_at DATE NULL,
    deleted_at DATE NULL,
	PRIMARY KEY(category_id)
);

CREATE TABLE Colors 
(
	color_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	color_name VARCHAR(25) NOT NULL,
	creation_date DATE NOT NULL,
    updated_at DATE NULL,
    deleted_at DATE NULL,
	PRIMARY KEY(color_id)
);

CREATE TABLE Sizes 
(
	size_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	size_name VARCHAR(25) NOT NULL,
	creation_date DATE NOT NULL,
    updated_at DATE NULL,
    deleted_at DATE NULL,
	PRIMARY KEY(size_id)
);

CREATE TABLE Products
(
	product_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	product_name VARCHAR(45) NOT NULL,
    product_price DECIMAL(7,2) NOT NULL,
    product_image VARCHAR(50) NOT NULL,
    product_description VARCHAR(500) NOT NULL,
    id_category INT UNSIGNED NOT NULL,
    creation_date DATE NOT NULL,
    updated_at DATE NULL,
    deleted_at DATE NULL,
    PRIMARY KEY(product_id),
    FOREIGN KEY (id_category) REFERENCES Categories(category_id)
);

CREATE TABLE Products_Colors
(
	product_color_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_product INT UNSIGNED NOT NULL,
    id_color INT UNSIGNED NOT NULL,
    creation_date DATE NOT NULL,
    updated_at DATE NULL,
    deleted_at DATE NULL,
    PRIMARY KEY(product_color_id),
    FOREIGN KEY (id_product) REFERENCES Products(product_id),
    FOREIGN KEY (id_color) REFERENCES Colors(color_id)
);

CREATE TABLE Products_Sizes
(
	product_size_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_product INT UNSIGNED NOT NULL,
    id_size INT UNSIGNED NOT NULL,
    creation_date DATE NOT NULL,
    updated_at DATE NULL,
    deleted_at DATE NULL,
    PRIMARY KEY(product_size_id),
    FOREIGN KEY (id_product) REFERENCES Products(product_id),
    FOREIGN KEY (id_size) REFERENCES Sizes(size_id)
);


CREATE TABLE Sales
(
	product_sold_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    address VARCHAR(50) NOT NULL,
    id_product INT UNSIGNED NOT NULL,
	id_color INT UNSIGNED NOT NULL,
	id_size INT UNSIGNED NOT NULL,
	id_user INT UNSIGNED NOT NULL,
    creation_date DATE NOT NULL,
    updated_at DATE NULL,
    deleted_at DATE NULL,
    PRIMARY KEY(product_sold_id),
    FOREIGN KEY (id_product) REFERENCES Products(product_id),
    FOREIGN KEY (id_color) REFERENCES Colors(color_id),
    FOREIGN KEY (id_size) REFERENCES Sizes(size_id),
    FOREIGN KEY (id_user) REFERENCES Users(user_id)
);