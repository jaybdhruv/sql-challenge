# SQL Database Readme

#### Data Modeling

Inspected the CSVs and sketched out an ERD of the tables. I used this tool: [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com) to sketch my ERD diagram.

#### Data Engineering

* Using the information I created a table schema for each of the six CSV files specifying the data types, primary keys, foreign keys, and other constraints.

* Imported each CSV file (from the Data folder) into the corresponding SQL table.

#### Data Analysis

Once the complete database is ready, I did following queries:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

#### Import SQL database into Pandas

1. Import the SQL database into Pandas by using SQLAlchemy


2. Created a histogram to visualize the most common salary ranges for employees.

3. Created a bar chart of average salary by title.

I have saved my graphs in graphs folder while I have saved my ERD schema and ERD diagram in a separate folder.