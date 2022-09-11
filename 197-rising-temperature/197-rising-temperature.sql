# Write your MySQL query statement below
with lag_tble as
(
    select *,
    lag(temperature, 1) over(order by recordDate) as lag_temp,
     lag(recordDate, 1) over(order by recordDate) as lag_date
    from Weather
)
select id from lag_tble
where temperature > lag_temp and
datediff(recordDate,lag_date ) = 1