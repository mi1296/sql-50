# Write your MySQL query statement below
SELECT p.product_name as product_name, sum(o.unit) as unit from products p
left join orders o
on p.product_id = o.product_id
where order_date like '2020-02-%'
group by p.product_name
having sum(o.unit) >= 100
