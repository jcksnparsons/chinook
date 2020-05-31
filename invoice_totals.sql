SELECT
	i.InvoiceId,
	i.InvoiceDate,
	i.Total,
	c.FirstName,
	c.LastName,
	c.Country,
	e.FirstName AS RepFirstName,
	e.LastName AS RepLastName
FROM
	Invoice i
	JOIN Customer c ON i.CustomerId = c.CustomerId
	JOIN Employee e ON e.EmployeeId = c.SupportRepId