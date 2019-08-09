-- invoice_37_line_item_count.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT COUNT(il.InvoiceLineId)
AS Line_Items_InvoiceID_37
FROM InvoiceLine il
JOIN Invoice i 
ON il.InvoiceId = i.InvoiceId
WHERE i.InvoiceId = 37
