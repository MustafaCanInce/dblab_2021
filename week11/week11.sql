call company.selectAllCustomers();

set @country = "UK";
select @country;
call getCustomersByCountry(@country);
select @country;

select *
from shippers;

select count(orderID)
from orders join shippers on orders.ShipperID = shippers.ShipperID
where ShipperName = "Speedy Express";

set @orderCount = 0;
call getNumberOfOrdersByShipper("Speedy Express",@orderCount);
select @orderCount;


set @beg = 100;
set @inc = 10;
call counter(@beg,@inc);
select @beg,@inc;

select * from movies;
select * from denormalized;

load data infile '/Users/can/Desktop/database mate/Recitation Materials-20211206/denormalized.csv'
into table denormalized
fields terminated by ';';

show variables like "secure_file_priv";

insert into movies (movie_id,title,ranking,rating,year,votes,duration,oscars,budget)
select distinctrow movie_id,title,ranking,rating,year,votes,duration,oscars,budget
from denormalized;

select * from movies;

insert into countries(country_id,country_name)
select distinctrow producer_country_id,producer_country_name
from denormalized
union
select distinctrow director_country_id,director_country_name
from denormalized
union
select distinctrow star_country_id,star_country_name
from denormalized
order by producer_country_id;

select *
from countries;