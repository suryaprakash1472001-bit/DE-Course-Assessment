--- Scenario 1

Create table de_course.Emp_details(
EMP_ID INT,
EMP_Name varchar(50),
Department varchar(30),
Salary Int);

Insert into Emp_details(EMP_ID, EMP_Name, Department, Salary)
values 
(101, 'John', 'IT', 45000),
(102, 'Mary', 'HR', 35000),
(103, 'David', 'Finance', 55000),
(104, 'Sam', 'IT', 40000),
(105, 'Priya', 'HR', 38000);

select * from de_course.Emp_details;


--- Scenario 2

Create table de_course.Student_details(
STD_ID INT,
Student_Name varchar(50),
Course varchar(30));

Insert into Student_details(STD_ID, Student_Name, Course)
values 
(1, 'Rahul', 'SQL'),
(2, 'Priya', 'Python'),
(3, 'Arun', 'Power BI'),
(4, 'Sneha', 'Java'),
(5, 'Karthik', 'SQL');

alter table student_details
Add Email varchar(50);

Select * from de_course.Student_details;

--- Scenario 3

Create table de_course.Product_details(
Product_ID INT,
Product_Name varchar(50),
Price Int);

Insert into Product_details(Product_ID, Product_Name, Price)
values 
(101, 'Laptop', 60000),
(102, 'Mouse', 800),
(103, 'Keyboard', 1200),
(104, 'Monitor', 15000),
(105, 'Printer', 9000);

Update Product_details
Set Price = 1500
where Product_id = 103;

Select * from de_course.Product_details;

--- Scenario 4

Create table de_course.Patient_details(
Patient_ID INT,
Patient_Name varchar(50),
Disease varchar(50));

Insert into Patient_details(Patient_ID, Patient_Name, Disease)
values 
(1, 'Ramesh', 'Fever'),
(2, 'Suresh', 'Cold'),
(3, 'Anitha', 'Diabetes'),
(4, 'Meena', 'Asthma'),
(5, 'Kumar', 'Typhoid');

Delete from Patient_details
where Patient_ID = 2;

Select * from de_course.Patient_details;

--- Scenario 5

Create table de_course.Event_registration(
STD_ID INT,
Student_Name varchar(50),
Event_name varchar(50));

Insert into Event_registration(STD_ID, Student_Name, Event_name)
values 
(1, 'Ramesh', 'Dance'),
(2, 'Priya', 'Singing'),
(3, 'Anitha', 'Drawing'),
(4, 'Meena', 'Quiz'),
(5, 'Kumar', 'Drama');

Select * from de_course.Event_registration;

Truncate table Event_registration;

--- Scenario 6

RENAME TABLE emp_details TO Staff_details;

--- Scenario 7

Create table de_course.Account_details(
Account_no INT,
Customer_Name varchar(50),
Balance Int);

Insert into Account_details(Account_no, Customer_Name, Balance)
values 
(1001, 'John', 50000),
(1002, 'Mary', 30000),
(1003, 'David', 70000),
(1004, 'Sam', 45000),
(1005, 'Priya', 60000);

Update Account_details
Set Balance = 35000
where Account_no = 1002;
Commit;

Select * from de_course.Account_details;

--- Scenario 8

Create table de_course.Book_details(
Book_ID INT,
Book_name varchar(50),
Author varchar(50));

Insert into Book_details(Book_ID, Book_name, Author)
values 
(1, 'SQL Basics', 'James'),
(2, 'Python Guide', 'Robert'),
(3, 'Java Programming', 'John'),
(4, 'Power BI', 'David'),
(5, 'Data Science', 'Peter');

Start transaction;

DELETE FROM Book_details
WHERE Book_ID = 3;

Select * from de_course.Book_details;

ROLLBACK;
Select * from de_course.Book_details;



--- Scenario 9

Grant Select
on de_course.staff_details
to 'root'@'localhost';


--- Scenario 10 

Create table de_course.Customer_details2026(
Customer_ID INT,
Customer_Name varchar(50),
City varchar(50));

Insert into Customer_details2026(Customer_ID, Customer_Name, City)
values 
(1, 'Ramesh', 'Chennai'),
(2, 'Priya', 'Bangalore'),
(3, 'Anitha', 'Hyderabad'),
(4, 'Meena', 'Coimbatore'),
(5, 'Kumar', 'Madurai');

Select * from de_course.Customer_details2026;

Drop table Customer_details2026;
