# создаем таблицы

CREATE TABLE Out_categories (
    outcome_id integer NOT NULL PRIMARY KEY,
    outcome_count varchar(50) NOT NULL
  );
  
CREATE TABLE Inc_categories (
    income_id integer NOT NULL PRIMARY KEY,
    income_count varchar(50) NOT NULL
    );

	
CREATE TABLE Outcome (
    outcome_num varchar(50) NOT NULL PRIMARY KEY,
    count varchar(50) NOT NULL,
    category integer REFERENCES Out_categories(outcome_id),  
    amount real NOT NULL,
    date timestamp NOT NULL,
    tag varchar(100)
  );
  
CREATE TABLE Income (
    income_num varchar(50) NOT NULL PRIMARY KEY,
    count varchar(50) NOT NULL,
    category integer REFERENCES Inc_categories(income_id),  
    amount real NOT NULL,
    date timestamp NOT NULL,
    tag varchar(100)
  );
  
#Вносим данные в таблицу Inc_categories:
INSERT INTO Inc_categories (income_id, income_count) VALUES (1,  'Работа Лев');
INSERT INTO Inc_categories (income_id, income_count) VALUES (2,  'Работа Юля');
INSERT INTO Inc_categories (income_id, income_count) VALUES (3,  'Пассивный доход');
INSERT INTO Inc_categories (income_id, income_count) VALUES (4,  'Налоговый вычет');
INSERT INTO Inc_categories (income_id, income_count) VALUES (5,  'Продажа вещей');
INSERT INTO Inc_categories (income_id, income_count) VALUES (6,  'Подарки');
INSERT INTO Inc_categories (income_id, income_count) VALUES (7,  'Прочие источники');
INSERT INTO Inc_categories (income_id, income_count) VALUES (8,  'Премия');
INSERT INTO Inc_categories (income_id, income_count) VALUES (9,  'Возмещения по работе Лев');
INSERT INTO Inc_categories (income_id, income_count) VALUES (10, 'Дивиденды');

#Вносим данные в таблицу Out_categories:
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33000, 'Без категории');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33001, 'Коммуникации');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33002, 'Сотовая связь');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33003, 'Интернет');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33004, 'Транспорт');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33005, 'Такси');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33006, 'Общественный транспорт');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33007, 'Рекс');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33008, 'Электричка');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33009, 'Автобусы/троллейбусы/трамваи');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33010, 'Метро');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33011, 'Транспорт по работе');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33012, 'Транспорт при путешествиях');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33013, 'Психотропы');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33014, 'Алкоголь');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33015, 'Курение');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33016, 'Обустройство и ремонт');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33017, 'Посуда');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33018, 'Мебель');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33019, 'Растения');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33020, 'Инструменты');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33021, 'Стройматериалы');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33022, 'Химчистка');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33023, 'Расходные материалы');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33024, 'Бытовая техника');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33025, 'Ремонт одежды и обуви');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33026, 'Банковские услуги');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33027, 'Красота');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33028, 'Солярий');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33029, 'Косметика');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33030, 'Процедуры');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33031, 'Парикмахер');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33032, 'Здоровье');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33033, 'Аптека');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33034, 'Медицинские услуги');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33035, 'Судебные издержки');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33036, 'Проезд адвоката');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33037, 'Оплата адвокату');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33038, 'Налоги, пошлины, штрафы');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33039, 'Содержание квартиры');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33040, 'ЖКУ');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33041, 'Страхование квартиры');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33042, 'Подарки');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33043, 'Подарки семье (мы)');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33044, 'Подарки родным (родители)');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33045, 'Подарки на работе');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33046, 'Подарки друзьям');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33047, 'Пресса и книги');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33048, 'Журналы');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33049, 'Книги');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33050, 'Возврат долгов');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33051, 'Живность');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33052, 'Аквариум');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33053, 'Сувениры');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33054, 'Одежда/Аксессуары (сумки и т.д.)');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33055, 'Физкультура');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33056, 'Оплата посещений');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33057, 'Спортивная форма');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33058, 'Спортпит');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33059, 'Автомобиль');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33060, 'Досуг');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33061, 'Софт');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33062, 'Питание');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33063, 'Продукты');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33064, 'Кафе');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33065, 'Вода');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33066, 'Бытовая химия');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33067, 'Правовые услуги');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33068, 'Нотариус');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33069, 'Заказ декларации и пр. услуги');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33070, 'Оценка квартиры');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33071, 'Канцтовары');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33072, 'Кредиты');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33073, 'Кредитка');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33074, 'Ипотека');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33075, 'Страхование');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33076, 'Обучение');
INSERT INTO Out_categories (outcome_id, outcome_count) VALUES (33077, 'Инвестиции');

