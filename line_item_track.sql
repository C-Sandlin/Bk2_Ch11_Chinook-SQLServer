-- line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.

SELECT i.InvoiceLineId, i.TrackId, i.UnitPrice, t.Name
FROM InvoiceLine i 
JOIN Track t
ON i.TrackId = t.TrackId