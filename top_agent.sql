SELECT
	FirstName,
	LastName,
	MAX(TotalSales)
FROM (
	SELECT
		e.FirstName,
		e.LastName,
		SUM(i.Total) AS TotalSales
	FROM
		Employee e
	LEFT JOIN Customer ON Customer.SupportRepId = e.EmployeeId
	LEFT JOIN Invoice i ON i.CustomerId = Customer.CustomerId
GROUP BY
	(e.LastName))