-- Создаём партиционированную таблицу

CREATE TABLE links_parted (
    movieId bigint,
	imdbid character varying(20),
	tmdbid character varying(20)
);

-- Создаём шард -табличку с ограничениями на одно из полей - ключ шарда. Четные
CREATE TABLE links_parted_0 (
    CHECK ( movieId % 2 = 0 )
) INHERITS (links_parted);

-- Создаём еще шард -табличку с ограничениями на одно из полей - ключ шарда. Нечетные

CREATE TABLE links_parted_1 (
    CHECK ( (movieId - 1) % 2 = 0 )
) INHERITS (links_parted);

--Чтобы заливка происходила правильно, нужно создать дополнительные правила-триггеры для обеих партиций

CREATE RULE linkss_insert_0 AS ON INSERT TO links_parted
WHERE ( movieId % 2 = 0 )
DO INSTEAD INSERT INTO links_parted_0 VALUES ( NEW.* );

CREATE RULE linkss_insert_1 AS ON INSERT TO links_parted
WHERE ( (movieId - 1) % 2 = 0 )
DO INSTEAD INSERT INTO links_parted_1 VALUES ( NEW.* );

-- заливаем данные в таблицу. Условие WHERE нам не нужно, потому что нужно все 40+ тысяч строк родительской таблицы links партиционировать

INSERT INTO links_parted (
    SELECT *
    FROM links
);

-- проверил с помощью SELECT COUNT(*) FROM links_parted_0 (и links_parted_1). В сумме кол-во строк сходится. 23328 + 22515 = 45843;
