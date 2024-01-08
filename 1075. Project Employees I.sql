SELECT p.project_id,  round(AVG(e.experience_years), 2) AS average_years 
FROM Employee e
RIGHT JOIN Project p
ON p.employee_id  = e.employee_id  
GROUP BY p.project_id
ORDER BY p.project_id ASC;