#Вносим данные в таблицу Income:
INSERT INTO Income (income_num, count, category, amount, date, tag) VALUES ('outid00269', 'Кошелёк Юля',  2, 15000,  '2018-09-28', '');
INSERT INTO Income (income_num, count, category, amount, date, tag) VALUES ('outid00268', 'Карта ВТБ 5906 Юля',  2, 17500,  '2018-09-28', '');
INSERT INTO Income (income_num, count, category, amount, date, tag) VALUES ('outid00267', 'Карта 0013 Лев', 1 , 44100,  '2018-09-25', '');
INSERT INTO Income (income_num, count, category, amount, date, tag) VALUES ('outid00266', 'Кошелёк Лев', 7 , 385.44,  '2018-09-18', 'ФНС');
INSERT INTO Income (income_num, count, category, amount, date, tag) VALUES ('outid00265', 'Кошелёк Лев',  7, 458.73,  '2018-09-18', 'ФНС');
INSERT INTO Income (income_num, count, category, amount, date, tag) VALUES ('outid00264', 'Карта ВТБ 5906 Юля',  2, 17500,  '2018-09-14', '');
INSERT INTO Income (income_num, count, category, amount, date, tag) VALUES ('outid00263', 'Кошелёк Лев',  1, 900,  '2018-09-11', 'Донорство');
INSERT INTO Income (income_num, count, category, amount, date, tag) VALUES ('outid00262', 'Кошелёк Юля',  2, 15000,  '2018-09-10', 'Премия');
INSERT INTO Income (income_num, count, category, amount, date, tag) VALUES ('outid00261', 'Карта 0013 Лев',  1, 67120,  '2018-09-10', '');
INSERT INTO Income (income_num, count, category, amount, date, tag) VALUES ('outid00260', 'Кошелёк Юля',  7, 255,  '2018-09-09', 'Корректировка баланса');
INSERT INTO Income (income_num, count, category, amount, date, tag) VALUES ('outid00259', 'Карта Сбер 6161 Юля', 7 , 105.71,  '2018-09-07', 'Корректировка баланса');

