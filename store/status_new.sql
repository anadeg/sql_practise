/*
Выведите список клиентов (имя, фамилия) и количество заказов данных клиентов, имеющих статус "new".
*/

USE store;

SELECT 
client.first_name, client.last_name,
COUNT(sale.id)
FROM
client
INNER JOIN
sale
ON
client.id = sale.client_id
INNER JOIN
status
ON
sale.status_id = status.id
WHERE status.name = 'new'
GROUP BY client.first_name, client.last_name;