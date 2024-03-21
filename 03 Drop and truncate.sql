DROP Table:
===========
to drop the table from the DATABASE we can use the DROP.
SYNTAX:
Drop table table_name;

Ex:
Drop table Employee;

Note:
let's assume we have PRIMERY KEY and FOREIGN KEY relationship betwen the tables:
we need to use the : DROP TABLE CASCADE CONSTRAINTS

TRUNCATE TABLE:
===============
When you want to delete all data from a table, you use the DELETE statement without theWHERE clause

Ex:
DELETE FROM table_name; // we can use where clause also for DELETE.

For a table with a small number of rows, the DELETE statement does a good job. However, when you have a table with a large number of rows, using the DELETE statement to remove all data is not efficient.

Oracle introduced the TRUNCATE TABLE statement that allows you to delete all rows from a big table.

Syntax:
TRUNCATE TABLE table_name;

If a table has relationships with other tables via the foreign key constraints, you need to use the CASCADE clause:

TRUNCATE TABLE table_name
CASCADE;




