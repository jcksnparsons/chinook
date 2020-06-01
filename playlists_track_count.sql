SELECT
	p.Name,
	COUNT(pt.TrackId)
FROM
	PlaylistTrack pt
	JOIN Playlist p ON p.PlaylistId = pt.PlaylistId
GROUP BY
	p.Name