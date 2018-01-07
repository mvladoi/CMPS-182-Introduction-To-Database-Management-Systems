


UPDATE mg_customers 
SET  active = TRUE 
WHERE active IS NULL AND (last_name LIKE'B%' OR last_name LIKE 'C%');



INSERT INTO dv_address (address_id, address, address2, district, city_id, postal_code, phone) 
VALUES ( 700, 'Koshland Way' , NULL, NULL, 654, 95064, NULL);


INSERT INTO mg_customers ( customer_id, first_name, last_name, email, address_id, active) 
VALUES ( 10000, 'John', 'Smith', NULL, 700, NULL); 


SELECT title 
FROM dv_film 
WHERE length > (SELECT AVG(length) FROM  dv_film) ;



SELECT MAX(length)AS max_length, MIN(length) AS min_length, AVG(length) AS average_length 
FROM dv_film GROUP BY rating;


DELETE 
FROM cb_books 
WHERE author_id = (SELECT author_id 
                   FROM cb_authors 
                   WHERE first_name = 'Nevil' AND last_name = 'Shute');
