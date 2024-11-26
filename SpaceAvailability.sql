USE `mintclassics`; 
SELECT SUM(quantityInStock) AS TotalStock, W.warehouseName,(100 - W.warehousePctCap) AS SpaceAvailability
FROM `products` AS P
JOIN `warehouses` AS W ON P.warehouseCode = W.warehouseCode
GROUP BY W.warehouseName, W.warehousePctCap;