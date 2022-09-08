# sql-challenge

This challenge has been divided into three parts:

Data Modeling

The CSVs that was provided was inspected and  an ERD of the tables were sketched out uisng http://www.quickdatabasediagrams.com.

Data Engineering

the provided information was used to create a table schema for each of the six CSV files. Data types, primary keys, foreign keys, and other constraints were specified.

A composite key was created which takes two primary keys to uniquely identify a row.

Tables were then created in the correct order to handle foreign keys.

CSV files were imported into the corresponding SQL table.

Data Analysis

Details of each employee: employee number, last name, first name, sex, and salary were listed.

First name, last name, and hire date for employees who were hired in 1986 were also listed.


Manager of each department with their department number, department name, the manager's employee number, last name, first name were queried and displayed.


Department of each employee with their employee number, last name, first name, and department name were also queried and listed.

First name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B." were listed.


Employees in the Sales department, including their employee number, last name, first name, and department name were queried and listed.


Employees in the Sales and Development departments, including their employee number, last name, first name, and department name were listed.


Lastly, the frequency count of employee last names (i.e. the employees that share each last name) were listed in descending order.
