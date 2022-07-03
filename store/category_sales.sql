/*
Выведите список всех категорий продуктов и количество продаж товаров, относящихся к данной категории. 
Под количеством продаж товаров подразумевается суммарное количество единиц товара данной категории, фигурирующих в заказах с любым статусом.
*/

USE store;

SELECT
category.name as category, COUNT(shg.sale_id) as sale_num
FROM
category
LEFT JOIN category_has_good as chg
ON category.id = chg.category_id
LEFT JOIN sale_has_good as shg
ON chg.good_id = shg.good_id
GROUP BY category.name;