-- total_sales_{year}.sql: What are the respective total sales for each of those years?

SELECT SUM(i.Total)
AS Total_Sales_2009
FROM Invoice i
WHERE InvoiceDate BETWEEN '2009-01-01 00:00:00.000' AND '2009-12-31 00:00:00.000'

SELECT SUM(i.Total)
AS Total_Sales_2011
FROM Invoice i
WHERE InvoiceDate BETWEEN '2011-01-01 00:00:00.000' AND '2011-12-31 00:00:00.000'