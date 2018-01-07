


SELECT first_name FROM mg_customers WHERE first_name = 'John';

EXPLAIN ANALYZE SELECT first_name FROM mg_customers WHERE first_name = 'John';



/*The type of scan is Seq Scan on mg_customers 
The Total Runntime : 0.202 ms */


CREATE INDEX firstlast  ON mg_customers (first_name, last_name);



EXPLAIN ANALYZE SELECT first_name FROM mg_customers WHERE first_name = 'John';



/*The type of scan is : Index only scan using firstlast on mg_customers 
The Total Runtime : 0.091 ms */ 
