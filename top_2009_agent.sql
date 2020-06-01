SELECT
	FirstName,
	LastName,
	MAX(TotalSales2009)
FROM (
	SELECT
		e.FirstName,
		e.LastName,
		SUM(i.Total) AS TotalSales2009
	FROM
		Employee e
	LEFT JOIN Customer ON Customer.SupportRepId = e.EmployeeId
	LEFT JOIN Invoice i ON i.CustomerId = Customer.CustomerId
WHERE
	i.InvoiceDate < "2010-01-01 00:00:00"
GROUP BY
	(e.LastName))