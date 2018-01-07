


ALTER TABLE dv_film 
ADD CONSTRAINT positive_length  CHECK (length > 0);


UPDATE mg_customers 
SET  address_id  = 1
WHERE  address_id  IS NULL;




ALTER TABLE mg_customers
ADD CONSTRAINT cs_address_id  CHECK (address_id IS NOT NULL);



ALTER TABLE dv_address
ADD CONSTRAINT dv_address_address CHECK (address IS NOT NULL);

