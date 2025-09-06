--Trim function
SELECT TRIM(' Brother ');
SELECT * FROM products;
--Replace function
SELECT NAME, REPLACE(sku_code,LEFT(sku_code,2),'GG') FROM products;