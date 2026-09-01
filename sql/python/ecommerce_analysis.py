import pandas as pd
import matplotlib.pyplot as plt

# Load dataset
df = pd.read_csv("../data/ecommerce_sales.csv")

# Basic information
print("Dataset Shape:", df.shape)
print("\nFirst 5 Rows:")
print(df.head())

print("\nMissing Values:")
print(df.isnull().sum())

# Convert date column
df["Order_Date"] = pd.to_datetime(df["Order_Date"])

# Basic statistics
print("\nSummary Statistics:")
print(df.describe())

# Total KPIs
total_revenue = df["Revenue"].sum()
total_orders = df["Order_ID"].nunique()
total_quantity = df["Quantity"].sum()
average_order_value = total_revenue / total_orders

print("\n--- Key Performance Indicators ---")
print("Total Revenue:", round(total_revenue, 2))
print("Total Orders:", total_orders)
print("Total Quantity Sold:", total_quantity)
print("Average Order Value:", round(average_order_value, 2))

# Revenue by category
category_revenue = (
    df.groupby("Category")["Revenue"]
    .sum()
    .sort_values(ascending=False)
)

print("\nRevenue by Category:")
print(category_revenue)

# Revenue by region
region_revenue = (
    df.groupby("Region")["Revenue"]
    .sum()
    .sort_values(ascending=False)
)

print("\nRevenue by Region:")
print(region_revenue)

# Revenue by customer segment
segment_revenue = (
    df.groupby("Customer_Segment")["Revenue"]
    .sum()
    .sort_values(ascending=False)
)

print("\nRevenue by Customer Segment:")
print(segment_revenue)

# Top products
top_products = (
    df.groupby("Product")["Revenue"]
    .sum()
    .sort_values(ascending=False)
    .head(10)
)

print("\nTop 10 Products:")
print(top_products)

# Monthly revenue
monthly_revenue = (
    df.groupby(df["Order_Date"].dt.to_period("M"))["Revenue"]
    .sum()
)

print("\nMonthly Revenue:")
print(monthly_revenue)

# Category visualization
category_revenue.plot(kind="bar", figsize=(10, 6))
plt.title("Revenue by Category")
plt.xlabel("Category")
plt.ylabel("Revenue")
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()

# Monthly revenue visualization
monthly_revenue.plot(kind="line", figsize=(12, 6))
plt.title("Monthly Revenue Trend")
plt.xlabel("Month")
plt.ylabel("Revenue")
plt.tight_layout()
plt.show()
