SELECT SUM (Invoice.Total)
FROM Invoice
WHERE Invoice.InvoiceDate < '2010-01-01 00:00:00'