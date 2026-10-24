CREATE DATABASE Sales_book;
USE Sales_book;
CREATE TABLE Sales(Sales_id int PRIMARY KEY,Sales_date int ,Prtoduct varchar(50),Price decimal(4,2),Location varchar(50));
alter table Sales drop Prtoduct;
alter table Sales add Product varchar(50);
INSERT INTO Sales(Sales_id,Sales_date,Product,Price,Location)
values
(1,31,'maggi',10,'bengaluru'),
(2,31,'chcolate',11,'bengaluru'),
(3,31,'water',12,'bengaluru'),
(4,31,'ice cream',13,'bengaluru'),
(5,31,'fly cream',14,'bengaluru'),
(6,31,'grapes',15,'bengaluru'),
(8,31,'apple',16,'bengaluru'),
(9,31,'banana',17,'bengaluru'),
(10,31,'hammaer',18,'bengaluru'),
(11,31,'kit kat',19,'bengaluru'),
(12,31,'dairy milk','20','bengaluru');

select *from Sales;

select count(Product) as product_count from Sales;
SELECT COUNT(*) AS TOTAL_product_COUNT FROM Sales where Product = "apple";
SELECT Product,count(*) as product_group from Sales group by Product;

SELECT SUM(PRODUCT) AS TOTAL_PRODUCT FROM Sales;
SELECT SUM(PRODUCT*Price) AS TOTAL_PRODUCT FROM Sales;
