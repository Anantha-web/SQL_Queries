SELECT  query_name,round(AVG(rating/position),2) AS quality,
ROUND(100*(AVG(case when rating<3 then 1 else 0 end )),2) AS poor_query_percentage
FROM queries
GROUP BY query_name
HAVING query_name is not null;
