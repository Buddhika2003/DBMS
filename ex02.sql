create table pet(
	name varchar(20),
	owner varchar(20),
	species varchar(20),
	sex varchar(20),
	birth date,
	death date);
	
	MariaDB [buddhika]> desc pet;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| name    | varchar(20) | YES  |     | NULL    |       |
| owner   | varchar(20) | YES  |     | NULL    |       |
| species | varchar(20) | YES  |     | NULL    |       |
| sex     | varchar(20) | YES  |     | NULL    |       |
| birth   | date        | YES  |     | NULL    |       |
| death   | date        | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
	

insert into pet(name,owner,species,sex,birth,death)
	values('fluffy','harold','cat','f','1993-02-04','null'),
		  ('claws','gwen','cat','f','1993-02-04','null'),
		  ('buffy','harold','dog','m','1993-02-04','null'),
		  ('fang','benny','dog','f','1993-02-04','null'),
		  ('bowser','diane','dog','m','1993-02-04','null'),
		  ('chirpy','gwen','bird','f','1993-02-04','null'),
		  ('whistler','gwen','bird','f','1993-02-04','null'),
		  ('slim','benny','snake','m','1993-02-04','null');
		  
		  MariaDB [buddhika]> select * from pet;
+----------+--------+---------+------+------------+------------+
| name     | owner  | species | sex  | birth      | death      |
+----------+--------+---------+------+------------+------------+
| fluffy   | harold | cat     | f    | 1993-02-04 | 0000-00-00 |
| claws    | gwen   | cat     | f    | 1993-02-04 | 0000-00-00 |
| buffy    | harold | dog     | m    | 1993-02-04 | 0000-00-00 |
| fang     | benny  | dog     | f    | 1993-02-04 | 0000-00-00 |
| bowser   | diane  | dog     | m    | 1993-02-04 | 0000-00-00 |
| chirpy   | gwen   | bird    | f    | 1993-02-04 | 0000-00-00 |
| whistler | gwen   | bird    | f    | 1993-02-04 | 0000-00-00 |
| slim     | benny  | snake   | m    | 1993-02-04 | 0000-00-00 |
+----------+--------+---------+------+------------+------------+

write a query to find names begining with 'b'.

MariaDB [buddhika]> SELECT * from pet WHERE name LIKE 'b%';
+--------+--------+---------+------+------------+------------+
| name   | owner  | species | sex  | birth      | death      |
+--------+--------+---------+------+------------+------------+
| buffy  | harold | dog     | m    | 1993-02-04 | 0000-00-00 |
| bowser | diane  | dog     | m    | 1993-02-04 | 0000-00-00 |
+--------+--------+---------+------+------------+------------+

write a query to find names ending with 'y'.

MariaDB [buddhika]> SELECT * from pet WHERE name LIKE '%y';
+--------+--------+---------+------+------------+------------+
| name   | owner  | species | sex  | birth      | death      |
+--------+--------+---------+------+------------+------------+
| fluffy | harold | cat     | f    | 1993-02-04 | 0000-00-00 |
| buffy  | harold | dog     | m    | 1993-02-04 | 0000-00-00 |
| chirpy | gwen   | bird    | f    | 1993-02-04 | 0000-00-00 |
+--------+--------+---------+------+------------+------------+

write a query to find names ending with 'fy'.

MariaDB [buddhika]> SELECT * from pet WHERE name LIKE '%fy';
+--------+--------+---------+------+------------+------------+
| name   | owner  | species | sex  | birth      | death      |
+--------+--------+---------+------+------------+------------+
| fluffy | harold | cat     | f    | 1993-02-04 | 0000-00-00 |
| buffy  | harold | dog     | m    | 1993-02-04 | 0000-00-00 |
+--------+--------+---------+------+------------+------------+


write a query to find names containing a'w'.

MariaDB [buddhika]> SELECT * from pet WHERE name LIKE '%w%';
+----------+-------+---------+------+------------+------------+
| name     | owner | species | sex  | birth      | death      |
+----------+-------+---------+------+------------+------------+
| claws    | gwen  | cat     | f    | 1993-02-04 | 0000-00-00 |
| bowser   | diane | dog     | m    | 1993-02-04 | 0000-00-00 |
| whistler | gwen  | bird    | f    | 1993-02-04 | 0000-00-00 |
+----------+-------+---------+------+------------+------------+

write a query to find names containing exactly five characters.

MariaDB [buddhika]> SELECT * from pet WHERE name LIKE '_____';
+-------+--------+---------+------+------------+------------+
| name  | owner  | species | sex  | birth      | death      |
+-------+--------+---------+------+------------+------------+
| claws | gwen   | cat     | f    | 1993-02-04 | 0000-00-00 |
| buffy | harold | dog     | m    | 1993-02-04 | 0000-00-00 |
+-------+--------+---------+------+------------+------------+



