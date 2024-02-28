# Write your MySQL query statement below
with person_table as (select id, email, row_number() over (partition by email order by id asc) as row_num from person)
delete from person where id not in (select id from person_table where row_num=1);