#Вносим данные в таблицу Outcome:
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004670', 'Карта Сбер 6161 Юля',  33014, 289.69,  '2018-09-30', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004669', 'Карта Сбер 6161 Юля',  33014, 389.9,  '2018-09-29', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004668', 'Карта Сбер 6161 Юля',  33021, 235,  '2018-09-29', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004667', 'Кошелёк Юля',  33023, 156,  '2018-09-29', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004666', 'Карта Сбер 6161 Юля',  33021, 110,  '2018-09-29', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004665', 'Карта Сбер 6161 Юля',  33030, 1000,  '2018-09-29', 'Маникюр');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004664', 'Кредитка 8423 Лев',  33063, 546.35,  '2018-09-28', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004663', 'Кошелёк Юля',  33029, 176,  '2018-09-28', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004662', 'Карта Сбер 6161 Юля',  33063, 3577,  '2018-09-28', 'Перекрёсток');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004661', 'Карта Сбер 6161 Юля',  33030, 2550,  '2018-09-28', 'Пиллинг [Жена]');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004660', 'Карта Сбер 6161 Юля',  33063, 836,  '2018-09-28', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004659', 'Карта Сбер 6161 Юля',  33063, 800,  '2018-09-28', 'Сухофрукты');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004658', 'Кредитка 8423 Лев',  33063, 244.61,  '2018-09-28', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004657', 'Карта 4137 Лев',  33064, 30,  '2018-09-27', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004656', 'Карта Сбер 6161 Юля',  33063, 0.1,  '2018-09-27', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004655', 'Карта 4137 Лев',  33014, 85,  '2018-09-27', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004654', 'Кредитка 8423 Лев',  33005, 353,  '2018-09-27', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004653', 'Кошелёк Юля',  33008, 88,  '2018-09-27', 'Рекс');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004652', 'Кредитка 8423 Лев',  33060, 1643.13,  '2018-09-27', 'Моделизм краски');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004651', 'Кредитка 8423 Лев',  33063, 278.25,  '2018-09-27', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004650', 'Кредитка 8423 Лев',  33063, 289,  '2018-09-27', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004649', 'Карта 4137 Лев',  33064, 188,  '2018-09-27', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004648', 'Карта Сбер 6161 Юля',  33045, 150,  '2018-09-27', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004647', 'Карта Сбер 6161 Юля',  33064, 254.5,  '2018-09-27', 'Обед [Жена]');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004646', 'Карта Сбер 6161 Юля',  33064, 139,  '2018-09-27', 'Кофе [Жена]');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004645', 'Карта Сбер 6161 Юля',  33010, 50,  '2018-09-27', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004644', 'Карта Сбер 6161 Юля',  33064, 160,  '2018-09-26', 'Обед [Жена]');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004643', 'Карта Сбер 6161 Юля',  33054, 250,  '2018-09-26', 'Колготки [Жена]');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004642', 'Карта 4137 Лев',  33043, 620,  '2018-09-26', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004641', 'Карта 4137 Лев',  33066, 60,  '2018-09-26', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004640', 'Карта 4137 Лев',  33009, 2500,  '2018-09-26', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004639', 'Карта 4137 Лев',  33063, 284.54,  '2018-09-26', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004638', 'Карта ВТБ 5906 Юля',  33064, 185,  '2018-09-25', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004637', 'Карта ВТБ 5906 Юля',  33064, 160,  '2018-09-25', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004636', 'Карта 4137 Лев',  33052, 93,  '2018-09-25', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004635', 'Карта 4137 Лев',  33063, 191.1,  '2018-09-25', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004634', 'Карта 4137 Лев',  33010, 1250,  '2018-09-25', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004633', 'Кредитка 8423 Лев',  33064, 295,  '2018-09-25', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004632', 'Карта ВТБ 5906 Юля',  33064, 230,  '2018-09-24', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004631', 'Кредитка 8423 Лев',  33063, 253.34,  '2018-09-24', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004630', 'Кредитка 8423 Лев',  33023, 308,  '2018-09-24', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004629', 'Кредитка 8423 Лев',  33005, 738,  '2018-09-24', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004628', 'Кредитка 8423 Лев',  33064, 240,  '2018-09-24', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004627', 'Карта 0013 Лев',  33045, 600,  '2018-09-24', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004626', 'Кредитка 8423 Лев',  33005, 757,  '2018-09-23', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004625', 'Кредитка 8423 Лев',  33005, 631,  '2018-09-23', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004624', 'Кредитка 8423 Лев',  33060, 90,  '2018-09-22', 'Лейкопластырь');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004623', 'Кредитка 8423 Лев',  33063, 1244.21,  '2018-09-22', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004622', 'Карта ВТБ 5906 Юля',  33010, 100,  '2018-09-21', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004621', 'Карта ВТБ 5906 Юля',  33063, 239.6,  '2018-09-21', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004620', 'Кредитка 8423 Лев',  33063, 115,  '2018-09-21', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004619', 'Кредитка 8423 Лев',  33005, 1020,  '2018-09-21', 'Каршеринг');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004618', 'Кредитка 8423 Лев',  33063, 1016.53,  '2018-09-21', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004617', 'Кредитка 8423 Лев',  33005, 559,  '2018-09-21', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004616', 'Кошелёк Лев',  33064, 200,  '2018-09-21', 'Чаевые');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004615', 'Карта ВТБ 5906 Юля',  33064, 160,  '2018-09-20', 'Обед [Жена]');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004614', 'Кредитка 8423 Лев',  33064, 159,  '2018-09-20', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004613', 'Кредитка 8423 Лев',  33063, 47,  '2018-09-20', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004612', 'Кредитка 8423 Лев',  33045, 150,  '2018-09-20', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004611', 'Карта Сбер 6161 Юля',  33064, 98.5,  '2018-09-20', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004610', 'Кошелёк Лев',  33063, 180,  '2018-09-20', 'Арбузик');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004609', 'Кошелёк Лев',  33064, 229,  '2018-09-19', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004608', 'Кредитка 8423 Лев',  33063, 43343,  '2018-09-19', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004607', 'Карта ВТБ 5906 Юля',  33064, 160,  '2018-09-19', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004606', 'Кошелёк Лев',  33063, 98,  '2018-09-19', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004605', 'Кошелёк Лев',  33018, 474,  '2018-09-19', 'Подставка для посуды и анкеры');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004604', 'Кошелёк Юля',  33063, 1043,  '2018-09-18', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004603', 'Кошелёк Лев',  33040, 6602,  '2018-09-18', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004602', 'Карта Сбер 6161 Юля',  33064, 160,  '2018-09-18', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004601', 'Карта Сбер 6161 Юля',  33008, 660,  '2018-09-18', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004600', 'Карта Сбер 6161 Юля',  33064, 100,  '2018-09-17', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004599', 'Кошелёк Юля',  33064, 298,  '2018-09-17', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004598', 'Кредитка 8423 Лев',  33063, 78.37,  '2018-09-17', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004597', 'Кредитка 8423 Лев',  33063, 115.03,  '2018-09-17', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004596', 'Кредитка 8423 Лев',  33064, 268,  '2018-09-17', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004595', 'Счет ВТБ 3786 (ипотечный)',  33074, 46314.23,  '2018-09-17', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004594', 'Карта Сбер 6161 Юля',  33060, 320,  '2018-09-15', 'Мангал');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004593', 'Карта Сбер 6161 Юля',  33063, 679.01,  '2018-09-15', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004592', 'Кредитка 8423 Лев',  33018, 2499,  '2018-09-14', 'Турник');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004591', 'Кошелёк Юля',  33025, 700,  '2018-09-14', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004590', 'Карта Сбер 6161 Юля',  33054, 1069,  '2018-09-14', 'Зонтик');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004589', 'Карта Сбер 6161 Юля',  33063, 658,  '2018-09-14', 'Сухофрукты');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004588', 'Карта Сбер 6161 Юля',  33064, 160,  '2018-09-14', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004587', 'Карта Сбер 6161 Юля',  33063, 2666,  '2018-09-14', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004586', 'Карта Сбер 6161 Юля',  33014, 1034.88,  '2018-09-14', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004585', 'Карта 4137 Лев',  33063, 211.64,  '2018-09-14', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004584', 'Кредитка 8423 Лев',  33023, 196,  '2018-09-14', 'Анкеры');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004583', 'Карта 4137 Лев',  33063, 264.58,  '2018-09-13', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004582', 'Карта 4137 Лев',  33064, 199,  '2018-09-13', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004581', 'Карта 4137 Лев',  33063, 39,  '2018-09-13', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004580', 'Кошелёк Юля',  33023, 149,  '2018-09-12', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004579', 'Кошелёк Лев',  33063, 93,  '2018-09-12', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004578', 'Карта 4137 Лев',  33064, 201,  '2018-09-12', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004577', 'Карта 4137 Лев',  33063, 72.8,  '2018-09-12', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004576', 'Карта 4137 Лев',  33064, 194,  '2018-09-11', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004575', 'Кошелёк Юля',  33065, 1000,  '2018-09-11', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004574', 'Карта ВТБ 5906 Юля',  33063, 450,  '2018-09-11', 'Сухофрукты');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004573', 'Кредитка 8423 Лев',  33005, 224,  '2018-09-11', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004572', 'Кошелёк Лев',  33063, 19,  '2018-09-11', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004571', 'Кредитка 8423 Лев',  33063, 86.8,  '2018-09-11', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004570', 'Кредитка 8423 Лев',  33064, 143,  '2018-09-11', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004569', 'Карта Сбер 6161 Юля',  33064, 100,  '2018-09-10', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004568', 'Кредитка 8423 Лев',  33057, 5196,  '2018-09-10', 'H&M спорт');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004567', 'Кредитка 8423 Лев',  33054, 2249,  '2018-09-10', 'Mango сумка');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004566', 'Кредитка 8423 Лев',  33054, 10598,  '2018-09-10', 'Zara');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004565', 'Карта Сбер 6161 Юля',  33029, 1350,  '2018-09-10', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004564', 'Карта Сбер 6161 Юля',  33029, 2490,  '2018-09-10', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004563', 'Кредитка 8423 Лев',  33064, 510,  '2018-09-10', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004562', 'Карта ВТБ 5906 Юля',  33010, 100,  '2018-09-10', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004561', 'Кошелёк Юля',  33012, 5000,  '2018-09-10', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004560', 'Кредитка 8423 Лев',  33010, 1050,  '2018-09-10', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004559', 'Кошелёк Лев',  33000, 140.1,  '2018-09-09', 'Корректировка баланса');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004558', 'Кредитка 8423 Лев',  33031, 1200,  '2018-09-09', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004557', 'Кошелёк Юля',  33065, 42,  '2018-09-09', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004556', 'Кошелёк Юля',  33063, 29,  '2018-09-08', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004555', 'Кредитка 8423 Лев',  33063, 1218.7,  '2018-09-08', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004554', 'Кредитка 8423 Лев',  33052, 93,  '2018-09-08', 'Корм');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004553', 'Кредитка 8423 Лев',  33063, 774,  '2018-09-08', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004552', 'Кошелёк Юля',  33063, 170,  '2018-09-08', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004551', 'Кошелёк Юля',  33014, 130,  '2018-09-08', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004550', 'Кошелёк Юля',  33065, 120,  '2018-09-08', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004549', 'Карта Сбер 6161 Юля',  33063, 643,  '2018-09-08', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004548', 'Карта Сбер 6161 Юля',  33030, 1000,  '2018-09-08', 'Маникюр');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004547', 'Кошелёк Юля',  33064, 228,  '2018-09-07', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004546', 'Карта ВТБ 5906 Юля',  33045, 210,  '2018-09-07', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004545', 'Кредитка 8423 Лев',  33064, 260,  '2018-09-07', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004544', 'Кошелёк Юля',  33000, 563,  '2018-09-07', 'Корректировка баланса');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004543', 'Карта Сбер 6161 Юля',  33005, 563,  '2018-09-07', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004542', 'Кредитка 8423 Лев',  33063, 144.39,  '2018-09-07', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004541', 'Кредитка 8423 Лев',  33045, 476.7,  '2018-09-06', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004540', 'Кредитка 8423 Лев',  33064, 220,  '2018-09-06', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004539', 'Кредитка 8423 Лев',  33014, 138.7,  '2018-09-06', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004538', 'Кредитка 8423 Лев',  33049, 1397.02,  '2018-09-06', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004537', 'Кошелёк Юля',  33063, 119,  '2018-09-06', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004536', 'Кошелёк Юля',  33010, 50,  '2018-09-06', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004535', 'Кредитка 8423 Лев',  33064, 225,  '2018-09-05', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004534', 'Кредитка 8423 Лев',  33063, 100.5,  '2018-09-05', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004533', 'Кредитка 8423 Лев',  33060, 42.79,  '2018-09-04', 'Лезвия для резака');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004532', 'Кредитка 8423 Лев',  33064, 177,  '2018-09-04', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004531', 'Кошелёк Лев',  33010, 300,  '2018-09-04', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004530', 'Кошелёк Лев',  33065, 45,  '2018-09-04', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004529', 'Кошелёк Лев',  33060, 85.9,  '2018-09-04', 'Резак');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004528', 'Кредитка 8423 Лев',  33063, 286.76,  '2018-09-04', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004527', 'Карта Сбер 6161 Юля',  33064, 466,  '2018-09-04', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004526', 'Кошелёк Юля',  33033, 993,  '2018-09-04', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004525', 'Карта Сбер 6161 Юля',  33054, 2699,  '2018-09-04', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004524', 'Кошелёк Юля',  33029, 576,  '2018-09-04', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004523', 'Карта Сбер 6161 Юля',  33064, 99,  '2018-09-04', 'Кофе');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004522', 'Кошелёк Юля',  33024, 450,  '2018-09-04', 'Чехол [Жена]');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004521', 'Кошелёк Юля',  33010, 200,  '2018-09-04', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004520', 'Карта 4137 Лев',  33064, 161,  '2018-09-03', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004519', 'Кошелёк Лев',  33045, 45,  '2018-09-03', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004518', 'Кредитка 8423 Лев',  33014, 129.98,  '2018-09-03', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004517', 'Карта Сбер 6161 Юля',  33045, 300,  '2018-09-03', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004516', 'Кошелёк Юля',  33044, 5050,  '2018-09-03', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004515', 'Кошелёк Юля',  33012, 5000,  '2018-09-03', 'Взнос за корпоратив [Жена]');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004514', 'Кредитка 8423 Лев',  33052, 229.98,  '2018-09-02', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004513', 'Кредитка 8423 Лев',  33014, 59.99,  '2018-09-02', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004512', 'Карта Сбер 6161 Юля',  33054, 4690,  '2018-09-02', 'Тренч [Жена]');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004511', 'Карта Сбер 6161 Юля',  33026, 60,  '2018-09-02', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004510', 'Карта Сбер 6161 Юля',  33060, 1020,  '2018-09-01', 'Бирстория');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004509', 'Кошелёк Лев',  33014, 398,  '2018-09-01', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004508', 'Карта Сбер 6161 Юля',  33024, 521.74,  '2018-09-01', 'Чехлы и браслеты');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004507', 'Карта Сбер 6161 Юля',  33018, 2315,  '2018-09-01', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004506', 'Карта Сбер 6161 Юля',  33009, 500,  '2018-09-01', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004505', 'Кошелёк Юля',  33063, 800,  '2018-09-01', '');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004504', 'Карта Сбер 6161 Юля',  33030, 2150,  '2018-09-01', 'Эпиляция [Жена]');
INSERT INTO Outcome (outcome_num, count, category, amount, date, tag) VALUES ('incid1004503', 'Кошелёк Лев',  33033, 507,  '2018-09-01', '');

