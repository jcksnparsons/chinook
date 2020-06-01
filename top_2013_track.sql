SELECT
	Name,
	MAX(Quantity)
FROM (
	SELECT
		t.Name,
		i.InvoiceDate,
		SUM(il.Quantity) AS Quantity
	FROM
		Track t
	LEFT JOIN InvoiceLine il ON il.TrackId = t.TrackId
	LEFT JOIN Invoice i ON i.InvoiceId = il.InvoiceId
WHERE
	i.InvoiceDate > "2012-12-31 23:59:59"
	AND i.InvoiceDate < "2014-01-01 00:00:00"
GROUP BY
	t.Name);