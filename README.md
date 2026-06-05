# Retail-Sales-Analysis
# 🛒 Retail Sales Analytics — SQL + Power BI Data Analytics Project
![Executive Dashboard](screenshots/Executive Dashboard.png)
---
## 📌 Overview

An end-to-end data analytics project built using **PostgreSQL**, **SQL**, and **Power BI** on a real-world retail dataset containing **9,800 records**.
The project covers the complete analyst workflow — from database design and EDA to advanced SQL and interactive dashboards — extracting insights on customer behavior, product performance, regional trends, and shipping efficiency.

---

## 🧰 Tech Stack

| Tool | Purpose |
|------|---------|
| **PostgreSQL** | Database creation, schema design, data storage |
| **SQL** | EDA, advanced analytics, optimization |
| **Power BI** | Interactive dashboards and visual storytelling |
| **CSV** | Raw retail sales data source |
---

## 📂 Project Structure

```
retail-sales-analytics/
│
├── data/
│   └── retail_sales.csv
├── sql/
│   ├── database.sql
│   ├── EDA.sql
│   ├── customer_analysis.sql
│   ├── product_analysis.sql
│   ├── shipping_analysis.sql
│   └── advanced_analysis.sql
├── dashboard/
│   └── retail_sales.pbix
├── screenshots/
│   ├── Executive Dashboard.png
│   ├── Customer Analysis.png
│   ├── Product Analysis.png
│   └── Shipping Analysis.png
└── README.md
```
---

## 📊 Dataset

| Property | Detail |
|----------|--------|
| **Records** | 9,800 rows |
| **Period** | 2015 – 2019 |
| **Type** | Retail / Superstore Sales |
| **Key Fields** | Order ID, Order Date, Ship Date, Ship Mode, Customer, Segment, Region, Category, Sub-Category, Product, Sales |

---

## 🔍 Analysis Breakdown

### 1️⃣ Exploratory Data Analysis
- Total sales, orders, customers, and average order value
- Region-wise and category-wise revenue breakdown
- Monthly sales trend across years

> 💡 **$2.26M** total sales · **4,922** orders · **793** customers · **$459** avg order value

---

### 2️⃣ Customer Analysis
**SQL Used:** `DENSE_RANK()`, CTEs, Aggregate Functions

- Top customers by total revenue
- Segment contribution (Consumer / Corporate / Home Office)
- Purchase frequency ranking

> 💡 Consumer segment = **50.76%** of revenue. Top customer generated **~$25K** in sales.

---

### 3️⃣ Product Analysis
**SQL Used:** `RANK() OVER (PARTITION BY)`, `NTILE()`, Window Functions

- Top 10 products by revenue
- Best product per region
- Product quartile segmentation

> 💡 **Canon imageCLASS 2200** was the top product at **~$62K**. Technology led all categories.

---

### 4️⃣ Shipping Analysis
- Average delivery time per ship mode
- Shipment volume by category and region
- Shipping mode efficiency comparison

> 💡 **Standard Class** had the highest usage. Faster modes showed lower adoption.

---

### 5️⃣ Advanced SQL Analysis
**SQL Used:** `SUM() OVER()`, `LAG()`, `ROWS BETWEEN`, `DATE_TRUNC()`, `CREATE VIEW`, `CREATE INDEX`

- Running totals and rolling 7-day averages
- Month-over-month growth with `LAG()`
- Query optimization via indexing on `order_date` and `region`

---

## 📈 Power BI Dashboard

| Page | Key Visuals |
|------|-------------|
| **Executive Dashboard** | KPI cards, monthly trend, region comparison |
| **Customer Analysis** | Top customers, segment donut, revenue breakdown |
| **Product Analysis** | Top products bar, category pie, sub-category treemap |
| **Shipment Analysis** | Ship mode usage, delivery metrics, monthly trends |

### Executive Dashboard
![Executive Dashboard](screenshots/Executive%20Dashboard.png)

### Customer Analysis
![Customer Analysis]("C:\Users\bodab\OneDrive\Desktop\sql\Customer Analysis.png")

### Product Analysis
![Product Analysis]("C:\Users\bodab\OneDrive\Desktop\sql\Product Analysis.png")

### Shipment Analysis
![Shipment Analysis]("C:\Users\bodab\OneDrive\Desktop\sql\Shipment Analysis.png")

---

## 💡 Key Business Insights

- 📍 **West region** generated the highest sales revenue
- 💻 **Technology** was the strongest revenue category
- 📅 **Q4 (Oct–Nov)** consistently outperformed other quarters
- 🚚 **Standard Class** shipping dominated in volume
- 👥 **Consumer segment** drove 50%+ of total revenue
- 🖨️ Single top product (**Canon imageCLASS**) contributed ~$62K alone

---

## 🚀 How to Run

### SQL Setup
```sql
-- Step 1: Create database
CREATE DATABASE retail_sales_db;

-- Step 2: Import data
\COPY retail_sales FROM 'data/retail_sales.csv' DELIMITER ',' CSV HEADER;

-- Step 3: Run scripts in order
\i sql/EDA.sql
\i sql/customer_analysis.sql
\i sql/product_analysis.sql
\i sql/shipping_analysis.sql
\i sql/advanced_analysis.sql
```

### Power BI Setup
1. Open `dashboard/retail_sales.pbix` in Power BI Desktop
2. Update data source path to your local CSV
3. Click **Refresh** and interact with the filters

---

## 🧠 SQL Concepts Demonstrated

`GROUP BY` · `ORDER BY` · `CTEs` · `Window Functions` · `DENSE_RANK()` · `RANK()` · `NTILE()` · `LAG()` · `SUM() OVER()` · `AVG() OVER()` · `ROWS BETWEEN` · `DATE_TRUNC()` · `CREATE VIEW` · `CREATE INDEX` · Subqueries · Aggregate Functions · Time-Series Analysis

---


> *Built to demonstrate end-to-end analytical thinking — from raw data to business insights.*

# Retail Sales Analytics
A SQL + Power BI Data Analytics Project by Harshini Bodaballa
