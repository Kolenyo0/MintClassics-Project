CREATE VIEW ProductsOrdered AS 
SELECT P.productName, P.productLine, OD.quantityOrdered, OD.priceEach, O.orderDate, P.warehouseCode
FROM orders AS O
INNER JOIN orderdetails AS OD ON O.orderNumber = OD.orderNumber
INNER JOIN products AS P ON P.productCode = OD.productCode;
SELECT * 
FROM ProductsOrdered