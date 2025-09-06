SELECT UPPER(name) FROM products;

SELECT LOWER(sku_code) FROM products;

SELECT length(name) FROM products;
SELECT length(sku_code) FROM products;

SELECT SUBSTRING('Brother in arms',1,7);

SELECT name, SUBSTRING(sku_code,1,2) from products;

SELECT name, lower(SUBSTRING(sku_code,1,2)) as sku_code_lower from products;

SELECT left('Brother in arms',7);

SELECT RIGHT('Brother in arms', 4);

SELECT name , RIGHT(sku_code,2) from products;
SELECT name , LEFT(sku_code,2) from products;