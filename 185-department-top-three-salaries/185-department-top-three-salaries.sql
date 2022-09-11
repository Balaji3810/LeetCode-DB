# Write your MySQL query statement below
with salary_ranked as
(
    select
    name,
    salary,
    departmentId,
    dense_rank() over(partition by departmentId order by salary desc ) as rnk
    
    from Employee
)
select
d.name as Department,
sr.name  as Employee,
sr.salary as Salary
 
from Department d join salary_ranked sr on
d.id = sr.departmentId
where sr.rnk >= 1 and sr.rnk <= 3
 
 