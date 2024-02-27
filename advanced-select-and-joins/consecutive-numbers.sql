# Write your MySQL query statement below
select distinct(num) as consecutiveNums
from (select num,
        lead(num, 1) over() as num_1,
        lead(num, 2) over() as num_2
        from logs) as temp_tbl
where num = num_1 and num = num_2;
