# Write your MySQL query statement below

select user_id, concat(UPPER(SUBSTR(name, 1, 1)), LOWER(SUBSTR(name, 2, LENGTH(name)))) as name
from Users
order by user_id;
