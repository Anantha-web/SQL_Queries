SELECT Max(num) AS num 
FROM MyNumbers 
WHERE num NOT IN (SELECT num FROM MyNumbers GROUP BY num HAVING COUNT(num)>1);
