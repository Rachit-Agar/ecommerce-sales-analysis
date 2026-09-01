# ecommerce-sales-analysis
E-commerce Sales Analysis using Python, SQL and Power BI
# E-Commerce Sales Analysis

E-commerce sales data analysis project using Python, SQL, and Power BI to identify revenue trends, product performance, customer segments, and regional sales patterns.

## Project Overview

This project analyzes 1,000 e-commerce transactions to understand sales performance and generate actionable business insights.

The analysis covers:

- Revenue and order performance
- Monthly sales trends
- Product and category performance
- Regional sales distribution
- Customer segment analysis
- Discount impact on revenue

## Dataset

The dataset contains 1,000 e-commerce orders with the following fields:

| Column | Description |
|---|---|
| Order_ID | Unique order identifier |
| Order_Date | Date of the order |
| Region | Customer region |
| Customer_Segment | Customer type |
| Category | Product category |
| Product | Product name |
| Quantity | Number of units ordered |
| Unit_Price | Price per unit |
| Discount | Discount applied |
| Revenue | Final order revenue |

## Tools & Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- SQL
- Power BI
- Power Query
- DAX

## Project Workflow

1. Loaded the raw sales dataset using Python.
2. Checked data quality and missing values.
3. Performed exploratory data analysis using Pandas.
4. Used SQL queries to analyze sales performance.
5. Created calculated metrics for business analysis.
6. Designed an interactive Power BI dashboard.
7. Identified key sales and customer trends.

## Key KPIs

- Total Revenue
- Total Orders
- Total Quantity Sold
- Average Order Value
- Revenue by Category
- Revenue by Region
- Revenue by Customer Segment

## Analysis Areas

### Sales Performance
Analyzed overall revenue, order volume, and average order value.

### Product Analysis
Compared product categories and individual products to identify high-performing areas.

### Regional Analysis
Analyzed revenue distribution across different regions.

### Customer Analysis
Compared Consumer, Corporate, and Home Office customer segments.

### Time-Based Analysis
Examined monthly revenue trends to identify changes in sales performance.

## SQL Analysis

SQL was used for:

- Revenue aggregation
- Category-level analysis
- Regional performance
- Customer segment analysis
- Top-performing products
- Monthly sales trends

SQL queries are available in the `sql` folder.

## Python Analysis

Python and Pandas were used for:

- Data loading
- Data validation
- Missing-value checks
- Descriptive statistics
- Group-based analysis
- Exploratory data analysis
- Data visualization

Python analysis is available in the `python` folder.

## Power BI Dashboard

An interactive Power BI dashboard was designed to provide a business-focused view of:

- Revenue
- Orders
- Product performance
- Regional performance
- Customer segments
- Monthly sales trends

Dashboard screenshots will be added to the `dashboard` folder.

## Project Structure

```text
ecommerce-sales-analysis/
│
├── data/
│   └── ecommerce_sales.csv
│
├── python/
│   └── ecommerce_analysis.ipynb
│
├── sql/
│   └── analysis_queries.sql
│
├── dashboard/
│   └── ecommerce_dashboard.png
│
└── README.md
