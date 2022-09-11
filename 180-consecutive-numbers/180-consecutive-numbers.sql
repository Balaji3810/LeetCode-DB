# Write your MySQL query statement below
select distinct(num) as ConsecutiveNums
from
(
select
num,
lag(num, 1) over(order by id) as lag_num,
lead(num, 1) over(order by id) as lead_num
from 
    Logs
) as a where a.num = a.lag_num and a.num = a.lead_num