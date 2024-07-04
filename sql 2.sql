create database Datamites;
create table school(id int,name varchar(20),gender varchar(10), marks int );
use Datamites;
select * from school;
desc school;
insert into school(id,name,gender,marks) values (100,"shwetha","M",100);
alter table school modify (id char(12),name varchar(20) primary key,gender char(2),marks int(10));
create table van (id char(12) not null,name varchar(20) primary key,gender char(2),marks int(10));
select* from van;