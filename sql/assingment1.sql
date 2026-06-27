alter table student drop column percentage;
select * from student;
select Roll_no,
		Name,
        concat(Round(Eng+Sci+math)*0.3,2,"%") as percentage ,
        division
from student 
where Round((Eng+Sci+math)*0.3,2) Between 60 and 70;
#print only c divison percentage between 60 and 70
SELECT Roll_no,
       Name,
       Division,
       ROUND(((Eng + Sci + Math)*750.333), 2) AS Percentage
FROM Student
WHERE Division = 'C'
  AND ROUND(((Eng + Sci + Math)*750.333), 2) BETWEEN 60 AND 70;
 select Round(751.3333,-1);
 select Round(751.33,-2);
 select Round(751.3333,-3);
 select name ,count(name) from student
 select Round(751.3333,2);


select Roll_no,
		Name,
        concat(Round(Eng+Sci+math)*0.3,2,"%") as percentage ,
        division
from student 
where Round((Eng+Sci+math)*0.3,2) <70;

select Roll_no,
		Name,
        concat(Round(Eng+Sci+math)*0.3,2,"%") as percentage ,
        division
from student 
where Round((Eng+Sci+math)*0.3,2) 60 or 70;

#print aaron and bela 
SELECT
    roll_no,
    name,
    CONCAT(ROUND((Eng + Sci + Math) / 3, 2), '%') AS percentage,
    division
FROM student
WHERE name IN ('aaron', 'bella','xyz');



#per centage greater than 70
select Roll_no,
		Name,
        concat(Round(Eng+Sci+math)*0.3,2,"%") as percentage ,
        division
from student 
where Round((Eng+Sci+math)*0.3,2) >70;