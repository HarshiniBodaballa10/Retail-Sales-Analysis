SELECT 
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(AVG(sales),2) AS avg_order_value
FROM retail_sales;
--Total Sales and Orders
SELECT 
    SUM(sales) AS total_sales,
    COUNT(DISTINCT order_id) AS total_orders
FROM retail_sales;
--Average Order Value
SELECT 
    SUM(sales)/COUNT(DISTINCT order_id) AS avg_order_value
FROM retail_sales;
--Sales by region
SELECT 
    region,
    ROUND(SUM(sales),2) AS total_sales
FROM retail_sales
GROUP BY region
ORDER BY total_sales DESC;
--Sales by Category
SELECT 
    category,
    ROUND(SUM(sales),2) AS total_sales
FROM retail_sales
GROUP BY category
ORDER BY total_sales DESC;
--Monthly Sales Trend
SELECT 
    DATE_TRUNC('month', order_date) AS month,
    ROUND(SUM(sales),2) AS monthly_sales
FROM retail_sales
GROUP BY month
ORDER BY month;