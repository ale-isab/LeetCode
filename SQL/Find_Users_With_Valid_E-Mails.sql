SELECT
    user_id,
    name,
    mail
FROM 
    Users
WHERE mail LIKE '[a-Z]%@leetcode.com'
AND SUBSTRING(mail, 1, LEN(mail) - 13) NOT LIKE '%[^0-9a-Z_.-]%'