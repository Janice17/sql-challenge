--List the employee number, last name, first name, sex, and salary of each employee.

SELECT s.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s
ON s.emp_no = e.emp_no
ORDER BY s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE 
		e.hire_date > '1985-12-31' AND 
		e.hire_date < '1987-01-01'
;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM dept_manager AS m
JOIN employees AS e
ON m.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = m.dept_no
;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
JOIN employees AS e
ON de.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
ORDER BY de.emp_no
;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE 
		e.first_name = 'Hercules' AND 
		e.last_name LIKE 'B%'
;

--List each employee in the Sales department, including their employee number, last name, and first name.

SELECT d.dept_name, de.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'
;

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT d.dept_name, de.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
ORDER BY de.emp_no
;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

SELECT e.last_name, COUNT (*)
FROM employees AS e
GROUP BY e.last_name
ORDER BY COUNT(*) DESC
;
