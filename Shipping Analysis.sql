--Average Delivery Time
SELECT 
    ROUND(AVG(delivery_days),2) AS avg_delivery_days
FROM retail_sales;
--Shipping Mode Analysis
SELECT 
    ship_mode,
    ROUND(AVG(delivery_days),2) AS avg_delivery_days,
    ROUND(SUM(sales),2) AS total_sales
FROM retail_sales
GROUP BY ship_mode
ORDER BY avg_delivery_days;