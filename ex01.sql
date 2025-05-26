create table sales(
	Location TEXT,
	Product TEXT,
	Price DECIMAL,
	Sold_at TIMESTAMP
	);
	
	
	
	
INSERT INTO sales(Location,Product,Price,Sold_at)
VALUES
	('HQ','Coffee',2,Now()),
	('HQ','Coffee',2.5,Now() - INTERVAL 1 HOUR),
	('Downtown','Bagel',3.5,Now() - INTERVAL 2 HOUR),
	('Downtown','Coffee',2,Now() - INTERVAL 1 DAY),
	('HQ','Bagel',1.5,Now() - INTERVAL 2 Day),
	('1st street','Bagel',3.5,NOW() - INTERVAL 2 Day - INTERVAL 1 HOUR),
	('1st street','Coffee',5,NOW()-INTERVAL 3 Day),
	('HQ','Bagel',3,NOW() - INTERVAL 3 DAY - INTERVAL 1 HOUR);


SELECT * FROM SALES LIMIT 2 OFFSET 2;


SELECT MIN(Price)FROM SALES;
SELECT MAX(Price)FROM SALES;

SELECT PRODUCT,MIN(PRICE) FROM SALES HAVING MIN(PRICE);
SELECT PRODUCT,Max(PRICE) FROM SALES HAVING Max(PRICE);


select location,product from sales group by location;

select location,count(*)from sales group by location;
select product,count(*)from sales group by product;

select location,sum(price) as total from sales group by location; 

select location,product,count(*) from sales group by location,product
order by location,product;


select * from sales WHERE location IN('HQ','Downtown');

select * from sales WHERE location not IN('HQ','1st street');

