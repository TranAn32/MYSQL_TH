-- Bài tập buổi 4
use Classicmodels;

select * from classicmodels.customers where city in ('Nantes','Lyon');
select * from classicmodels.orders where shippedDate between '2003/1/10' and '2003/3/10';
select * from classicmodels.products where productLine like '%Cars%';
select * from classicmodels.products ORDER BY quantityinstock DESC LIMIT 10; 
select productname, quantityinstock, buyPrice, (quantityinstock * buyPrice) AS inventoryValue FROM classicmodels.products ;