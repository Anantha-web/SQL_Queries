# -CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
# -BEGIN
# -  RETURN (
# -      # Write your MySQL query statement below.
# -
# -  );
# -END

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE M INT;
SET M =N-1;
  RETURN (
   
      IFNULL((SELECT DISTINCT salary FROM Employee ORDER BY salary DESC LIMIT M, 1),NULL)
      
       );
END
