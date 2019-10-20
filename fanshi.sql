use jane;
create table studentinformation(id int,name varchar(20),adress varchar(20),sex varchar(20));
create table studentsubjects(subject varchar(20),subjectnumber int);
create table studentscore(id int,subjectnumber int,score int);
insert into studentinformation values(01,'john','BJ','ma');
insert into studentinformation values(02,'jane','sh','fe');
insert into studentinformation values(03,'john','sz','ma');
insert into studentsubjects values('english','001');
insert into studentsubjects values('math','002');
insert into studentsubjects values('music','003');
insert into studentscore values(01,001,80);
insert into studentscore values(02,001,70);
insert into studentscore values(03,001,90);
insert into studentscore values(01,002,78);
insert into studentscore values(02,002,71);
insert into studentscore values(03,002,99);
insert into studentscore values(01,003,84);
insert into studentscore values(02,003,100);
insert into studentscore values(03,003,99);
select * from studentinformation;
select * from studentsubjects;
select * from studentscore;

select studentinformation.name, s2.score from studentscore s left join score s2 on s.id =s1.studentId
select s.name from studentinformation inf