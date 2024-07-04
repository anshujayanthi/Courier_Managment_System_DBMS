----------------------- SOME QUERIES TO TEST THE DATABASE------------------------------------------------

--Employee of the Month
delimiter //
create procedure getEmployeeOfTheMonth(in years int,in months int)
begin
select t1.empid, avg(t1.x) as workperheour
from (select package.empid,estdelivery,sum(weight)/hours as x
from package,deliverypartner
where package.empid=deliverypartner.empid and
month(estdelivery)=months and year(estdelivery)=years and tstatus
= 'DELIVERED'
group by empid,estdelivery) t1
group by empid order by avg(t1.x) desc limit 1;
end //
delimiter ;

--Branch of the Month
delimiter //
create procedure getBranchOfTheMonth(in years int,in months int)
begin
select sbranch as branches ,sum(f) as fees_collected from
(select sbranch,sum(deliveryfees) as f from package where
month(estdelivery) =months and year(estdelivery)= years group by
sbranch
union
select dbranch,sum(deliveryfees) from package where
month(estdelivery) =months and year(estdelivery)= years group by
dbranch)
t1 group by sbranch order by sum(f) desc limit 1;
end //
delimiter ;

--Branch of the Quarter
delimiter //
create procedure getBranchOfTheQuarter(in years int,in q int)
begin
select sbranch as branches ,sum(f) as fees_collected from
(select sbranch,sum(deliveryfees) as f from package where
month(estdelivery) in (3*q,3*q-2,3*q-1) and year(estdelivery)=
years group by sbranch
union
select dbranch,sum(deliveryfees) from package where
month(estdelivery) in (3*q,3*q-2,3*q-1) and year(estdelivery)=
years group by dbranch)
t1 group by sbranch order by sum(f) desc limit 1;
end //
delimiter ;

--City Wise Revenue
delimiter //
create procedure getCitywiseRevenue(in years int)
begin
select city,sum(deliveryfees) as Annual_Revenue
from package
join pincode
on dpincode=pcode
where year(estdelivery)=years
group by city order by sum(deliveryfees) desc;
end //
delimiter ;