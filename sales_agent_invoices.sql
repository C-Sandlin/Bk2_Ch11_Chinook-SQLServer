-- sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT e.EmployeeId, e.FirstName, e.LastName, c.LastName AS CustomerLastName, c.FirstName AS CustomerFirstName, i.InvoiceId, i.Total
From Employee e
JOIN Customer c
ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
ON i.CustomerId = C.CustomerId
ORDER BY e.EmployeeId
