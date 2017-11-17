SELECT vend_id, count(*) as prod_num
FROM products GROUP BY vend_id;

SELECT cust_id, count(*) as ORDERS
FROM orders GROUP BY cust_id
HAVING count(*) >= 2;

SELECT vend_id, count(*) as prod_num
FROM products
GROUP BY vend_id
HAVING count(*) >= 2;

SELECT vend_id, count(*) as prod_num
FROM products
WHERE prod_price >=4
GROUP BY vend_id
HAVING count(*) >= 2;

SELECT order_num, count(*) AS items
FROM orderitems
GROUP BY order_num
HAVING count(*) > 2;

SELECT order_num, count(*) AS items
FROM orderitems
GROUP BY order_num
HAVING count(*) > 2
ORDER BY items, order_num;




