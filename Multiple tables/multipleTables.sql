CREATE TABLE Devs (
id INTEGER,
name TEXT,
hometown TEXT
);

INSERT INTO Devs
VALUES 
(1, "Suljo", "Krajina"),
(2, "Raha", "Sarajevo"),
(3, "Kicin", "Krajina"),
(4, "Nidal", "Kakanj"),
(5, "Mirza", "Sarajevo"),
(6, "Omer", "Visoko"),
(7, "Armin", "Jablanica");
;

CREATE TABLE Job(
id INTEGER,
name TEXT,
home TEXT
);

INSERT INTO Job
VALUES 
(1, "Crypto dev", "Sarajevo"),
(2, "Node dev", "Sarajevo"),
(3, "PHP dev", "Sarajevo"),
(4, "Java dev", "Sarajevo"),
(5, "Node dev", "Sarajevo"),
(6, "Java dev", "Visoko"),
(7, "Java dev", "Jablanica")
;

SELECT 'Devs:';
SELECT * FROM Devs;

SELECT '-----------------------';
SELECT '';

SELECT 'Job:';
SELECT * FROM Job;

SELECT '-----------------------';
SELECT '';

SELECT'Join tables Devs and Job where their ids match:';
SELECT * 
FROM Devs
JOIN Job
ON Devs.id = Job.id;

SELECT '-----------------------';
SELECT '';

SELECT'Join tables Devs and Job where their home matches:';
SELECT * 
FROM Devs
JOIN Job
ON Devs.hometown = Job.home;

-- So this was inner Join. It shows you columns which connected and leaves out the ones that didn't.
-- Ovo je tacno jer je spojio sve developere koji zive u Sarjaevu sa svim poslovima koji su u sarajevu
-- Stoga 2 developer iz Sarajeva, 5 poslova iz Sarajeva, 2 * 5 = 10
-- Ali zato svi ovi koji su iz jednog grada u zive u istom tom gradu oni su prikazani samo jednom


-- SELECT Devs.name, Job.name ==> moram naglasiti ime tabele, zatim kolonu koju zelim prikazati => ime developera i njegov posao

SELECT '-----------------------';
SELECT '';

