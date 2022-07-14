-- SAM VUONG homework week 9  QUERIES



-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no;


-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986%';


-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no;


-- List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager dm
INNER JOIN employees e
ON dm.emp_no = e.emp_no
INNER JOIN departments d
on dm.dept_no = d.dept_no;


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT last_name, first_name, sex
FROM employees 
WHERE first_name = 'Hercules' and last_name LIKE 'B%';
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN employees e
ON de.emp_no = e.emp_no
INNER JOIN departments d
on de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN employees e
ON de.emp_no = e.emp_no
INNER JOIN departments d
on de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' or d.dept_name = 'Development';
-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, count(last_name) as "count_lastname"
FROM employees
GROUP BY last_name
ORDER BY count_lastname DESC;