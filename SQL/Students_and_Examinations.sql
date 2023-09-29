SELECT
    a.student_id,
    a.student_name,
    c.subject_name,
    ISNULL(COUNT(b.subject_name ),0) AS attended_exams
FROM
    Students a
CROSS JOIN Subjects c
    LEFT JOIN Examinations b
    ON a.student_id = b.student_id
        AND b.subject_name = c.subject_name
Group By a.student_id,b.subject_name,a.student_name ,c.subject_name
ORDER BY student_id ASC, subject_name ASC