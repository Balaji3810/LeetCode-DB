# Write your MySQL query statement below
select max(salary) as SecondHighestSalary from
( 
select 
salary,
dense_rank() over(order by salary desc) as rnk
from Employee
) as a where a.rnk = 2
