-- Drop tables if exists
DROP TABLE titles;
DROP TABLE departments;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE department_manager;

-- Create titles table
CREATE TABLE IF NOT EXISTS titles (
	title_id CHAR(10) NOT NUll PRIMARY KEY,
	title VARCHAR(50) NOT NULL);

-- Create departments table
CREATE TABLE IF NOT EXISTS departments (
	dept_no CHAR(10) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(50) NOT NULL);

-- Create employees table
CREATE TABLE IF NOT EXISTS employees (
	emp_no INTEGER NOT NULL,
	emp_title_id CHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex CHAR(5) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id));

--Create salaries table
CREATE TABLE IF NOT EXISTS salaries (
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no));

--Create department employee table
CREATE TABLE IF NOT EXISTS department_employee (
	emp_no INTEGER NOT NULL,
	dept_no CHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no));

--Create department_manager table
CREATE TABLE IF NOT EXISTS department_manager (
	dept_no CHAR(10) NOT NULL,
	emp_no INTEGER NOT NULL PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no));


-- Import and view tables
SELECT * FROM titles;
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM department_employee;
SELECT * FROM department_manager;