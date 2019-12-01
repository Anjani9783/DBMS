SQL*It is to add any colomn in the table 
 Syntax:-
     alter table table_name add (colomn Name datatype)  
SQL> alter table std add
  2  (state varchar(12)
  3  );

Table altered.
SQL*now the table will be as shown below..

SQL> desc std
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL_NO                                   NOT NULL NUMBER(38)
 NAME                                               VARCHAR2(15)
 DEPT                                               VARCHAR2(4)
 CITY                                               VARCHAR2(10)
 DOB                                       NOT NULL DATE
 GENDER                                             VARCHAR2(1)
 STATE                                              VARCHAR2(12)


SQL*It is to drop any colomn from any table 
Syntax:- alter table table_name  drop (colomn_name) 

SQL> alter table std drop (
  2  city
  3  );

Table altered.

SQL*now the table will look like..

SQL> desc std;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL_NO                                   NOT NULL NUMBER(38)
 NAME                                               VARCHAR2(15)
 DEPT                                               VARCHAR2(4)
 DOB                                       NOT NULL DATE
 GENDER                                             VARCHAR2(1)
 STATE                                              VARCHAR2(12)



SQL*It is to modify any colomn of the table 
Syntax:- alter table table_name modify (colomn_name datatype)

SQL> alter table std modify (
  2  Roll_no varchar(2)
  3  );

Table altered.
SQL*after modification our table will look like..

SQL> desc std;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL_NO                                   NOT NULL VARCHAR2(2)
 NAME                                               VARCHAR2(15)
 DEPT                                               VARCHAR2(4)
 DOB                                       NOT NULL DATE
 GENDER                                             VARCHAR2(1)
 STATE                                              VARCHAR2(12)

SQL*It is to rename any table 
Syntax:- rename old_table_name to new_table_name

SQL> rename std to student;

Table renamed.

SQL*after this operation if we search the table by its old name then the output will be as shown below

SQL> desc std;
ERROR:
ORA-04043: object std does not exist

SQL*table after changing its name

SQL> desc student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL_NO                                   NOT NULL VARCHAR2(2)
 NAME                                               VARCHAR2(15)
 DEPT                                               VARCHAR2(4)
 DOB                                       NOT NULL DATE
 GENDER                                             VARCHAR2(1)
 STATE                                              VARCHAR2(12)

SQL> drop table student;
table dropped

SQL> desc student;
ERROR:
ORA-04043: object student does not exist


