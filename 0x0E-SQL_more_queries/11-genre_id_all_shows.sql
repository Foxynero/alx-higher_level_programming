--  lists all shows contained in the database hbtn_0d_tvshows.
-- Results must be sorted in ascending order by tv_shows.title and tv_show_genres.genre_id
-- Displays NULL for shows without genres.
SELECT s.'title', g.'genre_id'
FROM 'tv_shows' AS s
LEFT JOIN 'tv_show_genres' AS g
ON s.'id' = g.'show_id'
ORDER BY s.'title', g.'genre_id';
