create database jichaohua;
use jichaohua;
create table stock(stockkind varchar(50),
stockname varchar(50),stocknumber varchar(50),
amount varchar(50),cost varchar(50),
closeprice varchar(50));
select * from stock;
insert into stock values('Astock', 'china' , 601318,100,60,70);
select * from stock;
insert into stock values('Astock', 'japan' , 601317,200,50,40);
select * from stock;
create database db1;
show databases;
create database if not exists db2;
show databases;
ALTER DATABASE db2 CHARACTER SET utf8;
show databases;
drop database db2;
show databases;
select database();
use db1;
select database();
create table students(id int, name varchar(20),birthday date,age int,sex varchar(20));
show tables;
CREATE TABLE s1 LIKE student;
desc s1;
drop table if exists s1;
show table status;
ALTER TABLE student ADD remark VARCHAR(20);
desc student;
ALTER TABLE student MODIFY remark VARCHAR(100);
desc student;
ALTER TABLE student CHANGE remark intro varchar(30);
desc student;
alter table student  drop intro;
desc student;
rename table student to student2;
use student2;
ALTER TABLE student2 charset gbk;
desc student2;
INSERT INTO student2 (id, NAME) VALUES (1, '张三');
desc student2;
select * from student2;
show tables like '%2';










