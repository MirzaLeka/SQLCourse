
### Working with Strings

**Concat**

Concat is used to join together strings and column names.

```
QUERY: SELECT CONCAT('Hello', 'World');
OUTPUT: HelloWorld
```

```
QUERY: SELECT CONCAT('Hello', ' : ', 'World');
OUTPUT: Hello : World
```

``` SELECT CONCAT( Column_Name, ' ', Column_Name ) FROM Table_Name; ```


**Concat_WS**

Concat_WS places character/s in the first parameter in between strings and columns we are concatenating.

``` 
QUERY: SELECT CONCAT_WS('-', 'Hello', 'World', '!'); 
OUTPUT: Hello-World-!
```

In this case we have dash (hyphen) between words.


**Substring**


In SQL starting index is **number 1**.


**Reverse**

Reverse is used to reverse a string.

```
QUERY: SELECT REVERSE('Hello World')
OUTPUT: dlroW olleH
```

``` SELECT REVERSE( Column_Name ) FROM Table_Name ```


**Char Length**

Tells you how many characters there are in the string.

```
QUERY: SELECT CHAR_LENGTH('Hello World')
OUTPUT: 11
```

``` SELECT Column_Name , CHAR_LENGTH( Column_Name ) AS 'length' FROM Table_Name ```


**Upper**

Uppercase a string.

```
QUERY: SELECT UPPER('Hello World')
OUTPUT: HELLO WORLD
```


**Lower**

Lowercase a string.

```
QUERY: SELECT LOWER('Hello World')
OUTPUT: hello world
```
