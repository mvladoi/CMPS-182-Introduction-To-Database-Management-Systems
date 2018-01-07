


ALTER TABLE mg_customers
ADD CONSTRAINT MG_customers_address_id
FOREIGN KEY (address_id) REFERENCES dv_address(address_id);



ALTER TABLE cb_books
ADD CONSTRAINT CB_books_author_id
FOREIGN KEY (author_id) REFERENCES cb_authors(author_id);
