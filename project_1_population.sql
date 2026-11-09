-- Проект 1: Анализ населения штатов США
-- 1. Переименование столбцов
ALTER TABLE states RENAME COLUMN c1 TO Rank;
ALTER TABLE states RENAME COLUMN c2 TO State;
ALTER TABLE states RENAME COLUMN c3 TO Postal;
ALTER TABLE states RENAME COLUMN c4 TO Population;


-- 2. Очистка данных от заголовков
DELETE FROM states
WHERE Rank = 'Rank';


-- 3. Анализ: топ 5 штатов по населению
SELECT State, Population
FROM states
ORDER BY Population DESC
LIMIT 5;

SELECT State, CAST(Population AS INTEGER) AS pop
FROM states
ORDER BY pop DESC
LIMIT 5;
