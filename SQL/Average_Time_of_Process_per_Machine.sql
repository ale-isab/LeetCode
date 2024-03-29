SELECT  a.machine_id,
     ROUND(avg(b.timestamp - a.timestamp), 3) as processing_time
FROM 
	Activity as a
JOIN 
	Activity as b
ON   a.process_id = b.process_id
AND a.machine_id = b.machine_id  
AND a.activity_type = 'start'
AND b.activity_type = 'end'
GROUP BY a.machine_id