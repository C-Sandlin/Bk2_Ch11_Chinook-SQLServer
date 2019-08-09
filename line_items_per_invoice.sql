-- line_items_per_invoice.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.

SELECT COUNT(il.InvoiceLineId) AS Line_Items_Per_Invoice, i.InvoiceId
FROM InvoiceLine il
JOIN Invoice i 
ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId

-- SELECT *
-- FROM InvoiceLine il
-- JOIN Invoice i 
-- ON il.InvoiceId = i.InvoiceId
