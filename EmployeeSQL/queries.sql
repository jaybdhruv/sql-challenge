-- Query 1: Generate list of all employees with employee no, first name, last name, sex and salary
SELECT e.emp_no AS "Employee No.", 
e.first_name AS "First Name", 
e.last_name AS "Last Name", 
e.sex, 
s.salary 
FROM employees AS e
INNER JOIN salaries AS s
ON s.emp_no = e.emp_no
ORDER BY "Employee No.";

-- Query 2: Generate list of employees who were hired in 1986 with first name, last name and hire date
SELECT first_name AS "First Name", 
last_name AS "Last Name", 
hire_date AS "Hire Date"
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986
ORDER BY "Hire Date"; 

-- Query 3: Generate list of manager for each department
-- with Department No, Department Name First Name, Employee No, Last Name
CREATE VIEW manager_data AS
SELECT e.emp_no, e.first_name, e.last_name, dm.dept_no 
FROM employees AS e
RIGHT JOIN department_manager AS dm
ON dm.emp_no = e.emp_no;

SELECT departments.dept_name AS "Department",
manager_data.dept_no AS "Department No",
manager_data.first_name AS "First Name",
manager_data.last_name AS "Last Name",
manager_data.emp_no AS "Employee No"
FROM manager_data
INNER JOIN departments
ON manager_data.dept_no = departments.dept_no;
--GROUP BY "Department", "Department No";





