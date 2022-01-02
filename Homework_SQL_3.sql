select * from employees;
select * from employee_salary;
select * from roles;
select * from roles_employee;
select * from salary;


--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select E.employee_name, S.monthly_salary 
from employees E
join employee_salary ES on E.id = ES.employee_id
join salary S on S.id = ES.salary_id;

--2. Вывести всех работников у которых ЗП меньше 2000.
select  E.employee_name, S.monthly_salary 
from employees E
join employee_salary ES on E.id = ES.employee_id
join salary S on S.id = ES.salary_id
where S.monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
--зп которая никому не назначена в принципе:
select S.monthly_salary 
from salary S
left join employee_salary ES on ES.salary_id = S.id
--left join employees E on E.id =ES.employee_id 
where ES.id is null
order by S.monthly_salary;
--или зп, которая никому не назначена в принципе + неизвестные сотрудники
select S.monthly_salary, ES.employee_id ,E.employee_name 
from salary S
left join employee_salary ES on ES.salary_id = S.id
left join employees E on E.id =ES.employee_id 
where E.employee_name is null
order by S.monthly_salary;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
----зп которая никому не назначена в принципе:
select S.monthly_salary 
from salary S
left join employee_salary ES on ES.salary_id = S.id
where ES.id is null and S.monthly_salary <2000
order by S.monthly_salary;
--или зп, которая никому не назначена в принципе + неизвестные сотрудники
select S.monthly_salary, ES.employee_id ,E.employee_name 
from salary S
left join employee_salary ES on ES.salary_id = S.id
left join employees E on E.id =ES.employee_id 
where E.employee_name is null and S.monthly_salary <2000
order by S.monthly_salary;

--5. Найти всех работников кому не начислена ЗП.
select E.employee_name 
from employees E
left join employee_salary ES on ES.employee_id =E.id 
where ES.employee_id is null;

--6. Вывести всех работников с названиями их должности.
select E.employee_name , R.role_name 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
order by E.id ;

--7. Вывести имена и должность только Java разработчиков.
select E.employee_name , R.role_name 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
where role_name like '%Java developer%';

-- 8. Вывести имена и должность только Python разработчиков.
select E.employee_name , R.role_name 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
where role_name like '%Python developer%';

--9. Вывести имена и должность всех QA инженеров.
select E.employee_name , R.role_name 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
where role_name like '%QA engineer%';

--10. Вывести имена и должность ручных QA инженеров.
select E.employee_name , R.role_name 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
where role_name like '%Manual QA engineer%';

--11. Вывести имена и должность автоматизаторов QA
select E.employee_name , R.role_name 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
where role_name like '%Automation QA engineer%';

--12. Вывести имена и зарплаты Junior специалистов
select E.employee_name , R.role_name ,S.monthly_salary 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where role_name like '%Junior%';

--13. Вывести имена и зарплаты Middle специалистов
select E.employee_name , R.role_name ,S.monthly_salary 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where role_name like '%Middle%';


--14. Вывести имена и зарплаты Senior специалистов
select E.employee_name , R.role_name ,S.monthly_salary 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where role_name like '%Senior%';


--15. Вывести зарплаты Java разработчиков
select E.employee_name , R.role_name ,S.monthly_salary 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where role_name like '%Java developer%';

--16. Вывести зарплаты Python разработчиков
select E.employee_name , R.role_name ,S.monthly_salary 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where role_name like '%Python developer%';

--17. Вывести имена и зарплаты Junior Python разработчиков
select E.employee_name , R.role_name ,S.monthly_salary 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where role_name like '%Junior Python developer%';

--18. Вывести имена и зарплаты Middle JS разработчиков
select E.employee_name , R.role_name ,S.monthly_salary 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where role_name like '%Middle JavaScript developer%';

--19. Вывести имена и зарплаты Senior Java разработчиков
select E.employee_name , R.role_name ,S.monthly_salary 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where role_name like '%Senior Java developer%';

--20. Вывести зарплаты Junior QA инженеров
select E.employee_name , R.role_name ,S.monthly_salary 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where role_name like '%Junior%QA engineer%';

--21. Вывести среднюю зарплату всех Junior специалистов
select avg(S.monthly_salary) 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where role_name like '%Junior%';

--22. Вывести сумму зарплат JS разработчиков
select sum(S.monthly_salary)
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where role_name like '%JavaScript developer%';

--23. Вывести минимальную ЗП QA инженеров
select min(S.monthly_salary)
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where role_name like '%QA engineer%';

--24. Вывести максимальную ЗП QA инженеров
select max(S.monthly_salary)
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where role_name like '%QA engineer%';

--25. Вывести количество QA инженеров
select count(E.id)
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where role_name like '%QA engineer%';

--26. Вывести количество Middle специалистов.
select count(E.id)
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where role_name like '%Middle%';

--27. Вывести количество разработчиков
select count(E.id)
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where role_name like '%developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
 select sum(S.monthly_salary)
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where role_name like '%developer%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select E.employee_name , R.role_name , S.monthly_salary 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
order by S.monthly_salary asc;

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select E.employee_name , R.role_name , S.monthly_salary 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where S.monthly_salary between 1700 and 2300
order by S.monthly_salary asc;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select E.employee_name , R.role_name , S.monthly_salary 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where S.monthly_salary <2300
order by S.monthly_salary asc;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select E.employee_name , R.role_name , S.monthly_salary 
from employees E
left join roles_employee RE on RE.employee_id = E.id 
left join roles R on R.id = RE.role_id
left join employee_salary ES on ES.employee_id =E.id
left join salary S on S.id =ES.salary_id 
where S.monthly_salary in (1100, 1500, 2000)
order by S.monthly_salary asc;
