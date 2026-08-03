--- Scenario 1 ---

Select employee_id, employee_name, department, salary
from employee
where salary > (select avg(salary) from employee)
order by salary desc;

--- Scenario 2 ---

Select emp_name, 
department, 
salary, 
experience 
from employee e
where salary = 
(
select max(salary) 
from employee 
where department = e.department
)
order by salary desc;

--- Scenario 3 ---

select c.customer_name,
c.city,
o.order_id,
o.order_amount
from customer c
inner join orders o
on c.customer_id = o.customer_id
where o.order_amount =
(select max(order_amount) 
from orders)
order by c.customer_name asc;

--- scenario 4 ---

select emp_name,
department,
salary,
age
from employee
where department in
(select department
from employee
group by department
having count(*) > 3
)
order by department asc, salary desc;

--- Scenario 5 ---

Select p.product_id, p.product_name, p.category, p.price
from product_details p
left join order_items o
on p.product_id = o.product_id
where o.order_id is null
order by product_name asc;

--- scenario 6 ---

select employee_name, department, experience, salary
from employee
where (department, experience) in
(select department, salary from employee where department = 'finance')
order by experience desc; 

--- scenario 7 ---

select employee_name, manager_id, department, salary
from employee
where manager_id =
(select emp_id from employee 
where salary =
(
select max(salary) 
from employee)
)
order by emp_name asc;
