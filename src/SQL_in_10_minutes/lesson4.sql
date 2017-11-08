SELECT prod_name, prod_price FROM products WHERE prod_price = 3.49;

SELECT prod_name, prod_price FROM products WHERE prod_price < 10;

SELECT prod_name, prod_price FROM products WHERE prod_price <= 10;

SELECT vend_id, prod_price FROM products WHERE vend_id <> 'DLL01';

SELECT vend_id, prod_price FROM products WHERE vend_id != 'DLL01';

SELECT prod_name, prod_price FROM products WHERE prod_price BETWEEN 5 AND 10;

SELECT prod_name, prod_price FROM products WHERE prod_price IS NULL;

SELECT cust_name FROM customers WHERE cust_email ISNULL ;