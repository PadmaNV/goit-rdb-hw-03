-- 1. Напишіть SQL команду, за допомогою якої можна:
-- вибрати всі стовпчики (За допомогою wildcard “*”) з таблиці products:
SELECT p.id,
       p.name,
       p.supplier_id,
       p.category_id,
       p.unit,
       p.price
FROM db_lec3.products AS p;

-- вибрати тільки стовпчики name, phone з таблиці shippers,
-- та перевірте правильність її виконання в MySQL Workbench:
SELECT s.`name`,
	   s.`phone`
FROM `db_lec3`.`suppliers` AS s;

-- 2. Напишіть SQL команду, за допомогою якої можна знайти середнє,
-- максимальне та мінімальне значення стовпчика price таблички products,
--  та перевірте правильність її виконання в MySQL Workbench*.*
SELECT ROUND(AVG(p.price), 2) AS average_salary,
       MAX(p.price) AS max_price,
       MIN(p.price) AS min_price
FROM `db_lec3`.`products` AS p;

-- 3. Напишіть SQL команду, за допомогою якої можна обрати унікальні значення 
-- колонок category_id та price таблиці products. Оберіть порядок виведення на
-- екран за спаданням значення price та виберіть тільки 10 рядків. 
-- Перевірте правильність виконання команди в MySQL Workbench.
SELECT DISTINCT p.category_id, p.price
FROM `db_lec3`.`products` AS p
ORDER BY price DESC
limit 10;

-- 4. Напишіть SQL команду, за допомогою якої можна знайти кількість продуктів (рядків), 
-- які знаходиться в цінових межах від 20 до 100, та перевірте правильність її виконання в MySQL Workbench.
SELECT DISTINCT count(p.id) as uniq_products
FROM `db_lec3`.`products` AS p
Where p.price >20 and p.price <100

-- 5. Напишіть SQL команду, за допомогою якої можна знайти кількість продуктів (рядків)
--  та середню ціну (price) у кожного постачальника (supplier_id), та перевірте правильність її виконання в MySQL Workbench. 

SELECT DISTINCT p.supplier_id,
				count(p.id) as uniq_products, 
                round(avg(p.price), 2) as average_price
FROM `db_lec3`.`products` AS p
group by p.supplier_id




