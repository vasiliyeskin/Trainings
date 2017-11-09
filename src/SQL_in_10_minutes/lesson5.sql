SELECT prod_id, prod_name, prod_price FROM products
WHERE vend_id = 'DLL01' and prod_price <= 4;

SELECT prod_name, prod_price FROM products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01';

SELECT prod_name, prod_price FROM products
WHERE (vend_id = 'DLL01' OR vend_id = 'BRS01')
AND prod_price >= 10;

SELECT prod_name, prod_price FROM products
WHERE vend_id IN ('DLL01', 'BRS01')
ORDER BY prod_name;

SELECT prod_name FROM products
WHERE NOT vend_id = 'DLL01'
ORDER BY prod_name;