SELECT
a.name,
ISNULL(b.travelled_distance,0) AS travelled_distance
FROM
users a  LEFT JOIN
(
SELECT user_id,SUM(distance ) AS travelled_distance 
FROM Rides 
GROUP BY  user_id
) b
ON a.id=b.user_id
ORDER BY  travelled_distance DESC, name ASC