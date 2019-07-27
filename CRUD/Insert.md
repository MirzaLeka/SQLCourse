
### Insert data into table

**Simple insert**

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

**Insert multiple** 

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

**Dealing with Null**

But if there was a third column, for example job, insrting two values
out of three would mean that job column would have value of **NULL**.

```
INSERT INTO People
VALUES ();
```

If we don't insert anything into an insert query we'll get NULL for all fields.
To **prevent** anyone from not inserting a value we use ```NOT NULL``` when creating table properties.

```
CREATE TABLE People(
  name VARCHAR(20) NOT NULL,
  age INT NOT NULL
)
```

**Default values**

Now if we make an insert and leave off one of the fields we'll get a warning message
saying that *age* field does not have a **default value**.
However, if we leave off *name* property, we'll find an empty string inside a column.

For that reason we can give default value to our properties.

```
CREATE TABLE People(
  name VARCHAR(20) DEFAULT 'Joe',
  age INT DEFAULT 18
)
```

If we leave out fields when inserting we'll find default values inside columns, but if we
add a value, we'll override default value and insert a new one.

```
INSERT INTO People
VALUES (NULL, NULL);
```

One more thing to add is we can manually insert a NULL into any field, as long as
that field is not defined as NOT NULL.
