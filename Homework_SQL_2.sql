-- Ñîçäàòü òàáëèöó employees
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);
--Íàïîëíèòü òàáëèöó employee 70 ñòðîêàìè.
insert into employees (employee_name)
values  ('Íàòàëüÿ Íèêîëàåíêî'),
		('Íèíà Òàðàñîâà'),
		('Îëåã Äàöêî'),
		('Åëèçàâåòà Ñîïåëüíèê'),
		('Òàòüÿíà Ãëàä÷åíêî'),
		('Íàòàëüÿ Øâåö'),
		('Íàòàëüÿ Çàõàð÷óê'),
		('Âëàäèìèð Áîðîâèê'),
		('Âàëåíòèíà Ïèñàðåâñêàÿ'),
		('Ðîìàí Çàõàð÷åíêî'),
		('Ñâåòëàíà Ñåäîâà'),
		('Èãîðü Ëàçîðåíêî'),
		('Ìàðèÿ ×óäíàÿ'),
		('Èâàí Öàðåâè÷'),
		('Àíàòîëèé Ïðàçäíè÷íûé'),
		('Âèêòîð Ñèäíåâ'),
		('Åâãåíèé Êëèìåíêî'),
		('Âëàäèìèð Çåëåíûé'),
		('Åâãåíèé Ðóæíîé'),
		('Åêàòåðèíà Ìàëûøåâà'),
		('Îëüãà Ïðîòàñîâà'),
		('Îëåã Âûñîêèé'),
		('Êèðèëë Ãðàäñêèé'),
		('Äìèòðèé Òðîÿíîâ'),
		('Äìèòîðèé Êðèâîé'),
		('Ãëåá Æèãëîâ'),
		('Âîëîäÿ Øàðàïîâ'),
		('Ëèëèÿ Øâåö'),
		('Ìîíèêà Áåëó÷÷è'),
		('Òàòüÿíà Îñèïîâà'),
		('Þëèÿ Çîðêîâà'),
		('Þëèàí Çíîéíûé'),
		('Èðèíà Áèëûê'),
		('Èðèíà Ñîëíöåâà'),
		('Ìàé Ñîëíöåâ'),
		('Ìèðîí Ïîòåøíûé'),
		('Ìàòâåé ×óäíûé'),
		('Èçîáåëëà Âåëèêîëåïíàÿ'),
		('Ñåáàñòèàí Øòàóá'),
		('Ôëîðèàí Øòàóá'),
		('Ôèëèïï Øòàóá'),
		('Ìàðèíà Øòàóá'),
		('Àëëà Ïîíîìàðåíêî'),
		('Àëåêñåé Öèáåíêî'),
		('Æàííà Óñåíêî'),
		('Ìàðèíà Øóñò'),
		('Èãîðü Ãðåøíîé'),
		('Ðîìàí Áûñòðîâ'),
		('Èíãà Æêðíåâà'),
		('Íèêîëàé Èâàíîâ'),
		('Ôëîðà Êîñüÿíîâà'),
		('Àëüáåðò Øàõíîçâðîâ'),
		('Àíäðåé Íèêîëàåíêî'),
		('Òàòüÿíà Ïàíôåðîâà'),
		('Àðêàäèé Óêóïíèê'),
		('Ìèøåëü Ìè'),
		('Ìèõàèë Îñòðûé'),
		('Þðèé Ãàãàðèí'),
		('Áîðèñ Êîð÷åâíèêîâ'),
		('Ñåìåí Ñëåïàêîâ'),
		('Âàëåðèé Ìåíüøîâ'),
		('Íàñòÿ Óøàêîâà'),
		('Àðàì Åãîðîâ'),
		('Èâàí ×óá'),
		('Ìèëàíà Õîçöîâà'),
		('Ëè Êóí'),
		('Ìàî Ëè'),
		('Äæåê Âîðîáåé'),
		('Ôðîñÿ êóçíåöîâà'),
		('Íèêèòà Áîëîòþê');
	
	select* from employees;
--Ñîçäàòü òàáëèöó salary
create table salary(
	id serial primary key,
	monthly_salary int not null
);
--Íàïîëíèòü òàáëèöó salary 15 ñòðîêàìè:
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
--Ñîçäàòü òàáëèöó employee_salary
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);
--Íàïîëíèòü òàáëèöó employee_salary 40 ñòðîêàìè:
-- â 10 ñòðîê èç 40 âñòàâèòü íåñóùåñòâóþùèå employee_id

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
--Óäàëèòü òàáëèöó
--drop table employee_salary;
--Ñîçäàòü òàáëèöó roles
create table roles (
	id serial primary key,
	role_name int not null unique
);

--Ïîìåíÿòü òèï ñòîëáà role_name ñ int íà varchar(30)
alter table roles 
alter column role_name type varchar(30) using role_name :: varchar(30);
	
--Íàïîëíèòü òàáëèöó roles 20 ñòðîêàìè:
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
--Ñîçäàòü òàáëèöó roles_employee
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
--Íàïîëíèòü òàáëèöó roles_employee 40 ñòðîêàìè:
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

		
		
		
