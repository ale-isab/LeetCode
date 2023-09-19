DELETE T FROM ( 
SELECT * , ROW_NUMBER() OVER (
          PARTITION BY email
          ORDER BY id asc
        ) AS rn
    FROM Person
) AS T
WHERE rn > 1;