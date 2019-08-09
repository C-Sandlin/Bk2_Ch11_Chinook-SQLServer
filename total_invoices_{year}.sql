-- total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?


-- SELECT role, COUNT(*) as Number_of_artists
-- FROM employees
-- WHERE role = "Artist";

SELECT COUNT(*)
AS Num_Invoices
FROM Invoice 
WHERE (InvoiceDate BETWEEN '2009-01-01 00:00:00.000' AND '2009-12-31 00:00:00.000')
OR (InvoiceDate BETWEEN '2011-01-01 00:00:00.000' AND '2011-12-31 00:00:00.000')
