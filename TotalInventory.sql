CREATE VIEW TotalInventory AS 
SELECT * FROM warehouseA
UNION
SELECT * FROM warehouseB
UNION
SELECT * FROM warehouseC
UNION
SELECT * FROM warehouseD
ORDER BY Sales ASC;
SELECT *
FROM TotalInventory;