MariaDB [buddhika]> SELECT * from pet WHERE name REGEXP '^b';
+--------+--------+---------+------+------------+------------+
| name   | owner  | species | sex  | birth      | death      |
+--------+--------+---------+------+------------+------------+
| buffy  | harold | dog     | m    | 1993-02-04 | 0000-00-00 |
| bowser | diane  | dog     | m    | 1993-02-04 | 0000-00-00 |
+--------+--------+---------+------+------------+------------+


MariaDB [buddhika]> SELECT * from pet WHERE name REGEXP 'fy$';
+--------+--------+---------+------+------------+------------+
| name   | owner  | species | sex  | birth      | death      |
+--------+--------+---------+------+------------+------------+
| fluffy | harold | cat     | f    | 1993-02-04 | 0000-00-00 |
| buffy  | harold | dog     | m    | 1993-02-04 | 0000-00-00 |
+--------+--------+---------+------+------------+------------+

MariaDB [buddhika]> SELECT * from pet WHERE name REGEXP 'w';
+----------+-------+---------+------+------------+------------+
| name     | owner | species | sex  | birth      | death      |
+----------+-------+---------+------+------------+------------+
| claws    | gwen  | cat     | f    | 1993-02-04 | 0000-00-00 |
| bowser   | diane | dog     | m    | 1993-02-04 | 0000-00-00 |
| whistler | gwen  | bird    | f    | 1993-02-04 | 0000-00-00 |
+----------+-------+---------+------+------------+------------+


write a query to find names containing exactly five characters.

MariaDB [buddhika]> SELECT * from pet WHERE name REGEXP '^.....$';
+-------+--------+---------+------+------------+------------+
| name  | owner  | species | sex  | birth      | death      |
+-------+--------+---------+------+------------+------------+
| claws | gwen   | cat     | f    | 1993-02-04 | 0000-00-00 |
| buffy | harold | dog     | m    | 1993-02-04 | 0000-00-00 |
+-------+--------+---------+------+------------+------------+




CREATE TABLE products(
		Product_id varchar(20),
		Product_Name varchar(20),
		Product_cost varchar(20));
		
MariaDB [buddhika]> desc products;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| Product_id   | varchar(20) | YES  |     | NULL    |       |
| Product_Name | varchar(20) | YES  |     | NULL    |       |
| Product_cost | varchar(20) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+

insert into products(product_id,product_name,product_cost)
	values  ('1001','Colgate_toothpaste','2.25'),
	  ('1001','Colgate_toothpaste','2.25'),
	  ('1002','T-shirt','5'),
	  ('1003','Jeans','6.5'),
	  ('1004','Shorts','4.5'),
	  ('1005','Sneakers','8.99'),
	  ('1007','Mouthwawsh','3.35'),
      ('1008','Denim Jeans','8.99'),
	  ('1009','Synsodyne_toothpaste','3.35');
	  
	  
MariaDB [buddhika]> SELECT * from products;
+------------+----------------------+--------------+
| Product_id | Product_Name         | Product_cost |
+------------+----------------------+--------------+
| 1001       | Colgate_toothpaste   | 2.25         |
| 1001       | Colgate_toothpaste   | 2.25         |
| 1002       | T-shirt              | 5            |
| 1003       | Jeans                | 6.5          |
| 1004       | Shorts               | 4.5          |
| 1005       | Sneakers             | 8.99         |
| 1007       | Mouthwawsh           | 3.35         |
| 1008       | Denim Jeans          | 8.99         |
| 1009       | Synsodyne_toothpaste | 3.35         |
+------------+----------------------+--------------+

MariaDB [buddhika]> select * from products where product_cost>3.50;
+------------+--------------+--------------+
| Product_id | Product_Name | Product_cost |
+------------+--------------+--------------+
| 1002       | T-shirt      | 5            |
| 1003       | Jeans        | 6.5          |
| 1004       | Shorts       | 4.5          |
| 1005       | Sneakers     | 8.99         |
| 1008       | Denim Jeans  | 8.99         |
+------------+--------------+--------------+


SELECT Product_Name,Product_cost FROM products
		Group by Product_Name,Product_cost
		Having sum(Product_cost)>3.5
		ORDER BY Product_cost;
		
+--------------------+--------------+
| Product_Name       | Product_cost |
+--------------------+--------------+
| Colgate_toothpaste | 2.25         |
| Shorts             | 4.5          |
| T-shirt            | 5            |
| Jeans              | 6.5          |
| Denim Jeans        | 8.99         |
| Sneakers           | 8.99         |
+--------------------+--------------+

SELECT Product_Name FROM products
		Group by Product_Name
		Having MAX(Product_cost)>7;

+--------------+
| Product_Name |
+--------------+
| Denim Jeans  |
| Sneakers     |
+--------------+

SELECT Product_Name FROM products
		Group by Product_Name
		Having MIN(Product_cost)<3;
		
+--------------------+
| Product_Name       |
+--------------------+
| Colgate_toothpaste |
+--------------------+

