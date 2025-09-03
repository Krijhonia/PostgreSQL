DROP TABLE if EXISTS products;
CREATE TABLE products(
    product_id serial PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    sku_code char(8) UNIQUE NOT NULL,
    --The char length of the sku code for now will be strict 8 characters    
    CHECK (char_length(sku_code) = 8),
    price NUMERIC(10,2) DEFAULT 0 CHECK(price>=0),
    stock_quantity INT DEFAULT 0 CHECK(stock_quantity>=0),
    is_available boolean DEFAULT TRUE,
    category text NOT NULL,
    added_on DATE DEFAULT CURRENT_DATE,
    last_update TIMESTAMP DEFAULT NOW()
);
INSERT INTO products(name,sku_code,price,stock_quantity,is_available,category)
VALUES
    ('Wireless Mouse', 'WM123456', 699.99, 50, TRUE, 'Electronics'),
('Bluetooth Speaker', 'BS234567', 1499.00, 30, TRUE, 'Electronics'),
('Laptop Stand', 'LS345678', 799.50, 20, TRUE, 'Accessories'),
('USB-C Hub', 'UC456789', 1299.99, 15, TRUE, 'Accessories'),
('Notebook', 'NB567890', 99.99, 100, TRUE, 'Stationery'),
('Pen Set', 'PS678901', 199.00, 200, TRUE, 'Stationery'),
('Coffee Mug', 'CM789012', 299.00, 75, TRUE, 'Home & Kitchen'),
('LED Desk Lamp', 'DL890123', 899.00, 40, TRUE, 'Home & Kitchen'),
('Yoga Mat', 'YM901234', 499.00, 25, TRUE, 'Fitness'),
('Water Bottle', 'WB012345', 349.00, 60, TRUE, 'Fitness');

SELECT * from products;
--Question 1 show the name and price of all products
SELECT name,price from products;
--Question 2 show all products where category is electronics
SELECT * from products WHERE category ='Electronics';
--Question group products by category. show each category once.
SELECT category from products GROUP BY category;
--Question 4 show categories that have more than one products(Use after group by)
SELECT category, count(*) from products
GROUP BY category
HAVING count(*) > 1;
--Question 5 show all products sorted by price in ascending order
SELECT * from products ORDER BY price ASC;
--Question 6 show only the first three products from the table
SELECT * from products LIMIT 3;
--Question 7 show product name as 'Item_name' and price as 'Item_price'.
SELECT name AS Item_name ,price as Item_price FROM products;
--Question 8 show all unique categories from products table
SELECT DISTINCT category from products;