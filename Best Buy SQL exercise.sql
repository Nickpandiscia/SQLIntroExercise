 -- Using the bestbuy database:
 -- Copy the following and paste into MySql Workbench

-- find all products 
 select * from products;
-- find all products that cost $1400
 select * from products where price = 1400;
-- find all products that cost $11.99 or $13.99
 SELECT * FROM products WHERE price = 11.99 OR price =  13.99;
-- find all products that do NOT cost 11.99 - using NOT
 select * FROM products where NOT price = 11.99;
-- find  all products and sort them by price from greatest to least
 SELECT * FROM products ORDER BY price DESC;
-- find all employees who don't have a middle initial
 select * from employees where MiddleInitial is NULL;
-- find distinct product prices
 select distinct(price) from products;
-- find all employees whose first name starts with the letter ‘j’
 SELECT * FROM employees WHERE FirstName LIKE 'j%';
-- find all Macbooks 
 select * from products where name like '%mackbook%';
-- find all products that are on sale
 select * from products where OnSale;
-- find the average price of all products 
 SELECT AVG(Price) FROM Products;
-- find all Geek Squad employees who don't have a middle initial 
 select * from employees where title Like '%Geek Squad%' AND MiddleInitial IS NULL;
-- find all products from the products table whose stock level is in the range  -- of 500 to 1200. Order by Price from least to greatest. **Use the between keyword** 
select * from products where stocklevel between 500 and 1200 ORDER BY price asc;