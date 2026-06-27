use college;
create table employee (
emp_id int primary key,
emp__fname	varchar(30) not null , 
emp_name varchar(30),
department  varchar (10) not null,
salary int default 20000 not null,
email varchar(20));

select * from employee;

Insert into employee values
(1001,"AAlex","D","Testing",2500,"alex@company"),
(1002,"Celine","K","Account",16500,"celine@company"),
(1003,"Johan","L","SDE",45000,"john@company"),
(1004,"Selena","G","Marketing",22500,"selena@company"),
(1005,"Enrique","I","IT",35000,"enrique@company"),
(1006,"Robin","P","IT",35000,"robin@company");

select * from  employee where Upper(emp__fname)='CELINE';

select * from  employee where Lower(emp__fname)='CELINE';

select * from  employee where emp__fname='CELINE';

select * from employee where upper(EMP__FNAME) Like "%LE%";
select distinct department from employee;

select * from employee where department not in('SDE','Testing');

select * from employee where Trim(Upper(department=" Network "));

select * from employee
where upper(emp__fname) Like "E%" and department in ("IT");

select *,
case when salary>30000 then "Senior"
when salary >20000 and salary < 30000 then "Mid-senior"
else "junior"
End as Grade 
from employee;

select *,
if (salary>30000,"Seniour",
	if(salary>20000 and salary<30000,"Mid-senior","junior"))
as Grade
from employee;



