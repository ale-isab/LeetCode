SELECT class
FROM (SELECT class,
      COUNT (DISTINCT student) AS stud
      FROM Courses 
      GROUP BY class) AS tabl
WHERE stud >=5