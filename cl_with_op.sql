--Clause with operator by sheryians ai school
SELECT * FROM products;

SELECT * from products WHERE category != 'Electronics';

SELECT * from products WHERE category = 'Electronics';

SELECT * from products WHERE price < 1000 and category = 'Stationery';

SELECT * from products WHERE price > 1000;
--Using the between operator
SELECT * FROM products WHERE price BETWEEN 400 AND 1000;
--Using the in operator
SELECT * FROM products WHERE category IN ('Electronics','Home & Kitchen','Fitness');
--Using the like operator
SELECT * from products WHERE sku_code like '%123%';
SELECT * from products WHERE sku_code like '_B%';
--using the not operator
SELECT * from products WHERE NOT category = 'Electronics';
