-- invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT i.InvoiceId, i.Total, i.BillingCountry, c.CustomerId, c.FirstName, c.LastName, e.FirstName AS SAFirstName, e.LastName AS SALastName
FROM Invoice i
LEFT JOIN Customer c
ON i.CustomerId = c.CustomerId
LEFT JOIN Employee e
ON c.SupportRepId = e.EmployeeId