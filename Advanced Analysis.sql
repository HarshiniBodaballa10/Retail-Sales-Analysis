--Running Total
SELECT 
    order_date,
    ROUND(
        SUM(sales) OVER (
            ORDER BY order_date
        ),2
    ) AS running_total
FROM retail_sales;
--Monthly Growth analysis
WITH monthly_sales AS (
    SELECT 
        DATE_TRUNC('month', order_date) AS month,
        SUM(sales) AS total_sales
    FROM retail_sales
    GROUP BY month
)

SELECT 
    month,
    total_sales,
    LAG(total_sales) OVER (
        ORDER BY month
    ) AS previous_month,
    total_sales -
    LAG(total_sales) OVER (
        ORDER BY month
    ) AS growth
FROM monthly_sales;
--Rolling average
SELECT 
    order_date,
    sales,
    ROUND(
        AVG(sales) OVER (
            ORDER BY order_date
            ROWS BETWEEN 6 PRECEDING
            AND CURRENT ROW
        ),2
    ) AS moving_avg
FROM retail_sales;
--Monthly Sales View
CREATE VIEW monthly_sales_summary AS
SELECT 
    DATE_TRUNC('month', order_date) AS month,
    ROUND(SUM(sales),2) AS total_sales
FROM retail_sales
GROUP BY month;
--Indexing
DROP VIEW IF EXISTS monthly_sales_summary;
DROP INDEX IF EXISTS idx_region;
DROP INDEX IF EXISTS idx_order_date;
CREATE INDEX idx_order_date
ON retail_sales(order_date);

CREATE INDEX idx_region
ON retail_sales(region);