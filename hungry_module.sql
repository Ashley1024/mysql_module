-- 1.create database hungry;建表
CREATE DATABASE IF NOT EXISTS hungry default charset utf8 COLLATE utf8_general_ci;
use hungry;

-- 2.删表 
drop table if exists customer;

-- 3.创建主件，表内列名--  
CREATE TABLE customer ( 
    c_id int primary key not null auto_increment  ,
    c_name VARCHAR(50) not null default 0 comment '客户名字' ,
    c_phone VARCHAR(50) not null default 0 comment '客户电话' ,
    c_address VARCHAR(50) not null default 0 comment '客户地址' ,
    index (c_phone));
select * from customer;
show full columns from customer;


drop table if exists restaurant;
/*表2  restaurant l 计划 执行 检查 分析*/    
CREATE TABLE restaurant (
    r_id int primary key not null auto_increment,
    r_name VARCHAR(50) not null default 0 comment '餐馆名称' ,
    r_address VARCHAR(50) not null default 0 comment '餐馆地址');
SELECT * FROM restaurant;
    
    
drop table if exists order_header ;
/*表2  order list 计划 执行 检查 分析*/    
CREATE TABLE order_header (
    order_id int primary key not null auto_increment,
    r_id int not null,
    c_id int  not null,
    d_id int  not null,
    order_time VARCHAR(50) not null default 0 comment '下单时间' ,
    order_endtime VARCHAR(50) not null default 0 comment '送达时间' ,
   	total_amount varchar(50) not null default 0 comment '总金额', index(r_id, c_id, d_id)
);

SELECT * FROM order_header;



drop table if  exists delivery;
/*表2  delivery list 计划 执行 检查 分析*/    
CREATE TABLE delivery (
    d_id int primary key not null auto_increment comment '骑手id',
    d_name VARCHAR(50) not null default 0 comment '骑手名字' ,
    d_phone VARCHAR(50) not null default 0 comment '骑手电话' ,
	index(d_id));
SELECT * FROM delivery;


drop table if  exists food;
/*表2  delivery list 计划 执行 检查 分析*/    
CREATE TABLE food (
    r_id varchar(50) not null default 0 comment '饭店id',
    f_name VARCHAR(50) not null default 0 comment '食品名' ,
    f_id VARCHAR(50) not null default 0 comment '食品id' ,
    f_price VARCHAR(50) not null default 0 comment '食品价格' ,
	index(d_id));
SELECT * FROM food;


    