#Запросы:
#1 Вывести топ-10 самых крупных трат за период с 15 по 30 сентября в формате название категории затрат (не id, а название), сумма, дата.
#Использование CTE
WITH t1 AS (
	SELECT outcome_id, outcome_count, amount, date 
		FROM OUTCOME JOIN out_categories ON outcome.category = out_categories.outcome_id
		) 
SELECT outcome_count AS largest_expences, amount AS largest_costs, date AS date_of_high_expences 
	FROM t1 
		WHERE date BETWEEN '2018-09-15' AND '2018-09-30' 
			ORDER BY amount 
				DESC LIMIT 10;
       largest_expences       | largest_costs | date_of_high_expences 
------------------------------+---------------+-----------------------
 Ипотека                      |       46314.2 | 2018-09-17 00:00:00
 Продукты                     |         43343 | 2018-09-19 00:00:00
 ЖКУ                          |          6602 | 2018-09-18 00:00:00
 Продукты                     |          3577 | 2018-09-28 00:00:00
 Процедуры                    |          2550 | 2018-09-28 00:00:00
 Автобусы/троллейбусы/трамваи |          2500 | 2018-09-26 00:00:00
 Досуг                        |       1643.13 | 2018-09-27 00:00:00
 Метро                        |          1250 | 2018-09-25 00:00:00
 Продукты                     |       1244.21 | 2018-09-22 00:00:00
 Продукты                     |          1043 | 2018-09-18 00:00:00
