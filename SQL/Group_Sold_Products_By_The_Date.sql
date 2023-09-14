SELECT sell_date,
       COUNT(sell_date) AS num_sold, 
       STRING_AGG (product,',') AS products
FROM 
(SELECT DISTINCT *
FROM Activities) a
GROUP BY  sell_date