



DELETE FROM dv_address WHERE  address_id = 6;
/* ERROR: update or delete on table “dv_address” violates foreign key constraint mg_customers_address_id on table “mg_customers”
DETAIL : (Key address_id) = (6) is still referenced from table “mg_customers”.*/



DELETE FROM cb_authors WHERE author_id = 11;
/* ERROR: update or delete on table “cb_authors” violates foreign key constraint cb_books_author_id” on table “cb_books” 
DETAIL : Key (author_id) = (11)  is still referenced from table “cb_books”.*/




















INSERT INTO dv_film (film_id, title, description, length, rating) VALUES ( 3337, 'Pacific' , 'Drama' , 444,'PG') ; 

INSERT INTO dv_film (film_id, title, description, length, rating) VALUES ( 3335, 'Pacific', 'Drama', -444, 'PG') ;  
/* ERROR : new row for relation “dv_film” violates check constraint “positive_length” 
DETAIL : Failing row containing ( 3335, Pacific, Drama, -444, PG). */ 







INSERT INTO dv_address (address_id, address, address2, district, city_id, postal_code, phone) VALUES ( 1000, 'Santa Cruz 618', 'San Mateo 555' , 'California', 4545, 33333, '55555555');

INSERT INTO mg_customers (customer_id, first_name, last_name, email, address_id, active) VALUES ( 11111, 'Marian', 'Vladoi', 'mvladoi@gmail.com', 1000, TRUE);

INSERT INTO mg_customers (customer_id, first_name, last_name, email, address_id, active) VALUES ( NULL,'Leo','Para','leo@gmail.com', 1122, TRUE);
/*ERROR : Null value in column “customer_id” violates not-null constraint 
DETAIL: Failing row containing (null, Leo, Para, leo@gmail.com, 1122, t ).*/







INSERT INTO dv_address (address_id, address, address2, district, city_id, postal_code, phone) VALUES ( 1122, 'Santa Clara' , 'San Lorenzo' , 'California' , 4444, 95060, '89898989' ); 
INSERT INTO dv_address (address_id, address, address2, district, city_id, postal_code, phone) VALUES ( 323232, NULL , 'San Lorenzo' , 'California' , 4444, 95060, '89898989'); 
/*ERROR : new row for relation “dv_address ” violates check constraint “dv_address_address”  
DETAIL: Failing row containing (323232, NULL,  San Lorenzo, California, 444, 95060, 89898989) */

