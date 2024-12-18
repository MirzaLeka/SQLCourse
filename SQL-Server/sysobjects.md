# Retrieve the list of tables, SP, views, functions, etc. from database

```sql
select * from sysobjects
```

#### Retrieve list of Tables

```sql
select * from sysobjects where xtype = 'U' -- user tables
```

#### Retrieve list of Stored Procedures

```sql
select * from sysobjects where xtype = 'P' -- procedures
```

#### Retrieve list of Views

```sql
select * from sysobjects where xtype = 'V' -- views
```

#### Retrieve list of Table Functions

```sql
select * from sysobjects where xtype = 'TF' -- Table Value Function
```

#### See list of xtypes

```sql
select distinct xtype from sysobjects
```
