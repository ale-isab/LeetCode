SELECT 
	a.name 
FROM 
	Employee a
JOIN
    (SELECT 
        managerId , 
        count(managerId) AS reports
     FROM employee 
     GROUP BY managerId 
     HAVING COUNT(managerId) >= 5) b 
ON a.id = b.managerId