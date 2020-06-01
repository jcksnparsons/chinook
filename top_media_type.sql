SELECT
	Name,
	MAX(NumInstances)
FROM (
	SELECT
		mt.Name,
		SUM(il.Quantity) AS NumInstances
	FROM
		MediaType mt
		JOIN Track t ON t.MediaTypeId = mt.MediaTypeId
		JOIN InvoiceLine il ON il.TrackId = t.TrackId
	GROUP BY
		mt.Name)