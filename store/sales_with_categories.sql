/*
Выведите все позиций списка товаров принадлежащие какой-либо категории с названиями товаров и названиями категорий. 
Список должен быть отсортирован по названию товара, названию категории. 
*/

USE store;

SELECT good.name, category.name
FROM
good 
INNER JOIN 
category_has_good
ON good.id = category_has_good.good_id
INNER JOIN 
category 
ON 
category_has_good.category_id = category.id
ORDER BY good.name, category.name;