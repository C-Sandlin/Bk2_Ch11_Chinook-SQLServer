-- country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT DISTINCT COUNT(Invoice.InvoiceId) AS InvoicesPerCountry, BillingCountry
FROM Invoice
GROUP BY Invoice.BillingCountry