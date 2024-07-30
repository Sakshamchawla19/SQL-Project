INSERT INTO Sales (ProductCategory, ProductName, SaleAmount) VALUES
('Electronics', 'Laptop', 1000.00),
('Electronics', 'Phone', 800.00),
('Electronics', 'Tablet', 500.00),
('Clothing', 'Shirt', 300.00),
('Clothing', 'Pants', 400.00),
('Furniture', 'Sofa', 1200.00),
('Furniture', 'Bed', 900.00);
SELECT ProductCategory,
       SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY ProductCategory;
SELECT SUM(SaleAmount) AS OverallTotal
FROM Sales;

SELECT ProductCategory AS Category,
       SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY ProductCategory

UNION ALL

SELECT 'Overall Total' AS Category,
       SUM(SaleAmount) AS TotalSales
FROM Sales;
