Select employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary 
from employees
Inner Join salaries on employees.emp_no = salaries.emp_no;

Select first_name,
	last_name,
	hire_date
from employees
where hire_date like '%1986';

Select dept_manager.dept_no,
	dept_manager.emp_no,
	departments.dept_name,
	employees.last_name,
	employees.first_name
from dept_manager
Inner Join departments on dept_manager.dept_no = departments.dept_no
Inner Join employees on dept_manager.emp_no = employees.emp_no
where employees.emp_title_id = 'm0001';

Select employees.emp_no,
	employees.first_name,
	employees.last_name,
	dept_emp.dept_no,
	departments.dept_name
from employees
Inner Join dept_emp on employees.emp_no = dept_emp.emp_no
Inner Join departments on dept_emp.dept_no = departments.dept_no;

Select first_name,
	last_name,
	sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

Select employees.emp_no,
	employees.first_name,
	employees.last_name
from employees
Inner Join dept_emp on employees.emp_no = dept_emp.emp_no
where dept_emp.dept_no = 'd007';

Select employees.emp_no,
	employees.first_name,
	employees.last_name,
	departments.dept_name
from employees
Inner Join dept_emp on employees.emp_no = dept_emp.emp_no
Inner Join departments on dept_emp.dept_no = departments.dept_no
where dept_emp.dept_no = 'd007' or dept_emp.dept_no = 'd005';

Select distinct(last_name), count(last_name) as counts
from employees
group by last_name
order by counts DESC;