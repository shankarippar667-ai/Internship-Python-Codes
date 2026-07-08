CREATE TABLE employee (
    emp_id VARCHAR(10) PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    department VARCHAR(30)
);

INSERT INTO employee (emp_id, emp_name, salary, department)
VALUES
('E101', 'Amit', 55000, 'HR'),
('E102', 'Priya', 72000, 'IT'),
('E103', 'Rahul', 48000, 'Finance'),
('E104', 'Sneha', 90000, 'IT'),
('E105', 'Karan', 65000, 'HR'),
('E106', 'Neha', 80000, 'Finance'),
('E107', 'Arjun', 60000, 'IT'),
('E108', 'Pooja', 70000, 'HR'),
('E109', 'Vikram', 95000, 'Finance'),
('E110', 'Anjali', 75000, 'IT');

select * from employee;
select emp_id,
		emp_name,
        department,
        salary,
row_number() over(order by salary desc) as Salary_rank
from employee;

select emp_id,
		emp_name,
        department,
        salary,
rank() over(order by salary desc) as Salary_rank
from employee;


select emp_id,
		emp_name,
        department,
        salary,
dense_rank() over(order by salary desc) as Salary_rank
from employee;

update employee set salary=72000 where emp_id='E105';

#partition by
select emp_id,
		emp_name,
        department,
        salary,
dense_rank() over(partition by  department order by salary desc) as Salary_rank
from employee;

select emp_id,
		emp_name,
        department,
        salary,
sum(salary) over(partition by  department order by salary desc) as Salary_rank
from employee;

select emp_id,
		emp_name,
        department,
        salary,
min(salary) over(partition by  department order by salary ) as Salary_rank
from employee;

select emp_id,
		emp_name,
        department,
        salary,
max(salary) over(partition by  department order by salary ) as Salary_rank
from employee;

select emp_id,
		emp_name,
        department,
        salary,
avg(salary) over(partition by  department ) as Salary_rank,
salary-avg(salary) over(partition by  department )as differance 
from employee;

select emp_id,
		emp_name,
        department,
        salary,
first_value(salary) over(partition by  department order by salary ) as Salary_rank
from employee;

select emp_id,
		emp_name,
        department,
        salary,
last_value(salary) over(partition by  department order by salary ) as Salary_rank
from employee;