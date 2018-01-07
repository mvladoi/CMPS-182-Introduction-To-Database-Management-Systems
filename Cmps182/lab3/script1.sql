

ALTER TABLE mg_customers 
ADD CONSTRAINT MG_cid PRIMARY KEY (customer_id);


ALTER TABLE dv_address
ADD CONSTRAINT DV_aid PRIMARY KEY (address_id);


ALTER TABLE dv_film
ADD CONSTRAINT DV_fid PRIMARY KEY (film_id);


ALTER TABLE cb_books
ADD CONSTRAINT CB_taid PRIMARY KEY (title, author_id);


ALTER TABLE cb_authors
ADD CONSTRAINT CB_aid PRIMARY KEY (author_id);
