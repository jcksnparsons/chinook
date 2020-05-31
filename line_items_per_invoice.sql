SELECT
	InvoiceLine.InvoiceId,
	COUNT(InvoiceLineId)
FROM
	InvoiceLine
GROUP BY
	InvoiceLine.InvoiceId