SELECT vend_name, upper(vend_name) AS vend_name_uppcase
FROM vendors ORDER BY vend_name;

SELECT order_num FROM orders
WHERE date_part('year', order_date) = 2012;

