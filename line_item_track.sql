SELECT
	InvoiceLine.InvoiceLineId,
	Track.Name
FROM
	InvoiceLine
JOIN
	Track ON Track.TrackId = InvoiceLine.TrackId
ORDER BY InvoiceLine.InvoiceLineId
