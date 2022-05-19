# Write your MySQL query statement below

select p.firstName as firstName,
p.lastName as lastName,
a.city as city,
a.state as state from
(
select * from
Person
) p left join 
(
select * from Address
) a on p.personId = a.personId
