SELECT CONCAT(name,category) FROM products;
SELECT CONCAT(name,' ',category) as name_with_category FROM products;
--Concat with seperator
SELECT CONCAT_WS(' ',name,category,sku_code) from products;