-- Load data into a table named retail_orders before running these queries.
-- Syntax may need small adjustments depending on PostgreSQL/MySQL/SQL Server.

-- 1. Overall KPIs
SELECT
    COUNT(*) AS total_orders,
    SUM(units_sold) AS total_units,
    SUM(sales_amount) AS total_sales,
    SUM(profit) AS total_profit,
    AVG(sales_amount) AS average_order_value
FROM retail_orders;

-- 2. Monthly sales and profit
SELECT
    DATE_TRUNC('month', CAST(order_date AS DATE)) AS order_month,
    SUM(sales_amount) AS total_sales,
    SUM(profit) AS total_profit
FROM retail_orders
GROUP BY 1
ORDER BY 1;

-- 3. Region performance
SELECT region, COUNT(*) AS orders,
       SUM(sales_amount) AS sales, SUM(profit) AS profit
FROM retail_orders
GROUP BY region
ORDER BY sales DESC;

-- 4. Product performance
SELECT product, SUM(units_sold) AS units,
       SUM(sales_amount) AS sales, SUM(profit) AS profit
FROM retail_orders
GROUP BY product
ORDER BY sales DESC;

-- 5. Order status summary
SELECT order_status, COUNT(*) AS order_count
FROM retail_orders
GROUP BY order_status
ORDER BY order_count DESC;
