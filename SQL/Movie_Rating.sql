SELECT
  name AS results
FROM
  (
    SELECT
      TOP 1 name,
      COUNT(b.user_id) AS user_count
    FROM
      Users a
      JOIN MovieRating b ON a.user_id = b.user_id
    GROUP BY
      a.name
    ORDER BY
      user_count DESC,
      name
  ) q1
UNION
ALL
SELECT
  title AS results
FROM
  (
    SELECT
      top 1 title,
      AVG(rating * 1.0) AS average
    FROM
      Movies a
      JOIN MovieRating b ON a.movie_id = b.movie_id
    WHERE
      created_at BETWEEN '2020-02-01'
      AND '2020-02-29'
    GROUP BY
      a.title
    ORDER BY
      average DESC,
      title
  ) q2