-- Question 1
CREATE VIEW emp_salary AS
SELECT 
E.emp_no, 
E.last_name, 
E.first_name, 
E.sex, 
S.salary

FROM Employees AS E
LEFT JOIN Salaries AS S
ON E.emp_no = S.emp_no;

SELECT * FROM emp_salary;

-- Question 2
CREATE VIEW emp_1986 AS
SELECT
first_name,
last_name,
hire_date

FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT * FROM emp_1986;

-- Question 3
CREATE VIEW manager AS
SELECT
M.dept_no,
D.dept_name,
M.Emp_no,
E.last_name,
E.first_name

FROM Dept_Manager AS M
LEFT JOIN Departments AS D
ON M.dept_no = D.dept_no
LEFT JOIN Employees AS E
ON M.emp_no = E.emp_no;

SELECT * FROM manager;

-- Question 4
CREATE VIEW employee_dept AS
SELECT
DE.emp_no,
E.last_name,
E.first_name,
D.dept_name

FROM Dept_Emp AS DE
LEFT JOIN Departments AS D
ON DE.dept_no = D.dept_no
LEFT JOIN Employees AS E
ON DE.emp_no = E.emp_no;

SELECT * FROM employee_dept;

-- Question 5
CREATE VIEW hercules_b AS
SELECT
first_name,
last_name,
sex

FROM Employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

SELECT * FROM hercules_b;

-- Question 6
CREATE VIEW sales AS
SELECT
DE.emp_no,
E.last_name,
E.first_name,
D.dept_name

FROM Dept_Emp AS DE
LEFT JOIN Departments AS D
ON DE.dept_no = D.dept_no
LEFT JOIN Employees AS E
ON DE.emp_no = E.emp_no
WHERE D.dept_name = 'Sales';

SELECT * FROM sales;

-- Question 7
CREATE VIEW sales_dev AS
SELECT
DE.emp_no,
E.last_name,
E.first_name,
D.dept_name

FROM Dept_Emp AS DE
LEFT JOIN Departments AS D
ON DE.dept_no = D.dept_no
LEFT JOIN Employees AS E
ON DE.emp_no = E.emp_no
WHERE D.dept_name IN ('Sales', 'Development');

SELECT * FROM sales_dev;

-- Question 8
CREATE VIEW last_names AS
SELECT
last_name,
COUNT(emp_no) AS frequency
FROM Employees
GROUP BY last_name
ORDER BY frequency DESC;

SELECT * FROM last_names;
