MariaDB [navo]> select * from pet;
+----------+--------+---------+------+------------+------------+
| Name     | Owner  | species | sex  | birth      | death      |
+----------+--------+---------+------+------------+------------+
| fluffy   | harold | cat     | f    | 1993-02-04 | 0000-00-00 |
| claws    | gwen   | cat     | f    | 1993-02-04 | 0000-00-00 |
| buffy    | harold | dog     | m    | 1993-02-04 | 0000-00-00 |
| fang     | benny  | dog     | f    | 1993-02-04 | 0000-00-00 |
| bowser   | diane  | dog     | f    | 1993-02-04 | 0000-00-00 |
| chirpy   | gwen   | bird    | m    | 1993-02-04 | 0000-00-00 |
| whistler | gwen   | bird    | f    | 1993-02-04 | 0000-00-00 |
| slim     | benny  | snake   | m    | 1993-02-04 | 0000-00-00 |
+----------+--------+---------+------+------------+------------+

ALTER TABLE pet
ADD PRIMARY KEY (name);

Query OK, 0 rows affected (0.038 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [navo]> select * from pet;
+----------+--------+---------+------+------------+------------+
| Name     | Owner  | species | sex  | birth      | death      |
+----------+--------+---------+------+------------+------------+
| bowser   | diane  | dog     | f    | 1993-02-04 | 0000-00-00 |
| buffy    | harold | dog     | m    | 1993-02-04 | 0000-00-00 |
| chirpy   | gwen   | bird    | m    | 1993-02-04 | 0000-00-00 |
| claws    | gwen   | cat     | f    | 1993-02-04 | 0000-00-00 |
| fang     | benny  | dog     | f    | 1993-02-04 | 0000-00-00 |
| fluffy   | harold | cat     | f    | 1993-02-04 | 0000-00-00 |
| slim     | benny  | snake   | m    | 1993-02-04 | 0000-00-00 |
| whistler | gwen   | bird    | f    | 1993-02-04 | 0000-00-00 |
+----------+--------+---------+------+------------+------------+

create table tb_name(
	column 1 data type;
	column 2 data type;
	column 3 data type;
)