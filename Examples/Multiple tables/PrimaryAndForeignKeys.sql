CREATE TABLE artists (
id INTEGER PRIMARY KEY,
name TEXT
);

CREATE TABLE songs(
id INTEGER,
name TEXT,
artist INTEGER,
FOREIGN KEY (artist) REFERENCES artists(id)
);

INSERT INTO artists
VALUES 
(1, "Merlin"),
(2, "Zeljko"),
(3, "Halid")
;

INSERT INTO songs
VALUES
(1, "Libero", 2),
(2, "Crnokosa", 2),
(3, "Nedostajes", 1),
(4, "Miljacka", 3),
(5, "Kremen", 1)
;


SELECT * FROM artists;
SELECT '';
SELECT * FROM songs;



/* Since these tables are now connected if in Songs table
se set artist to a value above 3, program will crash 
becuase we have ids from one to 3. 
Artist in Songs table must be one of the ids in Artist table*/

-- One to Many 
/* One artist can have many songs, but song can only have one artist */

-- Useful links:
/*
1) Learn RDBMS in 6 minutes | helen lavery
https://www.youtube.com/watch?v=t48TGntrX4s

2) primary & foreign keys | eddie woo
https://www.youtube.com/watch?v=B5r8CcTUs5Y

3) Khan Academy SQL editor | foreign key example
https://www.khanacademy.org/computer-programming/sql-create-table-with-foreign-key-reference/4700108318965760
*/