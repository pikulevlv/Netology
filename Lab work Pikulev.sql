#Лабораторная работа

#Ответы:

#1 Вывести список названий департаментов и количество главных врачей в каждом из этих департаментов
     dep_name     | count 
------------------+-------
 Cardiology       |     2
 Gastroenterology |     1
 Hematology       |     1
 Neurology        |     2
 Oncology         |     1
 Therapy          |     2
(6 rows)

#2 Вывести список департамент id в которых работают 3 и более сотрудника

 departament_id 
----------------
              3
              4
              2
              1
(4 rows)

#3 Вывести список департамент id с максимальным количеством публикаций

 departament_id 
----------------
              3
              5
(2 rows)


#4 Вывести список имен сотрудников и департаментов с минимальным количеством в своем департаментe

 empl_name |  dep_name  
-----------+------------
 Sascha    | Hematology
 Ben       | Hematology
 Jessy     | Oncology
 Ann       | Oncology
(4 rows)

#5 Вывести список названий департаментов и среднее количество публикаций для тех департаментов, в которых
работает более одного главного врача

  dep_name  |         avg         
------------+---------------------
 Cardiology | 10.7500000000000000
 Neurology  | 11.0000000000000000
 Therapy    |  3.5000000000000000
(3 rows)

#Ход решения:
CREATE TABLE Departament
(
  id      integer  PRIMARY KEY ,
  name    varchar(50)  NOT NULL  
);

CREATE TABLE Employee
(
  id  integer            PRIMARY KEY ,
  departament_id integer REFERENCES Departament(id) ,
  chief_doc_id integer ,
  name         varchar(50) ,
  num_public   integer  
);

INSERT INTO Departament(id, name) VALUES('1', 'Therapy');
INSERT INTO Departament(id, name)
VALUES('2', 'Neurology');
INSERT INTO Departament(id, name)
VALUES('3', 'Cardiology');
INSERT INTO Departament(id, name)
VALUES('4', 'Gastroenterology');
INSERT INTO Departament(id, name)
VALUES('5', 'Hematology');
INSERT INTO Departament(id, name)
VALUES('6', 'Oncology');

INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public) VALUES('1', '1', '1', 'Kate', 4);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('2', '1', '1', 'Lidia', 2);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('3', '1', '1', 'Alexey', 1);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('4', '1', '2', 'Pier', 7);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('5', '1', '2', 'Aurel', 6);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('6', '1', '2', 'Klaudia', 1);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('7', '2', '3', 'Klaus', 12);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('8', '2', '3', 'Maria', 11);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('9', '2', '4', 'Kate', 10);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('10', '3', '5', 'Peter', 8);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('11', '3', '5', 'Sergey', 9);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('12', '3', '6', 'Olga', 12);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('13', '3', '6', 'Maria', 14);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('14', '4', '7', 'Irina', 2);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('15', '4', '7', 'Grit', 10);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('16', '4', '7', 'Vanessa', 16);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('17', '5', '8', 'Sascha', 21);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('18', '5', '8', 'Ben', 22);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('19', '6', '9', 'Jessy', 19);
INSERT INTO Employee(id, departament_id, chief_doc_id, name, num_public)
VALUES('20', '6', '9', 'Ann', 18);


#задания
#1 Вывести список названий департаментов и количество главных врачей в каждом из этих департаментов
WITH table_0 AS 
(SELECT Departament.name AS dep_name, num_public, chief_doc_id FROM 
Employee JOIN Departament ON Employee.departament_id = Departament.id) 
SELECT dep_name, COUNT(DISTINCT chief_doc_id)
FROM table_0  
GROUP BY dep_name ;

#2 Вывести список департамент id в которых работаю 3 и более сотрудника

SELECT departament_id 
FROM Employee 
GROUP BY departament_id 
HAVING COUNT(name) >= 3;

#3 Вывести список департамент id с максимальным количеством публикаций

WITH table_2 AS 
(SELECT departament_id, SUM(num_public) AS sum_pub
FROM Employee 
GROUP BY  departament_id) 
		SELECT departament_id
		FROM table_2 
		WHERE sum_pub = (
			WITH table_5 AS 
				(SELECT departament_id, SUM(num_public) AS sum_pub
				FROM Employee 
				GROUP BY  departament_id) 
			SELECT MAX(sum_pub)
			FROM table_5 );


#4 Вывести список имен сотрудников и департаментов с минимальным количеством в своем департаментe
SELECT empl_name, dep_name
FROM (SELECT Employee.name AS empl_name, Departament.name AS dep_name, departament_id FROM 
Employee JOIN Departament ON Employee.departament_id = Departament.id) AS t1 
WHERE departament_id IN (
SELECT departament_id FROM Employee 
Group BY departament_id 
ORDER BY COUNT(name) 
LIMIT 2);

#5 Вывести список названий департаментов и среднее количество публикаций для тех департаментов, в которых
работает более одного главного врача

WITH table_1 AS 
(SELECT Departament.name AS dep_name, num_public, chief_doc_id FROM 
Employee JOIN Departament ON Employee.departament_id = Departament.id) 
SELECT dep_name, AVG(num_public)
FROM table_1  
GROUP BY dep_name 
HAVING COUNT(DISTINCT chief_doc_id)>1;