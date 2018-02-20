CREATE TABLE products
(
  prod_id    CHAR(10)      NOT NULL,
  vend_id    CHAR(10)      NOT NULL,
  prod_name  VARCHAR(256)  NOT NULL,
  prod_price DECIMAL(8, 2) NOT NULL,
  prod_desc  VARCHAR(1000) NULL
);

ALTER TABLE vendors
    ADD vend_phone CHAR(20);

ALTER TABLE vendors
DROP COLUMN vend_phone;