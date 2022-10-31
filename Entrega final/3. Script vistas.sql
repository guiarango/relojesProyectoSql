/*SCRIPT DE CATALOGO DE PRODUCTOS CREADOS*/
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `catalogo_productos` AS
    SELECT 
        `pro`.`product_id` AS `product_id`,
        `pro`.`product_name` AS `product_name`,
        `pro`.`product_price` AS `product_price`,
        `pro`.`product_image` AS `product_image`,
        `pro`.`product_description` AS `product_description`,
        `pro`.`id_category` AS `id_category`,
        `cat`.`category_name` AS `category_name`,
        `pc`.`id_color` AS `id_color`,
        `col`.`color_name` AS `color_name`,
        `ps`.`id_size` AS `id_size`,
        `siz`.`size_name` AS `size_name`
    FROM
        (((((`products` `pro`
        LEFT JOIN `categories` `cat` ON ((`pro`.`id_category` = `cat`.`category_id`)))
        LEFT JOIN `products_colors` `pc` ON ((`pro`.`product_id` = `pc`.`id_product`)))
        LEFT JOIN `colors` `col` ON ((`pc`.`id_color` = `col`.`color_id`)))
        LEFT JOIN `products_sizes` `ps` ON ((`pro`.`product_id` = `ps`.`id_product`)))
        LEFT JOIN `sizes` `siz` ON ((`ps`.`id_size` = `siz`.`size_id`)));

/*DETALLE DE VENTAS GENERADAS*/
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `ventas_generadas_detalle` AS
    SELECT 
        `sal`.`quantity` AS `quantity`,
        `sal`.`address` AS `address`,
        `sal`.`id_product` AS `id_product`,
        `pro`.`product_id` AS `product_id`,
        `pro`.`product_name` AS `product_name`,
        `pro`.`product_price` AS `product_price`,
        `pro`.`product_image` AS `product_image`,
        `pro`.`product_description` AS `product_description`,
        `pro`.`id_category` AS `id_category`,
        `cat`.`category_name` AS `category_name`,
        `col`.`color_name` AS `color_name`,
        `siz`.`size_name` AS `size_name`
    FROM
        ((((`sales` `sal`
        LEFT JOIN `products` `pro` ON ((`sal`.`id_product` = `pro`.`product_id`)))
        LEFT JOIN `categories` `cat` ON ((`pro`.`id_category` = `cat`.`category_id`)))
        LEFT JOIN `colors` `col` ON ((`sal`.`id_color` = `col`.`color_id`)))
        LEFT JOIN `sizes` `siz` ON ((`sal`.`id_size` = `siz`.`size_id`)));


/*TOP 3 PRODUCTOS MÁS VENDIDOS EN UNIDADES*/
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `top_3_mas_vendidos` AS
    SELECT 
        `pro`.`product_id` AS `product_id`,
        `pro`.`product_name` AS `product_name`,
        `pro`.`product_price` AS `product_price`,
        `pro`.`product_image` AS `product_image`,
        `pro`.`product_description` AS `product_description`,
        SUM(`sal`.`quantity`) AS `Unidaes_vendidas`
    FROM
        (`sales` `sal`
        LEFT JOIN `products` `pro` ON ((`sal`.`id_product` = `pro`.`product_id`)))
    GROUP BY `pro`.`product_id`
    HAVING SUM(`sal`.`quantity`) IN (SELECT DISTINCT
            `ventas_temporales`.`sum(ventas.quantity)`
        FROM
            (SELECT 
                SUM(`ventas`.`quantity`) AS `sum(ventas.quantity)`
            FROM
                `sales` `ventas`
            GROUP BY `ventas`.`id_product`
            ORDER BY SUM(`ventas`.`quantity`) DESC
            LIMIT 3) `ventas_temporales`)
    ORDER BY SUM(`sal`.`quantity`) DESC;


/*LISTADO DE VENTAS DE USUARIOS QUE COMPRARON EN EL MES ACTUAL Y AÑO ACTUAL*/
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `ventas_usuarios_actuales` AS
    SELECT 
        `sal`.`id_user` AS `id_user`,
        `us`.`user_id` AS `user_id`,
        `sal`.`quantity` AS `quantity`,
        `sal`.`address` AS `address`,
        `us`.`user_name` AS `user_name`,
        `us`.`user_last_name` AS `user_last_name`,
        `us`.`user_gender` AS `user_gender`,
        `us`.`user_email` AS `user_email`,
        `us`.`user_dni` AS `user_dni`
    FROM
        (`sales` `sal`
        LEFT JOIN `users` `us` ON ((`sal`.`id_user` = `us`.`user_id`)))
    WHERE
        ((YEAR(`sal`.`creation_date`) = YEAR(CURDATE()))
            AND (MONTH(`sal`.`creation_date`) = MONTH(CURDATE())));


/*RANKING DE CATEGORIAS MÁS VENDEDORAS EN $*/
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `ranking_categorias_mas_vendidas` AS
    SELECT 
        `cat`.`category_name` AS `category_name`,
        SUM((`sal`.`quantity` * `pro`.`product_price`)) AS `Venta`
    FROM
        ((`sales` `sal`
        LEFT JOIN `products` `pro` ON ((`sal`.`id_product` = `pro`.`product_id`)))
        LEFT JOIN `categories` `cat` ON ((`pro`.`id_category` = `cat`.`category_id`)))
    GROUP BY `cat`.`category_name`
    ORDER BY `Venta` DESC;