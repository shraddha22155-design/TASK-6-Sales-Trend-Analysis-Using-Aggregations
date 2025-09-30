# 📊 Task 6 – Sales Trend Analysis Using Aggregations  

## 🎯 Objective  
Analyze **monthly revenue** and **order volume** from the `online_sales` dataset.  

---

## 📂 Files in this Repository  
- `sales_trend_analysis.sql` → SQL script for monthly sales trend analysis  
- `monthly_sales_trends.csv` → Results in CSV format  
- `monthly_sales_trends.xlsx` → Results in Excel format

## 🧑‍💻 SQL Script  
```sql
-- Task 6: Sales Trend Analysis Using Aggregations
-- Objective: Analyze monthly revenue and order volume

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM((quantity * unitprice) - COALESCE(discount, 0) + COALESCE(shippingcost, 0)) AS monthly_revenue,
    COUNT(DISTINCT invoiceno) AS order_volume
FROM online_sales
GROUP BY EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY year, month;
```

---

## 📊 Results Snapshot  

| Year | Month | Monthly_Revenue | Order_Volume |
|------|-------|-----------------|--------------|
| 2020 | 1     | 899,921.21      | 744          |
| 2020 | 2     | 846,748.92      | 696          |
| 2020 | 3     | 895,699.14      | 744          |
| 2020 | 4     | 920,063.70      | 720          |
| 2020 | 5     | 892,152.26      | 744          |  

(See CSV/Excel for full results ✅)  
