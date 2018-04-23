CREATE TABLE City (
CityId INTEGER,
CityName TEXT
);

CREATE TABLE Customer (
CustomerId INTEGER,
CityId INTEGER,
CityName TEXT
);

INSERT INTO Customer
VALUES
(1, 1, "Bob"),
(2, 1, "Sally"),
(3, 2, "Tom"),
(4, NULL, "Mike")
;

INSERT INTO City 
VALUES
(1, "Kansas City"),
(2, "New York"),
(3, "Houston")
;

SELECT'All data in Customer table';
SELECT * FROM Customer;

SELECT '\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\';

SELECT'All data in City table';
SELECT * FROM City;

SELECT '///////////////////////////////';

SELECT 'Inner Join';
SELECT * FROM Customer 
INNER JOIN City
ON Customer.CityId = City.CityId;

SELECT '==============================';

SELECT 'Left Join';
SELECT * FROM Customer 
LEFT JOIN City
ON Customer.CityId = City.CityId;

SELECT '*******************************';

SELECT 'Right Join';
SELECT * FROM Customer 
RIGHT JOIN City
ON Customer.CityId = City.CityId;

SELECT '--------------------------------';

SELECT 'Full Join';
SELECT * FROM Customer AS cs
JOIN City AS cy
ON cs.CityId = cy.CityId;
-- Using AS to shorten name

SELECT 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX';

SELECT 'Cross Join';
SELECT * FROM Customer AS cs
CROSS JOIN City AS cy
ON cs.CityId = cy.CityId
;



/* Video about Joins 
SQL Joins Tutorial for Beginners - Inner Join, Left Join, Right Join, Full Outer Join | Joey Blue
https://www.youtube.com/watch?v=2HVMiPPuPIM
*/