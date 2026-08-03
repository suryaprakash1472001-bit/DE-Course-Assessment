--- Scenario 1 ---
select * from employee;

WITH DeptAvg AS
(
    SELECT Department,
           AVG(Salary) AS Dept_Avg
    FROM Employee
    GROUP BY Department
),
CompanyAvg AS
(
    SELECT AVG(Salary) AS Company_Avg
    FROM Employee
)
SELECT
    e.Emp_ID,
    e.Emp_Name,
    e.Department,
    e.Salary,
    d.Dept_Avg AS Department_Avg_Salary,
    c.Company_Avg AS Company_Avg_Salary
FROM Employee e
JOIN DeptAvg d
    ON e.Department = d.Department
CROSS JOIN CompanyAvg c
WHERE e.Salary > d.Dept_Avg
  AND d.Dept_Avg > c.Company_Avg
ORDER BY e.Department ASC,
         e.Salary DESC;
         
         
--- Scenario 2 ---

WITH CustomerSummary AS
(
    SELECT
        Customer_ID,
        COUNT(Order_ID) AS Total_Orders,
        SUM(Order_Amount) AS Total_Purchase,
        MAX(Order_Date) AS Latest_Order_Date
    FROM Orders
    GROUP BY Customer_ID
),

AveragePurchase AS
(
    SELECT AVG(Total_Purchase) AS Avg_Purchase
    FROM CustomerSummary
)

SELECT
    c.Customer_ID,
    c.Customer_Name,
    cs.Total_Orders,
    cs.Total_Purchase,
    cs.Latest_Order_Date
FROM Customer c
JOIN CustomerSummary cs
    ON c.Customer_ID = cs.Customer_ID
CROSS JOIN AveragePurchase ap
WHERE cs.Total_Purchase > ap.Avg_Purchase
  AND cs.Total_Orders > 3
  AND YEAR(cs.Latest_Order_Date) = YEAR(CURDATE())
ORDER BY
    cs.Total_Purchase DESC,
    cs.Total_Orders DESC;