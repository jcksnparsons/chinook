SELECT
	Country,
	MAX(TotalSales)
FROM (
	SELECT
		c.Country,
		SUM(i.Total) AS TotalSales
	FROM
		Customer c
		JOIN Invoice i ON i.CustomerId = c.CustomerId
	GROUP BY
		c.Country)