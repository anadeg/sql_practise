/*
Выведите список товаров с названиями товаров и названиями категорий, в том числе товаров, не принадлежащих ни одной из категорий.*/

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
GROUP BY good.name, category.name;
