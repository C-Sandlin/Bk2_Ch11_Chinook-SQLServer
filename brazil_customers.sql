-- brazil_customers.sql: Provide a query only showing the Customers from Brazil.

SELECT CustomerID, FirstName, LastName, Country
FROM Customer
WHERE Country = 'Brazil'