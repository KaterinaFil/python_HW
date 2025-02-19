--1. ������� ������� employees
-- id. serial,  primary key,
- employee_name. Varchar(50), not null
CREATE TABLE employees(
	id serial PRIMARY KEY,
	employee_name varchar (50) NOT null
)

--2. ��������� ������� employee 70 ��������
INSERT INTO employees(employee_name)
VALUES 	('Edith Burgess'),
		('Mary Smith'),
		('Martin Wright'),
		('Thelma Peterson'),
		('Susan Neal'),
		('Robert Smith'),
		('Emma Martin'),
		('Alan Carter'),
		('Gilbert Moody'),
		('Dorothy Wilson'),
		('Christine Alvarez'),
		('Timothy Morrison'),
		('Gary Wheeler'),
		('Carl Allen'),
		('Catherine Kelly'),
		('James Smith'),
		('Marlene Jones'),
		('Rose Baker'),
		('Jennifer Tran'),
		('Hazel Howell'),
		('Mary Jones'),
		('Rafael Wolfe'),
		('Ricky Young'),
		('Alice Woods'),
		('Ronald Walters'),
		('Peter Adams'),
		('Robert Thomas'),
		('Deborah Salazar'),
		('William Richardson'),
		('Thomas Fields'),
		('Kimberly Burton'),
		('Rachel Adkins'),
		('Sonia Hayes'),
		('Jorge Aguilar'),
		('Johnny Obrien'),
		('Brenda Rice'),
		('Deborah Thomas'),
		('Andrew Hardy'),
		('Lee Wilson'),
		('Debra Stevenson'),
		('Daniel Perez'),
		('David Wallace'),
		('Nathaniel Gonzalez'),
		('Sean Sullivan'),
		('Kathy Hunter'),
		('Stephen Barnes'),
		('Janet Williams'),
		('Patricia Nelson'),
		('David Lowe'),
		('Frederick Manning'),
		('Denise Robinson'),
		('George Larson'),
		('Betty Ryan'),
		('Sharon Moore'),
		('Cynthia Moss'),
		('Angela Harris'),
		('Donald Brooks'),
		('Charlie Ortiz'),
		('James Hudson'),
		('Joshua Martin'),
		('Joseph Lopez'),
		('Mark Brown'),
		('Philip Campbell'),
		('Minnie Christensen'),
		('Phyllis Wheeler'),
		('Dennis Hughes'),
		('Adam Walters'),
		('Kathleen Allen'),
		('Edwin Collins'),
		('Robert Vasquez');
		
SELECT * FROM employees;

-- 3. ������� ������� salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

CREATE TABLE salary(
	id serial PRIMARY KEY,
	monthly_salary int NOT null
)

--4. ��������� ������� salary 15 ��������
INSERT INTO salary(monthly_salary)
VALUES (1000),
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
	
SELECT * FROM salary;

--5. ������� ������� employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

CREATE TABLE employee_salary(
	id serial PRIMARY KEY,
	employee_id int NOT NULL UNIQUE,
	salary_id int NOT NULL
)

SELECT * FROM employee_salary;

--6. ��������� ������� employee_salary 40 ��������:
-- � 10 ����� �� 40 �������� �������������� employee_id

INSERT INTO employee_salary(employee_id, salary_id)
VALUES (3, 7),
		(1, 4),
		(5, 9),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 7),
		(29, 14),
		(31, 16),
		(14, 7),
		(17, 10),
		(20, 11),
		(28, 1),
		(13, 9),
		(2, 2),
		(45, 3),
		(49, 8),
		(22, 5),
		(24, 14),
		(25, 12),
		(27, 3),
		(57, 8),
		(68, 10),
		(53, 2),
		(41, 9),
		(39, 13),
		(71, 1),
		(72, 2),
		(73, 3),
		(74, 4),
		(75, 5),
		(76, 6),
		(77, 7),
		(78, 8),
		(79, 9),
		(80, 10);

	
SELECT * FROM employee_salary;

--7. ������� ������� roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

CREATE TABLE roles(
	id serial PRIMARY KEY,
	role_name int  NOT NULL UNIQUE
)

--8. �������� ��� ������ role_name � int �� varchar(30)

ALTER TABLE roles ALTER COLUMN role_name TYPE varchar (30);

--9. ��������� ������� roles 20 ��������:

INSERT INTO roles (role_name)
VALUES ('Junior Python developer'),
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


SELECT * FROM roles;

--10. ������� ������� roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
-- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)


CREATE TABLE roles_employee(
	id serial PRIMARY KEY,
	employee_id int NOT NULL UNIQUE,
	role_id int NOT NULL,
	FOREIGN KEY (employee_id)
		REFERENCES employees(id),
	FOREIGN KEY (role_id)
		REFERENCES roles(id)
)

--11. ��������� ������� roles_employee 40 ��������:

INSERT INTO roles_employee(employee_id, role_id)
VALUES (1, 20),
		(2, 19),
		(3, 18),
		(4, 17),
		(5, 16),
		(6, 15),
		(7, 14),
		(8, 13),
		(9, 12),
		(10, 11),
		(11, 10),
		(12, 10),
		(13, 8),
		(14, 7),
		(15, 6),
		(16, 5),
		(17, 4),
		(18, 3),
		(19, 2),
		(20, 1),
		(21, 1),
		(22, 2),
		(23, 3),
		(24, 4),
		(25, 5),
		(26, 6),
		(27, 7),
		(28, 8),
		(29, 9),
		(30, 10),
		(31, 11),
		(32, 12),
		(33, 13),
		(34, 14),
		(35, 15),
		(36, 16),
		(37, 17),
		(38, 18),
		(39, 19),
		(40, 20);

SELECT * FROM roles_employee;

		