SELECT 'ФИО: Пикулев Лев' AS fio;
-- 1.1 SELECT , LIMIT - выбрать 10 записей из таблицы ratings
SELECT * FROM ratings LIMIT 10;
-- 1.2 WHERE, LIKE - выбрать из таблицы links всё записи, у которых imdbid оканчивается на "42", а поле movieid между 100 и 1000
SELECT * FROM links WHERE imdbid LIKE '%42' AND movieid BETWEEN 100 AND 1000;
-- 2.1 INNER JOIN выбрать из таблицы links все imdb_id, которым ставили рейтинг 5
SELECT imdbid
FROM public.links
JOIN public.ratings ON links.movieid=ratings.movieid
WHERE rating = 5
;
-- 3.1 COUNT() Посчитать число фильмов без оценок
SELECT COUNT(movieid) AS without_ev FROM Ratings WHERE rating IS NULL;
--  получилось, что фильмов без оценок нет.

-- 3.2 GROUP BY, HAVING вывести top-10 пользователей, у который средний рейтинг выше 3.5

SELECT
    userId,
    AVG(rating) as avg_rating
FROM public.ratings
GROUP BY userId
HAVING AVG(rating) > 3.5
ORDER BY avg_rating DESC
LIMIT 10;

-- 4.1 Подзапросы: достать 10 imbdId из links у которых средний рейтинг больше 3.5.
-- Нужно подсчитать средний рейтинг по всем пользователям, которые попали под условие
-- то есть в ответе должно быть одно число.
--джоин двух таблицы

SELECT * FROM public.links
LEFT JOIN public.ratings ON links.movieid=ratings.movieid
;
--далее работаем с этой таблицей во вложенном запросе

WITH table_1 AS (
	SELECT * FROM public.links 
	LEFT JOIN public.ratings ON links.movieid=ratings.movieid) 
SELECT imdbid, 
AVG(rating) AS avg_film_rating 
FROM table_1 
GROUP BY imdbid 
HAVING AVG(rating) > 3.5
ORDER BY avg_film_rating DESC 
LIMIT 10;

-- 4.2 Common Table Expressions: посчитать средний рейтинг по пользователям, у которых более 10 оценок

SELECT AVG(rating) FROM ratings WHERE userid IN (SELECT userid FROM public.ratings GROUP BY userid HAVING COUNT(rating) > 10);





