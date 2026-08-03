--- Scenario 1 -- SUM()
Use de_course; 

Select sum(salary) as salary_expenses
from employee;

--- Scenario 2 -- Avg()

Select avg(marks) as Avg_Mark
from Students;

--- Scenario 3 --- Max(), Min()

Select max(price) as Most_Expensive, min(price) as Lease_Expensive
from product_details;

--- Scenario 4 --- Count()
Create table de_course.Customer(
STD_ID INT,
STD_NAME varchar(30),
Course_Name varchar(30));

Select count(*) as Total_registration
from customer;

--- Scenario 5 --- Count(), Max(), Avg(), Sum(), Min()

Select Count(*) as Total_employees, sum(salary) as Total_salary, avg(salary) as Avg_salary, Max(salary) as Highest_salary, min(salary) as Lowest_salary
from employee;