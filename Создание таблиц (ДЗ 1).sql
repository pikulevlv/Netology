#Домашнее задание
#Зайти на Кинопоиск, найти 5 любимых фильмов и сделать по ним табличку с данными.
# создаем таблицу filmes. Ограничение для текстовых атрибутов 30 или 50 символов, должно хватить. Как потом поменять, не знаю.
CREATE TABLE filmes (title VARCHAR (50) NOT NULL, id serial  UNIQUE NOT NULL PRIMARY KEY , country VARCHAR (30) NOT NULL, box_office serial  NOT NULL, release_year TIMESTAMP);
# наполняем данными
INSERT INTO filmes VALUES ('Она', 1001, 'США', 47351251, '2013-1-1'::timestamp);
INSERT INTO filmes VALUES ('Жизнь прекрасна', 1002, 'Италия', 229163264, '1997-1-1'::timestamp);
INSERT INTO filmes VALUES ('Кон-Тики', 1003, 'Норвегия', 22842887, '2012-1-1'::timestamp);
INSERT INTO filmes VALUES ('Список Шиндлера', 1004, 'США', 321265768, '1993-1-1'::timestamp);
INSERT INTO filmes VALUES ('Я - Сэм', 1005, 'США', 97818139, '2001-1-1'::timestamp);
# не очень понятно, как отразить год выпуска в виде "2017", а не "2001-01-01 00:00:00"
# в рамках ДЗ не нужно было устанавливать зависимости между id и film_id, например?
# посмотрим, что получилось
SELECT * FROM filmes; 

# создаем таблицу persons. 
CREATE TABLE persons (id serial UNIQUE NOT NULL PRIMARY KEY , fio VARCHAR (50));
# проверяем, что получилось
SELECT * FROM persons;
# наполняем данными
INSERT INTO persons VALUES (2001, 'Хоакин Феникс');
INSERT INTO persons VALUES (2002, 'Скарлетт Йоханссон');
INSERT INTO persons VALUES (2003, 'Эми Адамс');
INSERT INTO persons VALUES (2004, 'Роберто Бениньи');
INSERT INTO persons VALUES (2005, 'Николетта Браски');
INSERT INTO persons VALUES (2006, 'Пол Сверре Валхейм Хаген');
INSERT INTO persons VALUES (2007, 'Лиам Нисон');
INSERT INTO persons VALUES (2008, 'Стивен Спилберг');
INSERT INTO persons VALUES (2009, 'Шон Пенн');
# проверяем, что получилось
SELECT * FROM persons;


# создаем таблицу persons2content. 
CREATE TABLE persons2content (person_id serial UNIQUE NOT NULL PRIMARY KEY , film_id serial UNIQUE NOT NULL , person_type VARCHAR (50));
#как задать ограниченный набор возможных значений (домен) атрибута person_type (актер или режиссер)?
# проверяем, что получилось
SELECT * FROM persons2content;
# наполняем данными
INSERT INTO persons2content VALUES (2001, 1001 ,'Актер');
INSERT INTO persons2content VALUES (2002, 1002 ,'Актер');
INSERT INTO persons2content VALUES (2003, 1003 ,'Актер');
INSERT INTO persons2content VALUES (2004, 1004 ,'Режиссер');
INSERT INTO persons2content VALUES (2005, 1005 ,'Актер');
INSERT INTO persons2content VALUES (2006, 1006 ,'Актер');
INSERT INTO persons2content VALUES (2007, 1007 ,'Актер');
INSERT INTO persons2content VALUES (2008, 1008 ,'Режиссер');
INSERT INTO persons2content VALUES (2009, 1009 ,'Актер');
# проверяем, что получилось
SELECT * FROM persons2content;

#создадим таблицу со слайда 15.
CREATE TABLE oscar (film_name VARCHAR (50) NOT NULL PRIMARY KEY, producer VARCHAR (50) NOT NULL, oscar VARCHAR (50), IMDB serial);
SELECT * FROM oscar;
#как задать ограниченный набор возможных значений (домен) атрибута «oscar» (плюс или минус)?
#rfr придать двум атрибутам свойство PRIMARY KEY ? Я сделал это только для одного атрибута.
# Заполняем таблицу данными 
INSERT INTO oscar VALUES ('Энни Холл ', 'Вуди Аллен', '+', 8);
INSERT INTO oscar VALUES ('Быть Джоном Малковичем', 'Спайк Джонс', '+', 7);
INSERT INTO oscar VALUES ('Любовь и смерть', 'Вуди Аллен', '-', 8);
#посмотрим что получилось
SELECT * FROM oscar;

# создадим таблицу со слайда 16
CREATE TABLE country (film VARCHAR (50) NOT NULL PRIMARY KEY, Oscar VARCHAR (50) , Country VARCHAR (50));
# как задать названия атрибутов на кириллице?
# Заполняем таблицу данными 
INSERT INTO country VALUES ('Энни Холл ', '+', 'США');
INSERT INTO country VALUES ('Быть Джоном Малковичем', '+', 'США');
INSERT INTO country VALUES ('Любовь и смерть', '-', 'Россия');
#посмотрим что получилось
SELECT * FROM oscar;
