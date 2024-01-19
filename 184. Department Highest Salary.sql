SELECT Department.Name AS Department, e1.Name AS Employee, e1.Salary AS Salary
FROM Department 
JOIN Employee e1 
ON Department.Id = e1.DepartmentId
WHERE e1.Salary = (SELECT Max(Salary) FROM Employee e2 WHERE e2.DepartmentId = e1.DepartmentId)
