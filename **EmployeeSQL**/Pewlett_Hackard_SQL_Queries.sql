-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees AS e
FULL JOIN salaries as s
ON e.emp_no=s.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name AS "First Name", last_name AS "Last Name", TO_DATE(hire_date, '%M/%D/YYYY') AS "Hire Date"
FROM employees
WHERE (TO_DATE(hire_date, '%M/%D/YYYY') >= TO_DATE('01/01/1986','%M/%D/YYYY')
 AND TO_DATE(hire_date, '%M/%D/YYYY') <= TO_DATE('12/31/1986', '%M/%D/YYYY') );

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT d.dept_no AS " Department Number", d.dept_name AS "Department Name", e.emp_no AS "Employee Number", e.first_name AS "First Name" , e.last_name AS "Last Name"
FROM employees as e
INNER JOIN dept_manager as dm
ON e.emp_no=dm.emp_no
INNER JOIN departments as d
on dm.dept_no=d.dept_no;


--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "First Name", d.dept_name AS "Department Name"
FROM employees AS e
LEFT JOIN dept_emp as de
ON e.emp_no=de.emp_no
LEFT JOIN departments as d
ON de.dept_no=d.dept_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name AS "First Name", last_name AS "Last Name", sex AS "Sex"
FROM employees
WHERE (first_name = 'Hercules' AND last_name LIKE 'B%');

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "First Name", d.dept_name AS "Department Name"
FROM employees as e
LEFT JOIN dept_emp as de
ON e.emp_no=de.emp_no
LEFT JOIN departments as d
on de.dept_no=d.dept_no
WHERE d.dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "First Name", d.dept_name AS "Department Name"
FROM employees as e
LEFT JOIN dept_emp as de
ON e.emp_no=de.emp_no
LEFT JOIN departments as d
on de.dept_no=d.dept_no
WHERE (d.dept_name = 'Sales' OR d.dept_name = 'Development');



--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name AS "Last Name", COUNT(last_name) AS "Count of Last Names"
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;







