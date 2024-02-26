# Write your MySQL query statement below

WITH total_user AS
(
    SELECT COUNT(*) AS cnt
    FROM Users
)

SELECT contest_id, 
ROUND(COUNT(user_id) * 100 / cnt,2) AS percentage
FROM Register r, total_user t
GROUP BY contest_id
ORDER BY percentage DESC, contest_id
