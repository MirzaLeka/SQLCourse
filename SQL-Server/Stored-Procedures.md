# Stored Procedures

A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.

### Ceate and Run a procedure

This procedure counts all records in the given table.

```sql
CREATE PROCEDURE [dbo].[Count_Employees]
AS
select count(*) from employees
```

To run it we make use of the `exec` statement.

```sql
exec [dbo].[Count_Employees] -- retrievs a total number of employees
```

### Stored procedure with parameters

@EmployeeName is a procedure parameter that needs to be passed to run the procedure.

```sql
CREATE PROCEDURE [dbo].[Get_Employee_By_Name] @EmployeeName nvarchar(30)
AS
select * from employees where first_name = @EmployeeName
```

```sql
exec [dbo].Get_Employee_By_Name 'Georgi'
```

#

### Alter procedure

To change a procedure simply prefix the procedure code with `alter` keyword and change the code inside.

This time the procedure has two parameters, both that defualt to empty string, meaning that they're optional.

```sql
ALTER PROCEDURE [dbo].[Get_Employee_By_Name] @EmployeeFirstName nvarchar(30) = '', @EmployeeLastName nvarchar(30) = ''
AS
select * from employees where first_name = @EmployeeFirstName OR last_name = @EmployeeLastName
GO;
```

#### Let's test that it works

```sql
exec [dbo].[Get_Employee_By_Name] @EmployeeFirstName = 'Georgi'

exec [dbo].[Get_Employee_By_Name] @EmployeeLastName = 'Facello'
```

#

### Rename Procedure

To rename a procedure we can use the build-in `sp_rename` function.

```sql
exec sp_rename 'dbo.Count_Employees', 'dbo.CountAllEmployees'
```

The procedure now has a new name.

```sql
exec dbo.CountAllEmployees
```

# 

### Delete Procedure

To delete a procedure type

```sql
drop procedure <procedure-name>
```

