--Display the name and price of the cheapest product in the entire table
SELECT name, price
FROM products
WHERE price = (SELECT MIN(price) FROM products);
--Find the average price of products that belong to the 'Home & Kitchen' or 'Fitness' category
SELECT avg(price) 
FROM products 
WHERE category IN ('Home & Kitchen' ,'Fitness');
--Show the product names and stock quantity where the product is available , stock is more than 50, and price is not equal to 299
SELECT name,stock_quantity from products WHERE is_available = True AND stock_quantity>50 and price != 299.00;
--Find the most expensive product in each category (name and price)
SELECT name, price, category
FROM products
WHERE (category, price) IN (
    SELECT category, MAX(price)
    FROM products
    GROUP BY category
);
--Show all unique categories in uppercase, sorted in descending order.
SELECT DISTINCT UPPER(category) AS category
FROM products
ORDER BY category DESC;
