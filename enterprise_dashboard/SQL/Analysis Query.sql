SELECT 
    YEAR(Order_Date) AS order_year,
    ROUND(SUM(Sales), 2) AS total_revenue,
    ROUND(SUM(Profit), 2) AS total_profit
FROM orders
GROUP BY YEAR(Order_Date)
ORDER BY order_year;

SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit
FROM orders
GROUP BY Category
ORDER BY revenue DESC;

SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS revenue,
    ROUND(AVG(Profit), 2) AS avg_profit
FROM orders
GROUP BY Region;

SELECT 
        DATE_FORMAT(Order_Date, '%Y-%m') AS month,
    ROUND(SUM(Sales),2) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

SELECT 
    Customer_Name,
    ROUND(SUM(Sales),2) AS total_spent
FROM orders
GROUP BY Customer_Name
ORDER BY total_spent DESC
LIMIT 10;