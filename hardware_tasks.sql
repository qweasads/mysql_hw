-- 1.
SELECT SUM(amount) FROM hardware;
-- 2. 
SELECT * FROM hardware
WHERE amount = 0
;
-- 3. 
SELECT ROUND(AVG(price)) FROM hardware
WHERE title LIKE 'Монитор%'
;
-- 4. 
SELECT * FROM hardware
WHERE title LIKE 'Клавиатура%'
ORDER BY price ASC
;
-- 5.
SELECT tag, count(title) as amount FROM hardware 
GROUP BY tag 
ORDER BY amount DESC
;
-- 6. 
SELECT COUNT(title) FROM hardware
WHERE tag = 'discount'
;
-- 7. 
SELECT title, price FROM hardware
WHERE tag = 'new'
ORDER BY price DESC
LIMIT 1
;
-- 8. 
INSERT INTO `hardware` (`title`, `price`, `amount`, `tag`) 
VALUES ('Ноутбук Lenovo 2BXKQ7E9XD', '54500', '1', 'new')
;
-- 9.
DELETE FROM hardware
WHERE title = 'Очки PS VR 2' AND id > 0
;