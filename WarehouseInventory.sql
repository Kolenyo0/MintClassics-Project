USE `mintclassics`;
CREATE VIEW warehouseA AS
SELECT P.productName, P.productLine, P.warehouseCode, P.quantityInStock, SUM(quantityOrdered) AS Sales, 
       AVG(priceEach) AS AvgPriceSoldFor, P.quantityInStock/SUM(quantityOrdered) AS InventoryToSales
FROM `products` AS P
LEFT JOIN `orderdetails` AS O ON P.productCode = O.productCode
WHERE P.warehouseCode= 'a'
GROUP BY P.productName, P.productLine, P.warehouseCode, P.quantityInStock
ORDER BY InventoryToSales DESC;

CREATE VIEW warehouseB AS
SELECT P.productName, P.productLine, P.warehouseCode, P.quantityInStock, SUM(quantityOrdered) AS Sales, 
       AVG(priceEach) AS AvgPriceSoldFor, P.quantityInStock/SUM(quantityOrdered) AS InventoryToSales
FROM `products` AS P
LEFT JOIN `orderdetails` AS O ON P.productCode = O.productCode
WHERE P.warehouseCode= 'b'
GROUP BY P.productName, P.productLine, P.warehouseCode, P.quantityInStock
ORDER BY InventoryToSales DESC;

CREATE VIEW warehouseC AS 
SELECT P.productName, P.productLine, P.warehouseCode, P.quantityInStock, SUM(quantityOrdered) AS Sales, 
       AVG(priceEach) AS AvgPriceSoldFor, P.quantityInStock/SUM(quantityOrdered) AS InventoryToSales
FROM `products` AS P
LEFT JOIN `orderdetails` AS O ON P.productCode = O.productCode
WHERE P.warehouseCode= 'c'
GROUP BY P.productName, P.productLine, P.warehouseCode, P.quantityInStock
ORDER BY InventoryToSales DESC;

CREATE VIEW warehouseD AS
SELECT P.productName, P.productLine, P.warehouseCode, P.quantityInStock, SUM(quantityOrdered) AS Sales, 
       AVG(priceEach) AS AvgPriceSoldFor, P.quantityInStock/SUM(quantityOrdered) AS InventoryToSales
FROM `products` AS P
LEFT JOIN `orderdetails` AS O ON P.productCode = O.productCode
WHERE P.warehouseCode= 'd'
GROUP BY P.productName, P.productLine, P.warehouseCode, P.quantityInStock
ORDER BY InventoryToSales DESC;
/*
DROP VIEW warehouseA;
DROP VIEW warehouseB;
DROP VIEW warehouseC;
DROP VIEW warehouseD;
*/