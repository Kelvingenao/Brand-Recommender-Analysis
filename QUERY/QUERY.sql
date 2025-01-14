
use ecomerce;

-- BUSCAREMO LOS 15 PRODUCTO CON MAYOR PROBABILIDAD DE RECOMENDACION

SELECT brand, max(recommend_prob) AS recommend
FROM products p 
INNER JOIN reviews r ON p.review_id = r.review_id
GROUP BY brand
ORDER BY recommend DESC
LIMIT 15;

/*compararemos los producto por dia festivo para ver si aumenta el precio y la probabilidad
de recomendacion
*/
SELECT product_price, recommend_prob, holiday
FROM products p 
INNER JOIN reviews r ON p.review_id = r.review_id
INNER JOIN context c ON p.context_id = c.context_id
WHERE holiday = 'no'
ORDER BY recommend_prob desc;

SELECT product_price, recommend_prob, holiday
FROM products p 
INNER JOIN reviews r ON p.review_id = r.review_id
INNER JOIN context c ON p.context_id = c.context_id
WHERE holiday = 'yes'
ORDER BY recommend_prob desc;

/* definitivamente aumenta la probilidad de recomendacion y el prcio del producto
voy a ver cuales son las marca que aumentan */

SELECT brand, product_price, recommend_prob, holiday
FROM products p 
INNER JOIN reviews r ON p.review_id = r.review_id
INNER JOIN context c ON p.context_id = c.context_id
WHERE holiday = 'no'
ORDER BY product_price desc;

SELECT brand, product_price, recommend_prob, holiday
FROM products p 
INNER JOIN reviews r ON p.review_id = r.review_id
INNER JOIN context c ON p.context_id = c.context_id
WHERE holiday = 'yes'
ORDER BY product_price desc;

-- auque varias marca umentan el presio mantienen su probabilidad de recomendacion estable

-- ahora veremos cual tiene el promedio mas alto de probabilidad de recomendacion female o male

SELECT gender, avg(recommend_prob) AS promedio
FROM products p 
INNER JOIN reviews r ON p.review_id = r.review_id
INNER JOIN context c ON p.context_id = c.context_id
GROUP BY gender
ORDER BY promedio;

-- ahora veremos cual tiene mayor probabilidad pero en dia festivo y dias no festivo

SELECT gender, holiday, avg(recommend_prob) AS promedio
FROM products p 
INNER JOIN reviews r ON p.review_id = r.review_id
INNER JOIN context c ON p.context_id = c.context_id
WHERE holiday = 'no'
GROUP BY gender
ORDER BY promedio;


SELECT gender, holiday, avg(recommend_prob) AS promedio
FROM products p 
INNER JOIN reviews r ON p.review_id = r.review_id
INNER JOIN context c ON p.context_id = c.context_id
WHERE holiday = 'yes'
GROUP BY gender
ORDER BY promedio;


