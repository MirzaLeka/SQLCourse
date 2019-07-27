
### Primary Key

Primary Key serves as a **uniquely identifier** for each field inside a table.
It's usually tied up with Id field. 

Once you insert a field with an id of 1, you cannot insert another field and give it
the same id. 
What you can do is manually insert data for the id, but you don't have.

You can **auto increment** id with each new insert.

**MYSQL**

```
CREATE TABLE Users (
  User_Id INT AUTO_INCREMENT PRIMARY KEY,
  User_Name VARCHAR(30) NOT NULL,
  User_Age INT DEFAULT 0
);
```

**MSSQL**

```
CREATE TABLE Users (
  User_Id INT IDENTITY(1, 1) PRIMARY KEY,
  User_Name VARCHAR(30) NOT NULL,
  User_Age INT DEFAULT 0
);
```