(10 rows)

#2 Выведите в процентах долю категории затрат "Ипотека" от общей суммы затрат за рассматриваемый период (сентябрь 2018).
# Аналогичным образом посчитайте в процентах долю категории затрат "Ипотека" от общей суммы доходов.
#Исползование вложенных запросов.
SELECT (
		(
			SELECT amount 
				FROM outcome 
					WHERE category = 33074
											)
			/
		(
			SELECT SUM(amount) 
				FROM outcome
											)
		)*100 AS percent_of_a_loan_in_outcome; 

 percent_of_a_loan_in_outcome 
------------------------------
             21.8287363648415
(1 row)

SELECT (
		(
			SELECT amount 
				FROM outcome 
					WHERE category = 33074
											)
			/
		(
			SELECT SUM(amount) 
				FROM Income
											)
		)*100 AS percent_of_a_loan_in_income; 

 percent_of_a_loan_in_income 
-----------------------------
            25.9718298912048
(1 row)

	
#3 Выведите баланс семейного бюджета после каждой транзакции (любой расход или доход) в порядке возрастания даты.
#Предполагается, что на момент совершения самой первой транзакции баланс семейного бюджета был равен 0.
# Результат представить в виде: категория затрат или доходов (не айдишник, а расшифрованное название), сумма, дата (может повторяться, если за одну дату было совершено более 1 транзакции, 
#баланс сразу после совершения транзакции (трата или доход).
# Использование CTE, оконных и агрегирующих функций, создание комбинированных запросов.


