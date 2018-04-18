CREATE TABLE Movies (
id INTEGER,
movie TEXT,
release INTEGER,
genre TEXT
);

-- Main values
INSERT INTO Movies (id, movie, release, genre)
VALUES
(1, "Iron man", 2008, "Action"),
(2, "Iron man 2", 2010, "Action"),
(3, "Iron man 3", 2013, "Action"),
(4, "Iron man", 2008, "Action"),
(5, "Iron man 3", 2013, "Action"),
(6, "Iron man 2", 2010, "Action"),
(7, "Iron man 3", 2013, "Action"),
(8, "The Incredible Hulk", 2008, "Action"),
(9, "The Avengers", 2011, "Action"),
(10, "Spider Man Homecoming", 2017, "Action"),
(12, "Ace Ventura: Pet Detective", 1994, "Comedy"),
(13, "It Follows", 2014, "Horror")
;

-- I'll choose not to include release year and genre here for later tests
INSERT INTO Movies (id, movie)
VALUES  
(11, "Splinter Cell");

-- Selects all movies as Marvel Movies and removes dupliactes with Distinct
SELECT DISTINCT movie AS "Marvel Movies" FROM movies;

-- Lines between queries
SELECT '';
SELECT '---------------------------------------';

-- Select all Distinct movies released not prior to 2010
SELECT DISTINCT movie FROM movies WHERE release >= 2010;

SELECT '';
SELECT '---------------------------------------';

-- Select only distinct movies that have world a "man"
SELECT DISTINCT movie FROM movies  WHERE movie LIKE '%man%';

SELECT '';
SELECT '---------------------------------------';

-- Selects movies that have no release year (didn't released yet)
SELECT movie FROM Movies
WHERE release IS NULL;

SELECT '';
SELECT '---------------------------------------';

-- Selects all from movies that release from 2009 to 2015
SELECT * FROM Movies
WHERE release BETWEEN 2009 AND 2015;


SELECT '';
SELECT '---------------------------------------';

-- Select all movies released between 2011 and 2017 that were horror movies
SELECT * FROM Movies
WHERE release BETWEEN 2011 AND 2017
AND genre = "Horror";

SELECT '';
SELECT '---------------------------------------';

-- Select distinct movies that are either released after 2011 or are comedies
SELECT DISTINCT movie FROM movies 
WHERE release > 2011 OR genre = "Comedy";

SELECT '';
SELECT '---------------------------------------';

-- Select distinct movie & release that released at 2008 or later and order it by release year from newest to oldest => DESC (opposite of ASC)
SELECT DISTINCT movie, release FROM movies
WHERE release >= 2008 
ORDER BY release DESC;

SELECT '';
SELECT '---------------------------------------';

-- Select distinct (I use distinct a lot, don't I?) movie in A-Z order (ASC)
SELECT DISTINCT movie FROM Movies
WHERE release > 1998
ORDER BY movie ASC;

SELECT '';
SELECT '---------------------------------------';

-- Select all movies which are Not comedies, order them by release from A to Z and limit to only 10 results
SELECT * FROM Movies
WHERE genre != "Comedy"
ORDER BY release ASC
LIMIT 10;

SELECT '';
SELECT '---------------------------------------';

-- Gives a comment to all selected movies based on their release year. I think I know how this works but when I see the result I get confused
SELECT DISTINCT movie, release,
CASE 
WHEN release >= 2005 THEN 'Older'
WHEN release >= 2015 THEN 'Latest'
ELSE 'Way too old'
END
FROM Movies;