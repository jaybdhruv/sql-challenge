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
SELECT d.dept_name AS "Department", 
dm.dept_no AS "Department No", 
e.emp_no AS "Employee No", 
e.first_name AS "First Name", 
e.last_name AS "Last Name"
FROM employees AS e
INNER JOIN department_manager AS dm
ON dm.emp_no = e.emp_no
INNER JOIN departments AS d
ON d.dept_no = dm.dept_no;

-- Query 4: Generate list of all employees with their Department Name, First Name, Last Name & Employee No 
SELECT d.dept_name AS "Department", 
e.emp_no AS "Employee No", 
e.first_name AS "First Name", 
e.last_name AS "Last Name"
FROM employees AS e
INNER JOIN department_employee AS de
ON de.emp_no = e.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no;

-- Query 5: List all employees with their first name, last name & sex
-- where first name is "Hercules" and last name starts with "B" 
SELECT first_name AS "First Name", 
last_name AS "Last Name", 
sex
FROM employees
WHERE first_name = 'Hercules' AND LEFT(last_name,1) = 'B'
ORDER BY "Last Name";

-- Query 6: List all employees in Sales Department 
-- with their employee no, last name, first name & department name

-- Create a View which is a merge table of employee no and department name
CREATE VIEW dept_name_employee AS
SELECT de.emp_no, d.dept_name
FROM department_employee AS de
INNER JOIN departments as d
ON de.dept_no = d.dept_no;

-- Join employee table with the dept_name_employee view to find all employees in Sales department
SELECT e.emp_no AS "Employee No", 
e.last_name AS "Last Name", 
e.first_name AS "First Name",
dne.dept_name AS "Department"
FROM employees AS e
INNER JOIN dept_name_employee AS dne
ON e.emp_no = dne.emp_no
WHERE dne.dept_name = 'Sales';

-- Query 7: List all employees in Sales & Development Department 
-- with their employee no, last name, first name & department name
-- Join employee table with the dept_name_employee view to find all employees in Sales & Development department 
SELECT e.emp_no AS "Employee No", 
e.last_name AS "Last Name", 
e.first_name AS "First Name",
dne.dept_name AS "Department"
FROM employees AS e
INNER JOIN dept_name_employee AS dne
ON e.emp_no = dne.emp_no
WHERE dne.dept_name = 'Sales' OR dne.dept_name = 'Development';

-- Query 8: 
















