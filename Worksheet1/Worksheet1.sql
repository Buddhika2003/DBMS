//Q01
create table WORKER(
	WORKER_ID VARCHAR(20),
	FIRST_NAME VARCHAR(20),
	LAST_NAME VARCHAR(20),
	SALARY INT,
	JOINING_DATE DATE,
	DEPARTMENT VARCHAR(20));

	MariaDB [worksheet01]> DESC WORKER;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| WORKER_ID    | varchar(20) | YES  |     | NULL    |       |
| FIRST_NAME   | varchar(20) | YES  |     | NULL    |       |
| LAST_NAME    | varchar(20) | YES  |     | NULL    |       |
| SALARY       | int(11)     | YES  |     | NULL    |       |
| JOINING_DATE | date        | YES  |     | NULL    |       |
| DEPARTMENT   | varchar(20) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+

insert into WORKER(WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)
	VALUES('001','MONIKA','ARORA',100000,20/02/2021,'HR'),
          ('002','NIHARIKA','VARMA',80000,11/06/2021,'ADMIN'),
          ('003','VISHAL','SINHAL',300000,20/02/2021,'HR'),
          ('004','AMITABH','SINGH',500000,20/02/2021,'ADMIN'),
          ('005','VIVEK','BHATI',200000,11/06/2021,'ADMIN'),
          ('006','VIPUL','DIWAN',200000,11/06/2021,'ACCOUNT'),
          ('007','SATISH','KUMAR',75000,20/01/2021,'ACCOUNT'),
          ('008','GEETIKA','CHAUHAN',90000,11/04/2021,'ADMIN');
        
MariaDB [worksheet01]> SELECT * FROM WORKER;
+-----------+------------+-----------+--------+--------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE | DEPARTMENT |
+-----------+------------+-----------+--------+--------------+------------+
| 001       | MONIKA     | ARORA     | 100000 | 0000-00-00   | HR         |
| 002       | NIHARIKA   | VARMA     |  80000 | 0000-00-00   | ADMIN      |
| 003       | VISHAL     | SINHAL    | 300000 | 0000-00-00   | HR         |
| 004       | AMITABH    | SINGH     | 500000 | 0000-00-00   | ADMIN      |
| 005       | VIVEK      | BHATI     | 200000 | 0000-00-00   | ADMIN      |
| 006       | VIPUL      | DIWAN     | 200000 | 0000-00-00   | ACCOUNT    |
| 007       | SATISH     | KUMAR     |  75000 | 0000-00-00   | ACCOUNT    |
| 008       | GEETIKA    | CHAUHAN   |  90000 | 0000-00-00   | ADMIN      |
+-----------+------------+-----------+--------+--------------+------------+


//Q2

create table EMPLOYEE(
	ID VARCHAR(10),
	NAME VARCHAR(10),
	COUNTRY VARCHAR(10),
	SALARY INT);

MariaDB [buddhika]> DESC EMPLOYEE;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| ID      | varchar(10) | YES  |     | NULL    |       |
| NAME    | varchar(10) | YES  |     | NULL    |       |
| COUNTRY | varchar(10) | YES  |     | NULL    |       |
| SALARY  | int(11)     | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+


load data local infile '/Users/buddhikarathnayake/Desktop/IT1223DBMS/Employee.txt' 
into table EMPLOYEE
FIELDS TERMINATED BY ',' ;

MariaDB [buddhika]> SELECT * FROM EMPLOYEE;
+------+--------+---------+--------+
| ID   | NAME   | COUNTRY | SALARY |
+------+--------+---------+--------+
| 100  | John   | USA     |  10000 |
| 101  | Paul   | UK      |  12000 |
| 102  | Hendry | NZ      |  11000 |
| 103  | Rick   | USA     |  17000 |
| 104  | Corey  | USA     |  15000 |
+------+--------+---------+--------+


//Q3

CREATE TABLE COUNTRY(
	ID VARCHAR(10),
	COUNTRY VARCHAR(20),
	POPULATION VARCHAR(10),
	CAPITAL VARCHAR(10));

MariaDB [WORKSHEET01]> DESC COUNTRY;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| ID         | varchar(10) | YES  |     | NULL    |       |
| COUNTRY    | varchar(20) | YES  |     | NULL    |       |
| POPULATION | varchar(10) | YES  |     | NULL    |       |
| CAPITAL    | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+

LOAD DATA LOCAL INFILE '/Users/buddhikarathnayake/Desktop/IT1223DBMS/Country.TXT'
into table Country
FIELDS TERMINATED BY ',' ;

MariaDB [worksheet01]> select * from country;
+------+-----------+------------+------------+
| ID   | COUNTRY   | POPULATION | CAPITAL    |
+------+-----------+------------+------------+
| 1    | USA       | 329500000  | WASHINGTON |
| 2    | CANADA    | 38010000   | OTTAWA     |
| 3    | UK        | 67220000   | LONDON     |
| 4    | SPAIN     | 47350000   | MADRID     |
| 5    | GREENLAND | 56367      | NUUK       |
+------+-----------+------------+------------+



