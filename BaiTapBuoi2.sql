use sakila;

-- Bài 1. Toán tử tính toán
SELECT 
	Amount As 'Dữ liệu ban đầu',
    Amount + 2 AS 'Cộng 2 đv',
    Amount - 2 AS 'Giảm 2 đv',
    Amount * 2 AS 'Nhân 2 đv',
    Amount / 3 AS 'Chia / 3',
    Amount % 4 AS 'chia % 4'
FROM 
    classicmodels.payments;
-- Bài 2. Toán tử so sánh
-- Sử dụng toán tử '<'
SELECT * FROM Actor WHERE first_name < 'NICK';

-- Sử dụng toán tử '>'
SELECT * FROM Actor WHERE first_name > 'NICK';

-- Sử dụng toán tử '<>'
SELECT * FROM Actor WHERE first_name <> 'NICK';

-- Sử dụng toán tử '='
SELECT * FROM Actor WHERE first_name = 'NICK';

	-- Bai 3. Toán tử logic
-- 1
select * from sakila.actor;
Select * from Actor where first_name  in  ('Nick','ed');
-- 2
select * from Actor where first_name between '%Nick%' and '%ed%';
-- 3
select * from Actor where first_name like '%Nick%';
-- 4
select * from actor where first_name = 'Nick' or first_name = 'ed';
-- 5
Select * from Actor where first_name not in  ('Nick','ed');
select * from Actor where first_name not between '%Nick%' and '%ed%';
select * from Actor where first_name not like '%Nick%';

	-- Bài Tập 1, 2 và 3 với cơ sở dữ liệu classicmodels và bảng Customers.
    
-- Bai 1
select customerNumber, contactFirstName,contactLastName,creditLimit from classicmodels.customers;
SELECT 
	creditLimit As 'Dữ liệu ban đầu',
    creditLimit + 2 AS 'Cộng 2 đv',
    creditLimit - 2 AS 'Giảm 2 đv',
    creditLimit * 2 AS 'Nhân 2 đv',
    creditLimit / 3 AS 'Chia / 3',
    creditLimit % 4 AS 'chia % 4'
FROM 
    classicmodels.customers;
    
-- Bài 2

-- Sử dụng toán tử '<'
SELECT * FROM classicmodels.customers WHERE contactFirstName < 'Jonas';

-- Sử dụng toán tử '>'
SELECT * FROM classicmodels.customers WHERE contactFirstName > 'Jonas';

-- Sử dụng toán tử '<>'
SELECT * FROM classicmodels.customers WHERE contactFirstName <> 'Jonas';

-- Sử dụng toán tử '='
SELECT * FROM classicmodels.customers WHERE contactFirstName = 'Jonas';

-- Bai 3. Toán tử logic
-- 1

Select * from classicmodels.customers where contactFirstName  in  ('Jonas','susan');
-- 2
select * from classicmodels.customers where contactFirstName between '%Jonas%' and '%susan%';
-- 3
select * from classicmodels.customers where contactFirstName like '%Jonas%';
-- 4
select * from classicmodels.customers where contactFirstName = 'Jonas' or contactFirstName = 'susan';
-- 5
Select * from classicmodels.customers where contactFirstName not in  ('Jonas','ed');
select * from classicmodels.customers where contactFirstName not between '%Jonas%' and '%susan%';
select * from classicmodels.customers where contactFirstName not like '%Jonas%';
