CREATE TABLE FoodMarket (
id INTEGER,
meal TEXT,
price FLOAT
);

INSERT INTO FoodMarket
VALUES 
(1, "Pizza", 5),
(2, "Cevaps", 7),
(3, "Hamburger", 3),
(4, "Cheeseburger", 3.5),
(5, "French fries", 1.5),
(6, "Hot dog", 2),
(7, "Salami sandwitch", 2),
(8, "Fried cheese", 5),
(9, "Chicken burger", 4),
(10, "Tuna sandwish", 2.5)
;

-- Calculations performed on multiple rows of a table are called aggregates.

SELECT('Count num of meals with a price of 5');
-- Count how many items there are in a table with the price of 5
SELECT COUNT(*) FROM FoodMarket
WHERE price = 5;

SELECT '-------------------------------';
SELECT 'Maximum price';

-- The highest price in a table. Opposite to this'd be MIN ofc
SELECT MAX(price) FROM FoodMarket;

SELECT '-------------------------------';
SELECT 'Average price';

-- This one returns the average price of all meals
SELECT AVG(price) FROM FoodMarket;


SELECT '-------------------------------';
SELECT 'Rounding price of all meals';
SELECT meal, ROUND(price, 2)
FROM FoodMarket;

SELECT '-------------------------------';
SELECT '';

SELECT '-------------------------------';
SELECT '';