CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    salary DECIMAL(10, 2),
    department_id INT
);

INSERT INTO employees (employee_id, employee_name, salary, department_id) VALUES
(1, 'Ravi', 60000, 1),
(2, 'Aisha', 50000, 1),
(3, 'Rajesh', 80000, 2),
(4, 'Sita', 70000, 2),
(5, 'Vikram', 55000, 1);

SELECT * FROM EMPLOYEES

/*
Write a SQL query to find the difference between each employee’s salary and the average salary of their department.
*/

WITH Dept_Avg_Salary AS (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
)

SELECT e.employee_id, e.employee_name, e.salary, d.avg_salary, 
       (e.salary - d.avg_salary) AS salary_difference
FROM employees e
JOIN Dept_Avg_Salary d ON e.department_id = d.department_id
;

