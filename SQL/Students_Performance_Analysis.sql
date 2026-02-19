-- Students_Performance_Analysis_SQL --

Create Database Student_performance_Analysis;
use Student_performance_Analysis;
select * from students_data;

-- Alter  Table
Alter Table students_data
modify GradeClass int,
modify Sports int,
modify ParentalSupport int,
modify Music int;

-- modify table name 
RENAME TABLE students_data TO Raw_data;

-- Create some Relational Table

-- Students Table
Create Table Students(
StudentID int primary key,
Age int,
Gender int,
Ethnicity int,
ParentalEducation INT
);

-- Academic Perfomance table
CREATE TABLE Academic_Performance(
StudentID int,
StudyTimeWeekly float,
Absences int,
GPA float,
GradeClass int,
foreign key (StudentID) references Students(StudentID)
);

-- Activities Support Table
Create Table Activities_Support(
StudentID int,
Tutoring int,
ParentalSupport int,
Extracurricular int,
Sports int,
Music int,
Volunteering int,
foreign key (StudentID) references Students(StudentID)
);

---
-- Insert Data 

INSERT INTO Students (StudentID, Age, Gender, Ethnicity, ParentalEducation)
SELECT StudentID, Age, Gender, Ethnicity, ParentalEducation
FROM Raw_Data;

Insert into Academic_Performance(StudentID, StudyTimeWeekly, Absences, GPA, GradeClass)
Select StudentID, StudyTimeWeekly, Absences, GPA, GradeClass
FROM Raw_Data;

Insert into Activities_Support(StudentID, Tutoring, ParentalSupport, Extracurricular, Sports, Music, 
Volunteering)
select StudentID, Tutoring, ParentalSupport, Extracurricular, Sports, Music, Volunteering 
From Raw_data;

-- Display the Tables 
Select * from Academic_Performance;
Select * from students;
Select * from activities_support;
--------------------------------------------------------------------------------------------------------------------------------------
--  Understand Data Distribution
--------------------------------------------------------------------------------------------------------------------------------------
-- GradeClass Distribution --
SELECT GradeClass, COUNT(StudentID) AS Total_Students,
ROUND(COUNT(StudentID) * 100.0 / (SELECT COUNT(*) FROM academic_performance),2) AS Percentage_Distribution
FROM academic_performance
GROUP BY GradeClass
ORDER BY GradeClass;
--------------------------------------------------------------------------------------------------------------------------------------
-- Average GPA of Entire Dataset --
select round(avg(gpa),2) as Avg_GPA
from academic_performance;
--------------------------------------------------------------------------------------------------------------------------------------
--  Identify Key Performance Drivers
--------------------------------------------------------------------------------------------------------------------------------------
-- Study Time Impact on Performance -- 
Select GradeClass, Round(Avg(Studytimeweekly),2) as Avg_Study_Time
from academic_performance
group by GradeClass
order by Avg_Study_time desc ;
--------------------------------------------------------------------------------------------------------------------------------------
-- Absence Impact on Performance -- 
Select GradeClass, Round(Avg(absences),2) as Avg_Absences
from academic_performance
GROUP BY GradeClass
ORDER BY Avg_Absences;
--------------------------------------------------------------------------------------------------------------------------------------
-- Parental Support Impact --
select a.ParentalSupport, Round(Avg(ap.GPA),2) as AVG_GPA
from activities_support a
join Academic_performance ap
on a.StudentID = ap.StudentID
GROUP BY a.ParentalSupport
ORDER BY a.ParentalSupport desc;
--------------------------------------------------------------------------------------------------------------------------------------
-- Tutoring Effectiveness --
Select a.Tutoring, Round(Avg(ap.GPA),2) as Avg_GPA
from activities_support a 
join academic_performance ap
on a.StudentID = ap.StudentID
Group By a.Tutoring
Order By a.Tutoring desc;
--------------------------------------------------------------------------------------------------------------------------------------
-- Extracurricular Effectiveness -- 
Select a.Extracurricular, Round(Avg(ap.GPA),2) as Avg_GPA
from activities_support a 
join academic_performance ap
on a.StudentID = ap.StudentID
Group By a.Extracurricular
Order By a.Extracurricular desc;
--------------------------------------------------------------------------------------------------------------------------------------
-- Sports impact -- 
Select Round(Avg(ap.gpa),2) as Avg_GPA, sa.Sports
FROM activities_support sa
join academic_performance ap
on sa.StudentID = ap.StudentID
Group by sa.Sports
Order by sa.Sports;
--------------------------------------------------------------------------------------------------------------------------------------
--  Demographic Analysis 
--------------------------------------------------------------------------------------------------------------------------------------
-- Gender Performance Analysis --

-- Gender-wise Academic Performance by Grade Category
select   ap.GradeClass, s.gender , count(s.StudentID) as NO_of_Students, Round(Avg(ap.Gpa),2) as Avg_GPA
from students s join academic_performance ap
on s.StudentID = ap.StudentID
group by ap.GradeClass, s.gender
Order by ap.GradeClass ;

--  Genderwise Average GPA
Select s.Gender,Round(Avg(ap.GPA),2) as Avg_GPA
from Students s join Academic_performance ap
on s.StudentID = ap.StudentID
group by s.Gender;
--------------------------------------------------------------------------------------------------------------------------------------
-- Parental Education Impact--
Select s.ParentalEducation, Round(avg(ap.GPA),2) as AVG_GPA
from students s join academic_performance ap
on s.StudentID = ap.StudentID
group by s.ParentalEducation
order by s.ParentalEducation;
--------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------
-- Absences Distrubution

select 
   case
       when Absences < 8 Then 'Low'
	   when Absences between 8 and 16 Then 'Medium'
	   Else 'High'
End as Absence_Level,count(*) as Number_Students,
Round((count(*) * 100) / (select count(*) from academic_performance),2) as Percentage_Distrubution
from academic_performance
group by Absence_level;

--------------------------------------------------------------------------------------------------------------------------------------
-- High Risk Student Identification

Select StudentID, GPA, Absences
from academic_performance
where gpa < (select avg(gpa) from academic_performance) and Absences > (select avg(Absences) from academic_performance) ;
--------------------------------------------------------------------------------------------------------------------------------------
-- Performance Segmentation --
Select StudentID, GPA,
case
    when gpa > 3.5 then 'High Performer'
    when gpa between 2 and 3.5 then "Average Performer"
    Else "At Risk"
    End Performance_Category
from academic_performance;
----------------------------------------------------------------------------------------------------------------------------------------

-- Student Performance Segmentation Based on GPA Thresholds --
With Performance_Table as (
Select StudentID,
case
    when gpa > 3.5 then 'High Performer'
    when gpa between 2 and 3.5 then "Average Performer"
    Else "At Risk"
    End Performance_Category
from academic_performance )
Select Performance_Category, count(StudentID) as Number_of_Students,
Round((count(StudentID) * 100)/(Select count(*) from academic_performance),2) as Percentage_Distrubution
from Performance_Table
group by performance_category
order by Number_of_Students;
--------------------------------------------------------------------------------------------------------------------------------------



