SELECT * FROM Customer;

SELECT product_name, category
FROM Product
WHERE Price BETWEEN 5000 AND 10000;

SELECT * FROM Product
ORDER BY Price DESC;


SELECT COUNT(*) AS total_orders FROM Orders;

SELECT AVG(total_amount) AS average_amount FROM Orders;

SELECT MAX(total_amount) AS highest_amount FROM Orders;

SELECT MIN(total_amount) AS lowest_amount FROM Orders;

SELECT Product_id, COUNT(*) AS order_count
FROM Orders
GROUP BY Product_id;

SELECT Customer_id
FROM Orders
GROUP BY Customer_id
HAVING COUNT(*) > 2;

SELECT TO_CHAR(OrderDate, 'YYYY-MM') AS month, COUNT(*) AS order_count
FROM Orders
WHERE TO_CHAR(OrderDate, 'YYYY') = '2020'
GROUP BY TO_CHAR(OrderDate, 'YYYY-MM')
ORDER BY TO_CHAR(OrderDate, 'YYYY-MM');

SELECT p.product_name, c.customer_Name, o.OrderDate
FROM Orders o
JOIN Product p ON o.Product_id = p.Product_id
JOIN Customer c ON o.Customer_id = c.Customer_id;

SELECT * FROM Orders
WHERE OrderDate <= ADD_MONTHS(SYSDATE, -3);

SELECT c.Customer_id
FROM Customer c
LEFT JOIN Orders o ON c.Customer_id = o.Customer_id
WHERE o.Customer_id IS NULL;