WITH balance AS (
	SELECT  transactions, categories, amounts, dates, row_number() OVER ()  AS num 
	FROM (
			SELECT Income.income_num AS transactions, income_count AS categories, Income.amount AS amounts, Income.date AS dates
			FROM Income, Inc_categories WHERE Inc_categories.income_id = Income.category  
			UNION
			SELECT Outcome.outcome_num, outcome_count, Outcome.amount * (-1), Outcome.date
			FROM Outcome, Out_categories WHERE Out_categories.outcome_id = Outcome.category  
			ORDER BY dates
		  ) AS numeric_transactions 
			ORDER BY num
				)
SELECT num, categories, amounts, dates, sum(amounts) OVER(ORDER BY num) as daily_balance 
FROM balance
ORDER BY num;

-----+----------------------------------+--------------------+---------------------+-------------------
   1 | Досуг                            |              -1020 | 2018-09-01 00:00:00 |             -1020
   2 | Автобусы/троллейбусы/трамваи     |               -500 | 2018-09-01 00:00:00 |             -1520
   3 | Алкоголь                         |               -398 | 2018-09-01 00:00:00 |             -1918
   4 | Процедуры                        |              -2150 | 2018-09-01 00:00:00 |             -4068
   5 | Продукты                         |               -800 | 2018-09-01 00:00:00 |             -4868
   6 | Бытовая техника                  |  -521.739990234375 | 2018-09-01 00:00:00 | -5389.73999023438
   7 | Аптека                           |               -507 | 2018-09-01 00:00:00 | -5896.73999023438
   8 | Мебель                           |              -2315 | 2018-09-01 00:00:00 | -8211.73999023438
   9 | Аквариум                         |  -229.979995727539 | 2018-09-02 00:00:00 | -8441.71998596191
  10 | Алкоголь                         |  -59.9900016784668 | 2018-09-02 00:00:00 | -8501.70998764038
  11 | Банковские услуги                |                -60 | 2018-09-02 00:00:00 | -8561.70998764038
  12 | Одежда/Аксессуары (сумки и т.д.) |              -4690 | 2018-09-02 00:00:00 | -13251.7099876404
  ...
 179 | Алкоголь                         |  -289.690002441406 | 2018-09-30 00:00:00 | -33846.0604301468
(179 rows)


#4 Выведите список всех трат, имеющих комментарий (tag), содержащий любое из слов: "обед", "кофе" "резак"(независимо от табуляции).
# Результат вывести в виде:  категория затрат (не айдишник, а расшифрованное название), сумма, дата, комментарий.
# Использование комбинированных запросов, предиката LIKE.    
SELECT outcome_count AS "Категория_затрат", amount AS "Сумма", date AS "Дата", tag AS "Комментарий"
FROM out_categories, Outcome 
WHERE outcome_id = category
AND
(lower(tag) LIKE '%обед%' OR lower(tag) LIKE '%резак%' OR lower(tag) LIKE '%кофе%');

 Категория_затрат | Сумма |        Дата         |    Комментарий    
