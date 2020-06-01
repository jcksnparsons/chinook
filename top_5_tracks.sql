SELECT
	t.Name,
	SUM(il.Quantity) AS TotalTimesPurchased
FROM
	Track t
	JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY
	t. "Name"
ORDER BY
	TotalTimesPurchased DESC
LIMIT 5