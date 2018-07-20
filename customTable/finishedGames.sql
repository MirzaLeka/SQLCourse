CREATE TABLE finishedgames (
id INTEGER,
name TEXT,
genre TEXT,
release INTEGER,
platform TEXT
);

INSERT INTO finishedgames VALUES 
(1, "Project IGI", "Tactical Shooter", 2000, "PC"),
(2, "IGI 2 Covert Strike", "Tactical Shooter", 2003, "PC"),
(3, "Far Cry", "Tactical Shooter", 2004, "PC"),
(4, "Far Cry 2", "Tactical Shooter", 2008, "PC"),
(5, "Far Cry 3", "Tactical Shooter", 2012, "PC"),
(6, "Conflict Desert Storm 2", "Tactical Shooter", 2003, "PC"),
(7, "Marine Heavy Gunner Vietnam", "Tactical Shotoer", 2004, "PC"),
(8, "Ghost Recon", "Tactical Shotoer", 2001, "PC"),
(8, "Ghost Recon", "Tactical Shotoer", 2002, "PC"),
(9, "Ghost Recon", "Tactical Shotoer", 2002, "PC");

SELECT * FROM finishedgames;
