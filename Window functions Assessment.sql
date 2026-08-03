--- Scenario 1 ---
use de_course;

Select Emp_id, Emp_name, department, Salary,
row_number() 
over(
order by Salary desc) as Sequence_number
from employee;

--- Scenario 2 ---

Select emp_name, department, salary,
rank() over(
Partition by department order by salary desc) as rank_list
from employee;

--- Scenario 3 ---

Select emp_name, emp_id, department,
row_number() over(
partition by department order by emp_id asc) as row_no
from employee;

--- Scenario 4 ---

Select emp_name, salary, department,
dense_rank() over(
partition by department order by salary desc) as salary_rank
from employee;

--- Scenario 5 ---

Select Emp_name, Branch, Department, Salary,
rank() over(
partition by Branch, Department order by Salary desc) as Branch_rank
from employee;

--- Scenario 6 ---

Select Emp_name, Salary, 
row_number() over(
order by salary desc, emp_name asc) as Salary_row
from employee;

--- Scenario 7 ---

Select Emp_name, department, experience, Salary, 
rank() over( partition by department
order by experience desc, salary desc) as Experience_ranking
from employee;

--- Scenario 8 ---

Select Emp_name, Country, Branch, Salary, experience,
row_number() over( partition by Country, Branch
order by Salary desc, experience desc, Emp_name Asc) as emp_row
from employee;

--- Scenario 9 ---

Select Product_name, Category, Price, 
rank() over( partition by Category
order by Salary desc) as Category_rank
from employee;

--- Scenario 10 ---

SELECT Customer_ID,
       Order_ID,
       Order_Status,
       Order_Date,
       Order_Amount,
       ROW_NUMBER() OVER (
           PARTITION BY Customer_ID, Order_Status
           ORDER BY Order_Date DESC,
                    Order_Amount DESC
       ) AS Sequence_Number
FROM Orders;











