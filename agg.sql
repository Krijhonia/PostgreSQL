--Use of aggregation functions
SELECT COUNT(product_id) from products;
--Use of sum function
SELECT sum(price) FROM products;
SELECT sum(price) FROM products WHERE category = 'Electronics' or category = 'Fitness';
--Use of avg function
SELECT avg(price) FROM products;
--Min function
SELECT MIN(price) FROM products;
--Max function
SELECT MAX(price) FROM products;
