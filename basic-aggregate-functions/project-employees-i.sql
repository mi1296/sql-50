# Write your MySQL query statement below
select p.project_id, round(avg(e.experience_years), 2) as average_years from project p
right join employee e
on p.employee_id = e.employee_id
where p.project_id is not null
group by p.project_id
