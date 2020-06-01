SELECT
	e.FirstName,
	e.LastName,
	COUNT(c.CustomerId)
FROM
	Employee e
	LEFT JOIN Customer c ON c.SupportRepId = e.EmployeeId
WHERE
	e.Title = "Sales Support Agent"
GROUP BY
	e.LastName;