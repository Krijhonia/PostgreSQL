--Case questions with solutions
SELECT name,
CASE
WHEN is_available then 'IN stock'
ELSE 'Out of stock'
END AS availablity_status
from products;
--Highlight stock status
SELECT name, stock_quantity,
CASE
WHEN stock_quantity > 100 THEN 'High stock'
WHEN stock_quantity BETWEEN 30 and 100 THEN 'Medium stock'
ELSE 'Low stock'
END as stock_level
FROM products;