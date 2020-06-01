SELECT
	ar.Name,
	SUM(il.Quantity) TimesPurchased
FROM
	Artist ar
	JOIN Album al ON al.ArtistId = ar.ArtistId
	JOIN Track t ON t.AlbumId = al.AlbumId
	JOIN InvoiceLine il ON il.TrackId = t.TrackId
GROUP BY
	ar. "Name"
ORDER BY
	TimesPurchased DESC
LIMIT 3