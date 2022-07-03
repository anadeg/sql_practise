/*
Выведите список товаров с названиями категорий, в том числе товаров, не принадлежащих ни к одной из категорий, в том числе категорий не содержащих ни одного товара.
*/

USE store;

SELECT good.name as name, category.name as category
FROM
good
LEFT JOIN
category_has_good 
ON 
good.id = category_has_good.good_id
LEFT JOIN
category
ON
category_has_good.category_id = category.id
UNION
SELECT good.name as name, category.name as category
FROM
good
RIGHT JOIN
category_has_good 
ON 
good.id = category_has_good.good_id
RIGHT JOIN
category
ON
category_has_good.category_id = category.id;