SELECT * FROM products;


UPDATE products
set price_tag =
CASE 
    WHEN price > 1000 then 'expensive'
    when price BETWEEN 500 and 1000 then 'moderate'
    ELSE 'cheap'
    END

