
### Tables

Create Table

```
CREATE TABLE Table_Name (
  Column_Name Dolumn_Type,
  Column_Name Dolumn_Type
);
```

*Table names should be pluralized. People instead of Person.*

Example:

```
CREATE TABLE Tweets (
  Username VARCHAR(15), // Username up to 15 characters
  Tweet VARCHAR(140), // Up to 140 characters per tweet
  Likes INT // Likes is a number
);
˙˙˙˙

Show all tables in Database

```SHOW TABLES```

Show columns from table

```SHOW COLUMNS FROM Table_Name```

Similar syntax for displaying columns

```DESC Tweets```

Delete table

```DROP TABLE Table_Name```
