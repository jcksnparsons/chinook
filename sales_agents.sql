SELECT
	e.FirstName,
	e.LastName,
	e.EmployeeId
FROM
	Employee e
WHERE
	e.Title = "Sales Support Agent"