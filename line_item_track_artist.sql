-- line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT i.InvoiceLineId, i.TrackId, i.UnitPrice, t.Name, a.Title AS AlbumTitle, z.Name AS ArtistName
FROM InvoiceLine i 
LEFT JOIN Track t
ON i.TrackId = t.TrackId
LEFT JOIN Album a
ON t.AlbumId = a.AlbumId
LEFT JOIN Artist z
ON a.ArtistId = z.ArtistId
ORDER BY i.InvoiceLineId