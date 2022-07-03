/*
Выведите список всех источников клиентов и суммарный объем заказов по каждому источнику. 
Результат должен включать также записи для источников, по которым не было заказов.
*/

USE store;

SELECT source.name, SUM(sale.sale_sum)
FROM 
source 
LEFT JOIN
client
ON
source.id = client.source_id
LEFT JOIN 
sale
ON
client.id = sale.client_id
GROUP BY source.name;