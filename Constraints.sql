Create Table Students(
Emp_ID Int auto_increment Primary Key,
EmpName Varchar (30) Not null,
Email Varchar (50) unique,
Salary Int check (Salary > 50000),
Age Int);

Select emp_name,
upper(emp_name) as Upper_name,
Length(emp_name) as Name_length
from employee;

Select
Salary,
Round(Salary), --- round up as it is, if decimal point is below .5
CEIL (Salary), --- Round up upward
Floor (Salary), --- Round up downward
MOD (Salary,1000) as Salary_Reminder  --- Value of reminder from division
From employee;