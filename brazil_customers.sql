SELECT
	c.FirstName,
	c.LastName,
	c.CustomerId
FROM
	Customer c
WHERE
	c.Country = "Brazil";