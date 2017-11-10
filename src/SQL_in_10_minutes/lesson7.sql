SELECT vend_name || ' (' || vend_country || ')'
FROM vendors ORDER BY vend_name;

SELECT vend_name || ' (' || vend_country || ')' AS vend_title
FROM vendors ORDER BY vend_name;

SELECT prod_id, quantity, item_price
FROM orderitems WHERE order_num = 20008;

SELECT prod_id, quantity, item_price, quantity*item_price AS expanded_price
FROM orderitems WHERE order_num = 20008;

SELECT now();
