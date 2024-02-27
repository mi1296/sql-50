# Write your MySQL query statement below
with ranked as (select d.name as Department, 
                e.name as Employee, 
                e.salary as Salary, 
                dense_rank() over (partition by d.name order by e.salary desc) as rt
                from Employee e
                join Department d
                on e.departmentId=d.id)


select Department, Employee,Salary
from ranked
where rt<=3;
