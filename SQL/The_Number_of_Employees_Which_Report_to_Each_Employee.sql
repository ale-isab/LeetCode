SELECT
    a.Employee_id,
    a.name,
    COUNT(b.age) AS reports_count,
    ROUND(SUM(b.age) / CAST(COUNT(b.age) AS float), 0) AS average_age
FROM
    Employees a
    JOIN Employees b ON a.employee_id = b.reports_to
GROUP BY
    a.Employee_id,
    a.name
ORDER BY
    a.employee_id