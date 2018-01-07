

CREATE VIEW customer_city AS  
SELECT D.first_name, D.last_name, city_id 
FROM dv_customer AS D, cb_customers AS C,dv_address AS X  
WHERE D.first_name = C.first_name AND D.last_name = C.last_name AND D.address_id = X.address_id;



CREATE VIEW district_stat AS  
SELECT district, COUNT (first_name) 
FROM dv_customer AS X, dv_address AS Y WHERE X.address_id = Y.address_id 
GROUP BY district 
ORDER BY COUNT(first_name) ASC;



CREATE VIEW author_title AS 
SELECT first_name, last_name, title 
FROM cb_books AS X , cb_authors AS Y 
WHERE X.author_id = Y.author_id;  




SELECT title 
FROM author_title 
WHERE first_name = 'Stephen' AND last_name = 'Fry';




SELECT district 
FROM district_stat 
LIMIT 5;


ALTER VIEW customer_city RENAME TO new_customer_city; 
