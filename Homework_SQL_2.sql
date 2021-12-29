--Создать таблицу employees
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);
--Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
values  ('Наталья Николаенко'),
		('Нина Тарасова'),
		('Олег Дацко'),
		('Елизавета Сопельник'),
		('Татьяна Гладченко'),
		('Наталья Швец'),
		('Наталья Захарчук'),
		('Владимир Боровик'),
		('Валентина Писаревская'),
		('Роман Захарченко'),
		('Светлана Седова'),
		('Игорь Лазоренко'),
		('Мария Чудная'),
		('Иван Царевич'),
		('Анатолий Праздничный'),
		('Виктор Сиднев'),
		('Евгений Клименко'),
		('Владимир Зеленый'),
		('Евгений Ружной'),
		('Екатерина Малышева'),
		('Ольга Протасова'),
		('Олег Высокий'),
		('Кирилл Градский'),
		('Дмитрий Троянов'),
		('Дмиторий Кривой'),
		('Глеб Жиглов'),
		('Володя Шарапов'),
		('Лилия Швец'),
		('Моника Белуччи'),
		('Татьяна Осипова'),
		('Юлия Зоркова'),
		('Юлиан Знойный'),
		('Ирина Билык'),
		('Ирина Солнцева'),
		('Май Солнцев'),
		('Мирон Потешный'),
		('Матвей Чудный'),
		('Изобелла Великолепная'),
		('Себастиан Штауб'),
		('Флориан Штауб'),
		('Филипп Штауб'),
		('Марина Штауб'),
		('Алла Пономаренко'),
		('Алексей Цибенко'),
		('Жанна Усенко'),
		('Марина Шуст'),
		('Игорь Грешной'),
		('Роман Быстров'),
		('Инга Жкрнева'),
		('Николай Иванов'),
		('Флора Косьянова'),
		('Альберт Шахнозвров'),
		('Андрей Николаенко'),
		('Татьяна Панферова'),
		('Аркадий Укупник'),
		('Мишель Ми'),
		('Михаил Острый'),
		('Юрий Гагарин'),
		('Борис Корчевников'),
		('Семен Слепаков'),
		('Валерий Меньшов'),
		('Настя Ушакова'),
		('Арам Егоров'),
		('Иван Чуб'),
		('Милана Хозцова'),
		('Ли Кун'),
		('Мао Ли'),
		('Джек Воробей'),
		('Фрося кузнецова'),
		('Никита Болотюк');
	
	select* from employees;
--Создать таблицу salary
create table salary(
	id serial primary key,
	monthly_salary int not null
);
--Наполнить таблицу salary 15 строками:
insert into salary (monthly_salary)
	values  (1000),
			(1100),
			(1200),
			(1300),
			(1400),
			(1500),
			(1600),
			(1700),
			(1800),
			(1900),
			(2000),
			(2100),
			(2200),
			(2300),
			(2400),
			(2500);

select * from salary;
--Создать таблицу employee_salary
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);
--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id)
	values  (1,16),
			(2,15),
			(3,14),
			(4,13),
			(5,12),
			(6,12),
			(7,12),
			(8,11),
			(9,11),
			(10,11),
			(11,16),
			(12,16),
			(13,16),
			(14,16),
			(15,15),
			(16,10),
			(17,10),
			(18,10),
			(19,9),
			(20,9),
			(21,9),
			(22,8),
			(23,8),
			(24,8),
			(25,7),
			(26,7),
			(27,7),
			(28,7),
			(29,6),
			(30,6),
			(101,6),
			(102,1),
			(103,1),
			(104,1),
			(105,1),
			(106,1),
			(107,1),
			(108,1),
			(109,1),
			(110,1);
		
select * from employee_salary;
--Удалить таблицу
--drop table employee_salary;
--Создать таблицу roles
create table roles (
	id serial primary key,
	role_name int not null unique
);

--Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(30) using role_name :: varchar(30);
	
--Наполнить таблицу roles 20 строками:
insert into roles (role_name)
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	
select * from roles;
--Создать таблицу roles_employee
create table roles_employee (
	id serial primary key,
	employee_id int not null unique, 
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

select * from roles_employee;
--Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (employee_id, role_id)
values  (1,20),
		(2,19),
		(3,18),
		(4,17),
		(5,17),
		(6,17),
		(7,16),
		(8,16),
		(9,15),
		(10,15),
		(11,14),
		(12,14),
		(13,13),
		(14,12),
		(15,12),
		(16,12),
		(17,11),
		(18,11),
		(19,10),
		(20,10),
		(21,10),
		(22,10),
		(23,10),
		(24,10),
		(25,10),
		(26,10),
		(27,10),
		(28,10),
		(29,10),
		(30,10),
		(31,9),
		(32,9),
		(33,8),
		(34,7),
		(35,6),
		(36,5),
		(37,4),
		(38,3),
		(39,2),
		(40,1);

		
		
		
