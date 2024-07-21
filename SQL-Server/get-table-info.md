## Retrieve info on SQL tables in DB
- name, columns, column types constaints

```sql
  SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'X'
```

## Retrieve info on SQL functions in DB

```sql
  select * from INFORMATION_SCHEMA.PARAMETERS
```

## Using a built-in SP

```sql
EXEC sp_help 'dbo.<table-name>';
```
