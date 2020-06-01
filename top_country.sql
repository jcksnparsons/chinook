SELECT
	BillingCountry,
	MAX(SalesPerCountry)
FROM (
	SELECT
		i.BillingCountry,
		COUNT(i.InvoiceId) AS SalesPerCountry
	FROM
		Invoice i
	GROUP BY
		(BillingCountry));