DELIMITER //

CREATE PROCEDURE InsertEmployee
(
    IN p_Emp_ID INT,
    IN p_Emp_Name VARCHAR(100),
    IN p_Department VARCHAR(50),
    IN p_Salary DECIMAL(10,2)
)
BEGIN
    INSERT INTO Employee
    VALUES (p_Emp_ID, p_Emp_Name, p_Department, p_Salary);
END //

DELIMITER ;

CALL InsertEmployee(101, 'Surya', 'IT', 60000);
CALL InsertEmployee(102, 'Ravi', 'HR', 55000);

DELIMITER //

CREATE PROCEDURE GetEmployees()
BEGIN
    SELECT *
    FROM Employee;
END //

DELIMITER ;

CALL GetEmployees();

DELIMITER //

CREATE PROCEDURE GetEmployeeByID
(
    IN p_Emp_ID INT
)
BEGIN
    SELECT *
    FROM Employee
    WHERE Emp_ID = p_Emp_ID;
END //

DELIMITER ;

CALL GetEmployeeByID(101);

DELIMITER //

CREATE PROCEDURE UpdateEmployeeSalary
(
    IN p_Emp_ID INT,
    IN p_Salary DECIMAL(10,2)
)
BEGIN
    UPDATE Employee
    SET Salary = p_Salary
    WHERE Emp_ID = p_Emp_ID;
END //

DELIMITER ;

CALL UpdateEmployeeSalary(101,70000);

DELIMITER //

CREATE PROCEDURE DeleteEmployee
(
    IN p_Emp_ID INT
)
BEGIN
    DELETE
    FROM Employee
    WHERE Emp_ID = p_Emp_ID;
END //

DELIMITER ;

CALL DeleteEmployee(102);