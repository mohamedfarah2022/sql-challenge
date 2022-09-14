CREATE TABLE Departments(
dept_no VARCHAR(4), 
dept_name VARCHAR(20),
PRIMARY KEY (dept_no)
);

CREATE TABLE Titles(
title_id VARCHAR(5),
title VARCHAR(30),
PRIMARY KEY (title_id)
);

CREATE TABLE Employees(
emp_no INTEGER,
emp_title_id VARCHAR(5),
FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id),
birth_date DATE,
first_name VARCHAR(30),
last_name VARCHAR(30),
sex VARCHAR(1),
hire_date DATE,
PRIMARY KEY (emp_no)
);

CREATE TABLE Dept_Emp(
emp_no INTEGER,
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
dept_no VARCHAR(4),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE Dept_Manager(
dept_no VARCHAR(4),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
emp_no INTEGER,
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE Salaries(
emp_no INTEGER,
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
salary INTEGER
);