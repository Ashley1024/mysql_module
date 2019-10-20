create table product(
 id int primary key not null auto_increment,
 name1 varchar(50),
    name2 varchar(50),
    index(name1)
);
select * from product;
drop procedure insertdata;
CALL insertdata();

select count(*) from product;

select * from product where name1='VIVO_MOBILE_2015-980';
select * from product where name2='VIVO_MOBILE_2015-980';