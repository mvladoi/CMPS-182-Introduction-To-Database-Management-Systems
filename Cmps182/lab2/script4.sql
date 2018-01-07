


/* 1.What are the first and last names of all people who are customers of both Downtown Video and
City Books ?*/


SELECT S.first_name, S.last_name 
FROM cb_customers S, dv_customer T
WHERE S.first_name = T.first_name and S.last_name = T.last_name;



/*2.What are phone numbers of all people who are customers of both Downtown Video and
City Books? */

SELECT X.phone
FROM dv_customer R, dv_address X
WHERE R.address_id = X.address_id and 
      (R.first_name, R.last_name) IN (SELECT S.first_name, S.last_name 
                                      FROM cb_customers S, dv_customer T
                                      WHERE S.first_name = T.first_name and S.last_name = T.last_name);
                                      
 
 
/*3.What are the first and last names of all customers who live in the district having the
most customers?*/


SELECT S.first_name, S.last_name 
FROM dv_address X, dv_customer S 
WHERE X.address_id = S.address_id and 
      X.district = (SELECT district FROM dv_address GROUP BY district ORDER BY COUNT(*) DESC LIMIT 1);
      
  
  
/*4.What rating is the least common among films inthe Downtown Video database, and how
many films have that rating? (Return both the rating and the number offilms in one
result.) */

SELECT rating, COUNT(*)
FROM dv_film
GROUP BY rating
ORDER BY COUNT(*) ASC
LIMIT 1;


/*5.What are the first and last names of the top 10 authors when ranked by the number of
books each has written? (Return both author name and the number of books of top 10
authors, sorted in descending order)*/
 
 
SELECT X.first_name, X.last_name, Y.count 
FROM (SELECT first_name, last_name, author_id FROM cb_authors WHERE author_id IN 
        (SELECT author_id FROM cb_books GROUP BY author_id ORDER by COUNT (author_id) DESC LIMIT 10)) X,
     (SELECT author_id, COUNT(author_id) as count FROM cb_books 
         GROUP BY author_id ORDER BY COUNT(author_id) DESC LIMIT 10)Y
WHERE X.author_id = Y.author_id 
ORDER BY Y.count DESC;
  
  








