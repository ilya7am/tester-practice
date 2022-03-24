--Show employees with their salary
select employee_name, monthly_salary 
from employee_salary 
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id;

--Show employees with salary less than 2000
select employee_name, monthly_salary 
from employee_salary 
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;

--Show all salaries not payed for
select monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id
where employee_salary.salary_id is null;

--Show all salaries both less 200 and not payed for
select monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id
where employee_salary.salary_id is null and salary.monthly_salary < 2000;

--Show all employees with no salary
select employee_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
where employee_salary.salary_id is null;

--Show all employees with their titles
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id; 

--Show only names of Java developers
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Java%';

--Show only names of Python developers
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Python%';

--Show only names of QA engineers
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

--Show  names of manual QA engineers
select employee_name, role_name
from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on employees.id = roles_employee.employee_id
where roles.role_name like '%manual%';

--Show  names of automatic QA engineers
select employee_name, role_name
from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on employees.id = roles_employee.employee_id
where roles.role_name like '%automation%';

--Show names and salaries of Juniors
select employee_name, role_name, monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%junior%';

--Show names and salaries of Middles
select employee_name, role_name, monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Middle%';

--Show names and salaries of Seniors
select employee_name, role_name, monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Senior%';

--Show salaries of Java developers
select monthly_salary, role_name
from employee_salary
join salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Java%';

--Show salaries of Python developers
select monthly_salary, role_name
from employee_salary
join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Python%';

--Show the ames and salaries of Junior Python devs
select employee_name, role_name, monthly_salary 
from employee_salary
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Junior Python%';


--Show the ames and salaries of Middle JavaScript devs
select employee_name, role_name, monthly_salary 
from employee_salary
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like 'Middle JavaScript%';

--Show the ames and salaries of Senior Java devs
select employee_name, role_name, monthly_salary 
from employee_salary
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%enior Java%';

--Show the salaries of Junior QA engineers
select role_name, monthly_salary
from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where roles.role_name like 'Junior%QA%';

--Show the average salary of all Juniors 
select avg(monthly_salary) as 'Average salary'
from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%Junior%';

--Show the total salary of JS devs
select sum(monthly_salary) as 'Total salary'
from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%JavaScript%';

--Show the minimal salary of QA engineers
select min(monthly_salary) as 'Minimal salary'
from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%QA%';

--Show the maximal salary of QA engineers
select max(monthly_salary) as `Maximal salary`
from roles_employee
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where roles.role_name like '%QA%';

--Show the number of QA engineers
select count(employee_name) as 'Number of QA'
from roles
join roles_employee on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like '%QA%';

--Show the number of Middles
select count(employee_name) as 'Middle specialists amount'
from roles
join roles_employee on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like '%Middle%';

--Show the number of developers
select count(employee_name) as 'Amount of devs'
from roles
join roles_employee on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like '%developer%';

--Show the salary fund
select sum(monthly_salary) as 'Salary fund of devs'
from roles
join roles_employee on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like '%developer%';

--Show employees, their roles and wages
select employee_name, role_name, monthly_salary
from roles_employee
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
order by monthly_salary;

--Show employees, their roles and wages between 1700 and 2300
select employee_name, role_name, monthly_salary
from roles_employee
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
where salary.monthly_salary between 1700 and 2300
order by monthly_salary;

--Show employees, their roles and wages less than 2300
select employee_name, role_name, monthly_salary
from roles_employee
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
where salary.monthly_salary < 2300
order by monthly_salary;

--Show employees, their roles and wages equal to 1100, 1500 and 2000
select employee_name, role_name, monthly_salary
from roles_employee
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
where salary.monthly_salary in (1100,1500,2000)
order by monthly_salary;

