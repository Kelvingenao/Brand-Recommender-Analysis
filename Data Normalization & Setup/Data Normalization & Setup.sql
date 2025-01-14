-- creacion e insercion de los datos

CREATE DATABASE ecomerce; 
USE ecomerce;
/* asemos la insercion de los datos como estoy en mysql workbench 
lo ago de la siguiente manera damo click derecho en la tabla y pesionamo 
table data import wizard buscamo el archivo en su repectiva carpeta y damos en sigiente 
y se crea una tabla nueva y se insertan los datos
*/

-- carbiar los nombre de la columna 

DESCRIBE ecomerce;

ALTER TABLE ecomerce 
RENAME COLUMN `Number of clicks on similar products` 
TO Clicks_Similar;

ALTER TABLE ecomerce 
RENAME COLUMN `Number of similar products purchased so far` 
TO Similar_Purchased;

ALTER TABLE ecomerce 
RENAME COLUMN `Average rating given to similar products` TO Avg_Rating_Simila;

ALTER TABLE ecomerce 
RENAME COLUMN `Median purchasing price (in rupees)` TO Median_Price;

ALTER TABLE ecomerce 
RENAME COLUMN `Rating of the product` TO Product_Rating;

ALTER TABLE ecomerce 
RENAME COLUMN `Brand of the product` TO Brand;

ALTER TABLE ecomerce 
RENAME COLUMN `Customer review sentiment score (overall)` TO Review_Sentiment;

ALTER TABLE ecomerce 
RENAME COLUMN `Price of the product` TO Product_Price;

ALTER TABLE ecomerce 
RENAME COLUMN `Geographical locations` TO Geo_Location;

ALTER TABLE ecomerce 
RENAME COLUMN `Probability for the product to be recommended to the person` TO Recommend_Prob;

DESCRIBE ecomerce;

-- ahora a modificar los datos

SELECT * FROM ecomerce;
-- CAMBIE EL NOMBRE YA QUE DIVIDIRE LOS DATOS EN VARIAS TABLA

RENAME TABLE ECOMERCE TO Product_Data; 
SELECT * FROM product_data;

ALTER TABLE Product_Data ADD COLUMN ID int auto_increment primary key;
DESCRIBE product_data;

ALTER TABLE product_data MODIFY Clicks_Similar INT;

ALTER TABLE product_data MODIFY Similar_Purchased INT;

ALTER TABLE product_data MODIFY Avg_Rating_Simila DECIMAL(9,2);

ALTER TABLE product_data MODIFY Gender VARCHAR(20);

ALTER TABLE product_data MODIFY Median_Price INT;

ALTER TABLE product_data MODIFY Product_Rating DECIMAL(9,1);

ALTER TABLE product_data MODIFY Brand VARCHAR(50);

ALTER TABLE product_data MODIFY Review_Sentiment DECIMAL(9,1); 

ALTER TABLE product_data MODIFY Product_Price INT;

ALTER TABLE product_data MODIFY Holiday VARCHAR(10);

ALTER TABLE product_data MODIFY Season VARCHAR(50);

ALTER TABLE product_data MODIFY Geo_Location VARCHAR(50);

ALTER TABLE product_data MODIFY Recommend_Prob DECIMAL(9,1);

DESCRIBE product_data;

-- dividir los datos en varias tabla 
-- cambiare el nombre de la columna principal

RENAME TABLE  product_data TO products;

CREATE TABLE Product_Interactions AS
SELECT DISTINCT 
    ID,
    Clicks_Similar,
    Similar_Purchased
FROM Products;

CREATE TABLE Reviews AS
SELECT DISTINCT 
    ID,
    Review_Sentiment,
    Recommend_Prob
FROM Products;

CREATE TABLE Context AS 
SELECT ID, 
Gender,
Geo_Location,
Holiday,
Season
FROM Products;

-- AGREGAR LAS COLUMNA DE REFERENCIA A LA TABLA PRODUCTS

ALTER TABLE Products
ADD Interaction_ID INT;

ALTER TABLE Product_Interactions
ADD Product_Interactions_ID INT AUTO_INCREMENT PRIMARY KEY;

-- quitamos la seguridad para poder atualizar 

SET SQL_SAFE_UPDATES = 0;

-- atualizar para agregar referencia a la tabla principal

UPDATE Products
JOIN Product_Interactions
ON Product_Interactions.Clicks_Similar = Products.Clicks_Similar
AND Product_Interactions.Similar_Purchased = Products.Similar_Purchased
SET Products.Interaction_ID = Product_Interactions.ID;

-- agregar llave foranea

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Interactions
FOREIGN KEY (Interaction_ID)
REFERENCES Product_Interactions(Product_Interactions_ID);

-- agregar la seguridad de nuevo para evitar comflicto no deseado 

SET SQL_SAFE_UPDATES = 1;

-- agregar columna en ambas tabla 

ALTER TABLE reviews 
ADD review_id INT AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE products
ADD review_id INT;



SET SQL_SAFE_UPDATES = 0;

-- atualizar la otra tabla

UPDATE Products p
JOIN Reviews r 
    ON p.Review_Sentiment = r.Review_Sentiment
    AND p.Recommend_Prob = r.Recommend_Prob
SET p.review_id = r.review_id;

-- agregamos llave foranea

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Reviews
FOREIGN KEY (review_id)
REFERENCES Reviews(review_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

SET SQL_SAFE_UPDATES = 1;

describe context;

-- agregamos otra columna en ambas tabla para utilisarla como referencia 

ALTER TABLE context ADD COLUMN context_id INT AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE products ADD COLUMN context_id INT;

SET SQL_SAFE_UPDATES = 0;

-- atualisamo la otras tabla 

UPDATE Products p
JOIN Context c
    ON p.Gender = c.Gender
    AND p.Geo_Location = c.Geo_Location
    AND p.Holiday = c.Holiday
    AND p.Season = c.Season
SET p.context_id = c.context_id;

-- agregamos llave foranea 

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Context
FOREIGN KEY (context_id)
REFERENCES Context(context_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

SET SQL_SAFE_UPDATES = 1;

-- ELIMINAMOS LAS COLUMNA DE LAS TABLA PRODUCTS SOLO LAS QUE YA ESTAN EN OTRAS TABLA 

ALTER TABLE products
DROP COLUMN gender,
DROP COLUMN geo_location,
DROP COLUMN holiday,
DROP COLUMN season;

ALTER TABLE products
DROP COLUMN clicks_similar,
DROP COLUMN similar_purchased;

ALTER TABLE products 
DROP COLUMN review_sentiment,
DROP COLUMN recommend_prob;

-- ahora voy a comprovar que los datos estam corerecto en sus tabla 

SELECT * FROM products;
SELECT * FROM context;
SELECT * FROM reviews;
SELECT * FROM product_interactions;

-- estan como esperaba 

