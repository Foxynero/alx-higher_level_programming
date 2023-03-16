-- Lists all shows in hbtn_0d_tvshows that have at least one genre linked.
-- Records are sorted by ascending tv_shows.title and tv_show_genres.genre_id.
USE hbtn_0d_tvshows;
SELECT tv_shows.title, tv_show_genres.genre_id
FROM tv_show_genres
LEFT JOIN tv_shows
ON tv_shows.id = tv_show_genres.show_id
ORDER BY tv_shows.title, tv_show_genres.genre_id ASC;
