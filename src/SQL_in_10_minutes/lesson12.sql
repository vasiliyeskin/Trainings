SELECT vend_name, prod_name, prod_price
FROM vendors, products
WHERE vendors.vend_id = products.vend_id;

SELECT vend_name, prod_name, prod_price
FROM vendors, products;

SELECT vend_name, prod_name, prod_price
FROM vendors INNER JOIN products on
vendors.vend_id = products.vend_id;

SELECT prod_name, vend_name, prod_price, quantity
FROM orderitems, vendors, products
WHERE vendors.vend_id = products.vend_id
and orderitems.prod_id = products.prod_id
and order_num = 20007;

SELECT cust_name, cust_contact
FROM customers, orders, orderitems
WHERE customers.cust_id = orders.cust_id
AND orderitems.order_num = orders.order_num
and prod_id='RGAN01';