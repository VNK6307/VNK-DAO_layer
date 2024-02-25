DROP TABLE IF EXISTS orders ;

DROP TABLE IF EXISTS customers ;

CREATE TABLE customers
(
	customers_id serial      NOT NULL,
	name         varchar(20) NOT NULL,
	surname      varchar(20) NOT NULL,
	age          integer,
	phone_number char(10)    NOT NULL,
	PRIMARY KEY (customers_id)
);

CREATE TABLE orders
(
	orders_id    serial      NOT NULL,
	date         date        NOT NULL,
	customer_id  serial      REFERENCES CUSTOMERS (customers_id),
	product_name varchar(30) NOT NULL,
	amount       integer     NOT NULL,
	PRIMARY KEY (orders_id)
);

INSERT INTO customers (name, surname, age, phone_number)
VALUES ('Alexey', 'Ivanov',   27, '9991112233'),
       ('Tom',    'Wilson',   26, '9053214567'),
       ('alexey', 'Petrov',   33, '9219874562'),
       ('Bob',    'Sinclar',  72, '9316458809'),
       ('Zahar',  'Bardakov', 23, '9012135433');
       
INSERT INTO orders ("date", customer_id, product_name, amount)
VALUES ('2024.02.14', 1, 'Skates', 2),
       ('2024.02.22', 3, 'Ski',    3),
       ('2024.2.21',  4, 'Boots',  1),
       ('2024.1.24',  2, 'Helmet', 1),
       ('2024.2.22',  1, 'Shorts', 1),
       ('2024.2.15',  5, 'Gloves', 1),
       ('2024.2.18',  2, 'Gloves', 4),
       ('2024.2.23',  3, 'Sticks', 2),
       ('2023.12.20', 1, 'Hood',   1);      
       