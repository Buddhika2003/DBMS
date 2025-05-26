create table Authors(
	AuthorID varchar(20),
	AuthorName varchar(30));
	
	MariaDB [navo]> desc authors;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| AuthorID   | varchar(20) | YES  |     | NULL    |       |
| AuthorName | varchar(30) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+

alter table Authors
ADD PRIMARY KEY (AuthorID);

Query OK, 0 rows affected (0.024 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [navo]> desc authors;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| AuthorID   | varchar(20) | NO   | PRI | NULL    |       |
| AuthorName | varchar(30) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+

CREATE TABLE Books(
	BookID varchar(20),
	Title varchar(50),
	AuthorID varchar(20),
	Edition varchar(10),
	PRIMARY KEY(BookID,Edition),
	FOREIGN KEY(AuthorID) REFERENCES AUTHORS(AuthorID));

MariaDB [navo]> DESC BOOKS;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| BookID   | varchar(20) | NO   | PRI | NULL    |       |
| Title    | varchar(15) | YES  |     | NULL    |       |
| AuthorID | varchar(20) | YES  | MUL | NULL    |       |
| Edition  | varchar(10) | NO   | PRI | NULL    |       |
+----------+-------------+------+-----+---------+-------+

INSERT INTO AUTHORS(AuthorID,AuthorName)
        VALUES(1,'J.K.Rowling'),
			  (2,'George Orwell'),
			  (3,'J.R.R.Tolkien'),
			  (4,'Agatha Christie'),
			  (5,'Jane Austen');
			  
MariaDB [navo]> select * from authors;
+----------+-----------------+
| AuthorID | AuthorName      |
+----------+-----------------+
| 1        | J.K.Rowling     |
| 2        | George Orwell   |
| 3        | J.R.R.Tolkien   |
| 4        | Agatha Christie |
| 5        | Jane Austen     |
+----------+-----------------+

INSERT INTO books(BookID,Title,AuthorID,Edition)
		VALUES  (1,'Harry Potter',1,1),
				(2,'Animal Farm,',2,1),
				(3,'1984',2,1),
				(4,'The Hobbit',3,1),
				(5,'Pride and Prejudice',5,1);
				
MariaDB [navo]> select * from books;
+--------+---------------------+----------+---------+
| BookID | Title               | AuthorID | Edition |
+--------+---------------------+----------+---------+
| 1      | Harry Potter        | 1        | 1       |
| 2      | Animal Farm,        | 2        | 1       |
| 3      | 1984                | 2        | 1       |
| 4      | The Hobbit          | 3        | 1       |
| 5      | Pride and Prejudice | 5        | 1       |
+--------+---------------------+----------+---------+

ALTER TABLE Books
MODIFY Title varchar(50);

 select * from books 
 WHERE AuthorID=(SELECT AuthorID FROM Authors WHERE AuthorName="George Orwell");
 
 +--------+--------------+----------+---------+
| BookID | Title        | AuthorID | Edition |
+--------+--------------+----------+---------+
| 2      | Animal Farm, | 2        | 1       |
| 3      | 1984         | 2        | 1       |
+--------+--------------+----------+---------+


INSERT INTO TABLE Books(BookID,Title)
		VALUES(6,'Emma');
