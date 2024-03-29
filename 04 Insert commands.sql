Insert:
=======

If our requirement is to insert the data into all the columns in the table then we wan use like:


Insert into table_name(col1, col2,col3) values(value1,val
ue2,value3);

First, specify the name of the table into which you want to insert.
Second, specify a list of comma-separated column names within parentheses.
Third, specify a list of comma-separated values that correspond to the column list.

If the value list has the same order as the table columns, you can skip the column list

insert into table_name values(value1, value2,etc);

but it's not the recomended.

If you exclude one or more columns from the Oracle INSERT statement, then you must specify the column list because Oracle needs it to match with values in the value list.

The column that you omit in the INSERT statement will use the default value if available or a NULL value if the column accepts a NULL value.

CREATE TABLE discounts (
    discount_id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    discount_name VARCHAR2(255) NOT NULL,
    amount NUMBER(3,1) NOT NULL
);

if we want to insert multiple rows into a table or multiple tables at a time we will use 
INSERT ALL:
sysntax:
INSERT ALL
    INTO table_name(col1,col2,col3) VALUES(val1,val2, val3)
    INTO table_name(col1,col2,col3) VALUES(val4,val5, val6)
    INTO table_name(col1,col2,col3) VALUES(val7,val8, val9)
Subquery;
In this statement, each value expression val1, val2, or val3 must refer to a column returned by the select list of the subquery.
If you want to use literal values instead of the values returned by the subquery, you use the select * from Employee;

insert All into Student (id,name) values(2,'reddy')
into Student(id,name) values(3,'Satya')
into Student(id,name) values(4,'vatti')
into Dept(deptid,dname) values(1,'IT')
into Dept(deptid,dname) values(2,'MCA')
select * from Employee where empid=1

Ex for insert into multiple tables :
insert All into Student (sno,sname) values(66,'reddy')
into Student(sno,sname) values(77,'Satya')
into emp(empid, ename,phone) values(1,'reddy',3416)
 SELECT * from emp where empid=1;

if we want to insert data into a table from the result of SELECT statement then we wil go for INSERT INTO SELECT:

INSERT INTO target_table (col1, col2, col3)
SELECT col1,
       col2,
       col3
FROM source_table;


Note: The Oracle INSERT INTO SELECTstatement requires the data type of the source and target tables to match.
Ex:
insert into Student2(sno,sname) select sno,sname from Student;

SELECT:
=======

single column,
multiple columns,
All columns
