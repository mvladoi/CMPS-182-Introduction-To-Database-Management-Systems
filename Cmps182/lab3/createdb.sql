


Alter Table mg_customers  Drop Index firlast;



Alter Table dv_film  Drop Constraint positive_length;
Alter Table  mg_customers Drop Constraint cs_address_id;
Alter Table  dv_address Drop Constraint dv_address_id;




Alter Table mg_customers Drop Constraint MG_customers_address_id;
Alter Table cb_books Drop Constraint CB_books_author_id;







Alter Table mg_customers Drop Constraint MG_cid;
Alter Table dv_address  Drop Constraint DV_aid;
Alter Table dv_film  Drop Constraint DV_fid;
Alter Table cb_books Drop Constraint CB_taid;
Alter Table cb_authors Drop Constraint CB_aid;










DROP TABLE dv_customer, dv_address, dv_film, cb_customers, cb_authors, cb_books, mg_customers;
DROP TYPE mpaa_rating;
DROP SEQUENCE mg_customers_seq;



*/
CREATE TYPE mpaa_rating AS ENUM (
    'G',
    'PG',
    'PG-13',
    'R',
    'NC-17'
);






CREATE TABLE dv_customer (
	customer_id integer
	, first_name varchar(50)
	, last_name varchar(50)
	, email varchar(50)
	, address_id integer
	, active boolean
);

CREATE TABLE dv_address (
	address_id integer
	, address varchar(50)
	, address2 varchar(50)
	, district varchar(50)
	, city_id integer
	, postal_code varchar(50)
	, phone varchar (50)
);

CREATE TABLE dv_film (
	film_id integer
	, title varchar(50)
	, description text
	, length smallint
	, rating mpaa_rating
);

CREATE TABLE cb_customers (
	last_name varchar(50)
	, first_name varchar(50)
);

CREATE TABLE cb_books (
	title varchar(50)
	, author_id integer
);

CREATE TABLE cb_authors (
	author_id integer
	, first_name varchar(50)
	, last_name varchar(50)
);

CREATE TABLE mg_customers (
	customer_id integer
	, first_name varchar(50)
	, last_name varchar(50)
	, email varchar(50)
	, address_id integer
	, active boolean
);

\copy dv_customer FROM 'dv_customer.data'
\copy dv_address FROM 'dv_address.data'
\copy dv_film FROM 'dv_film.data'
\copy cb_customers FROM 'cb_customers.data'
\copy cb_books FROM 'cb_books.data'
\copy cb_authors FROM 'cb_authors.data'

-- 3.3.1 
INSERT INTO mg_customers
SELECT * FROM dv_customer;

-- 3.3.2
CREATE SEQUENCE mg_customers_seq START 600;
ALTER TABLE mg_customers
ALTER COLUMN customer_id
SET DEFAULT NEXTVAL('mg_customers_seq');

-- 3.3.3
INSERT INTO mg_customers (first_name, last_name)
SELECT first_name, last_name
FROM cb_customers
EXCEPT
SELECT first_name, last_name
FROM dv_customer;



