-- Total Revenue
SELECT SUM(TotalPrice) AS Revenue
FROM sales_project;

-- Top 5 Products by Revenue
SELECT Product,
       SUM(TotalPrice) AS Revenue
FROM sales_project
GROUP BY Product
ORDER BY Revenue DESC
LIMIT 5;

-- Average Revenue by Payment Method
SELECT PaymentMethod,
       AVG(TotalPrice) AS AvgRevenue
FROM sales_project
GROUP BY PaymentMethod
ORDER BY AvgRevenue DESC;

-- Most Ordered Products
SELECT Product,
       COUNT(*) AS TotalOrders
FROM sales_project
GROUP BY Product
ORDER BY TotalOrders DESC;

-- Revenue by Payment Method
SELECT PaymentMethod,
       SUM(TotalPrice) AS Revenue
FROM sales_project
GROUP BY PaymentMethod
ORDER BY Revenue DESC;
