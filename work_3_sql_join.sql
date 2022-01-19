--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary 
from employees join employee_salary
on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id;

--2. Вывести всех работников у которых ЗП меньше 2000
select employee_name, monthly_salary 
from employees join employee_salary
on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. 
select employee_name, monthly_salary 
from employee_salary
left join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id
where employees.employee_name is null;

--4.  Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. 
select employee_name, monthly_salary 
from employee_salary
left join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id
where employees.employee_name is null and monthly_salary < 2000 ;

--5. Найти всех работников кому не начислена ЗП.
select employee_name, monthly_salary
from employees 
left join employee_salary 
on employees.id = employee_salary.employee_id
left join salary 
on salary.id = employee_salary.salary_id
where monthly_salary is null;

--6. Вывести всех работников с названиями их должности
select employee_name, role_name
from employees 
join roles_employee on employees.id = employee_id
join roles on role_id = roles.id;

--7. Вывести имена и должность только Java разработчиков
select employee_name, role_name
from employees 
join roles_employee on employees.id = employee_id
join roles on role_id = roles.id
where role_name like '%Java developer%';

--8. Вывести имена и должность только Python разработчиков
select employee_name, role_name
from employees 
join roles_employee on employees.id = employee_id
join roles on role_id = roles.id
where role_name like '%Python%';

--9. Вывести имена и должность всех QA инженеров.
select employee_name, role_name
from employees 
join roles_employee on employees.id = employee_id
join roles on role_id = roles.id
where role_name like '%QA%';

--10. Вывести имена и должность ручных QA инженеров.
select employee_name, role_name
from employees 
join roles_employee on employees.id = employee_id
join roles on role_id = roles.id
where role_name like '%Manual QA%';

--11. Вывести имена и должность автоматизаторов QA
select employee_name, role_name
from employees 
join roles_employee on employees.id = employee_id
join roles on role_id = roles.id
where role_name like '%Automation QA%';

--12. Вывести имена и зарплаты Junior специалистов
select employee_name, monthly_salary
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where role_name like '%Jun%';

--13. Вывести имена и зарплаты Middle специалистов
select employee_name, monthly_salary
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where role_name like '%Midd%';

--14. Вывести имена и зарплаты Senior специалистов
select employee_name, monthly_salary
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where role_name like '%Seni%';

--15. Вывести зарплаты Java разработчиков
select  monthly_salary
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where role_name like '%Java develope%';

--16. Вывести зарплаты Python разработчиков
select  monthly_salary
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where role_name like '%Python%';

--17. Вывести имена и зарплаты Junior Python разработчиков
select employee_name, monthly_salary
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where role_name like '%Junior Python%';

--18. Вывести имена и зарплаты Middle JS разработчиков
select employee_name, monthly_salary
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where role_name like '%Middle JavaScript%';

--19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name, monthly_salary
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where role_name like '%Senior Java%';

--20. Вывести зарплаты Junior QA инженеров
select  monthly_salary
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where role_name like '%Junior%QA%' ;

--21. Вывести среднюю зарплату всех Junior специалистов
SELECT AVG(monthly_salary)
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where role_name like '%Junior%';

--22. Вывести сумму зарплат JS разработчиков
select  SUM (monthly_salary)
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where role_name like '%JavaScript%';

--23. Вывести минимальную ЗП QA инженеров
select MIN (monthly_salary)
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where role_name like '%Junior%QA%' ;

--24. Вывести максимальную ЗП QA инженеров
select MAX (monthly_salary)
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where role_name like '%Junior%QA%';

--25. Вывести количество QA инженеров
select COUNT(role_name)
from employees 
join roles_employee on employees.id = employee_id
join roles on role_id = roles.id
where role_name like '%QA%';

--26. Вывести количество Middle специалистов
select COUNT(role_name)
from employees 
join roles_employee on employees.id = employee_id
join roles on role_id = roles.id
where role_name like '%Midd%';

--27. Вывести количество разработчиков
select COUNT(role_name)
from employees 
join roles_employee on employees.id = employee_id
join roles on role_id = roles.id
where role_name like '%develope%';

--28.  Вывести фонд (сумму) зарплаты разработчиков
select  SUM (monthly_salary)
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where role_name like '%develope%';

--29.  Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, monthly_salary, role_name
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
order by monthly_salary;

--30.  Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, monthly_salary, role_name
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where monthly_salary between 1700 and 2300
order by monthly_salary;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, monthly_salary, role_name
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where monthly_salary < 2300
order by monthly_salary;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, monthly_salary, role_name
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id
join salary 
on salary.id = employee_salary.salary_id
join roles_employee 
on employees.id = roles_employee.employee_id
join roles 
on roles.id = roles_employee.role_id
where monthly_salary in (1000, 1500,2000)
order by monthly_salary;