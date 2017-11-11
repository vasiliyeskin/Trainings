SELECT avg(prod_price) AS avg_price
FROM products;

SELECT avg(prod_price) AS avg_price
FROM products WHERE vend_id = 'DLL01';

SELECT count(*) AS num_count
FROM customers;

SELECT count(cust_email) AS num_count
FROM customers;

SELECT MAX(prod_price) AS max_price
FROM products;

SELECT MIN(prod_price) AS min_price
FROM products;

SELECT SUM(quantity) as item_ordered
FROM orderitems WHERE order_num = 20005;

SELECT SUM(item_price*quantity) as total_price
FROM orderitems WHERE order_num = 20005;

SELECT avg(DISTINCT prod_price) AS avg_price
FROM products WHERE vend_id = 'DLL01';

SELECT count(*) AS num_items,
  MIN(prod_price) as min_price,
  MAX(prod_price) as max_prica,
  AVG(prod_price) as avg_price
  FROM products;