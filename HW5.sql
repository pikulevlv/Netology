--Используя функцию определения размера таблицы, вывести top-5 самых больших таблиц базы.
--Подсказка: воспользуйтесь таблицей information_schema.tables, которая хранит информацию обо всех таблицах в базе данных.

-- разберемся вначале, что есть в таблице information_schema.tables
\d information_schema.tables
                                 View "information_schema.tables"
            Column            |               Type                | Collation | Nullable | Default 
------------------------------+-----------------------------------+-----------+----------+---------
 table_catalog                | information_schema.sql_identifier |           |          | 
 table_schema                 | information_schema.sql_identifier |           |          | 
 table_name                   | information_schema.sql_identifier |           |          | 
 table_type                   | information_schema.character_data |           |          | 
 self_referencing_column_name | information_schema.sql_identifier |           |          | 
 reference_generation         | information_schema.character_data |           |          | 
 user_defined_type_catalog    | information_schema.sql_identifier |           |          | 
 user_defined_type_schema     | information_schema.sql_identifier |           |          | 
 user_defined_type_name       | information_schema.sql_identifier |           |          | 
 is_insertable_into           | information_schema.yes_or_no      |           |          | 
 is_typed                     | information_schema.yes_or_no      |           |          | 
 commit_action                | information_schema.character_data |           |          | 
 
 
 --надем список всех таблице
 SELECT table_name FROM information_schema.tables;
 
 -- для определения размера таблицы нам нужна будет функция получения размера объектов БД pg_relation_size() с форматом bigint, а не pg_size_pretty с форматом text.
 -- для одной таблицы, когда мы знаем ее имя, понятно как получить размер. А вот как получить список размеров по всем таблицам, было непонятно. Пробовал по-всякому, в том числе создать отлельную табличку и работать с ней.
 -- методом гугления написал запрос. Просьба прокомментировать, почему в запросе надо обязательно прописывать имя таблицы в формате public.ratings , а не просто ratings?

 
SELECT
    table_schema || '.' || table_name AS table_full_name,
    pg_relation_size('"' || table_schema || '"."' || table_name || '"') AS size
FROM information_schema.tables
ORDER BY size DESC 
LIMIT 5;


-- Используя функцию array_agg собрать в массив все фильмы, просмотренные пользователем. При этом повторов в списке контента быть не должно. Назовём эту конструкцию ЗАПРОС1. Выборка должна содержать два поля: userid и user_views
-- для пользователя 2 выглядит убедительно:
SELECT userID, array_agg(movieId) as user_views FROM ratings GROUP BY userID HAVING userID = 2;
-- ели не группировать с HAVINGом, то получается не очень наглядно:
SELECT userID, array_agg(movieId) as user_views FROM ratings GROUP BY userID;

--Создайте таблицу user_movies_agg, в которую сохраните результат запроса
SELECT userID, user_views INTO public.user_movies_agg FROM (
	SELECT userID, array_agg(movieId) as user_views FROM ratings GROUP BY userID) AS c1;

-- Используя следующий синтаксис, создайте функцию cross_arr оторая принимает на вход два массива arr1 и arr2.
-- Функция возвращает массив, который представляет собой пересечение контента из обоих списков.

CREATE OR REPLACE FUNCTION cross_arr (int[], int[]) RETURNS int[] language sql as $FUNCTION$ тело_функции ; $FUNCTION$;

-- остановился здесь. Совершенно непонятно, как пользоваться cross_arr....