SELECT
    a.project_id,
    CAST(Round(AVG(1.00*b.experience_years),5,1) AS DECIMAL(10,2))  AS average_years
FROM
    Project a
    JOIN Employee b
    ON a.employee_id=b.employee_id
GROUP BY a.project_id