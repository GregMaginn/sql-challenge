--employee number, last name, first name, sex, and salary.

SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees
JOIN salaries ON
employees.emp_no = salaries.emp_no;

select * from dept_manager

--List first name, last name, and hire date for employees who were hired in 1986.
select employees.hire_date,
	employees.last_name,
	employees.first_name
From employees
where hire_date like '%1986'

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
select dept_manager.emp_no,
	dept_manager.dept_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
from employees
join dept_manager on
employees.emp_no = dept_manager.emp_no
join departments on
departments.dept_no = dept_manager.dept_no;
	

--List the department of each employee with the following information:
--employee number, last name, first name, and department name.
select employees.emp_no,
	employees.last_name,
	employees.first_name,
--	dept_emp.dept_no,
	departments.dept_name
from employees
join dept_emp on
employees.emp_no = dept_emp.emp_no
join departments on
dept_emp.dept_no = departments.dept_no

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select employees.first_name,
	employees.last_name,
	employees.sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select employees.first_name,
	employees.last_name,
	employees.emp_no,
	departments.dept_name
from employees
join dept_emp on
employees.emp_no = dept_emp.emp_no
join departments on
dept_emp.dept_no = departments.dept_no
where dept_emp.dept_no = 'd007'


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.first_name,
	employees.last_name,
	employees.emp_no,
	departments.dept_name
from employees
join dept_emp on
employees.emp_no = dept_emp.emp_no
join departments on
dept_emp.dept_no = departments.dept_no
where dept_emp.dept_no = 'd007' or dept_emp.dept_no = 'd005'

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(*) as totalCount
from employees
group by last_name
order by totalCount desc

