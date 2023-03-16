-- Lists all shows from hbtn_0d_tvshows_rate by their rating.
-- Records are ordered by descending rating.
SELECT a.title, SUM(b.rate) AS rating
FROM tv_shows AS a
JOIN tv_show_ratings AS b
ON a.id = b.show_id
GROUP BY a.title
ORDER BY rating DESC;
