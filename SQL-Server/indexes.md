# Index

Indexes help as find particular columns in the database faster. Indexes help us avoid full database scan.

## Create Index

```sql
select * from tblEmployee

create index IX_tblEmployee_Salary /* name of the index */
ON tblEmployee /* name of the table */ 
(Salary ASC) /* column name */
```

## Drop Index

```sql
drop index tblEmployee.IX_tblEmployee_Salary
```
