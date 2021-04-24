CREATE VIEW CUSTOMER_INFO AS 
SELECT first_name, last_name, ADDRESS FROM customer
JOIN ADDRESS
ON ADDRESS.address_id = customer.address_id

SELECT * FROM customer_info

CREATE or REPLACE VIEW CUSTOMER_INFO AS 
SELECT first_name, last_name, ADDRESS, DISTRICT FROM customer
JOIN ADDRESS
ON ADDRESS.address_id = customer.address_id

ALTER VIEW customer_info RENAME TO C_INFO

SELECT * FROM c_info

DROP VIEW c_info

