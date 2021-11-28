--1. Создать таблицу employees
create table employees (
id serial primary key,
employee_name varchar(50) not null);

--2. Наполнить таблицу employees 70 строками.
insert into employees (employee_name)
values ('Kate'),('Mary'),('Lusy'),('Poul'),
('Nelly'),
('Изнанкин Евгений'),
('Romshtin'),
('жорик'),
('Лена Голуб'),
('Джефф'),
('Mr.Ilyasov'),
('Аракчеев Никита'),
('Айдар'),
('Лапоухов Александр'),
('korotushak96'),
('Nikita_Nikita'),
('Tatsiana_Kulaha'),
('Viktoryia Sikirytskaya'),
('Ленинг Алексей'),
('Miroslav'),
('olimpwulf'),
('SeregaRomanich'),
('Алексей Ткачев'),
('Inga Vasylenko'),
('Olga_Varona'),
('SVETLANA'),
('Kasinski Dmitriy'),
('Михаил'),
('Анастасия'),
('Максим Аксенов'),
('Fiaskou_Aliaksandr'),
('Svetlana Sukhoivan'),
('Valeria Shirokova'),
('Kalipsou'),
('Yaroslav Kozakov'),
('Светлана Б'),
('Екатерина Кузьмич'),
('Юлия Лымарева'),
('Алеся Дедовец'),
('Бойко Андрей'), 
('Evgeniya Paleeva'),
('Tim Dambrowski'),
('Ivan_Nik'),
('Андрусенко Захар'), 
('Вадим Тараненко'),
('Marina_Zharova'),
('la_mula'),
('Elena Kernoga'),
('Сократова Екатерина'),
('Варшавская Людмила'),
('Трапезникова Елена'),
('Denis Knotko'),
('Anastasia'),
('Ekaterina Sharonina'),
('Яна Литорина'),
('Artem'),
('Kristina Tsurko'),
('Михаил'),
('Елизавета Короткова'),
('Элеонора Армизонова'),
('Omurbek Rysbaev'),
('Oleksii Kralin'),
('Alisa Shevchenko'), 
('Mildred Hill'),
('Rebecca Baldwin'),
('Alma Fuller'),
('Robin Fisher'),
('Karen Wong'),
('Jane Hale'),
('Elizabeth Sullivan');

--3. Создать таблицу salary
create table salary (
id serial primary key,
monthly_salary int not null);

--4. Наполнить таблицу salary 15 строками
insert into salary (monthly_salary)
values (1000), (1100), (1200),
(1300), (1400), (1500), (1600),
(1700), (1800), (1900), (2000),
(2100), (2200), (2300), (2400);

--5. Создать таблицу employee_salary
create table employee_salary (
id serial primary key,
employee_id int not null,
salary_id int not null);

--6. Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (employee_id, salary_id)
values (3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 7),
(12, 6),
(13, 5),
(14, 4),
(15, 4),
(16, 4),
(17, 3),
(18, 4),
(19, 5),
(20, 6),
(21, 7),
(22, 8),
(23, 10),
(24, 9),
(25, 10),
(26, 11),
(27, 13),
(28, 12),
(29, 13),
(30, 14),
(31, 15),
(32, 16),
(33, 17),
(72, 4),
(73, 3),
(74, 3),
(75, 4),
(76, 5),
(77, 6),
(78, 7),
(79, 8),
(80, 9),
(81, 10),
(82, 11);

--7. Создать таблицу roles
create table roles (
id serial primary key,
role_name int not null unique);

--8. Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30); 

--9. Наполнить таблицу roles 20 строками
insert into roles (role_name)
values  ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java develope'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript develope'),
('Senior JavaScript develope'),
('Junior Manual QA engineer'),
('Middle Manual QA enginee'),
('Senior Manual QA enginee'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA enginee'),
('Middle Automation QA enginee'),
('Senior Automation QA enginee');

--10. Создать таблицу roles_employee
create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)
	);

--11. Наполнить таблицу roles_employee 40 строками
insert into roles_employee (employee_id,role_id)
values (3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 7),
(12, 6),
(13, 5),
(14, 4),
(15, 4),
(16, 4),
(17, 3),
(18, 4),
(19, 5),
(20, 6),
(21, 7),
(22, 8),
(23, 10),
(24, 9),
(25, 10),
(26, 11),
(27, 13),
(28, 12),
(29, 13),
(30, 14),
(31, 15),
(32, 16),
(33, 17),
(71, 4),
(40, 13),
(39, 12),
(38, 13),
(37, 14),
(36, 15),
(35, 16),
(69, 17),
(70, 4);

