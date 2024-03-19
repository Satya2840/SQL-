SQL CREATE TABLE:

Syntax: 

create table "tablename"  
("column1" "data type",  
"column2" "data type",  
"column3" "data type",  
...  
"columnN" "data type");

Syntax:
First, specify the table name CREATE TABLE clause.
Second, list all columns of the table within the parentheses. In case a table has multiple columns, you need to separate them by commas (,). A column definition includes the column name followed by its data type e.g., NUMBER, VARCHAR2, and a column constraint such as NOT NULL, primary key.


to verif the table is created or not we can describe to view the Table description we wil use:

Desc "table name" 

CREATE TABLE Employee  
(  
EmployeeID number(10),    
);  

ALTER TABLE ADD COLUMN:
=======================
To add the new column to already cretaed table we will use Alter command.

Alter table "table name"
add (column ,data type);
alter table employee add (name varchar(20));

In this statement:

First, you specify the name of the table, to which you want to add the new column, after the ALTER TABLE clause.
Second, you specify the column name, data type, and its constraint.

in case if we want to add the more the one then we can write like this:
ALTER TABLE table_name 
ADD (
    column_name_1 data_type constraint,
    column_name_2 data_type constraint,
    ...
);

ALTER TABLE MODIFY COLUMN:
=====================
To modify the existing column then we can use MODIFY.
Syntax:
ALTER TABLE table_name
  MODIFY column_name type constraint;
  
alter table employee modify (name varchar2(100) NOT NULL);
  
To modify multiple columns, you use the following syntax:

 ALTER TABLE table_name
  MODIFY ( column_1 type constraint,
          column_1 type constraint,
         ...)
To remove an existing column from a table, you use the following syntax:

ALTER TABLE DROP COLUMN:
========================

ALTER TABLE table_name
DROP COLUMN column_name;

ALTER TABLE Employee
DROP COLUMN name;

To drop multiple columns at the same time, you use the syntax below:

ALTER TABLE table_name 
DROP (column_1,column_2,...);


ALTER TABLE RENAME COLUMN:
=========================
ALTER TABLE table_name
RENAME COLUMN column_name TO new_name;

ALTER TABLE EMPLOYEE
RENAME COLUMN EMPID TO EMPLOEE_ID;

ALTER TABLE RENAME TABLE:
==========================
ALTER TABLE table_name
RENAME TO new_table_name;

ALTER TABLE EMPLOYEE
RENAME TO emp;