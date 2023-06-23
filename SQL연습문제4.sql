#날짜 : 2023/06/23
#이름 : 신진성
#내용 : 연습문제 4장

#실습 4-1
CREATE DATABASE `BookStore`;
CREATE USER 'admin4'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `BookStore`.* TO 'admin4'@'%';
FLUSH PRIVILEGES;

#실습 4-2
CREATE TABLE `Customer` (
	`custId` INT AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(10) NOT NULL,
	`address` VARCHAR(20),
	`phone` VARCHAR(13)
);

CREATE TABLE `Book` (
	`bookId` INT PRIMARY KEY,
	`bookName` VARCHAR(20) NOT NULL,
	`publisher` VARCHAR(20) NOT NULL,
	`price` INT 
);

CREATE TABLE `Order` (
	`orderId` INT AUTO_INCREMENT PRIMARY KEY,
	`custId` INT NOT NULL,
	`bookId` INT NOT NULL,
	`salePrice` INT NOT NULL,
	`orderDate` DATE
);

#실습 4-3
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('김연아', '대한민국 서울', '000-6000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO `Customer` (`name`, `address`) VALUES ('박세리', '대한민국 대전');

INSERT INTO `Book` VALUES (1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO `Book` VALUES (2, '축구아는 여자', '나무수', 13000);
INSERT INTO `Book` VALUES (3, '축구의 이해', '대한미디어', 22000);
INSERT INTO `Book` VALUES (4, '골프 바이블', '대한미디어', 35000);
INSERT INTO `Book` VALUES (5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO `Book` VALUES (6, '역도 단계별기술', '굿스포츠', 6000);
INSERT INTO `Book` VALUES (7, '야구의 추억', '이상미디어', 20000);
INSERT INTO `Book` VALUES (8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO `Book` VALUES (9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO `Book` VALUES (10, 'Olympic Champions', 'Pearson', 13000);

INSERT INTO `Order` (`custId`, `bookId`, `salePrice`, `orderdate`) VALUES (1, 1, 6000, '2014-07-01');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`, `orderdate`) VALUES (1, 3, 21000, '2014-07-03');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`, `orderdate`) VALUES (2, 5, 8000, '2014-07-03');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`, `orderdate`) VALUES (3, 6, 6000, '2014-07-04');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`, `orderdate`) VALUES (4, 7, 20000, '2014-07-05');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`, `orderdate`) VALUES (1, 2, 12000, '2014-07-07');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`, `orderdate`) VALUES (4, 8, 13000, '2014-07-07');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`, `orderdate`) VALUES (3, 10, 12000, '2014-07-08');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`, `orderdate`) VALUES (2, 10, 7000, '2014-07-09');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`, `orderdate`) VALUES (3, 8, 13000, '2014-07-10');

#실습 4-4
SELECT `custId`, `name`, `address` FROM `Customer`;

#실습 4-5
SELECT `bookName`, `price` FROM `Book`;

#실습 4-6
SELECT `price`, `bookName` FROM `Book`;

#실습 4-7
SELECT `bookId`, `bookName`, `publisher`, `price` FROM `Book`;

#실습 4-8
SELECT `publisher` FROM `Book`;

#실습 4-9
SELECT DISTINCT`publisher` FROM `Book`;

#실습 4-10
SELECT * FROM `Book` WHERE `price` >= 20000;

#실습 4-11
SELECT * FROM `Book` WHERE `price` < 20000;

#실습 4-12
SELECT * FROM `Book` WHERE `price` BETWEEN 10000 AND 20000;

#실습 4-13
SELECT `bookId`, `bookName`, `price` FROM `Book` WHERE `price` BETWEEN 15000 AND 30000;

#실습 4-14
SELECT * FROM `Book` WHERE `bookId` IN (2, 3, 5);

#실습 4-15
SELECT * FROM `Book` WHERE `bookId` IN (CASE WHEN `bookId` % 2 = 0 THEN `bookId` END);

#실습 4-16
SELECT * FROM `Customer` WHERE `name` LIKE '박%';

#실습 4-17
SELECT * FROM `Customer` WHERE `address` LIKE '대한민국%';

#실습 4-18
SELECT * FROM `Customer` WHERE `phone` IS NOT NULL;

#실습 4-19
SELECT * FROM `Book` WHERE `publisher` IN ('굿스포츠', '대한미디어');

#실습 4-20
SELECT `publisher` FROM `Book` WHERE `bookName` = '축구의 역사';

#실습 4-21
SELECT `publisher` FROM `Book` WHERE `bookName` LIKE '%축구%';

#실습 4-22
SELECT * FROM `Book` WHERE `bookName` LIKE '_구%';

#실습 4-23
SELECT * FROM `Book` WHERE `bookName` LIKE '%축구%' AND `price` >= 20000;

#실습 4-24
SELECT * FROM `Book` order BY `bookName`;

#실습 4-25
SELECT * FROM `Book` order BY `price`, `bookName`;

#실습 4-26
SELECT * FROM `Book` order BY `price` DESC, `publisher` ASC;

#실습 4-27
SELECT * FROM `Book` order BY `price` DESC LIMIT 3;

#실습 4-28
SELECT * FROM `Book` order BY `price` ASC LIMIT 3;

#실습 4-29
SELECT SUM(`salePrice`) AS `총판매액` FROM `Order`;

#실습 4-30
SELECT 
	SUM(`salePrice`) AS `총판매액`,
	AVG(`salePrice`) AS `평균값`,
	MIN(`salePrice`) AS `최저가`,
	MAX(`salePrice`) AS `최고가`
FROM `Order`;

#실습 4-31
SELECT COUNT(*) AS `판매건수` FROM `Order`;

#실습 4-32
UPDATE `Book` 
SET `bookName` = REPLACE(`bookName`, '야구', '농구') 
WHERE `bookName` LIKE '%야구%';

SELECT * FROM `Book`;

#실습 4-33
SELECT `custId`, COUNT(`custId`) AS `수량` FROM `Order`
WHERE `salePrice` >= 8000
GROUP BY `custId`
HAVING `수량` >= 2
order BY `custId` ASC;

#실습 4-34
SELECT * FROM `Customer` AS a
JOIN `Order` AS b ON a.`custId` = b.`custId`;

#실습 4-35
SELECT * FROM `Customer` AS a
JOIN `Order` AS b ON a.`custId` = b.`custId`
order BY a.`custId` ASC;

#실습 4-36
SELECT a.`name`, b.`salePrice` FROM `Customer` AS a
JOIN `Order` AS b ON a.`custId` = b.`custId`
order BY a.`custId` ASC;

#실습 4-37
SELECT a.`name`, SUM(`salePrice`) FROM `Customer` AS a
JOIN `Order` AS b ON a.`custId` = b.`custId`
GROUP BY a.`name`
order BY a.`name` ASC;

#실습 4-38
SELECT a.`name`, `bookName` FROM `Customer` AS a
JOIN `Order` AS b ON a.`custId` = b.`custId`
JOIN `Book` AS c ON b.`bookId` = c.`bookId`
order BY a.`name` ASC;

#실습 4-39
SELECT a.`name`, `bookName` FROM `Customer` AS a
JOIN `Order` AS b ON a.`custId` = b.`custId`
JOIN `Book` AS c ON b.`bookId` = c.`bookId`
WHERE `salePrice` = 20000
order BY a.`name` ASC;

#실습 4-40
SELECT a.`name`, `salePrice` FROM `Customer` AS a
LEFT JOIN `Order` AS b ON a.`custId` = b.`custId`
LEFT JOIN `Book` AS c ON b.`bookId` = c.`bookId`;

#실습 4-41
SELECT SUM(`salePrice`) FROM `Customer` AS a
JOIN `Order` AS b ON a.`custId` = b.`custId`
JOIN `Book` AS c ON b.`bookId` = c.`bookId`
WHERE `name` = '김연아';

#실습 4-42
SELECT `bookName` FROM `Book`
order BY `price` DESC
LIMIT 1;

#실습 4-43
SELECT a.`name` FROM `Customer` AS a
LEFT JOIN `Order` AS b ON a.`custId` = b.`custId`
WHERE `orderId` IS NULL;

#실습 4-44
INSERT INTO `Book` (`bookId`, `bookName`, `publisher`) VALUES (11, '스포츠의학', '한술의학서적');

#실습 4-45
UPDATE `Customer` SET `address` = '대한민국 부산' WHERE `custId` = 5;

#실습 4-46
DELETE FROM `Customer` WHERE `custId` = 5;


SET SESSION sql_mode ="STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION";