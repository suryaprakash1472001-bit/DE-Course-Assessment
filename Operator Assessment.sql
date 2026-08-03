--- Scenario 1 -- Addition

Select *, Salary + 5000 as Hiked_Salary from Employee;

--- Scenario 2 --- Greater than

Select * from employee 
where Department = 'Sales' and Salary > 45000;

--- Scenario 3 --- IN

Select * from Employee
Where Department in ('HR','IT');

--- Scenario 4 -- LIKE

Select * from employee 
where emp_name like 'A%';

Select * from employee 
where emp_name like '%n';

--- Scenario 5 --- Is Null

Select * from employee
where Department is null;

Select * from employee
where Department is not null;
