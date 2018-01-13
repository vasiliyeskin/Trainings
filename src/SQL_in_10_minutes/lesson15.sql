INSERT INTO customers
    VALUES ('1000000006',
    'Toy Land',
    '123 Any Street',
    'New York',
    'NY',
    '11111',
    'USA',
    NULL,
    NULL);

INSERT INTO customers (cust_id,
                       cust_name,
                       cust_address,
                       cust_city,
                       cust_state,
                       cust_zip,
                       cust_country,
                       cust_contact,
                       cust_email)
VALUES ('1000000006',
        'Toy Land',
        '123 Any Street',
        'New York',
        'NY',
        '11111',
        'USA',
        NULL,
        NULL);


INSERT INTO customers (cust_id,
                       cust_name,
                       cust_address,
                       cust_city,
                       cust_state,
                       cust_zip,
                       cust_country)
VALUES ('100000006',
        'Toy Land',
        '123 Any Street',
        'New York',
        'NY',
        '11111',
        'USA');

CREATE TABLE custNew(
    cust_id      CHAR(10) NOT NULL
        CONSTRAINT custNew_pkey
        PRIMARY KEY,
    cust_name    CHAR(50) NOT NULL,
    cust_address CHAR(50),
    cust_city    CHAR(50),
    cust_state   CHAR(5),
    cust_zip     CHAR(10),
    cust_country CHAR(50),
    cust_contact CHAR(50),
    cust_email   CHAR(255)
);


INSERT INTO custNew (cust_id,
                       cust_name,
                       cust_address,
                       cust_city,
                       cust_state,
                       cust_zip,
                       cust_country)
VALUES ('100sdf006',
        'Toy Land',
        '123 Any Street',
        'New York',
        'NY',
        '11111',
        'USA');

INSERT INTO customers (cust_id,
                       cust_name,
                       cust_address,
                       cust_city,
                       cust_state,
                       cust_zip,
                       cust_country)
    SELECT cust_id,
        cust_name,
        cust_address,
        cust_city,
        cust_state,
        cust_zip,
        cust_country
FROM CustNew;

SELECT *
INTO Custcopy
FROM customers;

Create TABLE Custcopy2 AS
SELECT * FROM customers;