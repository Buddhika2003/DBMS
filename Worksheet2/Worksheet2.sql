//Worksheet02
//Q01
 SHOW DATABASES;

+--------------------+
| Database           |
+--------------------+
| Worksheet01        |
| buddhika           |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+

MariaDB [worksheet01]> create database Worksheet02;
MariaDB [worksheet01]> use worksheet02;
Database changed

create table fasstudents(
	FIRST_NAME VARCHAR(20),
	LAST_NAME VARCHAR(20),
	ADDRESS VARCHAR(20),
	SEX VARCHAR(20),
	DATE_OF_BIRTH DATE,
	COURSE VARCHAR(20),
	TELEPHONE VARCHAR(20));


MariaDB [worksheet02]> DESC FASSTUDENTS;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| FIRST_NAME    | varchar(20) | YES  |     | NULL    |       |
| LAST_NAME     | varchar(20) | YES  |     | NULL    |       |
| ADDRESS       | varchar(20) | YES  |     | NULL    |       |
| SEX           | varchar(20) | YES  |     | NULL    |       |
| DATE_OF_BIRTH | date        | YES  |     | NULL    |       |
| COURSE        | varchar(20) | YES  |     | NULL    |       |
| TELEPHONE     | varchar(20) | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+

LOAD DATA LOCAL INFILE '/Users/buddhikarathnayake/Desktop/IT1223DBMS/Worksheet2/student.txt'
INTO TABLE fasstudents
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"';

MariaDB [Worksheet02]> select * from fasstudents;
+------------+-------------+----------------------+------+---------------+------------------+-------------+
| FIRST_NAME | LAST_NAME   | ADDRESS              | SEX  | DATE_OF_BIRTH | COURSE           | TELEPHONE   |
+------------+-------------+----------------------+------+---------------+------------------+-------------+
| Nimal      | Perera      | 10A, Galle Road, Col | M    | 1990-05-15    | Computer Science | 011-2345678 |
| Kamala     | Silva       | 25, Kandy Road, Gamp | F    | 1992-09-20    | IT               | 033-4567890 |
| Sunil      | Fernando    | 30, Negombo Road, Ne | M    | 1988-03-10    | IT               | 031-3456789 |
| Anula      | Rajapakse   | 5B, Matara Street, M | F    | 1995-12-03    | Computer Science | 041-5678901 |
| Malith     | Jayawardena | 15, Kurunegala Road, | M    | 1993-07-18    | IT               | 037-6789012 |
| Sujatha    | Bandara     | 20, Jaffna Road, Jaf | F    | 1991-11-25    | Computer Science | 021-7890123 |
| Chamara    | Rathnayake  | 35, Ratnapura Road,  | M    | 1994-08-12    | IT               | 045-8901234 |
| Lakmini    | Wijesinghe  | 8C, Badulla Street,  | F    | 1989-06-30    | Computer Science | 055-9012345 |
| Upul       | Dissanayake | 40, Ampara Road, Amp | M    | 1996-02-14    | Computer Science | 063-0123456 |
| Tharanga   | Perumal     | 55, Polonnaruwa Road | F    | 1997-04-05    | IT               | 027-1234567 |
+------------+-------------+----------------------+------+---------------+------------------+-------------+


UPDATE fasstudents
SET DATE_OF_BIRTH='1992-03-10'
WHERE FIRST_NAME='Sunil' AND LAST_NAME='Fernando' ;

MariaDB [Worksheet02]> select * from fasstudents;
+------------+-------------+----------------------+------+---------------+------------------+-------------+
| FIRST_NAME | LAST_NAME   | ADDRESS              | SEX  | DATE_OF_BIRTH | COURSE           | TELEPHONE   |
+------------+-------------+----------------------+------+---------------+------------------+-------------+
| Nimal      | Perera      | 10A, Galle Road, Col | M    | 1990-05-15    | Computer Science | 011-2345678 |
| Kamala     | Silva       | 25, Kandy Road, Gamp | F    | 1992-09-20    | IT               | 033-4567890 |
| Sunil      | Fernando    | 30, Negombo Road, Ne | M    | 1992-03-10    | IT               | 031-3456789 |
| Anula      | Rajapakse   | 5B, Matara Street, M | F    | 1995-12-03    | Computer Science | 041-5678901 |
| Malith     | Jayawardena | 15, Kurunegala Road, | M    | 1993-07-18    | IT               | 037-6789012 |
| Sujatha    | Bandara     | 20, Jaffna Road, Jaf | F    | 1991-11-25    | Computer Science | 021-7890123 |
| Chamara    | Rathnayake  | 35, Ratnapura Road,  | M    | 1994-08-12    | IT               | 045-8901234 |
| Lakmini    | Wijesinghe  | 8C, Badulla Street,  | F    | 1989-06-30    | Computer Science | 055-9012345 |
| Upul       | Dissanayake | 40, Ampara Road, Amp | M    | 1996-02-14    | Computer Science | 063-0123456 |
| Tharanga   | Perumal     | 55, Polonnaruwa Road | F    | 1997-04-05    | IT               | 027-1234567 |
+------------+-------------+----------------------+------+---------------+------------------+-------------+

