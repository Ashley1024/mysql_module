-- 1.create database market;建表
CREATE DATABASE IF NOT EXISTS market default charset utf8 COLLATE utf8_general_ci;
use market;

-- 2.删表 
drop table product_list;

-- 3.创建主件，表内列名--  
CREATE TABLE product_list (
    product_name VARCHAR(50)  not null default 0 comment '产品名' ,
    product_price VARCHAR(50) not null default 0 comment '产品单价' ,
    product_property VARCHAR(50) not null default 0 comment '库存' ,
    product_catagory VARCHAR(50) not null default 0 comment '产品属性' ,
    product_id VARCHAR(50) not null default 0 comment '产品编码',
    index (product_id)
    /*list_person VARCHAR(50) not null default 0 comment '列表人' ,
    list_time VARCHAR(50) not null default 0 comment '列表时间' ,
    listupdate_time VARCHAR(50) not null default 0 comment '更新时间' ,
    listupdate_person VARCHAR(50) not null default 0 comment '更新人' */
     
);
select * from product_list;
show full columns from product_list;

-- 4.插入列数据-- 
insert into product_list(product_name ,
product_price ,product_property ,product_catagory,product_id )values('苹果手机' , '80','380','电子产品','p001');
insert into product_list(product_name ,
product_price ,product_property ,product_catagory,product_id )values('辣味排骨', '55.8' , '400','食物','p002');    
insert into product_list(product_name ,
product_price ,product_property ,product_catagory,product_id )values('洗发水', '70' , '750','洗护','p003');
SELECT * FROM  product_list;

drop table trolley;
/*表2  shopping trolley list 计划 执行 检查 分析*/    
CREATE TABLE trolley (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,product_name varchar(50) not null default 0 comment '产品名称',
    product_price VARCHAR(50) not null default 0 comment '产品价格' ,
    product_quantity VARCHAR(50) not null default 0 comment '数量' ,
    product_id VARCHAR(50) not null default 0 comment '产品编码' ,
    customer_id varchar(50) not null default 0 comment '客户编码',index(product_id),index(customer_id)
);
SELECT * FROM trolley;
-- 插入列数据-- 
insert into trolley(product_name,
product_price ,product_quantity,product_id ,customer_id  )values('苹果手机' , '6000','1','p001','c001');
insert into trolley(product_name,
product_price ,product_quantity,product_id ,customer_id  )values('辣味排骨' , '55.8','8','p002','c002');
insert into trolley(product_name,
product_price ,product_quantity,product_id ,customer_id  )values('洗发水' , '70','2','p003','c003');
SELECT * FROM trolley;
    
    drop table orderheading;
/*表3 排头表orderheading list*/
CREATE TABLE orderheading (
    customer_id VARCHAR(50) not null default 0 comment '顾客id' ,
    customer_address VARCHAR(50) not null default 0 comment '顾客地址' ,
    customer_phone VARCHAR(50) not null default 0 comment '顾客电话' ,
    order_id VARCHAR(50) not null default 0 comment '订单编号' ,index(order_id)
);

insert into orderheading(customer_id,
customer_address ,customer_phone  ,order_id  )values( 'c001','Shanghai','13814306899','r001');
insert into orderheading(customer_id,
customer_address ,customer_phone  ,order_id )values(' c002','Beijing','18914306899','r002');
insert into orderheading(customer_id,
customer_address ,customer_phone  ,order_id )values( 'c003','Shenzhen','15143006899','r003');
select * from  orderheading;

/*表4 订单详情表*/

drop table order_detail;
CREATE TABLE order_detail (
    order_id VARCHAR(50) not null default 0 comment '订单编号' ,
    purchase_quantity VARCHAR(50) not null default 0 comment '购买量' ,
    product_price DECIMAL(20 , 2 ) not null default 0 comment '单价' ,
    total_value DECIMAL(20 , 2 ) not null default 0 comment '消费总金额' ,
    express varchar(50) not null default 0 comment '快递公司' ,
    tracking_number varchar(50) not null default 0 comment '快递单号' ,
    product_id varchar(50) not null default 0 comment '商品编号',index(order_id),index(product_id)
);

insert into order_detail(order_id,
purchase_quantity
,product_price,total_value,express,
    tracking_number,product_id  )values('r001' , '2',6000,12000,'shunfen','A1100','p001');
insert into order_detail(order_id,
purchase_quantity
,product_price,total_value ,express,
    tracking_number ,product_id   )values('r002','3',55.8,165,'debang','B1100','p002');
insert into order_detail(order_id,
purchase_quantity
,product_price,total_value,express,
    tracking_number ,product_id)values( 'r003' , '1',70,'70','ups','C1100','p003');

select * from order_detail;

drop table customer_information;
/*客户信息表customer_information list*/
CREATE TABLE customer_information (
	customer_id VARCHAR(50) not null default 0 comment '顾客id' ,
    customer_name VARCHAR(50) not null default 0 comment '顾客名字' ,
    customer_address VARCHAR(50) not null default 0 comment '顾客地址' ,
    customer_phone VARCHAR(50) not null default 0 comment '顾客电话'
    );

insert into customer_information(customer_name,customer_id,
customer_address ,customer_phone   )values( 'John','c001','Shanghai','13814306899');
insert into customer_information(customer_name,customer_id,
customer_address ,customer_phone  )values(' Anne','c002','Beijing','18914306899');
insert into customer_information(customer_name,customer_id,
customer_address ,customer_phone   )values( 'Lisa','c003','Shenzhen','15143006899');

select * from  customer_information;




SELECT 
    od.purchase_quantity,so.customer_address
FROM
    order_detail od
        inner JOIN
     shopping_orderheading so ON od.order_id = so.order_id;

SELECT 
    od.purchase_quantity,od.total_value,od.express,od.tracking_number,pl.product_name, pl.product_id,pl.product_catagory,oh.customer_name
FROM
    product_list pl
	inner JOIN
	order_detail od ON pl.product_id = od.product_id 
    inner join
     shopping_orderheading oh on oh.order_id =od.order_id
    














    

      

