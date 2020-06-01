SELECT t.Name,
a.Title,
mt.Name,
g.Name
FROM Track t
LEFT JOIN Album a On t.AlbumId = a.AlbumId
LEFT JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId
LEFT JOIN Genre g On t.GenreId = g.GenreId