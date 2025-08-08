CREATE TABLE sales (
    SaleID INT PRIMARY KEY,
    Product VARCHAR(20) NOT NULL,
    Category VARCHAR(20) NOT NULL,
    Quantity INT,
    Price REAL
);

-- Sample data
INSERT INTO sales (SaleID, Product, Category, Quantity, Price) VALUES
(1, 'Laptop', 'Electronics', 2, 60000),
(2, 'Mouse', 'Electronics', 5, 500),
(3, 'Keyboard', 'Electronics', 3, 1500),
(4, 'Shirt', 'Clothing', 4, 800),
(5, 'Jeans', 'Clothing', 2, 1200),
(6, 'Shoes', 'Footwear', 3, 2000),
(7, 'Slippers', 'Footwear', 6, 400);

SELECT SUM(Quantity * Price) AS TotalRevenue FROM sales;
SELECT COUNT(*) AS TotalSales FROM sales;
SELECT AVG(Price) AS AvgPrice FROM sales;
SELECT Category, SUM(Quantity * Price) AS Revenue
FROM sales
GROUP BY Category;
 
 SELECT Category, SUM(Quantity * Price) AS Revenue
FROM sales
GROUP BY Category
HAVING Revenue > 5000;

SELECT Category, COUNT(Product) AS ProductCount
FROM sales
GROUP BY Category;

SELECT Category, ROUND(AVG(Price), 2) AS AvgPrice
FROM sales
GROUP BY Category;