------------------+-------+---------------------+-------------------
 Досуг            |  85.9 | 2018-09-04 00:00:00 | Резак
 Досуг            | 42.79 | 2018-09-04 00:00:00 | Лезвия для резака
 Кафе             |    99 | 2018-09-04 00:00:00 | Кофе
 Кафе             |   160 | 2018-09-20 00:00:00 | Обед [Жена]
 Кафе             |   160 | 2018-09-26 00:00:00 | Обед [Жена]
 Кафе             |   139 | 2018-09-27 00:00:00 | Кофе [Жена]
 Кафе             | 254.5 | 2018-09-27 00:00:00 | Обед [Жена]
(7 rows)

#5 Создайте список трат, имеющих любой комментарий (tag), в формате "Кафе (99 руб., Кофе)".
# Вывести Наименование затрат (как указано выше) и вторым столбцом длину тега. Упорядочить по убыванию длины комментария.
# Создание представлений, использование предиката LIKE.
CREATE VIEW tagged_costs AS 
SELECT outcome_count, amount, date, tag
FROM out_categories, Outcome 
WHERE outcome_id = category
AND tag NOT LIKE '';

SELECT RTRIM(outcome_count) || ' (' || CAST(amount AS VARCHAR) || ' руб., ' || tag || ')' AS "Затраты", LENGTH(tag) AS "Длина комментария"
FROM tagged_costs 
ORDER BY "Длина комментария" DESC;

                              Затраты                               | Длина комментария 
--------------------------------------------------------------------+-------------------
 Мебель (474 руб., Подставка для посуды и анкеры)                   |                29
 Транспорт при путешествиях (5000 руб., Взнос за корпоратив [Жена]) |                26
 Без категории (140.1 руб., Корректировка баланса)                  |                21
 Без категории (563 руб., Корректировка баланса)                    |                21
 Досуг (42.79 руб., Лезвия для резака)                              |                17
 Бытовая техника (521.74 руб., Чехлы и браслеты)                    |                16
 Процедуры (2150 руб., Эпиляция [Жена])                             |                15
 Досуг (1643.13 руб., Моделизм краски)                              |                15
 Одежда/Аксессуары (сумки и т.д.) (250 руб., Колготки [Жена])       |                15
 Процедуры (2550 руб., Пиллинг [Жена])                              |                14
 Досуг (90 руб., Лейкопластырь)                                     |                13
 Одежда/Аксессуары (сумки и т.д.) (4690 руб., Тренч [Жена])         |                12
 Бытовая техника (450 руб., Чехол [Жена])                           |                12
 Кафе (254.5 руб., Обед [Жена])                                     |                11
 Продукты (3577 руб., Перекрёсток)                                  |                11
 Кафе (160 руб., Обед [Жена])                                       |                11
 Кафе (139 руб., Кофе [Жена])                                       |                11
 Кафе (160 руб., Обед [Жена])                                       |                11
 Одежда/Аксессуары (сумки и т.д.) (2249 руб., Mango сумка)          |                11
 Продукты (658 руб., Сухофрукты)                                    |                10
 Продукты (800 руб., Сухофрукты)                                    |                10
 Продукты (450 руб., Сухофрукты)                                    |                10
 Спортивная форма (5196 руб., H&M спорт)                            |                 9
 Досуг (1020 руб., Бирстория)                                       |                 9
 Такси (1020 руб., Каршеринг)                                       |                 9
 Продукты (180 руб., Арбузик)                                       |                 7
 Процедуры (1000 руб., Маникюр)                                     |                 7
 Процедуры (1000 руб., Маникюр)                                     |                 7
 Одежда/Аксессуары (сумки и т.д.) (1069 руб., Зонтик)               |                 6
 Мебель (2499 руб., Турник)                                         |                 6
 Расходные материалы (196 руб., Анкеры)                             |                 6
 Кафе (200 руб., Чаевые)                                            |                 6
 Досуг (320 руб., Мангал)                                           |                 6
 Досуг (85.9 руб., Резак)                                           |                 5
 Кафе (99 руб., Кофе)                                               |                 4
 Аквариум (93 руб., Корм)                                           |                 4
 Одежда/Аксессуары (сумки и т.д.) (10598 руб., Zara)                |                 4
 Электричка (88 руб., Рекс)                                         |                 4
(38 rows)

#6 Создайте список категорий затрат с указанием количества их повторений. Вывести топ-10 самых частых затрат за месяц.
#Применение аналитической функции COUNT()
SELECT outcome_count AS "Что покупаем", COUNT(amount) AS "Как часто?"
FROM Outcome, Out_categories WHERE Out_categories.outcome_id = Outcome.category 
GROUP BY outcome_count
ORDER BY "Как часто?" DESC
LIMIT 10;

           Что покупаем           | Как часто? 
