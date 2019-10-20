use jane;

CREATE TABLE studentinformation (
    id INT,
    name VARCHAR(20),
    adress VARCHAR(20),
    sex VARCHAR(20)
);
CREATE TABLE studentsubjects (
    subject VARCHAR(20),
    subjectnumber INT
);
CREATE TABLE studentscore (
    id INT,
    subjectnumber INT,
    score INT
);

insert into studentinformation values(01,'john','BJ','ma');
insert into studentinformation values(02,'jane','sh','fe');
insert into studentinformation values(03,'john','sz','ma');
insert into studentinformation values(04,'bean','gz','ma');
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

SELECT 
    *
FROM
    studentinformation;
SELECT 
    *
FROM
    studentsubjects;
SELECT 
    *
FROM
    studentscore;

SELECT 
    studentinformation.name, s2.score
FROM
    studentscore s
        LEFT JOIN
    score s2 ON s.id = s1.studentId;

use jane;
SELECT si.name, ss.score
FROM studentinformation si left join studentscore ss ON si.id = ss.id;

SELECT si.name, ss.score
FROM studentinformation AS si left join studentscore AS ss ON si.id = ss.id;

SELECT 
    si.name AS '姓名',
    si.id,
    ss.score AS '成绩',
    sbj.subject AS '科目'
FROM
    studentinformation AS si
        LEFT JOIN
    studentscore AS ss ON si.id = ss.id
        LEFT JOIN
    studentsubjects AS sbj ON ss.subjectnumber = sbj.subjectnumber;



SELECT 
    si.name AS '姓名',
    si.id,
    ss.score AS '成绩',
    sbj.subject AS '科目' 
FROM
    studentinformation AS si
        LEFT JOIN
    studentscore AS ss ON si.id = ss.id
        LEFT JOIN
    studentsubjects AS sbj ON ss.subjectnumber = sbj.subjectnumber
    -- where sbj.subject = 'math'
    -- and ss.score>=50
    order by score asc;

select *
from studentscore;
--查出成绩最高的人的id，和科目 
select max(score),id ,subjectnumber from studentscore;


select si.id, si.name, temp.score 
 from studentinformation si
inner join (
 select id, subjectnumber, max(score) as score
 from studentscore
) temp on si.id = temp.id;


select si.id, si.name, temp.score 
 from studentinformation si
left join (
 select id, subjectnumber, max(score) as score
 from studentscore
) temp on si.id = temp.id;


select * from studentinformation si 
left join studentscore ss on si.id = ss.id;

select * from studentinformation si 
inner join studentscore ss on si.id = ss.id;








