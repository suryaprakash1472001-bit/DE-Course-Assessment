--- Scenario 1 ---

SELECT e.Emp_ID,
       e.Emp_Name,
       d.Department_Name,
       e.Salary
FROM Employee e
INNER JOIN Department d
ON e.Department_ID = d.Department_ID
ORDER BY e.Salary DESC;

--- Scenario 2 ---

Select c.customer_Id, c.customer_name, c.city. o, order_Id
from customers c
left join Orders o
on c.customer_id = o.customer_id
where o.order_id is null
order by c.customer_name asc;

--- Scenario 3 ---

Select d.department_id, d.department_name, e.employee_id, e.employee_name
from employee e
right join department d
on e.department_id = d.department_id
where e.employee_id is null
order by d.department_name asc;

--- scenario 4 ---

select p.product_id, p.product_name, w.quantity
from product_master p
left join warehouse_stock w
on p.product_id = w.product_id

Union

select w.product_id, p.product_name, w.quantity
from Product_master p
right join warehouse_stock w
on p.product_id = w.product_id

order by product_id;

--- scenario 5 ---

Select e.emp_name as Employee_name,
m.emp_name as Manager_name
from employee e
left join employee m
on e.manager_id = m.emp_id
order by e.emp_name asc;


