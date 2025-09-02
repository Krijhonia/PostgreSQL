CREATE DATABASE flipkart_db;
DROP TABLE if EXISTS products;
CREATE TABLE products(
    product_id serial PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    sku_code char(8) UNIQUE NOT NULL,
    price NUMERIC(10,2) CHECK(price>=0),
    


);