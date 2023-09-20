SELECT
id,
movie,
[description],
rating
FROM
Cinema
where
id % 2 <>0 
and [description] not like '%boring%'
order by rating desc