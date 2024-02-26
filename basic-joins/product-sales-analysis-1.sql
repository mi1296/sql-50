#Write your MySQL query statement below
select p.product_name, s.year, s.price from sales s 
right join product p on s.product_id = p.product_id where s.year is not null and s.price is not null;