----------------------------------+------------
 Продукты                         |         43
 Кафе                             |         35
 Алкоголь                         |          9
 Метро                            |          8
 Такси                            |          8
 Подарки на работе                |          7
 Досуг                            |          6
 Одежда/Аксессуары (сумки и т.д.) |          6
 Косметика                        |          4
 Вода                             |          4
(10 rows)

#7 Для каждого из мест хранения найти средний размер трат. 
#Вывести в порядке возрастания среднего размера покупки два столбца: место хранения и средняя покупка.
#Применение аналитической функции AVG()
SELECT count AS "Чем расплачиваемся?", AVG(amount) AS "Средний чек"
FROM Outcome, Out_categories WHERE Out_categories.outcome_id = Outcome.category 
GROUP BY count
ORDER BY AVG(amount) DESC;

    Чем расплачиваемся?    |   Средний чек    
---------------------------+------------------
 Счет ВТБ 3786 (ипотечный) |   46314.23046875
 Кредитка 8423 Лев         | 1568.66907324614
 Кошелёк Юля               |            925.2
 Карта Сбер 6161 Юля       | 894.620909118686
 Кошелёк Лев               |  627.73333384196
 Карта 0013 Лев            |              600
 Карта 4137 Лев            | 369.147777981228
 Карта ВТБ 5906 Юля        | 199.460000610352
(8 rows)

#8 Построить список категорий затрат, которые совершались как в первую неделю месяца, так и в последнюю. 
#Операция пересечения

CREATE VIEW main_table AS 
SELECT *
FROM out_categories, Outcome 
WHERE outcome_id = category;

SELECT DISTINCT outcome_count
FROM main_table
WHERE (date BETWEEN '2018-09-01' AND '2018-09-07') 
INTERSECT 
SELECT DISTINCT outcome_count
FROM main_table
WHERE (date BETWEEN '2018-09-24' AND '2018-09-30')
ORDER BY outcome_count; 

          outcome_count           
----------------------------------
 Автобусы/троллейбусы/трамваи
 Аквариум
 Алкоголь
 Досуг
 Кафе
 Косметика
 Метро
 Одежда/Аксессуары (сумки и т.д.)
 Подарки на работе
 Продукты
 Процедуры
 Такси
(12 rows)

#9 Выполнить то же, что и в задании 8, но только при помощи предиката EXISTS. 

SELECT DISTINCT outcome_count
FROM main_table AS mt
WHERE (date BETWEEN '2018-09-01' AND '2018-09-07') AND 
 EXISTS (SELECT outcome_count
			FROM main_table
			WHERE (date BETWEEN '2018-09-24' AND '2018-09-30') AND outcome_count = mt.outcome_count)
 ORDER BY outcome_count;

           outcome_count           
----------------------------------
 Автобусы/троллейбусы/трамваи
 Аквариум
 Алкоголь
 Досуг
 Кафе
 Косметика
 Метро
 Одежда/Аксессуары (сумки и т.д.)
 Подарки на работе
 Продукты
 Процедуры
 Такси
(12 rows)

#10 Вывести долю во всем объеме затрат ждя каждой категории трат (категория затрат, доля в процентах), расположить в порядке убывания.
# В выборку должны попасть затраты, которые занимают не менее 1 процента от всего объема затрат.
#Применение аналитической функции SUM()

SELECT outcome_count AS "категория затрат", (SUM(amount) * 100) / (SELECT SUM(amount) FROM Outcome) AS "процент от всего объема"
FROM main_table 
GROUP BY outcome_count
HAVING (SUM(amount) * 100) / (SELECT SUM(amount) FROM Outcome) >= 1
ORDER BY "процент от всего объема" DESC;

         категория затрат         | процент от всего объема 
----------------------------------+-------------------------
 Продукты                         |        30.3270656860599
 Ипотека                          |        21.8287360301125
 Одежда/Аксессуары (сумки и т.д.) |        10.1592620748941
 Транспорт при путешествиях       |        4.71318119920857
 Кафе                             |        3.32609197228149
 Процедуры                        |        3.15783140346974
 ЖКУ                              |         3.1116422277175
 Мебель                           |        2.49233021814149
 Спортивная форма                 |        2.44896895110877
 Подарки родным (родители)        |        2.38015650560033
 Такси                            |        2.28353629101655
 Косметика                        |        2.16429280667657
 Досуг                            |        1.50907569987611
 Метро                            |        1.46108617175466
 Автобусы/троллейбусы/трамваи     |        1.41395435976257
 Алкоголь                         |        1.25188686041671
(16 rows)