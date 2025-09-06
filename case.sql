/*
Why do we use case?
- To create custom columns on the fly 
- To categorize data based on certain logic
- To replace values conditionally
- To handle nulls or missing values generally
- To simplify complex logic inside select queries
*/
SELECT 
    name, 
    price,
    CASE 
        WHEN price > 1000 THEN 'Expensive'
        WHEN price BETWEEN 500 AND 1000 THEN 'Moderate'
        ELSE 'Cheap'
    END AS price_tag
FROM products;
