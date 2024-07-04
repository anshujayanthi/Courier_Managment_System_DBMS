-- Some views to test the database-----------------------------------------------------

--processing backlog
create view ProcessingBacklog as
select sbranch,count(tstatus='PROCESSING')
from package
group by sbranch
order by count(tstatus='PROCESSING') desc;

SELECT * FROM courier_service.processingbacklog;

--delivery backlog
create view DeliveryBacklog as
select empid,count(tstatus='OUT FOR DELIVERY')
from package
group by empid
order by count(tstatus='OUT FOR DELIVERY’);

SELECT * FROM courier_service.deliverybacklog;

--View top costumers
create view TopCustomers as
select package.customerid ,sum(deliveryfees),fname,lname,ph1,ph2
from package
join customer
on customer.customerid=package.customerid
group by package.customerid
order by sum(deliveryfees) desc;

SELECT * FROM courier_service.TopCustomers;