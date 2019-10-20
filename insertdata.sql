delimiter $$

create procedure insertdata()

begin

declare i int default 1;

DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK; 

START TRANSACTION;

while i <= 20000 do

insert into product(name1, name2) values(concat('VIVO_MOBILE_2015-',i), concat('VIVO_MOBILE_2015-',i));

set i = i + 1;

end while;

COMMIT;

end $$

delimiter ;