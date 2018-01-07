


  Drop Index firlast;



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





