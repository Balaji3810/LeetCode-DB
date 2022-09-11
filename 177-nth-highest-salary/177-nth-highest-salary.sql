CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      
      select max(salary) as getNthHighestSalary 
      from
      (
      select 
      salary,
      dense_rank() over(order by salary desc) as rnk
      from Employee 
      ) as a where a.rnk = N
      
  );
END