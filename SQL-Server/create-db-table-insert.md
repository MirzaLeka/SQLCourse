# SQL Server starter

## Create Database

```sql
CREATE DATABASE employees; 
USE employees;  /* switches to this DB in SQL Server shell / SSMS Query window */
```


## Create Tables

```sql

CREATE TABLE employees (
    emp_no      INT		IDENTITY(1,1) PRIMARY KEY, /* Primary Key - Auto Incrementing with each insert */
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender	VARCHAR(10)	NOT NULL CHECK (gender IN('M', 'F', 'Unknown')), /* Accepts only these values, like MYSQL Enum */
    hire_date   DATE            NOT NULL,
);

CREATE TABLE departments (
    dept_no     CHAR(4)         NOT NULL PRIMARY KEY,
    dept_name   VARCHAR(40)     NOT NULL UNIQUE,
);

CREATE TABLE dept_manager (
   emp_no       INT             NOT NULL,
   dept_no      CHAR(4)         NOT NULL,
   from_date    DATE            NOT NULL,
   to_date      DATE            NOT NULL,
   FOREIGN KEY (emp_no)  REFERENCES employees (emp_no)    ON DELETE CASCADE, /* Links Primary and Foreign Keys */
   FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
   PRIMARY KEY (emp_no,dept_no) /* Creates a composition Id (Primary Key from multiple columns) */
); 

CREATE TABLE dept_emp (
    emp_no      INT             NOT NULL,
    dept_no     CHAR(4)         NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    FOREIGN KEY (emp_no)  REFERENCES employees   (emp_no)  ON DELETE CASCADE,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE titles (
    emp_no      INT             NOT NULL,
    title       VARCHAR(50)     NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no,title, from_date)
); 

CREATE TABLE salaries (
    emp_no      INT             NOT NULL,
    salary      INT             NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no, from_date)
); 

```

Use the **ON DELETE CASCADE** option to specify whether you want rows deleted in a child table when corresponding rows are deleted in the parent table. If you do not specify cascading deletes, the default behavior of the database server prevents you from deleting data in a table if other tables reference it.

## Create Views

```sql
CREATE VIEW dept_emp_latest_date AS
    SELECT emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
    FROM dept_emp
    GROUP BY emp_no;

CREATE VIEW current_dept_emp AS
    SELECT l.emp_no, dept_no, l.from_date, l.to_date
    FROM dept_emp d
        INNER JOIN dept_emp_latest_date l
        ON d.emp_no=l.emp_no AND d.from_date=l.from_date AND l.to_date = d.to_date;
```

## Clear Cache

```sql
EXECUTE sys.sp_flush_log /* built-in stored procedure*/
```

## Insert Data

No need to pass value for `employees.emp_no` as it's automatically assigned and auto incrementing.

```sql
INSERT INTO employees VALUES ('1953-09-02','Georgi','Facello','M','1986-06-26'),
('1964-06-02','Bezalel','Simmel','F','1985-11-21'),
('1959-12-03','Parto','Bamford','M','1986-08-28'),
('1954-05-01','Chirstian','Koblick','M','1986-12-01'),
('1955-01-21','Kyoichi','Maliniak','M','1989-09-12'),
('1953-04-20','Anneke','Preusig','F','1989-06-02'),
('1957-05-23','Tzvetan','Zielinski','F','1989-02-10'),
('1958-02-19','Saniya','Kalloufi','M','1994-09-15'),
('1952-04-19','Sumant','Peac','F','1985-02-18'),
('1963-06-01','Duangkaew','Piveteau','F','1989-08-24'),
('1953-11-07','Mary','Sluis','F','1990-01-22'),
('1960-10-04','Patricio','Bridgland','M','1992-12-18'),
('1963-06-07','Eberhardt','Terkki','M','1985-10-20'),
('1956-02-12','Berni','Genin','M','1987-03-11'),
('1959-08-19','Guoxiang','Nooteboom','M','1987-07-02'),
('1961-05-02','Kazuhito','Cappelletti','M','1995-01-27'),
('1958-07-06','Cristinel','Bouloucos','F','1993-08-03'),
('1954-06-19','Kazuhide','Peha','F','1987-04-03'),
('1953-01-23','Lillian','Haddadi','M','1999-04-30'),
('1952-12-24','Mayuko','Warwick','M','1991-01-26');
```

* [Foreign Key Constraint](https://www.w3schools.com/sql/sql_foreignkey.asp)
* [SQL Reference keywords](https://www.w3schools.com/sql/sql_ref_keywords.asp)
