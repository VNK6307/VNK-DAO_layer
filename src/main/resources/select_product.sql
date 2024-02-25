SELECT product_name
FROM   orders o 
JOIN   customers c  ON o.customer_id = c.customers_id
WHERE "name" = :name;