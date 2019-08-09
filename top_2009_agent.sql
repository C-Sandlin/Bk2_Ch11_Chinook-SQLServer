-- top_2009_agent.sql: Which sales agent made the most in sales in 2009?

SELECT e.EmployeeId, SUM(i.Total) AS TotalSales
FROM Employee e
LEFT JOIN Customer c
ON c.SupportRepId = e.EmployeeId
LEFT JOIN Invoice i
ON i.CustomerId = c.CustomerId
WHERE i.InvoiceDate BETWEEN '2009-01-01 00:00:00.000' AND '2009-12-31 00:00:00.000'
GROUP BY e.EmployeeId
ORDER BY TotalSales 

-- // not finished, can't get limit to work
