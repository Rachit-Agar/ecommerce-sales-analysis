-- E-Commerce Sales Analysis
-- SQL Analysis Queries

-- 1. Total Revenue
SELECT
    SUM(Revenue) AS Total_Revenue
FROM ecommerce_sales;


-- 2. Total Orders
SELECT
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM ecommerce_sales;


-- 3. Total Quantity Sold
SELECT
    SUM(Quantity) AS Total_Quantity
FROM ecommerce_sales;


-- 4. Average Order Value
SELECT
    ROUND(SUM(Revenue) / COUNT(DISTINCT Order_ID), 2) AS Average_Order_Value
FROM ecommerce_sales;


-- 5. Revenue by Category
SELECT
    Category,
    ROUND(SUM(Revenue), 2) AS Revenue
FROM ecommerce_sales
GROUP BY Category
ORDER BY Revenue DESC;


-- 6. Revenue by Region
SELECT
    Region,
    ROUND(SUM(Revenue), 2) AS Revenue
FROM ecommerce_sales
GROUP BY Region
ORDER BY Revenue DESC;


-- 7. Revenue by Customer Segment
SELECT
    Customer_Segment,
    ROUND(SUM(Revenue), 2) AS Revenue
FROM ecommerce_sales
GROUP BY Customer_Segment
ORDER BY Revenue DESC;


-- 8. Top 10 Products by Revenue
SELECT
    Product,
    ROUND(SUM(Revenue), 2) AS Revenue
FROM ecommerce_sales
GROUP BY Product
ORDER BY Revenue DESC
LIMIT 10;


-- 9. Monthly Revenue
SELECT
    EXTRACT(YEAR FROM Order_Date) AS Year,
    EXTRACT(MONTH FROM Order_Date) AS Month,
    ROUND(SUM(Revenue), 2) AS Revenue
FROM ecommerce_sales
GROUP BY
    EXTRACT(YEAR FROM Order_Date),
    EXTRACT(MONTH FROM Order_Date)
ORDER BY Year, Month;


-- 10. Category and Region Performance
SELECT
    Category,
    Region,
    ROUND(SUM(Revenue), 2) AS Revenue
FROM ecommerce_sales
GROUP BY Category, Region
ORDER BY Revenue DESC;


-- 11. Average Discount by Category
SELECT
    Category,
    ROUND(AVG(Discount) * 100, 2) AS Average_Discount_Percentage
FROM ecommerce_sales
GROUP BY Category
ORDER BY Average_Discount_Percentage DESC;


-- 12. Product Quantity Performance
SELECT
    Product,
    SUM(Quantity) AS Units_Sold,
    ROUND(SUM(Revenue), 2) AS Revenue
FROM ecommerce_sales
GROUP BY Product
ORDER BY Units_Sold DESC;
