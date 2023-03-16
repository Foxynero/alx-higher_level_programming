-- Lists all shows without the comedy genre in the database hbtn_0d_tvshows.
-- Records are ordered by ascending show title.
SELECT tv_shows.title
FROM tv_shows
WHERE tv_shows.title NOT IN
	(SELECT a.title
	FROM tv_shows AS a
	JOIN tv_show_genres AS b
	ON a.id = b.show_id
	JOIN tv_genres AS c
	ON b.genre_id = c.id
	WHERE c.name = 'Comedy')
ORDER BY tv_shows.title ASC;
