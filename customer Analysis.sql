--Top Customers
SELECT 
    customer_name,
    ROUND(SUM(sales),2) AS total_spent
FROM retail_sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 10;
--Customer Segmentation
SELECT 
    segment,
    ROUND(SUM(sales),2) AS total_sales
FROM retail_sales
GROUP BY segment
ORDER BY total_sales DESC;
--Customer Purchase Frequency
WITH customer_orders AS (
    SELECT 
        customer_name,
        COUNT(DISTINCT order_id) AS total_orders
    FROM retail_sales
    GROUP BY customer_name
)

SELECT 
    customer_name,
    total_orders,
    DENSE_RANK() OVER (
        ORDER BY total_orders DESC
    ) AS frequency_rank
FROM customer_orders;
