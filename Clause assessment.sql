--- Scenario 1 ---

Select Department, avg(salary) as Average_salary
from employee
Group by department
Having Average_salary> 60000
order by Average_salary desc
limit 3;

--- Scenrio 2 ---

Select Category, Sum(Sold_quantity) as total_quantity
from Sales
Group by Category
Having total_quantity > 100
Order by total_quantity Desc
Limit 5;

--- Scenario 3 ---

Select distinct Customer_name, city, Purchase_amount
from Customer
where Purchase_amount>= 25000
order by Customer_name asc;

--- Scenario 4 ---

Select count(Patient_name) as Total_patients, Department
from patient_details
group by department
having Count(patient_name) > 3
Order by total_patients desc;

--- Scenario 5 ---

Select * from employee
where age >=30 and salary >= 60000
order by salary desc
limit 5
