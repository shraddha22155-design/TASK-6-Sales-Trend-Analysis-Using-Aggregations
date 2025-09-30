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
