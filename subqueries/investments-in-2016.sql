# Write your MySQL query statement below
SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM (
    SELECT *, COUNT(*) OVER (PARTITION BY tiv_2015) AS tiv_2015_cont,
    COUNT(*) OVER (PARTITION BY lat, lon) AS location_cont
    FROM Insurance
) T
WHERE tiv_2015_cont > 1 AND location_cont=1;
