# 1. Create a table with four column of your own choice, making that they have Null Constrains
create database Universe;
use Universe;
create table Green ( name varchar(30) null, id int, city varchar(30) null , District varchar(30));
desc Green;
insert into Green values ( "roy",23,"kotagiri","Nilgiris");
insert into Green values ( "Jam",45,"Mettupalayam","Coimbatore");
insert into Green values ( "Jammy",65,"Thirupathur","Vellore");
insert into Green values ( "Vicky",57,"crompet","Chennai");
select*from Green;


# 2. Create a table having columns ID,Product name,Price Per Unit And Quantity,and then create a view which show the total cost per each product and product name.

create table salestable( Columns_ID int , Product_name varchar(20) ,Price_per_unit int , Quantity int);
insert into salestable values(123,"Biscuts",10,250),(456,"Choco",25,500),(789,"Dryfruits",57,550),(910,"Sugars",90,600);
select*from salestable;
create view hello as select product_name,price_per_unit*Quantity as total_cost from salestable;
select * from hello;


# 3.Sum all the ages in the table.

create table informations ( Id int, Name varchar(20), Age int);
insert into informations values (1,"Bob",21),(2,"Sam",19),(3,"Jill",18),(4,"Jim",21),(5,"Sally",19),(6,"Jess",20),(7,"Will",21);
select * from informations;
select sum(Age) from informations;


# 4.Group all the people by their age,along with a count of the people that are same age.

create table information ( Id int, Name varchar(20), Age int);
insert into information values (1,"Bob",21),(2,"Sam",19),(3,"Jill",18),(4,"Jim",21),(5,"Sally",19),(6,"Jess",20),(7,"Will",21);
select* from information;
select age,count(age) from information group by age;






# 5.Return just the division ids for the all the division that had positive revenue in 2021.

create table Details (Division_Id int,year int,Revenue int);
insert into Details values (1,2018,60),(1,2021,40),(1,2020,70),(2,2021,-10),(3,2018,20),(3,2016,40),(4,2021,50);
select*from Details;
select Division_Id from Details where Revenue>0 and year=2021;