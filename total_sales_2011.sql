SELECT SUM (Invoice.Total)
FROM Invoice
WHERE Invoice.InvoiceDate > '2010-12-31 23:59:59' AND Invoice.InvoiceDate < '2012-01-01 00:00:00'