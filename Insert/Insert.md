
### Insert data into table

Simple insert

```
INSERT INTO Table_Name ( column1, column2 )
VALUES ( value1, value2 );
```

Let's say we have a table named People. Each person from People table has
name, which is VARCHAR(30) and age, which is INT.

```
INSERT INTO People ( name, age )
VALUES ( 'Goku', 40);
```

Goku goes to name column. 40 goes to age. 

Insert multiple 

```
INSERT INTO People ( name, age )
VALUES 
( 'Goku', 40),
( 'Vegeta', 42),
( 'Nappa', 45),
( 'Raditz', 43),
;
```

If table have two columns and we want to insert values into both,
we do not need to mention column names after table name. 
We just need to make sure we insert values in order.

```
INSERT INTO People
VALUES 
( 'Goku', 40),
( 'Vegeta', 42),
( 'Nappa', 45),
( 'Raditz', 43),
;
```

But if there was a third column, for example job, insrting two values
out of three would mean that job column would have value of NULL.