SELECT cust_name, cust_contact
FROM customers As C, orders AS O, orderitems AS OI
WHERE C.cust_id = O.cust_id
AND OI.order_num = O.order_num
AND prod_id = 'RGAN01';

SELECT cust_id, cust_name, cust_contact
FROM customers
WHERE cust_name = (SELECT cust_name
From customers WHERE cust_contact='Jim Jones');

SELECT c1.cust_id, c1.cust_name, c1.cust_contact
FROM customers as c1, customers as c2
WHERE c1.cust_name = c2.cust_name
AND c2.cust_contact = 'Jim Jones';

SELECT C.*, O.order_num, O.order_date,
  OI.prod_id, OI.quantity, OI.item_price
FROM customers as C, orders as O,
  orderitems as OI
WHERE C.cust_id = O.cust_id
AND OI.order_num = O.order_num
AND prod_id = 'RGAN01';

SELECT customers.cust_id, Orders.order_num
FROM customers INNER JOIN orders
  on customers.cust_id = orders.cust_id;

SELECT customers.cust_id, Orders.order_num
FROM customers LEFT OUTER JOIN orders
    on customers.cust_id = orders.cust_id;

SELECT customers.cust_id, Orders.order_num
FROM customers RIGHT OUTER JOIN orders
    on customers.cust_id = orders.cust_id;

SELECT customers.cust_id, Orders.order_num
FROM customers FULL OUTER JOIN orders
    on customers.cust_id = orders.cust_id;

SELECT customers.cust_id,
  count(orders.order_num) as num_ord
FROM customers INNER JOIN orders
    on customers.cust_id = orders.cust_id
GROUP BY customers.cust_id;

SELECT customers.cust_id,
  count(orders.order_num) as num_ord
FROM customers LEFT OUTER JOIN orders
    on customers.cust_id = orders.cust_id
GROUP BY customers.cust_id;