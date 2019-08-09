-- tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT t.Name AS TrackName, a.Title AS AlbumTitle, m.Name AS MediaType, g.Name AS Genre
FROM Track t
LEFT JOIN Album a
ON a.AlbumId = t.AlbumId
LEFT JOIN MediaType m
ON t.MediaTypeId = m.MediaTypeId
LEFT JOIN Genre g
ON t.GenreId = g.GenreId