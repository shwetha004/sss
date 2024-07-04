drop table student;
create database sss
use sss;
create table student (stu_id int primary key auto_increment,name varchar(20) not null,major varchar(20) unique,gender varchar(10) default"female")
;
Alter table student add column gpa decimal(3,2);
select* from student;
desc student;
insert into student values(1,'pooja','science',3.23);
insert into student(name,major) values("smitha","datascience");
insert into student values(4,'nevi','social',2.45);
insert into student (name,major)values("puneet","gk"); -- error
insert into student(stu_id,name) values(3,"sneha");
select* from student;
desc student;
alter table student add column depid int(10) auto_increment;
update   student set depid = 100 where name="pooja"; 
update student set major ="DS" where major="datascience";
update student set gender="male"where name="puneet";
update student set name="pushpa", gender="female" where major="GK";
delete from student where name="sneha";
-- getting information
select  * from student;

select * from student where major in("math","gk","science") and stu_id>1;
select * from sales; -- error
select count(stu_id) from student where gender="female";
select* from student ;
select * from department;
  update student set depid=d2,gender="female" where name="roopa"; 
create table father(stu_id int,fathername varchar(20));

create table department (depid varchar(10),
desc department;
dname varchar(15));
insert into department values
("d1", "it"),
("d2", "hr"),
("d3", "admin"),
("d4", "finance"),
("d5", "sales");
select * from department;
select * from student where depid in (select depid from department);
select * from student where depid = (select depid from department WHere dname = "Finance");
desc department;
alter table student modify depid varchar(10) 