SELECT * FROM fasstudents
WHERE FIRST_NAME='Sunil' AND LAST_NAME='Fernando' ;

+------------+-----------+----------------------+------+---------------+--------+-------------+
| FIRST_NAME | LAST_NAME | ADDRESS              | SEX  | DATE_OF_BIRTH | COURSE | TELEPHONE   |
+------------+-----------+----------------------+------+---------------+--------+-------------+
| Sunil      | Fernando  | 30, Negombo Road, Ne | M    | 1992-03-10    | IT     | 031-3456789 |
+------------+-----------+----------------------+------+---------------+--------+-------------+

SELECT * FROM fasstudents
WHERE DATE_OF_BIRTH>='1993-01-01';

+------------+-------------+----------------------+------+---------------+------------------+-------------+
| FIRST_NAME | LAST_NAME   | ADDRESS              | SEX  | DATE_OF_BIRTH | COURSE           | TELEPHONE   |
+------------+-------------+----------------------+------+---------------+------------------+-------------+
| Anula      | Rajapakse   | 5B, Matara Street, M | F    | 1995-12-03    | Computer Science | 041-5678901 |
| Malith     | Jayawardena | 15, Kurunegala Road, | M    | 1993-07-18    | IT               | 037-6789012 |
| Chamara    | Rathnayake  | 35, Ratnapura Road,  | M    | 1994-08-12    | IT               | 045-8901234 |
| Upul       | Dissanayake | 40, Ampara Road, Amp | M    | 1996-02-14    | Computer Science | 063-0123456 |
| Tharanga   | Perumal     | 55, Polonnaruwa Road | F    | 1997-04-05    | IT               | 027-1234567 |
+------------+-------------+----------------------+------+---------------+------------------+-------------+


SELECT * FROM fasstudents
WHERE sex='F' AND COURSE='Computer Science';

+------------+------------+----------------------+------+---------------+------------------+-------------+
| FIRST_NAME | LAST_NAME  | ADDRESS              | SEX  | DATE_OF_BIRTH | COURSE           | TELEPHONE   |
+------------+------------+----------------------+------+---------------+------------------+-------------+
| Anula      | Rajapakse  | 5B, Matara Street, M | F    | 1995-12-03    | Computer Science | 041-5678901 |
| Sujatha    | Bandara    | 20, Jaffna Road, Jaf | F    | 1991-11-25    | Computer Science | 021-7890123 |
| Lakmini    | Wijesinghe | 8C, Badulla Street,  | F    | 1989-06-30    | Computer Science | 055-9012345 |
+------------+------------+----------------------+------+---------------+------------------+-------------+


SELECT * FROM fasstudents
WHERE sex='F' AND (COURSE='Computer Science' or COURSE='IT');

+------------+------------+----------------------+------+---------------+------------------+-------------+
| FIRST_NAME | LAST_NAME  | ADDRESS              | SEX  | DATE_OF_BIRTH | COURSE           | TELEPHONE   |
+------------+------------+----------------------+------+---------------+------------------+-------------+
| Kamala     | Silva      | 25, Kandy Road, Gamp | F    | 1992-09-20    | IT               | 033-4567890 |
| Anula      | Rajapakse  | 5B, Matara Street, M | F    | 1995-12-03    | Computer Science | 041-5678901 |
| Sujatha    | Bandara    | 20, Jaffna Road, Jaf | F    | 1991-11-25    | Computer Science | 021-7890123 |
| Lakmini    | Wijesinghe | 8C, Badulla Street,  | F    | 1989-06-30    | Computer Science | 055-9012345 |
| Tharanga   | Perumal    | 55, Polonnaruwa Road | F    | 1997-04-05    | IT               | 027-1234567 |
+------------+------------+----------------------+------+---------------+------------------+-------------+


SELECT FIRST_NAME,DATE_OF_BIRTH FROM fasstudents;

+------------+---------------+
| FIRST_NAME | DATE_OF_BIRTH |
+------------+---------------+
| Nimal      | 1990-05-15    |
| Kamala     | 1992-09-20    |
| Sunil      | 1992-03-10    |
| Anula      | 1995-12-03    |
| Malith     | 1993-07-18    |
| Sujatha    | 1991-11-25    |
| Chamara    | 1994-08-12    |
| Lakmini    | 1989-06-30    |
| Upul       | 1996-02-14    |
| Tharanga   | 1997-04-05    |
+------------+---------------+



