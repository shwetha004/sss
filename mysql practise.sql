show databases;
# hello
-- good morning
/*hello come soon*/
create database company;
drop database company;
-- create table
create table employee (empid varchar(20),
name varchar(20),
age int,
salary decimal(7,2));
use company;
select * from employee;
create table emp_data(empid varchar(29) primary key,ename varchar(22) not null, dept varchar(18),age int check(age>18),city varchar(30) 
default"bangalore");
describe emp_data;
insert into emp_data values("s01","ram","sales",20,"bangalore");
insert into emp_data values("s02","sham","purchase",19,"Delhi");
select * from emp_data;
insert into emp_data(empid,ename,dept,age,city) values ("s03","dhan","packing",27,"tumkur"),("s04","gyhan","shopping",28);
select * from emp_data;
alter table emp_data drop column ext;


alter table school modify (id char(12),name varchar(20) primary key,gender char(2),marks int(10))


-- alter commandm
-- adding column using alter
alter table emp_data add column ext int;
alter table emp_data add column phone int, add email varchar(35);
alter table emp_data add column state varchar(20) after ename;
alter table emp_data add column gender varchar(5) after email;
alter table emp_data drop column phone;
alter table emp_dta drop column email;
alter table empdata add column sr_n0  int first;
alter table emp_data rename to empdata;
select * from empdata;
insert into employee values("e01","sss",14,3333.44);
select name,age from employee;
desc employee;
describe employee;

-- insert records
use company;
insert into employee values("ec01","shwetha",22,22000.66);
insert into employee values("ec02","shilpa",27,55000);
-- change datatype
desc emp_data;
alter table emp_data modify empid char(30),modify age tinyint;
alter table emp_data modify ename varchar(35);
-- rename
alter table emp_data rename column ename to emp_name;
alter table emp_data rename column city to emp_city;
select * from emp_data;
-- update
update emp_data set age=25 where empid ="s01"; -- changed age from 20 to 25
update emp_data set emp_name="mayur", emp_city ="noida" where age =27;
update emp_data set age =2*age where empid="s01";
update emp_data set age =age-2 where empid="s04";

select * from sales;
use datamites;
-- distinct  -- to see 
select distinct(category) from sales;
select distinct(subcategory) from sales;
select *from sales where region ="south";
select *from sales where  quantity=5;
select *from sales where  sales<=20;
select *from sales where sales>500 and region ="south";
select *from sales where region ="east" and subcategory ="chairs";
select *from sales where region ="east" and category ="furniture";
select *from sales where category ="technology" and sales > 200 and discount <=0.3 and profit >50;
select *from sales where sales> 500 or region ="south";
select *from sales where not region ="east";
select *from sales where category ="technology" and not region ="west";
select *from sales where category ="technology" or not region ="west";
select  customername , sales,city,orderdate from sales where sales>1000;
--- as or alias
select customername as cname, sales, orderdate as odate from sales where sales>1000;
select * from sales where category is null or region is null;
select * from sales where category is not null ;
-- order  used to sort asending or decending order
select * from sales order by  sales desc;
select * from sales order by subcategory asc;
select * from sales where region ="east" order by sales desc;
select count(*) from sales where region ="east" order by sales desc;
select * from sales where region ="east" and profit >=10 order by sales desc;
-- limit used to return specific no of records
select * from sales limit 5;
select *from sales order by sales  limit 5;
select * from sales where region="east" order by sales desc limit 3;
select * from sales where region="east" order by sales asc limit 3;
select * from sales limit 1, 1; -- no of record want to elimate , 1--no of record returns
select * from sales limit 1, 2;
-- query to fetch 0f 3rd highiest sales record
select * from sales order by sales desc limit 2,1;
select * from sales order by sales desc;
-- in
select * from sales where subcategory in("chairs","tables");
select * from sales where city in("orem","houston");
-- between
select * from sales where sales between 100 and 200;

select * from sales where quantity between 3 and 5;
-- like
select * from sales where region like "e%"; -- %starting letter
select * from sales where city like "%n"; -- %ending letter
select * from sales where city like "%us%";
select * from sales where city like "h%n";
select * from sales where orderdate like "%2016";
select * from sales where productname like "%ford%";
-- using underscore(_) fetch only one char
select * from sales where region like "e_";
select * from sales where region like "e_s_";
select * from sales where city like "p__________a"; 
-- aggregate function for mathematical operation
-- sum
select sum(sales) from sales;
select sum(profit) from sales;
select avg(sales) from sales;
select avg(discount) from sales;
-- min
select min(sales) from sales;
select min(profit) from sales;
-- max
select max(discount) from sales;
select max(sales),sum(sales),max(profit),avg(quantity) from sales;
select max(sales) from sales where category="furniture";
select count(*) from sales where category ="technology";
select count(*),max(sales),sum(profit) from sales where region="east";
-- max sales of all eregion using group by
select region ,sum(sales)from sales group by region;
select subcategory ,max(profit) from sales group by subcategory;
select max(profit) from sales group by subcategory;
select region ,category, sum(sales) from salesdata group by region,category order by category;
select city,sum(sales),max(profit), count(*) from sales group by city having 
max(profit)<50;
select city,sum(sales),max(profit), count(*) from sales group by city having
count(*) =2; 
select city,sum(sales),max(profit), count(*) from sales group by city having
max(profit)=2.5164;








