-- 1.create database hungry;建表
CREATE DATABASE IF NOT EXISTS hungry default charset utf8 COLLATE utf8_general_ci;
use hungry;

-- 2.删表 
drop table customer_list;

-- 3.创建主件，表内列名--  
CREATE TABLE customer_list (
    c_id VARCHAR(50)  not null default 0 comment '客户id' ,
    c_name VARCHAR(50) not null default 0 comment '客户名字' ,
    c_phone VARCHAR(50) not null default 0 comment '客户电话' ,
    c_address VARCHAR(50) not null default 0 comment '客户地址' ,
    order_id VARCHAR(50) not null default 0 comment '订单编号',
    index (order_id));
select * from customer_list;
show full columns from customer_list;

-- 4.插入列数据-- 
insert into customer_list(c_id,c_name	,c_phone	,c_address,	order_id
 )values('c001',	'Amy',	'11',	'east',	'o001');

insert into customer_list(c_id,c_name	,c_phone	,c_address,	order_id
 )values('c002',	'Bob',	'12',	'west',	'o002');
 
 insert into customer_list(c_id,c_name	,c_phone	,c_address,	order_id
 )values('c003',	'Coco',	'13',	'south',	'o003'); 
SELECT * FROM  customer_list;



drop table restaurant_list;
/*表2  restaurant_list list 计划 执行 检查 分析*/    
CREATE TABLE restaurant_list (
    r_id varchar(50) not null default 0 comment '餐馆id',
    r_name VARCHAR(50) not null default 0 comment '餐馆名称' ,
    r_address VARCHAR(50) not null default 0 comment '餐馆地址' ,
    f_name VARCHAR(50) not null default 0 comment '食品名字' ,
    f_price varchar(50) not null default 0 comment '食品价格',
	f_id varchar(50) not null default 0 comment '食品id',
	index(r_id));
SELECT * FROM restaurant_list;
-- 插入列数据-- 
insert into restaurant_list(r_id,
r_name ,r_address,f_name ,f_price ,f_id )values('r001' , 'Sakura','urban','noodle','10','f001');
insert into restaurant_list(r_id,
r_name ,r_address,f_name ,f_price,f_id  )values('r002' , 'KFC','downtown','chick','20','f002');
insert into restaurant_list(r_id,
r_name ,r_address,f_name ,f_price ,f_id )values('r003' , 'Pizzahut','city','pizza','30','f003');
SELECT * FROM restaurant_list;
    
    
drop table order_list;
/*表2  order_list list 计划 执行 检查 分析*/    
CREATE TABLE order_list (
    order_id varchar(50) not null default 0 comment '订单id',
    order_time VARCHAR(50) not null default 0 comment '下单时间' ,
    order_endtime VARCHAR(50) not null default 0 comment '送达时间' ,
    food_id VARCHAR(50) not null default 0 comment '食品id' ,
    quantity varchar(50) not null default 0 comment '食品数量',
	total_amount varchar(50) not null default 0 comment '总金额',
	index(order_id));
SELECT * FROM order_list;
-- 插入列数据-- 
insert into order_list(order_id,
order_time ,order_endtime,food_id ,quantity ,total_amount )values('o001' , '10:00','10:30','f001','2','20');
insert into order_list(order_id,
order_time ,order_endtime,food_id ,quantity,total_amount  )values('o002' , '11:00','11:30','f002','1','20');
insert into order_list(order_id,
order_time ,order_endtime,food_id ,quantity ,total_amount )values('o003' , '12:00','12:30','f003','3','90');
SELECT * FROM order_list;


drop table delivery_list;
/*表2  delivery_list list 计划 执行 检查 分析*/    
CREATE TABLE delivery_list (
    d_id varchar(50) not null default 0 comment '骑手id',
    d_name VARCHAR(50) not null default 0 comment '骑手名字' ,
    order_id VARCHAR(50) not null default 0 comment '订单id' ,
	index(order_id));
SELECT * FROM delivery_list;
-- 插入列数据-- 
insert into delivery_list(order_id,
d_id,d_name )values('o001' ,'d001','horse');
insert into delivery_list(order_id,
d_id,d_name  )values('o002' ,'d002','bull');
insert into delivery_list(order_id,
d_id,d_name )values('o003' ,'d003','donkey');
SELECT * FROM delivery_list;
    
    
