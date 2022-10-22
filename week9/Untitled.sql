select * from customers;

update customers set Country = replace(Country ,'\n', '');

update customers set city = replace (city, '\n','');

create view mexicanCustomers as
select Customerid, Customername ,ContactName
from customers
where country = "Mexico";

select * from mexicancustomers;

select *
from mexicancustomers join orders on mexicancustomers.customerid = orders.customerid;

create view productsbelowavf as
select productid, productname, price
from Products
where price < (select avg(price) from products);

delete from orderdetails where productid = 5;
truncate orderdetails;


delete from customers ;

drop table customers;