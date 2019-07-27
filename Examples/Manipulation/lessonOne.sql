CREATE TABLE Contacts (
id INTEGER,
name TEXT,
phone INTEGER
);

INSERT INTO Contacts (id, name, phone)
VALUES (1, "Mirza", 123);

INSERT INTO Contacts (id, name, phone)
VALUES (2, "Amila", 132);


UPDATE Contacts
SET name = "Ermin"
WHERE id = 1;

INSERT INTO Contacts (name) 
VALUES ("Mensur");

ALTER TABLE Contacts
ADD COLUMN email;

UPDATE Contacts
SET email = "mail@mail.com"
WHERE name = "Mensur" ;

DELETE FROM Contacts 
WHERE id IS NULL;

SELECT * FROM Contacts;
        