--- requesting each employee's: employee number, last name, first name, sex, and salary

SELECT employees.emp_no AS "Employees number", last_name, sex, salary
FROM employees, salary 
WHERE employees.emp_no = salary.emp_no ;

--- requesting the first name, last name, and hire date 
--- for employees who were hired in 1986
 
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date = TO_DATE('1986%', 'YYYY-MM-DD');

--- requesting each department manager's: department number, department name, 
--- the manager's employee number, last name, first name
 
SELECT dept_manager.dept_no AS "Department number", dept_name AS "Department name", dept_manager.emp_no AS "Managers' Emp. number", last_name, first_name
FROM dept_manager
INNER JOIN employees on dept_manager.emp_no = employees.emp_no
INNER JOIN departments on dept_manager.dept_no = departments.dept_no;

---- requesting the department of each employee with their employee number, 
---- last name, first name, and department name
 
SELECT dept_emp.emp_no AS "Employees number", last_name, first_name, dept_name
FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no;
 
 
---- requesting the first name, last name, and sex for employees whose first name 
---- is "Hercules" and last names begin with "B."
 
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

---- requesting the employees in the Sales department, including their employee number, 
---- last name, first name, and department name
 
 
SELECT dept_emp.emp_no AS "Employees number", employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales';


----- requesting the employees in the Sales and Development departments, including their 
----- employee number, last name, first name, and department name


SELECT dept_emp.emp_no AS "Employees number", last_name, first_name, dept_name AS "Department name"
FROM dept_emp
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_name IN ('Sales', 'Development');


---- requesting the frequency count of employee last names in descending order

SELECT employees.last_name, 
COUNT (employees.last_name) AS "Last Name Count" 
FROM employees 
GROUP BY employees.last_name 
ORDER BY "Last Name Count" DESC;