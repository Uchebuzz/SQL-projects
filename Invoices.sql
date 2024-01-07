USE sql_invoicing;
CREATE TABLE invoices_archievedinvoices_Archieved  AS
SELECT 
	c.client_id,
    c.name AS "customers",
    i.payment_total,
    i.due_date,
    i.payment_date,
    c.phone
FROM invoices i
JOIN clients c
USING (client_id)


--------- -----
USE sql_invoicing;
SELECT 
	c.client_id, 
    date, 
    p.invoice_id, 
    amount, 
    c.name AS "customer", 
    pm.name AS "payment method"

FROM payments p
JOIN clients c
	USING (client_id)
JOIN payment_methods pm
ON  p.payment_method = pm.payment_method_id
ORDER BY client_id


------------

INSERT INTO customers (
first_name,
last_name,
birth_date,
address,
city,
state)
VALUES ( 
"JOHN", 
"SMITH", 
"1990-01-01", 
"ASABA",
"CITY",
"CA")  


---------

INSERT INTO products (
name, 
quantity_in_stock, 
unit_price)
VALUES("ROOM", 19, 6), 
	  ("ROOM2", 21, 61),
      ("ROOM 3", 22, 16)

---
-- UPDATE invoices
-- SET payment_total = DEFAULT, payment_date = NULL
-- WHERE invoice_id = 1

UPDATE invoices
SET 
	payment_total = invoice_total * 0.5, 
    payment_date = due_date
WHERE invoice_id = 5
