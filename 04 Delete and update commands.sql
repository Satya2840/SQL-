Update:
======
To changes existing values in a table, you use the Oracle UPDATE statement:
syntax:

UPDATE
    table_name
SET
    column1 = value1,
    column2 = value2,
    column3 = value3,
    ...
WHERE
    condition;
	
	First, you specify the name of the table which you want to update.
Second, you specify the name of the column whose values are to be updated and the new value. If you update more than two columns, you separate each expression column = value by a comma. The value1, value2, or value3 can be literals or a subquery that returns a single value. Note that the UPDATE statement allows you to update as many columns as you want.
Third, the WHERE clause determines which rows of the table should be updated. The WHERE clause is optional. If you omit it, the UPDATE statement will update all rows of the table.


Delete:

To delete one or more rows from a table, you use the Oracle DELETE statement

syntax:
DELETE
FROM
    table_name
WHERE
    condition;
	
	First, you specify the name of the table from which you want to delete data.
Second, you specify which row should be deleted by using the condition in the WHERE clause. If you omit the WHERE clause, the Oracle DELETE statement removes all rows from the table.

