ORDER BY:
=========
A table stores its rows in unspecified order regardless of the order which rows were inserted into the database. To query rows in either ascending or descending order by a column, you must explicitly instruct Oracle Database that you want to do so

Syntax:

SELECT
    column_1,
    column_2,
    column_3,
    ...
FROM
    table_name
ORDER BY
    column_1 [ASC | DESC],

ASC for sorting in ascending order
DESC for sorting in descending order

By default, the ORDER BY clause sorts rows in ascending order whether you specify ASC or not. If you want to sort rows in descending order, you use DESC explicitly.

Note that the ORDER BY clause is always the last clause in a SELECT statement.

column_1 [ASC | DESC] [NULLS FIRST | NULLS LAST],
NULLS FIRST places NULL values before non-NULL values and NULLS LAST puts the NULL values after non-NULL values.


SELECT
    column_1,
    column_2,
    column_3,
    ...
FROM
    table_name
ORDER BY
    column_1 [ASC | DESC] [NULLS FIRST | NULLS LAST],
    column_1 [ASC | DESC] [NULLS FIRST | NULLS LAST],
	
	When sorting mixed NULL with non-NULL values, Oracle allows you to specify which one should appear first.
	
	by default it's nulls last;
	
Where:
We will use where clause to filter the rows returned by a query.

syntax: 
SELECT
    select_list
FROM
    table_name
WHERE
    search_condition

The WHERE clause appears after the FROM clause
Besides the SELECT statement, you can use the WHERE clause in the DELETE or UPDATE statement to specify which rows to update or delete.	

if we want to use Order by withe where clause;
syntax:
SELECT
    select_list
FROM
    table_name
WHERE
    search_condition
ORDER BY
   sort_expression;