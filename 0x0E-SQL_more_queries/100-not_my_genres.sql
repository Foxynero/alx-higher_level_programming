-- Lists all genres of the database hbtn_0d_tvshows
-- not linked to the show Dexter.
-- Records are sorted by ascending genre name.
SELECT tv_genres.name
FROM tv_genres
WHERE tv_genres.name NOT IN
	(SELECT a.name AS name
	FROM tv_genres AS a
	JOIN tv_show_genres AS b
	ON b.genre_id = a.id
	JOIN tv_shows AS c
	ON b.show_id = c.id
	WHERE c.title = 'Dexter')
ORDER BY tv_genres.name ASC;
