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
