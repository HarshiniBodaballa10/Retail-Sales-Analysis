--Top 10 Products
SELECT 
    product_name,
    ROUND(SUM(sales),2) AS total_sales
FROM retail_sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;
--Top Products Per Region
SELECT *
FROM (
    SELECT 
        region,
        product_name,
        ROUND(SUM(sales),2) AS total_sales,
        RANK() OVER (
            PARTITION BY region
            ORDER BY SUM(sales) DESC
        ) AS rank
    FROM retail_sales
    GROUP BY region, product_name
) t
WHERE rank = 1;
-- Product Quartile Anlysis
WITH product_sales AS (
    SELECT 
        product_name,
        SUM(sales) AS total_sales
    FROM retail_sales
    GROUP BY product_name
)

SELECT 
    product_name,
    total_sales,
    NTILE(4) OVER (ORDER BY total_sales DESC) AS quartile
FROM product_sales;