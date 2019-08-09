-- invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT i.InvoiceId, COUNT(l.InvoiceLineId) AS Num_Invoice_Items
FROM Invoice i
LEFT JOIN InvoiceLine l
ON i.InvoiceId = l.InvoiceId
GROUP BY i.InvoiceId