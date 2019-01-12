-- Оконные функции.
-- !!!специально добавил столбец rating, чтобы было нагляднее. Если это критично для зачета - могу легко исправить.
SELECT userId, movieId, rating, 
    (rating - MIN(rating) OVER (PARTITION BY userId))/(MAX(rating) OVER (PARTITION BY userId) - MIN(rating) OVER (PARTITION BY userId)) AS normed_rating,
	AVG(rating) OVER (PARTITION BY userId) AS avg_rating
FROM Ratings as sample
ORDER BY userId 
LIMIT 30;

-- ETL
--!!! двойные тире в этом расширении файла (.sql) переводят код в комментарий...
-- Пишем команду создания таблички keywords, у которой 2 поля - id(числовой) и tags (текстовое). 
-- таблицу обозвал keywords3 , так как ERROR:  relation "keywords" already exists

psql --host $APP_POSTGRES_HOST -U postgres -c '
	CREATE TABLE keywords3 (
    id bigint,
    tags varchar
);'

--Пишем команду копирования данных из файла в созданную нами таблицу
psql --host $APP_POSTGRES_HOST -U postgres -c "\\copy keywords3 FROM '/data/keywords.csv' DELIMITER ',' CSV HEADER"
-- ответ: CREATE TABLE
-- (base) root@22d9c5864af3:/# psql --host $APP_POSTGRES_HOST -U postgres -c "\\copy keywords3 FROM '/data/keywords.
-- csv' DELIMITER ',' CSV HEADER"
-- COPY 46419


--Transform
--ЗАПРОС1
--вначале получим список movieid, которые подпадают под требование иметь 51+ оценок. Чтобы было очевидно, что нигде меньше 51 рейтинга у айдишника нет, добавим в выборку столбец rating.
-- В итоговом запросе уберем лишнюю колонку rating
SELECT movieid, COUNT(rating) AS rating FROM public.ratings GROUP BY movieid HAVING COUNT(rating) > 50 ORDER BY movieid;

-- затем помещаем скорректированный подзапрос в наш запрос

SELECT movieid, AVG(rating) AS avg_rating FROM ratings WHERE movieid IN (SELECT movieid FROM public.ratings GROUP BY movieid HAVING COUNT(rating) > 50 ORDER BY movieid) 
GROUP BY movieid ORDER BY avg_rating DESC, movieid;

-- Теперь мы хотим добавить к выборке хороших фильмов с высоким рейтингов информацию о тегах.
-- Воспользуемся Common Table Expressions для поставленной задачи (написать ЗАПРОС2, который присоединяет к выборке таблицу keywords3)


WITH tmp_table AS (SELECT movieid, 
		AVG(rating) AS avg_rating 
		FROM ratings 
		WHERE movieid IN 
			(SELECT movieid 
			FROM public.ratings 
			GROUP BY movieid 
			HAVING COUNT(rating) > 50 
			ORDER BY movieid) 
		GROUP BY movieid 
		ORDER BY avg_rating DESC, movieid ASC)  
												SELECT * FROM keywords3 INNER JOIN tmp_table 
												ON keywords3.id = tmp_table.movieid;

--Load
--Мы обогатили выборку популярного контента внешними данными о тегах. Теперь мы можем сохранить эту информацию в таблицу для дальнейшего использования
--Сохраним нашу выборку в новую таблицу top_rated_tags. Для этого мы модифицируем ЗАПРОС2 - вместо простого SELECT сделаем SELECT INTO.
--Назовём всю эту конструкцию ЗАПРОС3

WITH tmp_table AS(
			WITH tmp_table AS (SELECT movieid, 
		AVG(rating) AS avg_rating 
		FROM ratings 
		WHERE movieid IN 
			(SELECT movieid 
			FROM public.ratings 
			GROUP BY movieid 
			HAVING COUNT(rating) > 50 
			ORDER BY movieid) 
		GROUP BY movieid 
		ORDER BY avg_rating DESC, movieid ASC)  
												SELECT * FROM keywords3 INNER JOIN tmp_table 
												ON keywords3.id = tmp_table.movieid) SELECT movieid, tags, avg_rating INTO Top_rated_tags FROM tmp_table;

-- в новую таблицу Top_rated_tags не стал добавлять звездочкой * поле id , так как оно бесполезно (есть поле movieId).
-- в новой таблице Top_rated_tags получил 1083 строки. Как-то мало. Получается, что внутреннее объединение INNER JOIN смог найти только тысячу строк, которым можно было сопоставить пару из десятков тысяч строк?

-- Выгружам таблицу в файл:
\copy (SELECT * FROM Top_rated_tags) TO '/data/ratings_file.csv';




-- ИТОГ:
--Решением домашки будет скрипт hw3.sql вида:

--"ВАША КОМАНДА СОЗДАНИЯ ТАБЛИЦЫ";
psql --host $APP_POSTGRES_HOST -U postgres -c '
	CREATE TABLE keywords3 (
    id bigint,
    tags varchar
);'

--"ВАША КОМАНДА ЗАЛИВКИ ДАННЫХ В ТАБЛИЦу";
psql --host $APP_POSTGRES_HOST -U postgres -c "\\copy keywords3 FROM '/data/keywords.csv' DELIMITER ',' CSV HEADER"
--"ЗАПРОС3";

WITH tmp_table AS(
			WITH tmp_table AS (SELECT movieid, 
		AVG(rating) AS avg_rating 
		FROM ratings 
		WHERE movieid IN 
			(SELECT movieid 
			FROM public.ratings 
			GROUP BY movieid 
			HAVING COUNT(rating) > 50 
			ORDER BY movieid) 
		GROUP BY movieid 
		ORDER BY avg_rating DESC, movieid ASC)  
												SELECT * FROM keywords3 INNER JOIN tmp_table 
												ON keywords3.id = tmp_table.movieid) SELECT movieid, tags, avg_rating INTO Top_rated_tags FROM tmp_table;
--"ВАША КОМАНДА ВЫГРУЗКИ ТАБЛИЦЫ В ФАЙЛ"
\copy (SELECT * FROM Top_rated_tags) TO '/data/ratings_file.csv';