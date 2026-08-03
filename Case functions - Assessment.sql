--- Scenario 1 --- If

Select STD_ID, Course_Name,Marks, If(marks>=35, 'Pass', 'Fail') as Result from students;

--- Scenario 2 --- 

Select emp_name, Salary, If(salary>=60000, 'Eligible', 'Not Eligible') as Bonus_Eligibilty from employee;

--- Scenario 3 ---

Select Customer_name, Purchase_amount, 
case
when Purchase_amount>=10000 then 'Regular Customer'
Else 'Premium Customer' 
End as Customer_category 
from Customer;

--- Scenario 4 ---
Select Product_name, Stock_quantity, 
case
when Stock_quantity >= 1 then 'In stock'
Else 'Out of Stock' 
End as Stock_status
from Products;

--- Scenario 5 --- Nested If

Select Emp_Id, Emp_name, Performance_score, Department,
case
when Performance_score >= 90 then 'Excellent'
when Performance_score >= 75 then 'Good'
when Performance_score >= 50 then 'Average'
when Performance_score >= 40 then 'Ok'
Else 'Poor' 
End as Rating
from Employee_Performance;

--- Scenario 6 ---
Select Std_Id, Std_name, Course, Marks,
case
when Marks >= 95 then 'Merit'
when Marks >= 75 then 'Halfly - Paid tuition fees'
Else 'Not comes under scholarship category' 
End as Category
from Students;

--- Scenario 7 ---

Select Application_Id, Customer_name, Monthly_income, Loan_amount,
case
when Monthly_income >= 100000 then 'Approved with lower interest rate'
when Monthly_income >= 65000 then 'Approved with medium interest rate'
when Monthly_income >= 45000 then 'Approved with higher interest rate'
Else 'Not approved' 
End as Approval_status
from Loan_application;

--- Scenario 8 ---

Select Product_Id, Product_name, Category, Price,
case
when Price >= 1000 then 'Upto 30% offer'
when Price >= 500 then  'Upto 18% offer'
when Price >= 200 then  'Upto 8% offer'
Else 'Offer not applicable' 
End as Discount_category
from Product;

--- Scenario 9 ---

Select Patient_Id, Patient_name, Age, Health_score,
case
when Health_score >= 95 then 'Low'
when Health_score >= 75 then 'Low '
when Health_score >= 45 then 'Medium'
Else 'High' 
End as Priority_report
from Patient;

--- Scenario 10 ---

Select Emp_Id, Emp_name, Department, Salary,
case
when Salary >= 95000 then 'Senior level'
when Salary >= 65000 then 'Mid level '
when Salary >= 35000 then 'Junior level'
Else 'Fresher' 
End as Salary_band
from Employee;






