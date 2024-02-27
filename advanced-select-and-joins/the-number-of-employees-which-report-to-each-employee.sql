# Write your MySQL query statement below
select 
    e.employee_id, e.name, r.reports_count, round(r.average_age) as average_Age
from employees e
join (
    select reports_to, count(*) as reports_count, avg(age) as average_age
    from employees 
    where reports_to is not null
    group by reports_to
) r on e.employee_id = r.reports_to
order by e.employee_id; 
