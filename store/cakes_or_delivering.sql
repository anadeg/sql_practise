/*
Выведите названия товаров, которые относятся к категории 'Cakes' или фигурируют в заказах текущий статус которых 'delivering'. 
Результат не должен содержать одинаковых записей. 
В запросе необходимо использовать оператор UNION для объединения выборок по разным условиям.
*/

USE store;

SELECT good.name
FROM
good 
INNER JOIN 
sale_has_good
ON
good.id = sale_has_good.good_id
INNER JOIN 
sale
ON
sale_has_good.sale_id = sale.id
INNER JOIN 
status
ON
sale.status_id = status.id
WHERE status.name = 'delivering'
UNION
SELECT good.name
FROM
good 
INNER JOIN 
category_has_good
ON
good.id = category_has_good.good_id
INNER JOIN 
category
ON
category_has_good.category_id = category.id
WHERE category.name = 'Cakes';