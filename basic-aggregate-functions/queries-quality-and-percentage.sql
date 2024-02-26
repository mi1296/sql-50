SELECT query_name,
ROUND(SUM(rating / position) / COUNT(query_name), 2)
quality,
ROUND((COUNT(IF(rating < 3, TRUE, NULL)) / COUNT(query_name)) * 100, 2) poor_query_percentage
FROM Queries
GROUP BY query_name;
