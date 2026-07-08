create database roshan1;
use roshan1;
create table department(
dept_id varchar(20) primary key,
dept_name varchar(50),
budget int,
building varchar(30)
);

create table teacher (
teacher_id varchar(20) primary key,
teacher_name varchar(50),
foreign key(dept_id) REFERENCES department(dept_id),
dept_id varchar(20),
salary int,
hiredate date
);
 create table subject(
 sub_id varchar(10) primary key,
 sub_name varchar(50),
 dept_id varchar(20),
 foreign key(dept_id) REFERENCES department(dept_id),
 teacher_id varchar(20),
 foreign key(teacher_id) REFERENCES teacher(teacher_id),
 credit int
 );

create table student(
stud_id varchar(20) primary key,
stud_name varchar(50),
dept_id varchar(20),
foreign key(dept_id) REFERENCES department(dept_id),
gpa decimal,
enr_year int 
);

create table classroom(
class_id varchar(20) primary key,
room_name varchar(50),
sub_id varchar(20),
foreign key(sub_id) references subject(sub_id),
capacity int,
has_projector boolean
);


select * from classroom;
select * from subject;
select * from student;
select * from department;
select * from teacher;


INSERT INTO Department (dept_id, dept_name, budget, Building) VALUES
('D1', 'Computer Science', 500000, 'Turing Hall'),
('D2', 'Mathematics', 250000, 'Gauss Tower'),
('D3', 'Physics', 300000, 'Einstein Lab'),
('D4', 'History', 120000, 'Lincoln Wing');

INSERT INTO Teacher (teacher_id, teacher_name, dept_ID, salary, hiredate) VALUES
('T101', 'Dr. Alan Turing', 'D1', 95000, '2018-03-12'),
('T102', 'Prof. Grace Hopper', 'D1', 88000, '2020-06-01'),
('T103', 'Dr. Carl Gauss', 'D2', 82000, '2015-09-15'),
('T104', 'Marie Curie', 'D3', 91000, '2019-01-20'),
('T105', 'Herodotus', 'D4', 60000, '2022-08-11');


INSERT INTO subject (Sub_ID,Sub_Name,Dept_ID,Teacher_ID, Credit) VALUES
('CS101', 'Introduction to Database', 'D1', 'T101', 4),
('CS102', 'Artificial Intelligence', 'D1', 'T102', 4),
('MA201', 'Linear Algebra', 'D2', 'T103', 3),
('PH301', 'Quantum Mechanics', 'D3', 'T104', 4),
('HI101', 'Ancient Civilizations', 'D4', 'T105', 2);

create database roshan;

create table department(
dept_id varchar(20) primary key,
dept_name varchar(20),
budget int,
building varchar(30)
);

create table teacher (
teacher_id varchar(20) primary key,
teacher_name varchar(20),
foreign key(dept_id) REFERENCES department(dept_id),
dept_id varchar(20),
salary int,
hiredate date
);
 create table subject(
 sub_id varchar(10) primary key,
 sub_name varchar(20),
 dept_id varchar(20),
 foreign key(dept_id) REFERENCES department(dept_id),
 teacher_id varchar(20),
 foreign key(teacher_id) REFERENCES teacher(teacher_id),
 credit int
 );

create table student(
stud_id varchar(20) primary key,
stud_name varchar(20),
dept_id varchar(20),
foreign key(dept_id) REFERENCES department(dept_id),
gpa decimal,
enr_year int 
);

create table classroom(
class_id varchar(20) primary key,
room_name varchar(20),
sub_id varchar(20),
foreign key(sub_id) references subject(sub_id),
capacity int,
has_projector boolean
);


select * from classroom;
select * from subject;
select * from student;
select * from department;
select * from teacher;


INSERT INTO Department (dept_id, dept_name, budget, Building) VALUES
('D1', 'Computer Science', 500000, 'Turing Hall'),
('D2', 'Mathematics', 250000, 'Gauss Tower'),
('D3', 'Physics', 300000, 'Einstein Lab'),
('D4', 'History', 120000, 'Lincoln Wing');

INSERT INTO Teacher (teacher_id, teacher_name, dept_ID, salary, hiredate) VALUES
('T101', 'Dr. Alan Turing', 'D1', 95000, '2018-03-12'),
('T102', 'Prof. Grace Hopper', 'D1', 88000, '2020-06-01'),
('T103', 'Dr. Carl Gauss', 'D2', 82000, '2015-09-15'),
('T104', 'Marie Curie', 'D3', 91000, '2019-01-20'),
('T105', 'Herodotus', 'D4', 60000, '2022-08-11');


INSERT INTO subject (Sub_ID,Sub_Name,Dept_ID,Teacher_ID, Credit) VALUES
('CS101', 'Introduction to Database', 'D1', 'T101', 4),
('CS102', 'Artificial Intelligence', 'D1', 'T102', 4),
('MA201', 'Linear Algebra', 'D2', 'T103', 3),
('PH301', 'Quantum Mechanics', 'D3', 'T104', 4),
('HI101', 'Ancient Civilizations', 'D4', 'T105', 2);

INSERT INTO Student (Stud_ID, Stud_Name, Dept_ID, GPA, Enr_Year)
VALUES
('S1', 'Alice Smith', 'D1', 3.85, 2024),
('S2', 'Bob Jones', 'D1', 2.90, 2025),
('S3', 'Charlie Brown', 'D2', 3.40, 2024),
('S4', 'David Miller', 'D3', 3.92, 2023),
('S5', 'Eva Green', 'D4', 3.15, 2025);

INSERT INTO Classroom (Class_ID, Room_name, Sub_ID, Capacity, Has_Projector)
VALUES
('C1', '101-A', 'CS101', 50, TRUE),
('C2', '102-B', 'CS102', 35, TRUE),
('C3', '201', 'MA201', 40, FALSE),
('C4', 'Lab-3', 'PH301', 25, TRUE),
('C5', '404', NULL, 60, FALSE);

#Inner Join 
select T1.teacher_id,
	T1.teacher_name,
	D1.dept_name
from
department D1 inner join teacher T1 on
D1.dept_id=T1.dept_id;

#Left join 
select 
	T1.class_id,
	T1.room_name,
	D1.sub_name
from
classroom T1 left join subject D1 on
T1.sub_id=D1.sub_id;

#Right Join 
select 
    D1.sub_name,
	T1.class_id,
	T1.room_name
from
classroom T1 Right join subject D1 on
T1.sub_id=D1.sub_id;


select *
from classroom
left join  subject
ON classroom.sub_id = subject.sub_id

UNION

select *
from classroom
right join  subject
ON classroom.sub_id = subject.sub_id;