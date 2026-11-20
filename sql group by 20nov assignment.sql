create database classs;

use classs;

CREATE TABLE Orders ( 
    OrderID INT PRIMARY KEY, 
    CustomerID VARCHAR(10), 
    Category VARCHAR(50), 
    OrderDate DATE, 
    OrderValue DECIMAL(10,2) 
); 
 
 
 INSERT INTO Orders (OrderID, CustomerID, Category, OrderDate, OrderValue) VALUES 
(1001, 'C201', 'Electronics', '2024-01-05', 12500), 
(1002, 'C203', 'Apparel', '2024-01-07', 3200), 
(1003, 'C205', 'Home', '2024-01-10', 5800), 
(1004, 'C201', 'Electronics', '2024-01-15', 8900), 
(1005, 'C207', 'Apparel', '2024-01-18', 2100), 
(1006, 'C210', 'Home', '2024-01-22', 4700), 
(1007, 'C203', 'Electronics', '2024-02-01', 15300), 
(1008, 'C212', 'Apparel', '2024-02-05', 1800), 
(1009, 'C205', 'Home', '2024-02-08', 6200), 
(1010, 'C214', 'Electronics', '2024-02-12', 9400), 
(1011, 'C207', 'Apparel', '2024-02-17', 2900), 
(1012, 'C210', 'Electronics', '2024-02-20', 11000), 
(1013, 'C212', 'Home', '2024-03-01', 3500), 
(1014, 'C201', 'Apparel', '2024-03-05', 4100), 
(1015, 'C214', 'Home', '2024-03-10', 7800);
 
 
select * from orders;

select category, sum(ordervalue) as revenue from orders group by category;

select category, count(*)  revenue from orders group by category;

select category, max(ordervalue)  from orders group by category;

select distinct(category) from orders order by category;

select distinct(customerid) from orders order by customerid;

select distinct(customerid), category from orders order by customerid, category;

select customerid, category, sum(ordervalue) as revenue from orders group by customerid,category order by customerid, category;

select customerid, category, count(*) as order_count from orders group by customerid,category order by customerid, category;

SELECT 
    category,
    MONTH(orderdate) AS order_month,
    SUM(ordervalue) AS revenue
FROM
    orders
GROUP BY category , order_month
ORDER BY category , order_month;

select category, sum(ordervalue) as revenue from orders group by category having revenue>20000;

select customerid, count(*) as order_count  from orders group by customerid having order_count>1;

SELECT 
    customerid, category, SUM(ordervalue) AS total_spent
FROM
    orders
GROUP BY customerid , category
HAVING total_spent > 10000
ORDER BY customerid , category;


SELECT 
    category,
    COUNT(*) AS tptal_orders,
    SUM(ordervalue) AS revenue,
    AVG(ordervalue) AS avg_ordervalue
FROM
    orders
GROUP BY category
HAVING avg_ordervalue > 5000;


SELECT 
    customerid,
    COUNT(*) AS order_count,
    AVG(ordervalue) AS avg_ordervalue
FROM
    orders
GROUP BY customerid
HAVING avg_ordervalue > 6000;

SELECT 
    category,
    MONTH(orderdate) as month_order,
    COUNT(*) AS order_count,
    SUM(ordervalue) as total_revenue,
    AVG(ordervalue) as avg_ordervalue
FROM
    orders
GROUP BY category, month_order
HAVING order_count > 1;


SELECT 
    Category, 
    MONTH(OrderDate)           AS Order_Month, 
    COUNT(OrderID)             AS Total_Orders, 
    SUM(OrderValue)            AS Total_Revenue, 
    ROUND(AVG(OrderValue), 2)  AS Avg_OrderValue 
FROM orders
GROUP BY Category, MONTH(OrderDate) 
HAVING COUNT(OrderID) >= 2 
ORDER BY Order_Month ASC, Total_Revenue DESC;
