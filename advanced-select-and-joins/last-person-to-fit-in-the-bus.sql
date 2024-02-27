# Write your MySQL query statement below
with queue_new as
(select turn, 
person_id, 
person_name, 
weight, 
sum(weight) over (order by turn) as TotalWeight
from queue order by turn)

select person_name from queue_new where TotalWeight <= 1000 order by TotalWeight desc limit 1;
